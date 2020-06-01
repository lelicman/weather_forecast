import Foundation
import Moya
import Quick
import Nimble
@testable import Platform

extension TargetType {
  static func stub(statusCode: Int) -> MoyaProvider<Self> {
    return stub(statusCode: statusCode, data: Data())
  }

  static func stub(statusCode: Int, response: AnyEncodable) -> MoyaProvider<Self> {
    guard let data = try? JSONEncoder().encode(response) else {
      fail("Unable to encode data")
      fatalError()
    }
    return stub(statusCode: statusCode, data: data)
  }

  static func stub(error: NSError) -> MoyaProvider<Self> {
    let sampleResponse = EndpointSampleResponse.networkError(error)
    return stub(sampleResponse: sampleResponse)
  }

  private static func stub(statusCode: Int, data: Data) -> MoyaProvider<Self> {
    let sampleResponse = EndpointSampleResponse.networkResponse(statusCode, data)
    return stub(sampleResponse: sampleResponse)
  }

  private static func stub(sampleResponse: EndpointSampleResponse) -> MoyaProvider<Self> {
    let closure = { (target: Self) -> Endpoint in
      let url = "http://example.com"
      let method = target.method
      let task = target.task
      let sampleResponseClosure: () -> EndpointSampleResponse = { sampleResponse }

      let endpoint = Endpoint(url: url,
                              sampleResponseClosure: sampleResponseClosure,
                              method: method,
                              task: task,
                              httpHeaderFields: nil)
      return endpoint
    }

    return MoyaProvider<Self>(endpointClosure: closure, stubClosure: MoyaProvider.immediatelyStub)
  }

  static func response<T: Decodable>(of type: T.Type, from encodable: AnyEncodable) -> T {
    guard let data = try? JSONEncoder().encode(encodable) else {
      fail("Unable to encode data")
      fatalError()
    }

    guard let response = try? MoyaProvider<Self>.defaultDecoder().decode(type, from: data) else {
      fail("Unable to decode sample response")
      fatalError()
    }

    return response
  }
}

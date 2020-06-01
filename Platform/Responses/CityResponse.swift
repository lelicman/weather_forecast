import Domain
import Foundation

struct CityResponse: Decodable {
  let id: City.Identifier
  let name: String
  let country: String
  let coord: CoordinatesResponse
}

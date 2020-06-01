import Domain
import Foundation

extension IdentifierOf: Codable where Value.RawIdentifier: Codable {
  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let rawValue = try container.decode(Value.RawIdentifier.self)
    self.init(rawValue: rawValue)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(rawValue)
  }
}

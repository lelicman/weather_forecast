import Foundation

public protocol CityType {
  typealias Identifier = IdentifierOf<City>

  var id: Identifier { get }
  var name: String { get }
  var countryCode: String { get }
  var coordinates: CoordinatesType { get }
}

public struct City: CityType, Identifiable {
  public typealias Identifier = IdentifierOf<City>
  public typealias RawIdentifier = Int

  public let id: Identifier
  public let name: String
  public let countryCode: String
  public let coordinates: CoordinatesType

  public init(id: Identifier, name: String, countryCode: String, coordinates: Coordinates) {
    self.id = id
    self.name = name
    self.countryCode = countryCode
    self.coordinates = coordinates
  }
}

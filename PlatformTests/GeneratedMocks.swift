//swiftlint:disable all
// MARK: - Mocks generated from file: Domain/Models/Domain.City.swift

import Cuckoo
@testable import Platform

import Foundation


public class MockCityType: CityType, Cuckoo.ProtocolMock {
    
    public typealias MocksType = CityType
    
    public typealias Stubbing = __StubbingProxy_CityType
    public typealias Verification = __VerificationProxy_CityType

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityType?

    public func enableDefaultImplementation(_ stub: CityType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var id: Identifier {
        get {
            return cuckoo_manager.getter("id",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.id)
        }
        
    }
    
    
    
    public var name: String {
        get {
            return cuckoo_manager.getter("name",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.name)
        }
        
    }
    
    
    
    public var countryCode: String {
        get {
            return cuckoo_manager.getter("countryCode",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.countryCode)
        }
        
    }
    
    
    
    public var coordinates: CoordinatesType {
        get {
            return cuckoo_manager.getter("coordinates",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.coordinates)
        }
        
    }
    

    

    

	public struct __StubbingProxy_CityType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var id: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityType, Identifier> {
	        return .init(manager: cuckoo_manager, name: "id")
	    }
	    
	    
	    var name: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityType, String> {
	        return .init(manager: cuckoo_manager, name: "name")
	    }
	    
	    
	    var countryCode: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityType, String> {
	        return .init(manager: cuckoo_manager, name: "countryCode")
	    }
	    
	    
	    var coordinates: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityType, CoordinatesType> {
	        return .init(manager: cuckoo_manager, name: "coordinates")
	    }
	    
	    
	}

	public struct __VerificationProxy_CityType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var id: Cuckoo.VerifyReadOnlyProperty<Identifier> {
	        return .init(manager: cuckoo_manager, name: "id", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var name: Cuckoo.VerifyReadOnlyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "name", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var countryCode: Cuckoo.VerifyReadOnlyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "countryCode", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var coordinates: Cuckoo.VerifyReadOnlyProperty<CoordinatesType> {
	        return .init(manager: cuckoo_manager, name: "coordinates", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class CityTypeStub: CityType {
    
    
    public var id: Identifier {
        get {
            return DefaultValueRegistry.defaultValue(for: (Identifier).self)
        }
        
    }
    
    
    public var name: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
    }
    
    
    public var countryCode: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
    }
    
    
    public var coordinates: CoordinatesType {
        get {
            return DefaultValueRegistry.defaultValue(for: (CoordinatesType).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: Domain/Models/Domain.CityWeather.swift

import Cuckoo
@testable import Platform

import Foundation


public class MockCityWeatherType: CityWeatherType, Cuckoo.ProtocolMock {
    
    public typealias MocksType = CityWeatherType
    
    public typealias Stubbing = __StubbingProxy_CityWeatherType
    public typealias Verification = __VerificationProxy_CityWeatherType

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityWeatherType?

    public func enableDefaultImplementation(_ stub: CityWeatherType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var coordinates: CoordinatesType {
        get {
            return cuckoo_manager.getter("coordinates",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.coordinates)
        }
        
    }
    
    
    
    public var temperature: Double {
        get {
            return cuckoo_manager.getter("temperature",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.temperature)
        }
        
    }
    
    
    
    public var temperatureInCelsius: Double {
        get {
            return cuckoo_manager.getter("temperatureInCelsius",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.temperatureInCelsius)
        }
        
    }
    
    
    
    public var temperatureInKelvins: Double {
        get {
            return cuckoo_manager.getter("temperatureInKelvins",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.temperatureInKelvins)
        }
        
    }
    
    
    
    public var temperatureInFarenheits: Double {
        get {
            return cuckoo_manager.getter("temperatureInFarenheits",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.temperatureInFarenheits)
        }
        
    }
    
    
    
    public var pressure: Double {
        get {
            return cuckoo_manager.getter("pressure",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.pressure)
        }
        
    }
    
    
    
    public var humidity: Double {
        get {
            return cuckoo_manager.getter("humidity",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.humidity)
        }
        
    }
    

    

    

	public struct __StubbingProxy_CityWeatherType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var coordinates: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, CoordinatesType> {
	        return .init(manager: cuckoo_manager, name: "coordinates")
	    }
	    
	    
	    var temperature: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, Double> {
	        return .init(manager: cuckoo_manager, name: "temperature")
	    }
	    
	    
	    var temperatureInCelsius: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, Double> {
	        return .init(manager: cuckoo_manager, name: "temperatureInCelsius")
	    }
	    
	    
	    var temperatureInKelvins: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, Double> {
	        return .init(manager: cuckoo_manager, name: "temperatureInKelvins")
	    }
	    
	    
	    var temperatureInFarenheits: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, Double> {
	        return .init(manager: cuckoo_manager, name: "temperatureInFarenheits")
	    }
	    
	    
	    var pressure: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, Double> {
	        return .init(manager: cuckoo_manager, name: "pressure")
	    }
	    
	    
	    var humidity: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCityWeatherType, Double> {
	        return .init(manager: cuckoo_manager, name: "humidity")
	    }
	    
	    
	}

	public struct __VerificationProxy_CityWeatherType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var coordinates: Cuckoo.VerifyReadOnlyProperty<CoordinatesType> {
	        return .init(manager: cuckoo_manager, name: "coordinates", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var temperature: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "temperature", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var temperatureInCelsius: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "temperatureInCelsius", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var temperatureInKelvins: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "temperatureInKelvins", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var temperatureInFarenheits: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "temperatureInFarenheits", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var pressure: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "pressure", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var humidity: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "humidity", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class CityWeatherTypeStub: CityWeatherType {
    
    
    public var coordinates: CoordinatesType {
        get {
            return DefaultValueRegistry.defaultValue(for: (CoordinatesType).self)
        }
        
    }
    
    
    public var temperature: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    
    
    public var temperatureInCelsius: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    
    
    public var temperatureInKelvins: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    
    
    public var temperatureInFarenheits: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    
    
    public var pressure: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    
    
    public var humidity: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: Domain/Models/Domain.Coordinates.swift

import Cuckoo
@testable import Platform

import Foundation


public class MockCoordinatesType: CoordinatesType, Cuckoo.ProtocolMock {
    
    public typealias MocksType = CoordinatesType
    
    public typealias Stubbing = __StubbingProxy_CoordinatesType
    public typealias Verification = __VerificationProxy_CoordinatesType

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CoordinatesType?

    public func enableDefaultImplementation(_ stub: CoordinatesType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var longtitude: Double {
        get {
            return cuckoo_manager.getter("longtitude",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.longtitude)
        }
        
    }
    
    
    
    public var latitude: Double {
        get {
            return cuckoo_manager.getter("latitude",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.latitude)
        }
        
    }
    

    

    

	public struct __StubbingProxy_CoordinatesType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var longtitude: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCoordinatesType, Double> {
	        return .init(manager: cuckoo_manager, name: "longtitude")
	    }
	    
	    
	    var latitude: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockCoordinatesType, Double> {
	        return .init(manager: cuckoo_manager, name: "latitude")
	    }
	    
	    
	}

	public struct __VerificationProxy_CoordinatesType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var longtitude: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "longtitude", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var latitude: Cuckoo.VerifyReadOnlyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "latitude", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class CoordinatesTypeStub: CoordinatesType {
    
    
    public var longtitude: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    
    
    public var latitude: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: Platform/Converters/Platform.CityConverter.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockCityConverterType: CityConverterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = CityConverterType
    
     typealias Stubbing = __StubbingProxy_CityConverterType
     typealias Verification = __VerificationProxy_CityConverterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityConverterType?

     func enableDefaultImplementation(_ stub: CityConverterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func from(response: [CityResponse]) -> [CityType] {
        
    return cuckoo_manager.call("from(response: [CityResponse]) -> [CityType]",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(response: response))
        
    }
    
    
    
     func from(models: [RealmCity]) -> [CityType] {
        
    return cuckoo_manager.call("from(models: [RealmCity]) -> [CityType]",
            parameters: (models),
            escapingParameters: (models),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(models: models))
        
    }
    

	 struct __StubbingProxy_CityConverterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ProtocolStubFunction<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverterType.self, method: "from(response: [CityResponse]) -> [CityType]", parameterMatchers: matchers))
	    }
	    
	    func from<M1: Cuckoo.Matchable>(models: M1) -> Cuckoo.ProtocolStubFunction<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverterType.self, method: "from(models: [RealmCity]) -> [CityType]", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityConverterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("from(response: [CityResponse]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(models: M1) -> Cuckoo.__DoNotUse<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return cuckoo_manager.verify("from(models: [RealmCity]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityConverterTypeStub: CityConverterType {
    

    

    
     func from(response: [CityResponse]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
     func from(models: [RealmCity]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
}



 class MockCityConverter: Platform.CityConverter, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.CityConverter
    
     typealias Stubbing = __StubbingProxy_CityConverter
     typealias Verification = __VerificationProxy_CityConverter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.CityConverter?

     func enableDefaultImplementation(_ stub: Platform.CityConverter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func from(response: [CityResponse]) -> [CityType] {
        
    return cuckoo_manager.call("from(response: [CityResponse]) -> [CityType]",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                super.from(response: response)
                ,
            defaultCall: __defaultImplStub!.from(response: response))
        
    }
    
    
    
     override func from(models: [RealmCity]) -> [CityType] {
        
    return cuckoo_manager.call("from(models: [RealmCity]) -> [CityType]",
            parameters: (models),
            escapingParameters: (models),
            superclassCall:
                
                super.from(models: models)
                ,
            defaultCall: __defaultImplStub!.from(models: models))
        
    }
    

	 struct __StubbingProxy_CityConverter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ClassStubFunction<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverter.self, method: "from(response: [CityResponse]) -> [CityType]", parameterMatchers: matchers))
	    }
	    
	    func from<M1: Cuckoo.Matchable>(models: M1) -> Cuckoo.ClassStubFunction<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverter.self, method: "from(models: [RealmCity]) -> [CityType]", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityConverter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("from(response: [CityResponse]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(models: M1) -> Cuckoo.__DoNotUse<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return cuckoo_manager.verify("from(models: [RealmCity]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityConverterStub: Platform.CityConverter {
    

    

    
     override func from(response: [CityResponse]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
     override func from(models: [RealmCity]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/Converters/Platform.CityWeatherConverter.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockCityWeatherConverterType: CityWeatherConverterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = CityWeatherConverterType
    
     typealias Stubbing = __StubbingProxy_CityWeatherConverterType
     typealias Verification = __VerificationProxy_CityWeatherConverterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityWeatherConverterType?

     func enableDefaultImplementation(_ stub: CityWeatherConverterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func from(_ response: CityWeatherResponse) -> CityWeatherType {
        
    return cuckoo_manager.call("from(_: CityWeatherResponse) -> CityWeatherType",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(response))
        
    }
    

	 struct __StubbingProxy_CityWeatherConverterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.ProtocolStubFunction<(CityWeatherResponse), CityWeatherType> where M1.MatchedType == CityWeatherResponse {
	        let matchers: [Cuckoo.ParameterMatcher<(CityWeatherResponse)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityWeatherConverterType.self, method: "from(_: CityWeatherResponse) -> CityWeatherType", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityWeatherConverterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.__DoNotUse<(CityWeatherResponse), CityWeatherType> where M1.MatchedType == CityWeatherResponse {
	        let matchers: [Cuckoo.ParameterMatcher<(CityWeatherResponse)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("from(_: CityWeatherResponse) -> CityWeatherType", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityWeatherConverterTypeStub: CityWeatherConverterType {
    

    

    
     func from(_ response: CityWeatherResponse) -> CityWeatherType  {
        return DefaultValueRegistry.defaultValue(for: (CityWeatherType).self)
    }
    
}



 class MockCityWeatherConverter: Platform.CityWeatherConverter, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.CityWeatherConverter
    
     typealias Stubbing = __StubbingProxy_CityWeatherConverter
     typealias Verification = __VerificationProxy_CityWeatherConverter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.CityWeatherConverter?

     func enableDefaultImplementation(_ stub: Platform.CityWeatherConverter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func from(_ response: CityWeatherResponse) -> CityWeatherType {
        
    return cuckoo_manager.call("from(_: CityWeatherResponse) -> CityWeatherType",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                super.from(response)
                ,
            defaultCall: __defaultImplStub!.from(response))
        
    }
    

	 struct __StubbingProxy_CityWeatherConverter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.ClassStubFunction<(CityWeatherResponse), CityWeatherType> where M1.MatchedType == CityWeatherResponse {
	        let matchers: [Cuckoo.ParameterMatcher<(CityWeatherResponse)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityWeatherConverter.self, method: "from(_: CityWeatherResponse) -> CityWeatherType", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityWeatherConverter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.__DoNotUse<(CityWeatherResponse), CityWeatherType> where M1.MatchedType == CityWeatherResponse {
	        let matchers: [Cuckoo.ParameterMatcher<(CityWeatherResponse)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("from(_: CityWeatherResponse) -> CityWeatherType", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityWeatherConverterStub: Platform.CityWeatherConverter {
    

    

    
     override func from(_ response: CityWeatherResponse) -> CityWeatherType  {
        return DefaultValueRegistry.defaultValue(for: (CityWeatherType).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/Converters/Platform.RealmCityConverter.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockRealmCityConverterType: RealmCityConverterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = RealmCityConverterType
    
     typealias Stubbing = __StubbingProxy_RealmCityConverterType
     typealias Verification = __VerificationProxy_RealmCityConverterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RealmCityConverterType?

     func enableDefaultImplementation(_ stub: RealmCityConverterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func from(_ cities: [CityType]) -> [RealmCity] {
        
    return cuckoo_manager.call("from(_: [CityType]) -> [RealmCity]",
            parameters: (cities),
            escapingParameters: (cities),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(cities))
        
    }
    

	 struct __StubbingProxy_RealmCityConverterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ cities: M1) -> Cuckoo.ProtocolStubFunction<([CityType]), [RealmCity]> where M1.MatchedType == [CityType] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType])>] = [wrap(matchable: cities) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRealmCityConverterType.self, method: "from(_: [CityType]) -> [RealmCity]", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RealmCityConverterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ cities: M1) -> Cuckoo.__DoNotUse<([CityType]), [RealmCity]> where M1.MatchedType == [CityType] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType])>] = [wrap(matchable: cities) { $0 }]
	        return cuckoo_manager.verify("from(_: [CityType]) -> [RealmCity]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RealmCityConverterTypeStub: RealmCityConverterType {
    

    

    
     func from(_ cities: [CityType]) -> [RealmCity]  {
        return DefaultValueRegistry.defaultValue(for: ([RealmCity]).self)
    }
    
}



 class MockRealmCityConverter: Platform.RealmCityConverter, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.RealmCityConverter
    
     typealias Stubbing = __StubbingProxy_RealmCityConverter
     typealias Verification = __VerificationProxy_RealmCityConverter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.RealmCityConverter?

     func enableDefaultImplementation(_ stub: Platform.RealmCityConverter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func from(_ cities: [CityType]) -> [RealmCity] {
        
    return cuckoo_manager.call("from(_: [CityType]) -> [RealmCity]",
            parameters: (cities),
            escapingParameters: (cities),
            superclassCall:
                
                super.from(cities)
                ,
            defaultCall: __defaultImplStub!.from(cities))
        
    }
    

	 struct __StubbingProxy_RealmCityConverter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ cities: M1) -> Cuckoo.ClassStubFunction<([CityType]), [RealmCity]> where M1.MatchedType == [CityType] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType])>] = [wrap(matchable: cities) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRealmCityConverter.self, method: "from(_: [CityType]) -> [RealmCity]", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RealmCityConverter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ cities: M1) -> Cuckoo.__DoNotUse<([CityType]), [RealmCity]> where M1.MatchedType == [CityType] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType])>] = [wrap(matchable: cities) { $0 }]
	        return cuckoo_manager.verify("from(_: [CityType]) -> [RealmCity]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RealmCityConverterStub: Platform.RealmCityConverter {
    

    

    
     override func from(_ cities: [CityType]) -> [RealmCity]  {
        return DefaultValueRegistry.defaultValue(for: ([RealmCity]).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/Repositories/Platform.CityRepository.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation
import Realm
import RealmSwift


 class MockCityRepositoryProtocol: CityRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CityRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_CityRepositoryProtocol
     typealias Verification = __VerificationProxy_CityRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityRepositoryProtocol?

     func enableDefaultImplementation(_ stub: CityRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getCities(with completion: @escaping (Result<[CityType]>) -> Void)  {
        
    return cuckoo_manager.call("getCities(with: @escaping (Result<[CityType]>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getCities(with: completion))
        
    }
    
    
    
     func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("setCities(_: [CityType], with: @escaping (Result<Void>) -> Void)",
            parameters: (cities, completion),
            escapingParameters: (cities, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setCities(cities, with: completion))
        
    }
    

	 struct __StubbingProxy_CityRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Result<[CityType]>) -> Void)> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityRepositoryProtocol.self, method: "getCities(with: @escaping (Result<[CityType]>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func setCities<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<([CityType], (Result<Void>) -> Void)> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityRepositoryProtocol.self, method: "setCities(_: [CityType], with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.__DoNotUse<((Result<[CityType]>) -> Void), Void> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getCities(with: @escaping (Result<[CityType]>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setCities<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.__DoNotUse<([CityType], (Result<Void>) -> Void), Void> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("setCities(_: [CityType], with: @escaping (Result<Void>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityRepositoryProtocolStub: CityRepositoryProtocol {
    

    

    
     func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCityRepository: Platform.CityRepository, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.CityRepository
    
     typealias Stubbing = __StubbingProxy_CityRepository
     typealias Verification = __VerificationProxy_CityRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.CityRepository?

     func enableDefaultImplementation(_ stub: Platform.CityRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getCities(with completion: @escaping (Result<[CityType]>) -> Void)  {
        
    return cuckoo_manager.call("getCities(with: @escaping (Result<[CityType]>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                super.getCities(with: completion)
                ,
            defaultCall: __defaultImplStub!.getCities(with: completion))
        
    }
    
    
    
     override func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("setCities(_: [CityType], with: @escaping (Result<Void>) -> Void)",
            parameters: (cities, completion),
            escapingParameters: (cities, completion),
            superclassCall:
                
                super.setCities(cities, with: completion)
                ,
            defaultCall: __defaultImplStub!.setCities(cities, with: completion))
        
    }
    

	 struct __StubbingProxy_CityRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ClassStubNoReturnFunction<((Result<[CityType]>) -> Void)> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityRepository.self, method: "getCities(with: @escaping (Result<[CityType]>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func setCities<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.ClassStubNoReturnFunction<([CityType], (Result<Void>) -> Void)> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityRepository.self, method: "setCities(_: [CityType], with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.__DoNotUse<((Result<[CityType]>) -> Void), Void> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getCities(with: @escaping (Result<[CityType]>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setCities<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.__DoNotUse<([CityType], (Result<Void>) -> Void), Void> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("setCities(_: [CityType], with: @escaping (Result<Void>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityRepositoryStub: Platform.CityRepository {
    

    

    
     override func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/Repositories/Platform.ImportCityRepository.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockImportCityRepositoryProtocol: ImportCityRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ImportCityRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_ImportCityRepositoryProtocol
     typealias Verification = __VerificationProxy_ImportCityRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ImportCityRepositoryProtocol?

     func enableDefaultImplementation(_ stub: ImportCityRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getCities(with completion: @escaping (Result<[CityType]>) -> Void)  {
        
    return cuckoo_manager.call("getCities(with: @escaping (Result<[CityType]>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getCities(with: completion))
        
    }
    

	 struct __StubbingProxy_ImportCityRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Result<[CityType]>) -> Void)> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImportCityRepositoryProtocol.self, method: "getCities(with: @escaping (Result<[CityType]>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ImportCityRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.__DoNotUse<((Result<[CityType]>) -> Void), Void> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getCities(with: @escaping (Result<[CityType]>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ImportCityRepositoryProtocolStub: ImportCityRepositoryProtocol {
    

    

    
     func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockImportCityRepository: Platform.ImportCityRepository, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.ImportCityRepository
    
     typealias Stubbing = __StubbingProxy_ImportCityRepository
     typealias Verification = __VerificationProxy_ImportCityRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.ImportCityRepository?

     func enableDefaultImplementation(_ stub: Platform.ImportCityRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getCities(with completion: @escaping (Result<[CityType]>) -> Void)  {
        
    return cuckoo_manager.call("getCities(with: @escaping (Result<[CityType]>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                super.getCities(with: completion)
                ,
            defaultCall: __defaultImplStub!.getCities(with: completion))
        
    }
    

	 struct __StubbingProxy_ImportCityRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ClassStubNoReturnFunction<((Result<[CityType]>) -> Void)> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImportCityRepository.self, method: "getCities(with: @escaping (Result<[CityType]>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ImportCityRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getCities<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.__DoNotUse<((Result<[CityType]>) -> Void), Void> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getCities(with: @escaping (Result<[CityType]>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ImportCityRepositoryStub: Platform.ImportCityRepository {
    

    

    
     override func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/Repositories/Platform.SettingsRepository.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockSettingsRepositoryProtocol: SettingsRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SettingsRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_SettingsRepositoryProtocol
     typealias Verification = __VerificationProxy_SettingsRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SettingsRepositoryProtocol?

     func enableDefaultImplementation(_ stub: SettingsRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var areCitiesImported: Bool {
        get {
            return cuckoo_manager.getter("areCitiesImported",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.areCitiesImported)
        }
        
        set {
            cuckoo_manager.setter("areCitiesImported",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.areCitiesImported = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SettingsRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var areCitiesImported: Cuckoo.ProtocolToBeStubbedProperty<MockSettingsRepositoryProtocol, Bool> {
	        return .init(manager: cuckoo_manager, name: "areCitiesImported")
	    }
	    
	    
	}

	 struct __VerificationProxy_SettingsRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var areCitiesImported: Cuckoo.VerifyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "areCitiesImported", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SettingsRepositoryProtocolStub: SettingsRepositoryProtocol {
    
    
     var areCitiesImported: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
        set { }
        
    }
    

    

    
}



 class MockSettingsRepository: Platform.SettingsRepository, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.SettingsRepository
    
     typealias Stubbing = __StubbingProxy_SettingsRepository
     typealias Verification = __VerificationProxy_SettingsRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.SettingsRepository?

     func enableDefaultImplementation(_ stub: Platform.SettingsRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var areCitiesImported: Bool {
        get {
            return cuckoo_manager.getter("areCitiesImported",
                superclassCall:
                    
                    super.areCitiesImported
                    ,
                defaultCall: __defaultImplStub!.areCitiesImported)
        }
        
        set {
            cuckoo_manager.setter("areCitiesImported",
                value: newValue,
                superclassCall:
                    
                    super.areCitiesImported = newValue
                    ,
                defaultCall: __defaultImplStub!.areCitiesImported = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SettingsRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var areCitiesImported: Cuckoo.ClassToBeStubbedProperty<MockSettingsRepository, Bool> {
	        return .init(manager: cuckoo_manager, name: "areCitiesImported")
	    }
	    
	    
	}

	 struct __VerificationProxy_SettingsRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var areCitiesImported: Cuckoo.VerifyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "areCitiesImported", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SettingsRepositoryStub: Platform.SettingsRepository {
    
    
     override var areCitiesImported: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: Platform/Repositories/Platform.WeatherRepository.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation
import Moya


 class MockWeatherRepositoryProtocol: WeatherRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = WeatherRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_WeatherRepositoryProtocol
     typealias Verification = __VerificationProxy_WeatherRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WeatherRepositoryProtocol?

     func enableDefaultImplementation(_ stub: WeatherRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func get(with cityId: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)  {
        
    return cuckoo_manager.call("get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)",
            parameters: (cityId, completion),
            escapingParameters: (cityId, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.get(with: cityId, completion: completion))
        
    }
    

	 struct __StubbingProxy_WeatherRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)> where M1.MatchedType == Domain.City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepositoryProtocol.self, method: "get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WeatherRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.__DoNotUse<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void), Void> where M1.MatchedType == Domain.City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryProtocolStub: WeatherRepositoryProtocol {
    

    

    
     func get(with cityId: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockWeatherRepository: Platform.WeatherRepository, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.WeatherRepository
    
     typealias Stubbing = __StubbingProxy_WeatherRepository
     typealias Verification = __VerificationProxy_WeatherRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.WeatherRepository?

     func enableDefaultImplementation(_ stub: Platform.WeatherRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get(with cityId: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)  {
        
    return cuckoo_manager.call("get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)",
            parameters: (cityId, completion),
            escapingParameters: (cityId, completion),
            superclassCall:
                
                super.get(with: cityId, completion: completion)
                ,
            defaultCall: __defaultImplStub!.get(with: cityId, completion: completion))
        
    }
    

	 struct __StubbingProxy_WeatherRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)> where M1.MatchedType == Domain.City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepository.self, method: "get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WeatherRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.__DoNotUse<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void), Void> where M1.MatchedType == Domain.City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryStub: Platform.WeatherRepository {
    

    

    
     override func get(with cityId: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.GetCitiesImportedUseCase.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockGetCitiesImportedUseCase: Platform.GetCitiesImportedUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.GetCitiesImportedUseCase
    
     typealias Stubbing = __StubbingProxy_GetCitiesImportedUseCase
     typealias Verification = __VerificationProxy_GetCitiesImportedUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.GetCitiesImportedUseCase?

     func enableDefaultImplementation(_ stub: Platform.GetCitiesImportedUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get() -> Bool {
        
    return cuckoo_manager.call("get() -> Bool",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.get()
                ,
            defaultCall: __defaultImplStub!.get())
        
    }
    

	 struct __StubbingProxy_GetCitiesImportedUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get() -> Cuckoo.ClassStubFunction<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGetCitiesImportedUseCase.self, method: "get() -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GetCitiesImportedUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get() -> Cuckoo.__DoNotUse<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("get() -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GetCitiesImportedUseCaseStub: Platform.GetCitiesImportedUseCase {
    

    

    
     override func get() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.GetCitiesUseCase.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockGetCitiesUseCase: Platform.GetCitiesUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.GetCitiesUseCase
    
     typealias Stubbing = __StubbingProxy_GetCitiesUseCase
     typealias Verification = __VerificationProxy_GetCitiesUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.GetCitiesUseCase?

     func enableDefaultImplementation(_ stub: Platform.GetCitiesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get(with completion: @escaping (Result<[CityType]>) -> Void)  {
        
    return cuckoo_manager.call("get(with: @escaping (Result<[CityType]>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                super.get(with: completion)
                ,
            defaultCall: __defaultImplStub!.get(with: completion))
        
    }
    

	 struct __StubbingProxy_GetCitiesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ClassStubNoReturnFunction<((Result<[CityType]>) -> Void)> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetCitiesUseCase.self, method: "get(with: @escaping (Result<[CityType]>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GetCitiesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.__DoNotUse<((Result<[CityType]>) -> Void), Void> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("get(with: @escaping (Result<[CityType]>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GetCitiesUseCaseStub: Platform.GetCitiesUseCase {
    

    

    
     override func get(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.GetCityWeatherUseCase.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockGetCityWeatherUseCase: Platform.GetCityWeatherUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.GetCityWeatherUseCase
    
     typealias Stubbing = __StubbingProxy_GetCityWeatherUseCase
     typealias Verification = __VerificationProxy_GetCityWeatherUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.GetCityWeatherUseCase?

     func enableDefaultImplementation(_ stub: Platform.GetCityWeatherUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get(with cityId: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)  {
        
    return cuckoo_manager.call("get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)",
            parameters: (cityId, completion),
            escapingParameters: (cityId, completion),
            superclassCall:
                
                super.get(with: cityId, completion: completion)
                ,
            defaultCall: __defaultImplStub!.get(with: cityId, completion: completion))
        
    }
    

	 struct __StubbingProxy_GetCityWeatherUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)> where M1.MatchedType == Domain.City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetCityWeatherUseCase.self, method: "get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GetCityWeatherUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.__DoNotUse<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void), Void> where M1.MatchedType == Domain.City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Domain.City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("get(with: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GetCityWeatherUseCaseStub: Platform.GetCityWeatherUseCase {
    

    

    
     override func get(with cityId: Domain.City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.ImportCitiesUseCase.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockImportCitiesUseCase: Platform.ImportCitiesUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.ImportCitiesUseCase
    
     typealias Stubbing = __StubbingProxy_ImportCitiesUseCase
     typealias Verification = __VerificationProxy_ImportCitiesUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.ImportCitiesUseCase?

     func enableDefaultImplementation(_ stub: Platform.ImportCitiesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get(with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("get(with: @escaping (Result<Void>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                super.get(with: completion)
                ,
            defaultCall: __defaultImplStub!.get(with: completion))
        
    }
    

	 struct __StubbingProxy_ImportCitiesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ClassStubNoReturnFunction<((Result<Void>) -> Void)> where M1.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<Void>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImportCitiesUseCase.self, method: "get(with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ImportCitiesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.__DoNotUse<((Result<Void>) -> Void), Void> where M1.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<Void>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("get(with: @escaping (Result<Void>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ImportCitiesUseCaseStub: Platform.ImportCitiesUseCase {
    

    

    
     override func get(with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.SaveCitiesUseCase.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockSaveCitiesUseCase: Platform.SaveCitiesUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.SaveCitiesUseCase
    
     typealias Stubbing = __StubbingProxy_SaveCitiesUseCase
     typealias Verification = __VerificationProxy_SaveCitiesUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.SaveCitiesUseCase?

     func enableDefaultImplementation(_ stub: Platform.SaveCitiesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func save(cities: [CityType], with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("save(cities: [CityType], with: @escaping (Result<Void>) -> Void)",
            parameters: (cities, completion),
            escapingParameters: (cities, completion),
            superclassCall:
                
                super.save(cities: cities, with: completion)
                ,
            defaultCall: __defaultImplStub!.save(cities: cities, with: completion))
        
    }
    

	 struct __StubbingProxy_SaveCitiesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func save<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(cities: M1, with completion: M2) -> Cuckoo.ClassStubNoReturnFunction<([CityType], (Result<Void>) -> Void)> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSaveCitiesUseCase.self, method: "save(cities: [CityType], with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SaveCitiesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func save<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(cities: M1, with completion: M2) -> Cuckoo.__DoNotUse<([CityType], (Result<Void>) -> Void), Void> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("save(cities: [CityType], with: @escaping (Result<Void>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SaveCitiesUseCaseStub: Platform.SaveCitiesUseCase {
    

    

    
     override func save(cities: [CityType], with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.SetCitiesImportedUseCase.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


 class MockSetCitiesImportedUseCase: Platform.SetCitiesImportedUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = Platform.SetCitiesImportedUseCase
    
     typealias Stubbing = __StubbingProxy_SetCitiesImportedUseCase
     typealias Verification = __VerificationProxy_SetCitiesImportedUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.SetCitiesImportedUseCase?

     func enableDefaultImplementation(_ stub: Platform.SetCitiesImportedUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var repository: SettingsRepositoryProtocol {
        get {
            return cuckoo_manager.getter("repository",
                superclassCall:
                    
                    super.repository
                    ,
                defaultCall: __defaultImplStub!.repository)
        }
        
        set {
            cuckoo_manager.setter("repository",
                value: newValue,
                superclassCall:
                    
                    super.repository = newValue
                    ,
                defaultCall: __defaultImplStub!.repository = newValue)
        }
        
    }
    

    

    
    
    
     override func set(_ value: Bool)  {
        
    return cuckoo_manager.call("set(_: Bool)",
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                super.set(value)
                ,
            defaultCall: __defaultImplStub!.set(value))
        
    }
    

	 struct __StubbingProxy_SetCitiesImportedUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var repository: Cuckoo.ClassToBeStubbedProperty<MockSetCitiesImportedUseCase, SettingsRepositoryProtocol> {
	        return .init(manager: cuckoo_manager, name: "repository")
	    }
	    
	    
	    func set<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ClassStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: value) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSetCitiesImportedUseCase.self, method: "set(_: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SetCitiesImportedUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var repository: Cuckoo.VerifyProperty<SettingsRepositoryProtocol> {
	        return .init(manager: cuckoo_manager, name: "repository", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: value) { $0 }]
	        return cuckoo_manager.verify("set(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SetCitiesImportedUseCaseStub: Platform.SetCitiesImportedUseCase {
    
    
     override var repository: SettingsRepositoryProtocol {
        get {
            return DefaultValueRegistry.defaultValue(for: (SettingsRepositoryProtocol).self)
        }
        
        set { }
        
    }
    

    

    
     override func set(_ value: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/UseCases/Platform.UseCaseProvider.swift

import Cuckoo
@testable import Platform

import Domain
import Foundation


public class MockUseCaseProvider: Platform.UseCaseProvider, Cuckoo.ClassMock {
    
    public typealias MocksType = Platform.UseCaseProvider
    
    public typealias Stubbing = __StubbingProxy_UseCaseProvider
    public typealias Verification = __VerificationProxy_UseCaseProvider

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Platform.UseCaseProvider?

    public func enableDefaultImplementation(_ stub: Platform.UseCaseProvider) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public override func makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase {
        
    return cuckoo_manager.call("makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.makeImportCitiesUseCase()
                ,
            defaultCall: __defaultImplStub!.makeImportCitiesUseCase())
        
    }
    
    
    
    public override func makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase {
        
    return cuckoo_manager.call("makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.makeGetCityWeatherUseCase()
                ,
            defaultCall: __defaultImplStub!.makeGetCityWeatherUseCase())
        
    }
    
    
    
    public override func makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase {
        
    return cuckoo_manager.call("makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.makeGetCitiesImportedUseCase()
                ,
            defaultCall: __defaultImplStub!.makeGetCitiesImportedUseCase())
        
    }
    
    
    
    public override func makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase {
        
    return cuckoo_manager.call("makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.makeSetCitiesImportedUseCase()
                ,
            defaultCall: __defaultImplStub!.makeSetCitiesImportedUseCase())
        
    }
    
    
    
    public override func makeGetCitiesUseCase() -> Domain.GetCitiesUseCase {
        
    return cuckoo_manager.call("makeGetCitiesUseCase() -> Domain.GetCitiesUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.makeGetCitiesUseCase()
                ,
            defaultCall: __defaultImplStub!.makeGetCitiesUseCase())
        
    }
    
    
    
    public override func makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase {
        
    return cuckoo_manager.call("makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.makeSaveCitiesUseCase()
                ,
            defaultCall: __defaultImplStub!.makeSaveCitiesUseCase())
        
    }
    

	public struct __StubbingProxy_UseCaseProvider: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func makeImportCitiesUseCase() -> Cuckoo.ClassStubFunction<(), Domain.ImportCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeGetCityWeatherUseCase() -> Cuckoo.ClassStubFunction<(), Domain.GetCityWeatherUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeGetCitiesImportedUseCase() -> Cuckoo.ClassStubFunction<(), Domain.GetCitiesImportedUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeSetCitiesImportedUseCase() -> Cuckoo.ClassStubFunction<(), Domain.SetCitiesImportedUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeGetCitiesUseCase() -> Cuckoo.ClassStubFunction<(), Domain.GetCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeGetCitiesUseCase() -> Domain.GetCitiesUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeSaveCitiesUseCase() -> Cuckoo.ClassStubFunction<(), Domain.SaveCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_UseCaseProvider: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func makeImportCitiesUseCase() -> Cuckoo.__DoNotUse<(), Domain.ImportCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func makeGetCityWeatherUseCase() -> Cuckoo.__DoNotUse<(), Domain.GetCityWeatherUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func makeGetCitiesImportedUseCase() -> Cuckoo.__DoNotUse<(), Domain.GetCitiesImportedUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func makeSetCitiesImportedUseCase() -> Cuckoo.__DoNotUse<(), Domain.SetCitiesImportedUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func makeGetCitiesUseCase() -> Cuckoo.__DoNotUse<(), Domain.GetCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("makeGetCitiesUseCase() -> Domain.GetCitiesUseCase", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func makeSaveCitiesUseCase() -> Cuckoo.__DoNotUse<(), Domain.SaveCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class UseCaseProviderStub: Platform.UseCaseProvider {
    

    

    
    public override func makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.ImportCitiesUseCase).self)
    }
    
    public override func makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.GetCityWeatherUseCase).self)
    }
    
    public override func makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.GetCitiesImportedUseCase).self)
    }
    
    public override func makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.SetCitiesImportedUseCase).self)
    }
    
    public override func makeGetCitiesUseCase() -> Domain.GetCitiesUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.GetCitiesUseCase).self)
    }
    
    public override func makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.SaveCitiesUseCase).self)
    }
    
}

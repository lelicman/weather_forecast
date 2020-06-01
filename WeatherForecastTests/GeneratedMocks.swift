//swiftlint:disable all
// MARK: - Mocks generated from file: Domain/UseCases/Domain.GetCitiesImportedUseCase.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockGetCitiesImportedUseCase: Domain.GetCitiesImportedUseCase, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.GetCitiesImportedUseCase
    
    public typealias Stubbing = __StubbingProxy_GetCitiesImportedUseCase
    public typealias Verification = __VerificationProxy_GetCitiesImportedUseCase

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.GetCitiesImportedUseCase?

    public func enableDefaultImplementation(_ stub: Domain.GetCitiesImportedUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func get() -> Bool {
        
    return cuckoo_manager.call("get() -> Bool",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.get())
        
    }
    

	public struct __StubbingProxy_GetCitiesImportedUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get() -> Cuckoo.ProtocolStubFunction<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGetCitiesImportedUseCase.self, method: "get() -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_GetCitiesImportedUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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

public class GetCitiesImportedUseCaseStub: Domain.GetCitiesImportedUseCase {
    

    

    
    public func get() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/UseCases/Domain.GetCitiesUseCase.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockGetCitiesUseCase: Domain.GetCitiesUseCase, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.GetCitiesUseCase
    
    public typealias Stubbing = __StubbingProxy_GetCitiesUseCase
    public typealias Verification = __VerificationProxy_GetCitiesUseCase

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.GetCitiesUseCase?

    public func enableDefaultImplementation(_ stub: Domain.GetCitiesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func get(with completion: @escaping (Result<[CityType]>) -> Void)  {
        
    return cuckoo_manager.call("get(with: @escaping (Result<[CityType]>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.get(with: completion))
        
    }
    

	public struct __StubbingProxy_GetCitiesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Result<[CityType]>) -> Void)> where M1.MatchedType == (Result<[CityType]>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[CityType]>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetCitiesUseCase.self, method: "get(with: @escaping (Result<[CityType]>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_GetCitiesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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

public class GetCitiesUseCaseStub: Domain.GetCitiesUseCase {
    

    

    
    public func get(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/UseCases/Domain.GetCityWeatherUseCase.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockGetCityWeatherUseCase: Domain.GetCityWeatherUseCase, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.GetCityWeatherUseCase
    
    public typealias Stubbing = __StubbingProxy_GetCityWeatherUseCase
    public typealias Verification = __VerificationProxy_GetCityWeatherUseCase

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.GetCityWeatherUseCase?

    public func enableDefaultImplementation(_ stub: Domain.GetCityWeatherUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)  {
        
    return cuckoo_manager.call("get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)",
            parameters: (cityId, completion),
            escapingParameters: (cityId, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.get(with: cityId, completion: completion))
        
    }
    

	public struct __StubbingProxy_GetCityWeatherUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(City.Identifier, (Result<CityWeatherType>) -> Void)> where M1.MatchedType == City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetCityWeatherUseCase.self, method: "get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_GetCityWeatherUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.__DoNotUse<(City.Identifier, (Result<CityWeatherType>) -> Void), Void> where M1.MatchedType == City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class GetCityWeatherUseCaseStub: Domain.GetCityWeatherUseCase {
    

    

    
    public func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/UseCases/Domain.ImportCitiesUseCase.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockImportCitiesUseCase: Domain.ImportCitiesUseCase, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.ImportCitiesUseCase
    
    public typealias Stubbing = __StubbingProxy_ImportCitiesUseCase
    public typealias Verification = __VerificationProxy_ImportCitiesUseCase

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.ImportCitiesUseCase?

    public func enableDefaultImplementation(_ stub: Domain.ImportCitiesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func get(with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("get(with: @escaping (Result<Void>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.get(with: completion))
        
    }
    

	public struct __StubbingProxy_ImportCitiesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable>(with completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Result<Void>) -> Void)> where M1.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<Void>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockImportCitiesUseCase.self, method: "get(with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_ImportCitiesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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

public class ImportCitiesUseCaseStub: Domain.ImportCitiesUseCase {
    

    

    
    public func get(with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/UseCases/Domain.SaveCitiesUseCase.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockSaveCitiesUseCase: Domain.SaveCitiesUseCase, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.SaveCitiesUseCase
    
    public typealias Stubbing = __StubbingProxy_SaveCitiesUseCase
    public typealias Verification = __VerificationProxy_SaveCitiesUseCase

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.SaveCitiesUseCase?

    public func enableDefaultImplementation(_ stub: Domain.SaveCitiesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func save(cities: [CityType], with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("save(cities: [CityType], with: @escaping (Result<Void>) -> Void)",
            parameters: (cities, completion),
            escapingParameters: (cities, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.save(cities: cities, with: completion))
        
    }
    

	public struct __StubbingProxy_SaveCitiesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func save<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(cities: M1, with completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<([CityType], (Result<Void>) -> Void)> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSaveCitiesUseCase.self, method: "save(cities: [CityType], with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_SaveCitiesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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

public class SaveCitiesUseCaseStub: Domain.SaveCitiesUseCase {
    

    

    
    public func save(cities: [CityType], with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/UseCases/Domain.SetCitiesImportedUseCase.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockSetCitiesImportedUseCase: Domain.SetCitiesImportedUseCase, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.SetCitiesImportedUseCase
    
    public typealias Stubbing = __StubbingProxy_SetCitiesImportedUseCase
    public typealias Verification = __VerificationProxy_SetCitiesImportedUseCase

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.SetCitiesImportedUseCase?

    public func enableDefaultImplementation(_ stub: Domain.SetCitiesImportedUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func set(_ value: Bool)  {
        
    return cuckoo_manager.call("set(_: Bool)",
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.set(value))
        
    }
    

	public struct __StubbingProxy_SetCitiesImportedUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func set<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: value) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSetCitiesImportedUseCase.self, method: "set(_: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_SetCitiesImportedUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func set<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: value) { $0 }]
	        return cuckoo_manager.verify("set(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class SetCitiesImportedUseCaseStub: Domain.SetCitiesImportedUseCase {
    

    

    
    public func set(_ value: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/UseCases/Domain.UseCaseProvider.swift

import Cuckoo
@testable import WeatherForecast

import Foundation


public class MockUseCaseProvider: Domain.UseCaseProvider, Cuckoo.ProtocolMock {
    
    public typealias MocksType = Domain.UseCaseProvider
    
    public typealias Stubbing = __StubbingProxy_UseCaseProvider
    public typealias Verification = __VerificationProxy_UseCaseProvider

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Domain.UseCaseProvider?

    public func enableDefaultImplementation(_ stub: Domain.UseCaseProvider) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase {
        
    return cuckoo_manager.call("makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeImportCitiesUseCase())
        
    }
    
    
    
    public func makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase {
        
    return cuckoo_manager.call("makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeGetCityWeatherUseCase())
        
    }
    
    
    
    public func makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase {
        
    return cuckoo_manager.call("makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeGetCitiesImportedUseCase())
        
    }
    
    
    
    public func makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase {
        
    return cuckoo_manager.call("makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeSetCitiesImportedUseCase())
        
    }
    
    
    
    public func makeGetCitiesUseCase() -> Domain.GetCitiesUseCase {
        
    return cuckoo_manager.call("makeGetCitiesUseCase() -> Domain.GetCitiesUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeGetCitiesUseCase())
        
    }
    
    
    
    public func makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase {
        
    return cuckoo_manager.call("makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeSaveCitiesUseCase())
        
    }
    

	public struct __StubbingProxy_UseCaseProvider: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func makeImportCitiesUseCase() -> Cuckoo.ProtocolStubFunction<(), Domain.ImportCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeGetCityWeatherUseCase() -> Cuckoo.ProtocolStubFunction<(), Domain.GetCityWeatherUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeGetCitiesImportedUseCase() -> Cuckoo.ProtocolStubFunction<(), Domain.GetCitiesImportedUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeSetCitiesImportedUseCase() -> Cuckoo.ProtocolStubFunction<(), Domain.SetCitiesImportedUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeGetCitiesUseCase() -> Cuckoo.ProtocolStubFunction<(), Domain.GetCitiesUseCase> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockUseCaseProvider.self, method: "makeGetCitiesUseCase() -> Domain.GetCitiesUseCase", parameterMatchers: matchers))
	    }
	    
	    func makeSaveCitiesUseCase() -> Cuckoo.ProtocolStubFunction<(), Domain.SaveCitiesUseCase> {
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

public class UseCaseProviderStub: Domain.UseCaseProvider {
    

    

    
    public func makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.ImportCitiesUseCase).self)
    }
    
    public func makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.GetCityWeatherUseCase).self)
    }
    
    public func makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.GetCitiesImportedUseCase).self)
    }
    
    public func makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.SetCitiesImportedUseCase).self)
    }
    
    public func makeGetCitiesUseCase() -> Domain.GetCitiesUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.GetCitiesUseCase).self)
    }
    
    public func makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase  {
        return DefaultValueRegistry.defaultValue(for: (Domain.SaveCitiesUseCase).self)
    }
    
}


// MARK: - Mocks generated from file: WeatherForecast/Converters/WeatherForecast.CityPresentableModelConverter.swift

import Cuckoo
@testable import WeatherForecast

import Domain
import Foundation


 class MockCityPresentableModelConverterType: CityPresentableModelConverterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = CityPresentableModelConverterType
    
     typealias Stubbing = __StubbingProxy_CityPresentableModelConverterType
     typealias Verification = __VerificationProxy_CityPresentableModelConverterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityPresentableModelConverterType?

     func enableDefaultImplementation(_ stub: CityPresentableModelConverterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func from(_ cities: [CityType]) -> [CityPresentableModel] {
        
    return cuckoo_manager.call("from(_: [CityType]) -> [CityPresentableModel]",
            parameters: (cities),
            escapingParameters: (cities),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(cities))
        
    }
    

	 struct __StubbingProxy_CityPresentableModelConverterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ cities: M1) -> Cuckoo.ProtocolStubFunction<([CityType]), [CityPresentableModel]> where M1.MatchedType == [CityType] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType])>] = [wrap(matchable: cities) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityPresentableModelConverterType.self, method: "from(_: [CityType]) -> [CityPresentableModel]", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityPresentableModelConverterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ cities: M1) -> Cuckoo.__DoNotUse<([CityType]), [CityPresentableModel]> where M1.MatchedType == [CityType] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType])>] = [wrap(matchable: cities) { $0 }]
	        return cuckoo_manager.verify("from(_: [CityType]) -> [CityPresentableModel]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityPresentableModelConverterTypeStub: CityPresentableModelConverterType {
    

    

    
     func from(_ cities: [CityType]) -> [CityPresentableModel]  {
        return DefaultValueRegistry.defaultValue(for: ([CityPresentableModel]).self)
    }
    
}


// MARK: - Mocks generated from file: WeatherForecast/Converters/WeatherForecast.CityWeatherPresentableModelConverter.swift

import Cuckoo
@testable import WeatherForecast

import Domain
import Foundation


 class MockCityWeatherPresentableModelConverterType: CityWeatherPresentableModelConverterType, Cuckoo.ProtocolMock {
    
     typealias MocksType = CityWeatherPresentableModelConverterType
    
     typealias Stubbing = __StubbingProxy_CityWeatherPresentableModelConverterType
     typealias Verification = __VerificationProxy_CityWeatherPresentableModelConverterType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CityWeatherPresentableModelConverterType?

     func enableDefaultImplementation(_ stub: CityWeatherPresentableModelConverterType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func from(_ weather: CityWeatherType) -> CityWeatherPresentableModel {
        
    return cuckoo_manager.call("from(_: CityWeatherType) -> CityWeatherPresentableModel",
            parameters: (weather),
            escapingParameters: (weather),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(weather))
        
    }
    

	 struct __StubbingProxy_CityWeatherPresentableModelConverterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ weather: M1) -> Cuckoo.ProtocolStubFunction<(CityWeatherType), CityWeatherPresentableModel> where M1.MatchedType == CityWeatherType {
	        let matchers: [Cuckoo.ParameterMatcher<(CityWeatherType)>] = [wrap(matchable: weather) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityWeatherPresentableModelConverterType.self, method: "from(_: CityWeatherType) -> CityWeatherPresentableModel", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CityWeatherPresentableModelConverterType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ weather: M1) -> Cuckoo.__DoNotUse<(CityWeatherType), CityWeatherPresentableModel> where M1.MatchedType == CityWeatherType {
	        let matchers: [Cuckoo.ParameterMatcher<(CityWeatherType)>] = [wrap(matchable: weather) { $0 }]
	        return cuckoo_manager.verify("from(_: CityWeatherType) -> CityWeatherPresentableModel", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityWeatherPresentableModelConverterTypeStub: CityWeatherPresentableModelConverterType {
    

    

    
     func from(_ weather: CityWeatherType) -> CityWeatherPresentableModel  {
        return DefaultValueRegistry.defaultValue(for: (CityWeatherPresentableModel).self)
    }
    
}

// MARK: - Mocks generated from file: Platform/Repositories/WeatherRepository.swift

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
    

    

    

    
    
    
     func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)  {
        
    return cuckoo_manager.call("get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)",
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
	    
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(City.Identifier, (Result<CityWeatherType>) -> Void)> where M1.MatchedType == City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepositoryProtocol.self, method: "get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", parameterMatchers: matchers))
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
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.__DoNotUse<(City.Identifier, (Result<CityWeatherType>) -> Void), Void> where M1.MatchedType == City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryProtocolStub: WeatherRepositoryProtocol {
    

    

    
     func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockWeatherRepository: WeatherRepository, Cuckoo.ClassMock {
    
     typealias MocksType = WeatherRepository
    
     typealias Stubbing = __StubbingProxy_WeatherRepository
     typealias Verification = __VerificationProxy_WeatherRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: WeatherRepository?

     func enableDefaultImplementation(_ stub: WeatherRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)  {
        
    return cuckoo_manager.call("get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)",
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
	    
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(City.Identifier, (Result<CityWeatherType>) -> Void)> where M1.MatchedType == City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepository.self, method: "get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", parameterMatchers: matchers))
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
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with cityId: M1, completion: M2) -> Cuckoo.__DoNotUse<(City.Identifier, (Result<CityWeatherType>) -> Void), Void> where M1.MatchedType == City.Identifier, M2.MatchedType == (Result<CityWeatherType>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(City.Identifier, (Result<CityWeatherType>) -> Void)>] = [wrap(matchable: cityId) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("get(with: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryStub: WeatherRepository {
    

    

    
     override func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


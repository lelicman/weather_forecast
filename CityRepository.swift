// MARK: - Mocks generated from file: Platform/Repositories/CityRepository.swift

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
    
    
    
     func setCitites(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("setCitites(_: [CityType], with: @escaping (Result<Void>) -> Void)",
            parameters: (cities, completion),
            escapingParameters: (cities, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setCitites(cities, with: completion))
        
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
	    
	    func setCitites<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<([CityType], (Result<Void>) -> Void)> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityRepositoryProtocol.self, method: "setCitites(_: [CityType], with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
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
	    func setCitites<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.__DoNotUse<([CityType], (Result<Void>) -> Void), Void> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("setCitites(_: [CityType], with: @escaping (Result<Void>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityRepositoryProtocolStub: CityRepositoryProtocol {
    

    

    
     func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func setCitites(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCityRepository: CityRepository, Cuckoo.ClassMock {
    
     typealias MocksType = CityRepository
    
     typealias Stubbing = __StubbingProxy_CityRepository
     typealias Verification = __VerificationProxy_CityRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: CityRepository?

     func enableDefaultImplementation(_ stub: CityRepository) {
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
    
    
    
     override func setCitites(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)  {
        
    return cuckoo_manager.call("setCitites(_: [CityType], with: @escaping (Result<Void>) -> Void)",
            parameters: (cities, completion),
            escapingParameters: (cities, completion),
            superclassCall:
                
                super.setCitites(cities, with: completion)
                ,
            defaultCall: __defaultImplStub!.setCitites(cities, with: completion))
        
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
	    
	    func setCitites<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.ClassStubNoReturnFunction<([CityType], (Result<Void>) -> Void)> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityRepository.self, method: "setCitites(_: [CityType], with: @escaping (Result<Void>) -> Void)", parameterMatchers: matchers))
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
	    func setCitites<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ cities: M1, with completion: M2) -> Cuckoo.__DoNotUse<([CityType], (Result<Void>) -> Void), Void> where M1.MatchedType == [CityType], M2.MatchedType == (Result<Void>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<([CityType], (Result<Void>) -> Void)>] = [wrap(matchable: cities) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("setCitites(_: [CityType], with: @escaping (Result<Void>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityRepositoryStub: CityRepository {
    

    

    
     override func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func setCitites(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


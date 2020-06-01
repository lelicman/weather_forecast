// MARK: - Mocks generated from file: Platform/Repositories/ImportCityRepository.swift

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



 class MockImportCityRepository: ImportCityRepository, Cuckoo.ClassMock {
    
     typealias MocksType = ImportCityRepository
    
     typealias Stubbing = __StubbingProxy_ImportCityRepository
     typealias Verification = __VerificationProxy_ImportCityRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: ImportCityRepository?

     func enableDefaultImplementation(_ stub: ImportCityRepository) {
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

 class ImportCityRepositoryStub: ImportCityRepository {
    

    

    
     override func getCities(with completion: @escaping (Result<[CityType]>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Platform/Converters/CityConverter.swift

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
    

    

    

    
    
    
     func from(_ response: [CityResponse]) -> [CityType] {
        
    return cuckoo_manager.call("from(_: [CityResponse]) -> [CityType]",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(response))
        
    }
    
    
    
     func from(_ models: [RealmCity]) -> [CityType] {
        
    return cuckoo_manager.call("from(_: [RealmCity]) -> [CityType]",
            parameters: (models),
            escapingParameters: (models),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.from(models))
        
    }
    

	 struct __StubbingProxy_CityConverterType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.ProtocolStubFunction<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverterType.self, method: "from(_: [CityResponse]) -> [CityType]", parameterMatchers: matchers))
	    }
	    
	    func from<M1: Cuckoo.Matchable>(_ models: M1) -> Cuckoo.ProtocolStubFunction<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverterType.self, method: "from(_: [RealmCity]) -> [CityType]", parameterMatchers: matchers))
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
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.__DoNotUse<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("from(_: [CityResponse]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ models: M1) -> Cuckoo.__DoNotUse<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return cuckoo_manager.verify("from(_: [RealmCity]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityConverterTypeStub: CityConverterType {
    

    

    
     func from(_ response: [CityResponse]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
     func from(_ models: [RealmCity]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
}



 class MockCityConverter: CityConverter, Cuckoo.ClassMock {
    
     typealias MocksType = CityConverter
    
     typealias Stubbing = __StubbingProxy_CityConverter
     typealias Verification = __VerificationProxy_CityConverter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: CityConverter?

     func enableDefaultImplementation(_ stub: CityConverter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func from(_ response: [CityResponse]) -> [CityType] {
        
    return cuckoo_manager.call("from(_: [CityResponse]) -> [CityType]",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                super.from(response)
                ,
            defaultCall: __defaultImplStub!.from(response))
        
    }
    
    
    
     override func from(_ models: [RealmCity]) -> [CityType] {
        
    return cuckoo_manager.call("from(_: [RealmCity]) -> [CityType]",
            parameters: (models),
            escapingParameters: (models),
            superclassCall:
                
                super.from(models)
                ,
            defaultCall: __defaultImplStub!.from(models))
        
    }
    

	 struct __StubbingProxy_CityConverter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.ClassStubFunction<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverter.self, method: "from(_: [CityResponse]) -> [CityType]", parameterMatchers: matchers))
	    }
	    
	    func from<M1: Cuckoo.Matchable>(_ models: M1) -> Cuckoo.ClassStubFunction<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCityConverter.self, method: "from(_: [RealmCity]) -> [CityType]", parameterMatchers: matchers))
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
	    func from<M1: Cuckoo.Matchable>(_ response: M1) -> Cuckoo.__DoNotUse<([CityResponse]), [CityType]> where M1.MatchedType == [CityResponse] {
	        let matchers: [Cuckoo.ParameterMatcher<([CityResponse])>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("from(_: [CityResponse]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func from<M1: Cuckoo.Matchable>(_ models: M1) -> Cuckoo.__DoNotUse<([RealmCity]), [CityType]> where M1.MatchedType == [RealmCity] {
	        let matchers: [Cuckoo.ParameterMatcher<([RealmCity])>] = [wrap(matchable: models) { $0 }]
	        return cuckoo_manager.verify("from(_: [RealmCity]) -> [CityType]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CityConverterStub: CityConverter {
    

    

    
     override func from(_ response: [CityResponse]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
     override func from(_ models: [RealmCity]) -> [CityType]  {
        return DefaultValueRegistry.defaultValue(for: ([CityType]).self)
    }
    
}


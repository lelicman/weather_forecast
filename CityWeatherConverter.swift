// MARK: - Mocks generated from file: Platform/Converters/CityWeatherConverter.swift

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



 class MockCityWeatherConverter: CityWeatherConverter, Cuckoo.ClassMock {
    
     typealias MocksType = CityWeatherConverter
    
     typealias Stubbing = __StubbingProxy_CityWeatherConverter
     typealias Verification = __VerificationProxy_CityWeatherConverter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: CityWeatherConverter?

     func enableDefaultImplementation(_ stub: CityWeatherConverter) {
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

 class CityWeatherConverterStub: CityWeatherConverter {
    

    

    
     override func from(_ response: CityWeatherResponse) -> CityWeatherType  {
        return DefaultValueRegistry.defaultValue(for: (CityWeatherType).self)
    }
    
}


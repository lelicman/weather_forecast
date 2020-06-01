// MARK: - Mocks generated from file: Platform/Converters/RealmCityConverter.swift

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



 class MockRealmCityConverter: RealmCityConverter, Cuckoo.ClassMock {
    
     typealias MocksType = RealmCityConverter
    
     typealias Stubbing = __StubbingProxy_RealmCityConverter
     typealias Verification = __VerificationProxy_RealmCityConverter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: RealmCityConverter?

     func enableDefaultImplementation(_ stub: RealmCityConverter) {
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

 class RealmCityConverterStub: RealmCityConverter {
    

    

    
     override func from(_ cities: [CityType]) -> [RealmCity]  {
        return DefaultValueRegistry.defaultValue(for: ([RealmCity]).self)
    }
    
}


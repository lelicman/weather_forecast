// MARK: - Mocks generated from file: Platform/Repositories/SettingsRepository.swift

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



 class MockSettingsRepository: SettingsRepository, Cuckoo.ClassMock {
    
     typealias MocksType = SettingsRepository
    
     typealias Stubbing = __StubbingProxy_SettingsRepository
     typealias Verification = __VerificationProxy_SettingsRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SettingsRepository?

     func enableDefaultImplementation(_ stub: SettingsRepository) {
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

 class SettingsRepositoryStub: SettingsRepository {
    
    
     override var areCitiesImported: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
        set { }
        
    }
    

    

    
}


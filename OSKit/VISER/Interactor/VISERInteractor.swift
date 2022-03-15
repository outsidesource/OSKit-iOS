//
//  VISERInteractor.swift
//  OSKit
//
//  Created by Brody Robertson.
//  Copyright © 2020 Outside Source. All rights reserved.
//

import Resolver

open class VISERInteractor<S: IState>: IInteractor {
    
    public let id: String
    
    @Injected public private(set) var actionDispatcher: IActionDispatcher
    public lazy var statePresenter: StatePresenter<S> = Resolver.root.resolve(args: self.id)
    
    deinit {
        self.dispatch(StateContainerAction.deinitState(id))
    }
    
    public init(_ id: String = UUID().uuidString) {
        self.id = id
        
        // TODO: - 0 IMPROVE by injecting initial state and dispatch StateContainerAction.initState here
        /// It is the responsibility of subclasses to inflate initial state and dispatch accordingly
        
    }
}
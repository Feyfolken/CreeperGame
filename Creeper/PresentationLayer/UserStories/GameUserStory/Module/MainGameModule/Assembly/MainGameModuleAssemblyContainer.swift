//
//  MainGameModuleAssemblyContainer.swift
//  Investment
//
//  Created by Vadim on 12/12/2019.
//  Copyright © 2019 Feyfolken. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

class MainGameModuleAssemblyContainer: Assembly {
	
	func assemble(container: Container) {
		container.register(MainGameModuleInteractor.self) { (r, presenter: MainGameModulePresenter) in
			let interactor = MainGameModuleInteractor()
			interactor.output = presenter
			
			return interactor
		}
		
		container.register(MainGameModuleRouter.self) { (r, viewController: MainGameViewController) in
			let router = MainGameModuleRouter()
			
			return router
		}
		
		container.register(MainGameModulePresenter.self) { (r, viewController: MainGameViewController) in
			let presenter = MainGameModulePresenter()
            presenter.view = viewController as MainGameModuleViewInput
			presenter.interactor = r.resolve(MainGameModuleInteractor.self, argument: presenter)
			presenter.router = r.resolve(MainGameModuleRouter.self, argument: viewController)
			
			return presenter
		}
		
		container.storyboardInitCompleted(MainGameViewController.self) { r, viewController in
			viewController.output = r.resolve(MainGameModulePresenter.self, argument: viewController)
		}
        
        //MARK: - Scene
        container.register(MainGameModuleSceneInteractor.self) { (r, scenePresenter: MainGameModuleScenePresenter) in
            let sceneInteractor = MainGameModuleSceneInteractor()
            sceneInteractor.output = scenePresenter
            
            return sceneInteractor
        }
        
        container.register(MainGameModuleScenePresenter.self) { (r, skScene: MainGameModuleScene) in
            let scenePresenter = MainGameModuleScenePresenter()
            scenePresenter.scene = skScene
            scenePresenter.interactor = r.resolve(MainGameModuleInteractor.self, argument: scenePresenter)
            
            return scenePresenter
        }
        
        container.register(MainGameModuleScene.self) { (r, scenePresenter: MainGameModuleScenePresenter) in
            let skScene = MainGameModuleScene()
            skScene.output = scenePresenter
        
            return skScene
        }
	}
}

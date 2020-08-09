//
//  MainGameModuleScenePresenter.swift
//  Creeper
//
//  Created by Feyfolken on 09.08.2020.
//  Copyright © 2020 Feyfolken. All rights reserved.
//

import UIKit

class MainGameModuleScenePresenter {
    
    weak var scene: MainGameModuleScene!
    weak var interactor: MainGameModuleInteractorInput!
}

extension MainGameModuleScenePresenter: MainGameModuleSceneOutput {
    
    
}

extension MainGameModuleScenePresenter: MainGameModuleSceneInteractorOutput {
    
}

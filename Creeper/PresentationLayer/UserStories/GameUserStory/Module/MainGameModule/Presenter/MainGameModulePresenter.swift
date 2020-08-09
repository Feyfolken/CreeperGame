//
//  MainGameModulePresenter.swift
//  Investment
//
//  Created by Vadim on 12/12/2019.
//  Copyright © 2019 Feyfolken. All rights reserved.
//

import UIKit

class MainGameModulePresenter {
    
    weak var view: MainGameModuleViewInput!
    var interactor: MainGameModuleInteractorInput!
    var router: MainGameModuleRouterInput!
}

extension MainGameModulePresenter: MainGameModuleInput {
    
}

extension MainGameModulePresenter: MainGameModuleViewOutput {
    
    func viewIsReady() {
        view.setupInitialState()
    }
}

extension MainGameModulePresenter: MainGameModuleInteractorOutput {
    
}

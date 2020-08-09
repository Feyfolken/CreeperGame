//
//  ApplicationAssemblyHelper.swift
//  ViperMCFSwift
//
//  Created by Александр on 17/01/2019.
//  Copyright © 2019. All rights reserved.
//

import Foundation
import Swinject

class ApplicationAssemblyHelper {

    func collectAssemblyClasses() -> Array<Assembly> {
        var allClassesCount: UInt32 = 0
        let allClasses = objc_copyClassList(&allClassesCount)!

        return UnsafeBufferPointer(start: allClasses, count: Int(allClassesCount))
            .filter{$0 is Assembly.Type}
            .map {$0.alloc() as! Assembly}
    }
}


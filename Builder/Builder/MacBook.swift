//
//  MacBook.swift
//  Builder
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

import Foundation

enum StorageType : Int {
    case SSD
    case HDD
    case SSD_HDD
}

enum DisplayType : Int {
    case Standard
    case Retina
}

enum CPUType : Int {
    case i5
    case i7
}

enum ScreenSize : Int {
    case s11inch = 11
    case s13inch = 13
    case s15inch = 15
}

class MacBook {
    let storageType : StorageType
    let displayType : DisplayType
    let cpuType : CPUType
    let screenSize : ScreenSize
    
    init(storage: StorageType, display: DisplayType, cpu: CPUType, screen : ScreenSize) {
        storageType = storage
        displayType = display
        cpuType = cpu
        screenSize = screen
    }
}
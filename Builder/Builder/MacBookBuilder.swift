//
//  MacBookBuilder.swift
//  Builder
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

import Foundation

class MacBookBuilder : MacBuilder {
    var display : DisplayType = DisplayType.Standard
    var screen : ScreenSize = ScreenSize.s13inch
    var storage : StorageType = StorageType.HDD
    var cpu : CPUType = CPUType.i5
    
    func setStandardDisplay() {
        display = DisplayType.Standard
    }
    func setRetinaDisplay() {
        display = DisplayType.Retina
    }
    
    func set11Inches() {
        screen = ScreenSize.s11inch
    }
    func set13Inches() {
        screen = ScreenSize.s13inch
    }
    func set15Inches() {
        screen = ScreenSize.s15inch
    }
    
    func setSSD() {
        storage = StorageType.SSD
    }
    func setHDD() {
        storage = StorageType.HDD
    }
    func setSSDandHDD() {
        storage = StorageType.SSD_HDD
    }
    
    func seti5() {
        cpu = CPUType.i5
    }
    func seti7() {
        cpu = CPUType.i7
    }
    
    func getResult() -> MacBook {
        let mb : MacBook = MacBook(storage: storage, display: display, cpu: cpu, screen: screen);
        return mb
    }
    
}
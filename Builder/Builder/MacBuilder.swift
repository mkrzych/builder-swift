//
//  MacBuilder.swift
//  Builder
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

import Foundation

protocol MacBuilder {
    
    func setStandardDisplay()
    func setRetinaDisplay()
    
    func set11Inches()
    func set13Inches()
    func set15Inches()
    
    func setSSD()
    func setHDD()
    func setSSDandHDD()
    
    func seti5()
    func seti7()
    
    func getResult() -> MacBook
    
}
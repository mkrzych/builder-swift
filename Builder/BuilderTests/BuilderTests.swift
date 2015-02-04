//
//  BuilderTests.swift
//  BuilderTests
//
//  Created by Marcin Krzych on 30/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

import UIKit
import XCTest

class BuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBuildMacBookAir() {
        let mbb = MacBookBuilder();
        mbb.set11Inches();
        mbb.setStandardDisplay();
        mbb.setSSD();
        mbb.seti5();
        let mb : MacBook = mbb.getResult();
    
        XCTAssertEqual(mb.cpuType, CPUType.i5, "CPU Incorrect");
        XCTAssertEqual(mb.storageType, StorageType.SSD, "Storage Incorrect");
        XCTAssertEqual(mb.displayType, DisplayType.Standard, "Display Incorrect");
        XCTAssertEqual(mb.screenSize, ScreenSize.s11inch, "Screen Size Incorrect");
    }
    
    func testBuildMacBookProRetina() {
        let mbb = MacBookBuilder()
        mbb.set15Inches()
        mbb.setRetinaDisplay()
        mbb.setSSD()
        mbb.seti7()

        let mb : MacBook = mbb.getResult()
    
        XCTAssertEqual(mb.cpuType, CPUType.i7, "CPU Incorrect");
        XCTAssertEqual(mb.storageType, StorageType.SSD, "Storage Incorrect");
        XCTAssertEqual(mb.displayType, DisplayType.Retina, "Display Incorrect");
        XCTAssertEqual(mb.screenSize, ScreenSize.s15inch, "Screen Size Incorrect");
    }
    
    func testBuildMacBookPro() {
        let mbb = MacBookBuilder()
        mbb.set13Inches()
        mbb.setStandardDisplay()
        mbb.setHDD()
        mbb.seti5()

        let mb : MacBook = mbb.getResult();
    
        XCTAssertEqual(mb.cpuType, CPUType.i5, "CPU Incorrect");
        XCTAssertEqual(mb.storageType, StorageType.HDD, "Storage Incorrect");
        XCTAssertEqual(mb.displayType, DisplayType.Standard, "Display Incorrect");
        XCTAssertEqual(mb.screenSize, ScreenSize.s13inch, "Screen Size Incorrect");
    }
    
}

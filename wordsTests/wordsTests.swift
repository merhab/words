//
//  wordsTests.swift
//  wordsTests
//
//  Created by merhab on 15‏/9‏/2018.
//  Copyright © 2018 merhab. All rights reserved.
//

import XCTest
@testable import words
@testable import words

class wordsTests: XCTestCase {
    
    func testingWords(){
        let n = Nass(nass: "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿ ١ ﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿ ٢ ﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿ ٣ ﴾ مَالِكِ يَوْمِ الدِّينِ ﴿ ٤ ﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿ ٥ ﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿ ٦ ﴾ ")
    print (Array(n.nass))
 //       print (n.removeTashkil())
        print (Array(n.removeTashkil()))
      print(n.getWords())
        print(n.normalize())
        
        let mutableString = NSMutableString(string: n.nass) as CFMutableString
        CFStringTransform(mutableString, nil, kCFStringTransformStripCombiningMarks, Bool(truncating: 0))
        let normalized = (mutableString as NSMutableString).copy() as! NSString
        
        print(normalized)
        
        let components = normalized.components(separatedBy: .whitespacesAndNewlines)
        let words = components.filter { !$0.isEmpty }
        
        print(words)
        

        }
    
    func testing2()  {
        let pref = StemConst.suffixList
        var prefNorm = [String]()
        for i in pref {
            let str = Nass(nass: i).normalize()
            if i ==  "أف" {
              let nono = Nass(nass: i).normalize()
                print ("\(i)  ----> \(nono) ")
            }
                
            print("\(i)  ----> \(str) ")
            if !prefNorm.contains(str){prefNorm.append(str)}
            
    }
        print(prefNorm)
    }
    
    func testingWord()  {
       print( Kalima.getJithr(wrd : "لأقتلنك"))
         print( Kalima.getJithr(wrd : "مقتول"))
         print( Kalima.getJithr(wrd : "قتال"))
         print( Kalima.getJithr(wrd : "قتلوكم"))
         print( Kalima.getJithr(wrd : "اقتتل"))
    }
    
    
    override func setUp() {
        
    
        
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

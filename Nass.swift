//
//  Text.swift
//  words
//
//  Created by merhab on 15‏/9‏/2018.
//  Copyright © 2018 merhab. All rights reserved.
//

import Foundation
class Nass {
    var nass :String
    let horof = "اأإآءؤئبتثجحخدذرزسشضصطظعغفقكلمنهويىة "
    + "1234567890١٢٣٤٥٦٧٨٩٠"
    let alif = "اأإآؤئ"
    var kalim = [String]()
    init(nass : String) {
        self.nass = nass
    }
    func removeTashkil() -> String {

        let mutableString = NSMutableString(string: nass) as CFMutableString
        CFStringTransform(mutableString, nil, kCFStringTransformStripCombiningMarks, Bool(truncating: 0))
        let normalized = (mutableString as NSMutableString).copy() as! NSString
        

        return String(normalized)
    }
    func getWords(){
      
       let str = self.normalize()
        let components = str.components(separatedBy: .whitespacesAndNewlines)
        let words = components.filter { !$0.isEmpty }
        
        print(words)
    }
    
    func normalize()->String{
        let nassArray = Array(self.removeTashkil())
        var NormalizedArray = [Character]()
        for char in nassArray {
            if horof.contains(char){
                if alif.contains(char){
                    NormalizedArray.append("ء")
                    
                }else if char == "ي"
                { NormalizedArray.append("ى")
                }else {
                NormalizedArray.append(char)
                }
            }
        }
        return String(NormalizedArray)
    }
}

extension String {
    var words: [String] {
        var words: [String] = []
        self.enumerateSubstrings(in: startIndex..<endIndex, options: .byWords) { word,_,_,_ in
            guard let word = word else { return }
            words.append(word)
        }
        return words
    }
}


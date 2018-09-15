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
    let horof = "اأإآءؤئبتثجحخدذرزسشضصعغفقكلمنهويىة "
    let alif = "اأإآؤئ"
    
    init(nass : String) {
        self.nass = nass
    }
    func normalize()->String{
        let nassArray = Array(nass)
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

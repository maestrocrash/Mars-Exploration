//
//  main.swift
//  Mars Exploration
//
//  Created by Shakhvorostov on 09.10.2019.
//  Copyright © 2019 Shakhvorostov. All rights reserved.
//

import Foundation

func marsExploration(s: String) -> Int {
    var n: Int = 0
    let line: [Character] = ["S", "O", "S"]
    var i: Int = 0
    var array = Array(s)

    while array.count != 0 {
        while i != line.count {
            if array[i] != line[i] {
                n += 1
            }
            i += 1
        }
        array.removeFirst(i)
        i = 0
    }
    return n
}

print(marsExploration(s: "SOSSPSSQSSOR"))

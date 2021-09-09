//
//  Dictionary+Ext.swift
//  MarvelExample
//
//  Created by Ajay Sagar Parwani on 15/07/2021.
//

import Foundation

extension Dictionary {
    mutating func merge(dict: [Key: Value]) {
        for (k, v) in dict {
            updateValue(v, forKey: k)
        }
    }
}

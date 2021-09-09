//
//  Result.swift
//  MarvelExample
//
//  Created by Ajay Sagar Parwani on 15/07/2021.
//

import Foundation

class Result<T: Codable>: Codable {
    
    var code: Int
    var status: String
    var copyright: String
    var data: Response<T>
    
}

//
//  CharacterViewModel.swift
//  MarvelExample
//
//  Created by Ajay Sagar Parwani on 14/07/2021.
//

import Foundation

class CharacterViewModel {
    
    fileprivate weak var dataSource : CharacterDataSourceDelegate?
    fileprivate var service: CharacterService
    
    
    fileprivate var pageNo = 0
    
    init(dataSource: CharacterDataSourceDelegate) {
        self.dataSource = dataSource
        service = CharacterService()
    }
    
    func getCharacters() {
        service.getCharacters(withLimit: NetworkConstant.LIMIT, withPage: pageNo) { result, error  in
            
            guard let response = result else { return }
            switch (response.code) {
                case 200:
                    self.dataSource?.update(data: response.data)
                break
                
                default:
                break
            }
        }
    }
    
    func loadMoreCharacters() {
        pageNo = pageNo + 1
        getCharacters()
    }

}

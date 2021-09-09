//
//  ViewController.swift
//  iOS Challenge
//
//  Created by Ajay Sagar Parwani on 14/07/2021.
//

import UIKit

class CharacterViewController: UITableViewController, CharactersView {
    
    let dataSource = CharacterDataSourceDelegate()
        
        lazy var viewModel : CharacterViewModel = {
            dataSource.view = self
            let viewModel = CharacterViewModel(dataSource: dataSource)
            return viewModel
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: CharacterTableViewCell.NIB, bundle: nil), forCellReuseIdentifier: CharacterTableViewCell.REUSE_IDENTIFIER)
        self.tableView.dataSource = self.dataSource
        self.tableView.delegate = self.dataSource
        
        self.viewModel.getCharacters()
    }
    
    func notifyDataUpdate() {
        self.tableView.reloadData()
    }
    
    func getMoreCharacters() {
        self.viewModel.loadMoreCharacters()
    }
    
}

protocol CharactersView {
    func getMoreCharacters()
    func notifyDataUpdate()
}


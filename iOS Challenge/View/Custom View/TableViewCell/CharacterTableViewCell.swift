//
//  SeriesTableViewCell.swift
//  MarvelExample
//
//  Created by Ajay Sagar Parwani on 15/07/2021.
//

import UIKit

class SeriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgCharacterThumbnail: UIImageView!
    @IBOutlet weak var lblCharacterTitle: UILabel!
    @IBOutlet weak var lblCharacterDesc: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

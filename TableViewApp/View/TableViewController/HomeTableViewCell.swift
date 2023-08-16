//
//  HomeTableViewCell.swift
//  TableViewApp
//
//  Created by Kadir Hocaoğlu on 16.08.2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var sinceLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func update(with places: Places){
        sinceLabel.text = "\(places.since)"
        nameLabel.text = "\(places.name)"
        descriptionLabel.text = "\(places.description)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

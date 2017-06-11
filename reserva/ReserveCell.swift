//
//  ReserveCell.swift
//  reserva
//
//  Created by Ali Abouelatta on 6/11/17.
//  Copyright © 2017 Ali Abouelatta. All rights reserved.
//

import UIKit

class ReserveCell: UITableViewCell {

    @IBOutlet weak var clubLabel: UILabel!
    @IBOutlet weak var previewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(reservePlace: ReservePlace) {
        clubLabel.text = reservePlace.title
        
        let url = URL(string: reservePlace.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.previewImage.image =
                    UIImage(data: data)
                }
            } catch {
            
            }
        }
    }
}

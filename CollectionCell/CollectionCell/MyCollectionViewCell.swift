//
//  MyCollectionViewCell.swift
//  CollectionCell
//
//  Created by Gianni Crivello on 4/1/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLable: UILabel!
    @IBOutlet var myImage: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: Model){
        self.myLable.text = model.text
        self.myImage.image = UIImage(named: model.imageName)
        self.myImage.contentMode = .scaleAspectFill
        
    }

}

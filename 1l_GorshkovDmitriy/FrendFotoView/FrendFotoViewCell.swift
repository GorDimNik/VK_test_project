//
//  FrendFotoViewCell.swift
//  1l_GorshkovDmitriy
//
//  Created by Дмитрий Горшков on 02.04.2020.
//  Copyright © 2020 Дмитрий Горшков. All rights reserved.
//

import UIKit

class FrendFotoViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var lableLike: UILabel!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var ViewLike: LikeView!
    
    @IBAction func actionLikeButton(_ sender: Any) {
        if !buttonLike.isSelected {
            buttonLike.isSelected = true
            let t:Int? = Int(lableLike.text!)
            lableLike.text = String(t! + 1)
        }else{
            buttonLike.isSelected = false
            let t:Int? = Int(lableLike.text!)
            lableLike.text = String(t! - 1)
        }
    }    
    
}

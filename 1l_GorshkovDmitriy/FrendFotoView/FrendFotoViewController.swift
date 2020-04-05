//
//  FrendFotoViewController.swift
//  1l_GorshkovDmitriy
//
//  Created by Дмитрий Горшков on 02.04.2020.
//  Copyright © 2020 Дмитрий Горшков. All rights reserved.
//

import UIKit

class FrendFotoViewController: UICollectionViewController {

    var frend: Friend!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(frend.title)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        //print (frend.photos.count)
        return frend.photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrendFotoViewCell", for: indexPath) as! FrendFotoViewCell
        let photo = frend.photos[indexPath.row]
        cell.photo.image = photo
        return cell
    }


}

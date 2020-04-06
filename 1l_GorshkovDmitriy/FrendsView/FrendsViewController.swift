//
//  FrendsViewController.swift
//  1l_GorshkovDmitriy
//
//  Created by Дмитрий Горшков on 02.04.2020.
//  Copyright © 2020 Дмитрий Горшков. All rights reserved.
//

import UIKit

class FrendsViewController: UITableViewController {
    
    var frends: [Friend] = [
        Friend(title: "Иван", avatar: UIImage(named: "iconVK"), photos: [
            UIImage(named: "iconVK"),
        ]),
        
        Friend(title: "Петр", avatar: UIImage(named: "iconVK"), photos: [
            UIImage(named: "iconVK"),
            UIImage(named: "iconVK"),
        ]),
        Friend(title: "Евгений", avatar: UIImage(named: "iconVK"), photos: [
            UIImage(named: "iconVK"),
            UIImage(named: "iconVK"),
            UIImage(named: "iconVK")
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FrendsViewCell", for: indexPath) as! FrendsViewCell
        cell.friendName.text = frends[indexPath.row].title
        cell.friendAvatarImageView.image = frends[indexPath.row].avatar
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let frendFotoViewController = segue.destination as? FrendFotoViewController { //проверка перехода на нужный контроллер
            if let indexPath = tableView.indexPathForSelectedRow {
                let frend = frends[indexPath.row]
                frendFotoViewController.frend = frend
            }
            
        }
    }
    
    
    
    
    
}
    

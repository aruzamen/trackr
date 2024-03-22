//
//  HomeController.swift
//  Trackr
//
//  Created by Marcelo Aruzamen on 21/3/24.
//

import UIKit

class HomeController: UIViewController {
    
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func viewDidLoad() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if let currentUser = appDelegate.currentUser {
            emailLabel.text = currentUser.email
            avatarImageView.image = UIImage(named: currentUser.avatar)
        }
    }
}

//
//  ViewController.swift
//  Trackr
//
//  Created by Marcelo Aruzamen on 21/3/24.
//

import UIKit

class LoginController: UIViewController {
    
    var users: [User] = [
        User(username: "test", fullname: "Test User", email: "test@mail.com", avatar: "test-avatar"),
        User(username: "admin", fullname: "Admin User", email: "admin@mail.com", avatar: "admin-avatar")
    ]
    
    @IBOutlet weak var usernameTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.currentUser = users.last
        
        if usernameTextfield.text == "test" {
            appDelegate.currentUser = users.first
        }
        
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeSegue", let homeController = segue.destination as? HomeController {
            navigationController?.pushViewController(homeController, animated: true)
        }
    }
}


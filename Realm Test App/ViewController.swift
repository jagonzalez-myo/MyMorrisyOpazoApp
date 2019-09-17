//
//  ViewController.swift
//  Realm Test App
//
//  Created by Javier González Ovalle on 9/5/19.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let note = Note()
        note.id = 1
        note.title = "Shopping List"
        note.text = "milk, butter, cake, apples"
        print("hello world")
        
    }
    
    @IBAction func zombie41ButtonAction(_ sender: UIButton) {
        let packageDetailsVC = PackageDetailsViewController()
        self.navigationController?.pushViewController(packageDetailsVC, animated: true)
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

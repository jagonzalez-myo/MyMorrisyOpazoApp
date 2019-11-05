//
//  Copyright © 2019. All rights reserved.
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
    
    @IBAction func enterButtonAction(_ sender: UIButton) {
        let newViewController = SecondViewController()
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
}

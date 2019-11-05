//
//  Copyright © 2019. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func enterButtonAction(_ sender: UIButton) {
        let newViewController = SecondViewController()
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
}

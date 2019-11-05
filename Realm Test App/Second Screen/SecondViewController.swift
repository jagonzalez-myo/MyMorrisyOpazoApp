//
//  Copyright © 2019. All rights reserved.
//

import UIKit

struct Person {
    let id: Int
    let name: String
}

class DataManager: Any {
    private let people: [Person]
    func amountOfPeople() -> Int {
        return people.count
    }
    
    func dataFromPerson(at index: Int) -> Person? {
        return people[index]
    }
    
    init() {
        people = [ Person(id: 12, name: "Pedro"),
                   Person(id: 23, name: "Juan"),
                   Person(id: 34, name: "Diego"),
                   Person(id: 45, name: "Hugo"),
                   Person(id: 56, name: "Francisco"),
                   Person(id: 67, name: "Luis")]
    }
}

class SecondViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!
    private let data = DataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        configureTableView()
    }

    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SecondViewController: UITableViewDelegate {

}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.amountOfPeople()
    }
    
    static let cellIdentifier = "Identifier"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: SecondViewController.cellIdentifier)
        if  cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: SecondViewController.cellIdentifier)
        }
        cell.backgroundColor = .lightGray
        
        guard let singlePerson = data.dataFromPerson(at: indexPath.row) else {
            return cell
        }
        cell.textLabel?.text = "\(singlePerson.id) - \(singlePerson.name)"
        return cell
    }
}

//
//  Copyright © 2019. All rights reserved.
//

import UIKit
import Rswift

final class SecondViewController: UIViewController {
    
    // MARK: - Views -
    @IBOutlet private var tableView: UITableView!
    
    // MARK: - Attributes -
    private let viewModel: SecondViewModel
    
    // MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        configureTableView()
    }
    
    // MARK: - Init -
    init(viewModel: SecondViewModel = SecondViewModel(dataManager: DataManager())) {
        self.viewModel = viewModel
        super.init(nibName: "SecondViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: - Utils -
    func configureTableView() {
        tableView.register(UINib(nibName: PersonTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: PersonTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate -
extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let person = viewModel.dataFromPerson(at: indexPath.row) else { return }
        let viewController = DetailViewController(person: person)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: - UITableViewDataSource -
extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.amountOfPeople()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier) as! PersonTableViewCell
        if let person = viewModel.dataFromPerson(at: indexPath.row) {
            cell.configure(with: person)
        }
        return cell
    }
}

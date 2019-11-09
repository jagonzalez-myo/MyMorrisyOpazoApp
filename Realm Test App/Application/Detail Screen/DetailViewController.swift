//
//  DetailViewController.swift
//  Realm Test App
//
//  Created by MAC on 08/11/2019.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import UIKit

final class DetailViewController: UIViewController {
    
    // MARK: - Views -
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!
    
    // MARK: - Attributes -
    private let person: PersonViewModel

    // MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Init -
    init(person: PersonViewModel) {
        self.person = person
        super.init(nibName: "DetailViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Utils -
    private func configureUI() {
        nameLabel.text = person.name
        idLabel.text = "ID: \(person.id)"
    }
    
}

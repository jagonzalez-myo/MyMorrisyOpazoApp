//
//  PersonTableViewCell.swift
//  Realm Test App
//
//  Created by MAC on 08/11/2019.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import UIKit

final class PersonTableViewCell: UITableViewCell {
    
    // MARK: - Views -
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!
    
    // MARK: - Constants -
    static let identifier: String = "PersonTableViewCell"

    // MARK: - Life Cycle -
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    // MARK: - Configuration -
    func configure(with viewModel: PersonViewModel) {
        self.nameLabel.text = viewModel.name
        self.idLabel.text = viewModel.id
    }
    
}

//
//  PersonViewModel.swift
//  Realm Test App
//
//  Created by MAC on 08/11/2019.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import Foundation

struct PersonViewModel {
    let name: String
    let id: String
}

extension PersonViewModel {
    init(person: Person) {
        self.name = person.name
        self.id = person.id.description
    }
}

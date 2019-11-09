//
//  DataManager.swift
//  Realm Test App
//
//  Created by MAC on 08/11/2019.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import Foundation

class DataManager: Any {
    private let people: [Person]
    func amountOfPeople() -> Int {
        return people.count
    }
    
    func dataFromPerson(at index: Int) -> Person? {
        return people[index]
    }
    
    init() {
        people = [
            Person(id: 12, name: "Pedro"),
            Person(id: 23, name: "Juan"),
            Person(id: 34, name: "Diego"),
            Person(id: 45, name: "Hugo"),
            Person(id: 56, name: "Francisco"),
            Person(id: 67, name: "Luis")
        ].sorted(by: \.name)
    }
}

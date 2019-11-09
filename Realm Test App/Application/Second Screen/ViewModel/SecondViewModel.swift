//
//  SecondViewModel.swift
//  Realm Test App
//
//  Created by MAC on 08/11/2019.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import RxSwift
import RxRelay

final class SecondViewModel {
    
    // MARK: - Attributes -
    private let dataManager: DataManager
    
    // MARK: - Init -
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    
    // MARK: - Utils -
    func amountOfPeople() -> Int {
        return dataManager.amountOfPeople()
    }
    
    func dataFromPerson(at index: Int) -> PersonViewModel? {
        guard let data = dataManager.dataFromPerson(at: index) else {
            return nil
        }
        
        return PersonViewModel(person: data)
    }
    
}

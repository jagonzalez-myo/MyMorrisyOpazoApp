//
//  DataModel.swift
//  Realm Test App
//
//  Created by Javier González Ovalle on 9/13/19.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import Foundation
import RealmSwift

class Note: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var created = Date()
    @objc dynamic var text = ""
    
    override static func primaryKey() -> String {
        return "id"
    }
}

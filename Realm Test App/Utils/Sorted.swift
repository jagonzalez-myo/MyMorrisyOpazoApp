//
//  Sorted.swift
//  Realm Test App
//
//  Created by MAC on 08/11/2019.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import Foundation

extension Array {
    func sorted<Property: Comparable>(by keyPath: KeyPath<Element, Property>) -> [Element] {
        return self.sorted { (firstElement, secondElement) -> Bool in
            return firstElement[keyPath: keyPath] < secondElement[keyPath: keyPath]
        }
    }
}

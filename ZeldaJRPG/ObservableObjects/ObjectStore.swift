//
//  ObjectStore.swift
//  ZeldaJRPG
//
//  Created by Kyle Peterson on 8/21/23.
//

import Foundation

class ObjectStore: ObservableObject {
    @Published var allObjects: [any ZeldaObject] = []
}

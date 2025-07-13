//
//  JsonViewModel.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import Foundation

@Observable
class JsonViewModel {
    
    private let network = SecondNetworkLayer()
    var jsonText: [JsonModel] = []
    
    func getAllJsonData() {
        self.jsonText = network.getData()
    }
    
    func deleteAllJsonData() {
        self.jsonText.removeAll()
    }
    
}

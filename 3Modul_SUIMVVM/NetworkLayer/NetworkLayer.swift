//
//  NetworkLayer.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import Foundation

// Networklayer
class NetworkLayer {
    
    func  getNewsRequest() -> [NewsModel]{
        [
            NewsModel(title: "America News", content: "News About America and other countrylers"),
            NewsModel(title: "Europa News", content: "News About Europa and other countrylers"),
            NewsModel(title: "Aisa News", content: "News About Asia and other countrylers"),
        ]
    }
}

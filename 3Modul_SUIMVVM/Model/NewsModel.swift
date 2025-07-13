//
//  NewsModel.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import Foundation

struct NewsModel: Identifiable {
    let id: UUID = UUID()
    let title: String
    let content: String
}

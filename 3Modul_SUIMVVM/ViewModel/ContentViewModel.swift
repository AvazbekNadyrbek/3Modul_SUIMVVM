//
//  ContentViewModel.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import Foundation

// Реаактивно слушать изменения этого класса внутри обьяекта
// Чтобы слушать реактивно класс или обьект должен быть наблюдаемым
@Observable
class ContentViewModel /*ObservableObject*/ { //   слушаем и набдлюдаем
    
    @ObservationIgnored private let network = NetworkLayer()
    var news: [NewsModel] = []
    var userName: String = ""  // Move userName to ViewModel
    
    func getAllNews(){
        self.news = network.getNewsRequest()
    }
    
    func setUserName(_ name: String) {
        self.userName = name
    }
    
    func clearUserName() {
        self.userName = ""
    }
}
//
//  ContentView.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct ContentView: View {
    
    
    // @ObservableObject -> @Published -> @StateObject
    // VM - Stateobject
    // VM - State
    @State var viewModel = ContentViewModel()
    @State private var text: String = ""
    @State var userName: String = ""
    
    var body: some View {
        ScrollView {
            Text("User name is: \(userName)")
            VStack {
                NavigationLink {
                    SecondView(userName: $userName)
                } label: {
                    Text("To second view")
                }
                
                Button {
                    viewModel.getAllNews()
                } label: {
                    Text("Get All News")
                }

                ForEach(viewModel.news) { item in
                    VStack(alignment: .leading, spacing: 10) {
                        Text(item.title)
                        Text(item.content)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}

struct SecondView:View {
    
    @Binding var userName: String
    
    var body: some View {
        Text("Second View")
        Button {
            userName = "Avazbek"
        } label: {
            Text("Set user name")
        }

    }
}

// View - UI / Button func getUI() -> ViewModel func getNews() -> NetworkLayer func getNews()
// View (view.news) <- ViewModel [News] <- NetworkLayer [NewsNetwork]

//
//  JsonView.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct JsonView: View {
    
    @State var viewModel = JsonViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(viewModel.jsonText) { items in
                BoxView(textTitle: items.title, description: items.description)
            }
            Spacer()
            Button {
                viewModel.getAllJsonData()
            } label: {
                Text("Refresh")
                    .font(.title3)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
            }
            .onTapGesture(count: 2) {
                viewModel.deleteAllJsonData()
            }
        }
        .padding(.horizontal)
        .padding(.top, 20)
        .padding(.bottom, 30)
    }
}

#Preview {
    JsonView()
}
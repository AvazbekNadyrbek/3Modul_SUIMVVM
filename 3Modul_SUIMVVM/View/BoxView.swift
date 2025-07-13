//
//  BoxView.swift
//  3Modul_SUIMVVM
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct BoxView: View {
    
    var textTitle: String = ""
    var description: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(textTitle)
                .font(.headline)
            Text(description)
        }
        .padding(20)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(20)
    }
}

#Preview {
    BoxView(textTitle: "Hello", description: "World")
}

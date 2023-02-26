//
//  HeaderView.swift
//  Nubank
//
//  Created by Luiz Franco on 26/02/23.
//

import SwiftUI

let nubankColor = Color("NubankPurple")

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "person")
                    .padding(12)
                    .background(Circle().foregroundColor(.white).opacity(0.2))
                
                Spacer()
                Image(systemName: "eye")
                Image(systemName: "questionmark.circle")
                Image(systemName: "envelope.badge")

            }
            .font(.title3)
            .padding()
            
            Text("Olá, Luiz")
                .font(.title2)
                .padding()

        }
        .fontWeight(.medium)
        .foregroundColor(.white)
        .background(nubankColor)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

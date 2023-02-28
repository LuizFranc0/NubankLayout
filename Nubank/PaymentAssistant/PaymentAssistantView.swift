//
//  PaymentAssistantView.swift
//  Nubank
//
//  Created by Luiz Franco on 27/02/23.
//

import SwiftUI

struct PaymentAssistantView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Acompanhe também")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.leading)
                Spacer()
            }
            Button {
                //TODOS
            } label: {
                HStack{
                    Image(systemName: "dollarsign.circle")
                        .font(.title3)
                        .padding()
                    Text("Assistente de Pagamentos")
                        .fontWeight(.medium)
                    
                    Spacer()
                }
                .foregroundColor(.primary)
                .frame(width: 350, height: 60)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(16)
                .padding([.top, .horizontal])
            }

        }
    }
}

struct PaymentAssistantView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentAssistantView()
    }
}

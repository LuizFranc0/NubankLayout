//
//  CreditCardView.swift
//  Nubank
//
//  Created by Luiz Franco on 27/02/23.
//

import SwiftUI

struct CreditCardView: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Text("Cartão de Crédito")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
            
            //Fatura
            Text("Fatura Atual")
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                .padding(.top, 8)
            
            //Limite cartao
            Text("R$ 200,43")
                .foregroundColor(.primary)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 2)
                .padding(.horizontal)
            //Limite disponivel
            Text("Limite Disponível de R$ 47.800,60 ")
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                .padding(.top, 2)
            
            //Ultravioleta
            Button {
                //TODO
            } label: {
                HStack{
                    Image(systemName: "gift")
                        .font(.title2)
                        .padding(.leading)
                    
                        Text("Meu Ultravioleta")
                        .padding(.leading)
                        .fontWeight(.medium)
                         Spacer()
                        Text("R$5.649,30")
                        .padding(.trailing)
                    
                } .foregroundColor(.primary)
                    .frame(width: 350, height: 60)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(16)
                    .padding([.top, .leading])
            }

        }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}

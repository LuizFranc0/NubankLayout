//
//  BorrowView.swift
//  Nubank
//
//  Created by Luiz Franco on 27/02/23.
//

import SwiftUI

struct BorrowView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Empréstimos")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
            } .padding()
            
            //Valor disponivel
            VStack(alignment: .leading){
                Text("Valor disponível de até")
                Text("R$200.243,00")
            } .foregroundColor(.gray)
                .fontWeight(.medium)
                .padding(.horizontal)
        }
    }
}

struct BorrowView_Previews: PreviewProvider {
    static var previews: some View {
        BorrowView()
    }
}

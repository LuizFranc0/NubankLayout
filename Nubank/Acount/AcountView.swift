//
//  AcountView.swift
//  Nubank
//
//  Created by Luiz Franco on 26/02/23.
//

import SwiftUI

struct Option{
    let title: String
    let imageTitle: String
}

struct AcountView: View {
    let options: [Option] = [
        Option(title: "Área pix", imageTitle: "circle.grid.cross"),
        Option(title: "Pagar", imageTitle: "barcode"),
        Option(title: "Pegar emprestado", imageTitle: "dollarsign.circle"),
        Option(title: "Transferir", imageTitle: "paperplane"),
        Option(title: "Recarga de Celular", imageTitle: "iphone"),
        Option(title: "Cobrar", imageTitle: "dollarsign.circle")
    ]
    
    let extras: [String] = [
        "Dinheiro extra no fim do ano? Guarde nas caixinhas!",
        "Guarde nas Caixinhas!",
        "Você tem até R$5.000,00 disponíveis para empréstimo.",
        "Convide amigos para o Nubank e desbloqueie brasões incríveis.",
    ]
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        //Parte da conta
        VStack (alignment: .leading){
            HStack{
                Text("Conta")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }
            .padding()
            
            Text("R$9.544.59")
                .padding(.horizontal)
                .fontWeight(.medium)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack (alignment: .top){
                    
                    ForEach(options, id: \.title){ Option in
                        Button {
                            //none
                        } label: {
                            VStack( alignment: .center){
                                ZStack{
                                    Circle().foregroundColor(Color.gray.opacity(0.2))
                                    Image(systemName: Option.imageTitle)
                                        .font(.title3)
                                        .padding(10)
                                    
                                }
                                .frame(width: 70, height: 70)
                                Text(Option.title)
                            } .foregroundColor(.primary)
                                .frame(width: 85)
                        }
                    }
                }
                
            }
            
            //Meus cartoes
            Button {
                //None
            } label: {
                HStack{
                    Image(systemName: "lanyardcard")
                        .font(.title2)
                    
                    Text("Meus Cartões")
                        .padding()
                    Spacer()
                    
                } .padding()
                    .foregroundColor(.primary)
                    .frame(width: 350, height: 60)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(16)
                    .padding()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top){
                    ForEach(extras, id: \.self) { extra in
                        Button {
                            //none
                        } label: {
                            
                            Text(extra)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 14))
                                .padding()
                                .frame(width: 300, height: 100)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(16)
                                .padding(.leading)
                                .foregroundColor(.primary)
                                

                        }

                    
                    }
                }
            }

        }
    }
}

struct AcountView_Previews: PreviewProvider {
    static var previews: some View {
        AcountView()
    }
}

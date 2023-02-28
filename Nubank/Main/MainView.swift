//
//  MainView.swift
//  Nubank
//
//  Created by Luiz Franco on 27/02/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                HeaderView()
                VStack{
                    AcountView()
                    
                    CustomDivider
                    CreditCardView()
                    CustomDivider
                    PaymentAssistantView()
                    CustomDivider
                    BorrowView()
                } .background(Color.white)
                    
            }
        } .background(
            VStack{
                nubankColor.ignoresSafeArea() ;Color.white
            }
        )
    }
}

extension MainView {
    var CustomDivider: some View {
        Divider()
            .frame(minHeight: 2)
            .background(Color.gray.opacity(0.2))
            .padding(.vertical)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

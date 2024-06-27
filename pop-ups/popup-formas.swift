//
//  popup-formas.swift
//  open locker
//
//  Created by João Mateus Gonçalves da Silva on 25/06/24.
//

import SwiftUI

struct PopupFormas: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        if !isPresented {
            EmptyView()
        } else {
            ZStack{
                Button {
                    isPresented = false
                } label: {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea(.all)
                }
                Image("popupFormas")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 278, height: 198)
            }
        }
    }
}

#Preview {
    PopupFormas(isPresented: .constant(true))
}


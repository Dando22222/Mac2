//
//  NewNavView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct ZCustomNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    let showBackButton: Bool
    let title: String?
    let classIcon: Image?
    let iconDescription: String?
    let navBarColor : Color?

    var body: some View {
        HStack {
            starButton
            }
            Spacer()
            ZStack {
            }
            Spacer()
            if showBackButton {
            backButton
                    .opacity(0)
            }
        }
        .padding(.top, -1)
        .background(navBarColor.ignoresSafeArea(edges: .all))
    }

struct ZCustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView(showBackButton: true, title: "Hi", classIcon: Image(""), iconDescription: "", navBarColor: Color("TankColor"))
            Spacer()
        }
    }
}

extension ZCustomNavBarView {
    private var starButton: some View {
        Button(action:, label:{
            HStack {
                Image(systemName: "star")
                    .font(.system(size: 24))
            }
        }
    }
}
    
    private var classButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 130, height: 40)
                .foregroundColor(Color("LightGray"))
            HStack{
                Text("Warrior")
                    .font(.body)
                    .fontWeight(.bold)
                Image(systemName: "chevron.down")
                    .font(.system(size: 17, weight: .medium))
                    .foregroundColor(Color("ChevronGray"))
            }
        }
        
    }
    
            private var searchButton: some View {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 24))
            }

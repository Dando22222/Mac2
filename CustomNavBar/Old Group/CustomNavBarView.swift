//
//  NewNavView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct CustomNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    let showBackButton: Bool
    let title: String?
    let classIcon: Image?
    let iconDescription: String?
    let navBarColor : Color?

    var body: some View {
        HStack {
            if showBackButton {
            backButton
            }
            Spacer()
            ZStack {
                classImage
                titleSection
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
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView(showBackButton: true, title: "Hi", classIcon: Image(""), iconDescription: "", navBarColor: Color("TankColor"))
            Spacer()
        }
    }
}

extension CustomNavBarView {
    private var backButton: some View {
        Button(action:{presentationMode.wrappedValue.dismiss()}, label:{
            Image(systemName: "chevron.left")})
        .font(.system(size: 27))
        .padding([.leading, .bottom], 30.0)
        .foregroundColor(.white)
    }
    
    private var titleSection: some View {
        VStack (spacing: 4) {
            Text(title?.uppercased() ?? title!)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 29)
                .padding(.top, 13)
        
        }
    }
    
    private var classImage: some View {
        VStack (spacing: 4) {
            classIcon?
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
            Text(iconDescription ?? "")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .padding(.bottom, 10)
        
    }

}

//
//  CustomNavBarContainerView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    @State var showBackButton: Bool = true
    @State var title: String? = ""
    @State var classIcon: Image? = Image("")
    @State var iconDescription: String? = ""
    @State var navBarColor : Color? = Color("")
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarView(showBackButton: showBackButton, title: title, classIcon: classIcon, iconDescription: iconDescription, navBarColor: navBarColor)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKey.self, perform: {
            value in
            self.title = value
        })
        .onPreferenceChange(CustomNavBarBackButtonHiddenPreferenceKey.self, perform: { value in
            self.showBackButton = !value
        })
        .onPreferenceChange(CustomNavBarClassIconPreferenceKey.self, perform: { value in
            self.classIcon = value
        })
        .onPreferenceChange(CustomNavBarIconDescriptionPreferenceKey.self, perform: {
            value in
            self.iconDescription = value
        })
        .onPreferenceChange(CustomNavBarColorPreferenceKey.self, perform: {
            value in
            self.navBarColor = value
        })
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView{
            ZStack{
                Color.green.ignoresSafeArea()
                Text("Hello World!")
                    .foregroundColor(.white)
                    .customNavigationTitle("New Title")
                    .customNavigationBarBackButtonHidden(false)
                    .customNavBarClassIcon(Image(""))
                    .customNavBarColor(Color("TankColor"))
            }
        }
    }
}

//
//  AppNavBarView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView{
            ZStack{
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination: Text("Destination")
                    .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Warrior"), iconDescription: "WAR", navBarColor: Color("TankColor")))
                {Text("Navigate")}
                }
            .customNavBarItems(title: "Classes", backButtonHidden: true, classIcon: nil, iconDescription: nil, navBarColor: Color("NavBarColor"))
            
            }
        }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView{
            ZStack{
                Color.green.ignoresSafeArea()
                
                NavigationLink(destination: Text("Destination")
                    .navigationTitle("Title 2")
                    .navigationBarBackButtonHidden(false), label: { Text("Naviagte")})
                               
            }
            
        }
    }
    
}

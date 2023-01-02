//
//  TanksGroupedIconViews.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct TanksGroupedIconNavViews: View {
    var body: some View {
    
        CustomNavLink(destination: TankClassView()
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Warrior"), iconDescription: "WAR", navBarColor: Color("TankColor"))){
                ClassIconView2(classIcon: Image("Warrior"), iconDescription: "WAR")
        }
        CustomNavLink (destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Gunbreaker"), iconDescription: "GNB", navBarColor: Color("TankColor"))) {
                ClassIconView2(classIcon: Image("Gunbreaker"), iconDescription: "GNB")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("DarkKnight"), iconDescription: "DRK", navBarColor: Color("TankColor"))){
                ClassIconView2(classIcon: Image("DarkKnight"), iconDescription: "DRK")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Paladin"), iconDescription: "PLD", navBarColor: Color("TankColor"))){
                ClassIconView2(classIcon: Image("Paladin"), iconDescription: "PLD")
        }
    }
}

struct TanksGroupedIconViews_Previews: PreviewProvider {
    static var previews: some View {
        TanksGroupedIconNavViews()
    }
}

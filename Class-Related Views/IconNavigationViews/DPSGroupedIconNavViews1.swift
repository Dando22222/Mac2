//
//  DPSGroupedIconNavViews.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct DPSGroupedIconNavViews1: View {
    var body: some View {
        
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Monk"), iconDescription: "MNK", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Monk"), iconDescription: "MNK")
        }
        CustomNavLink (destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Dragoon"), iconDescription: "DRG", navBarColor: Color("DPSColor"))) {
            ClassIconView(classIcon: Image("Dragoon"), iconDescription: "DRG")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Ninja"), iconDescription: "NIN", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Ninja"), iconDescription: "NIN")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Samurai"), iconDescription: "SAM", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Samurai"), iconDescription: "SAM")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Reaper"), iconDescription: "RPR", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Reaper"), iconDescription: "RPR")
        }
        CustomNavLink (destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Bard"), iconDescription: "BRD", navBarColor: Color("DPSColor"))) {
            ClassIconView(classIcon: Image("Bard"), iconDescription: "BRD")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Machinist"), iconDescription: "MCH", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Machinist"), iconDescription: "MCH")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Dancer"), iconDescription: "DNC", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Dancer"), iconDescription: "DNC")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("BlackMage"), iconDescription: "BLM", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("BlackMage"), iconDescription: "BLM")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Summoner"), iconDescription: "SMN", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("Summoner"), iconDescription: "SMN")
        }
    }
}

struct DPSGroupedIconNavViews1_Previews: PreviewProvider {
    static var previews: some View {
        DPSGroupedIconNavViews1()
    }
}

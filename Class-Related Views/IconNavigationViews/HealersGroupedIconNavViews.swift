//
//  HealersGroupedIconNavViews.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct HealersGroupedIconNavViews: View {
    var body: some View {
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("WhiteMage"), iconDescription: "WHM", navBarColor: Color("HealerColor"))){
            ClassIconView(classIcon: Image("WhiteMage"), iconDescription: "WHM")
        }
        CustomNavLink (destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Astrologian"), iconDescription: "AST", navBarColor: Color("HealerColor"))) {
            ClassIconView(classIcon: Image("Astrologian"), iconDescription: "AST")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Scholar"), iconDescription: "SCH", navBarColor: Color("HealerColor"))){
            ClassIconView(classIcon: Image("Scholar"), iconDescription: "SCH")
        }
        CustomNavLink(destination: Text("Destination")
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("Sage"), iconDescription: "SGE", navBarColor: Color("HealerColor"))){
            ClassIconView(classIcon: Image("Sage"), iconDescription: "SGE")
        }
    }
}

struct HealersGroupedIconNavViews_Previews: PreviewProvider {
    static var previews: some View {
        HealersGroupedIconNavViews()
    }
}

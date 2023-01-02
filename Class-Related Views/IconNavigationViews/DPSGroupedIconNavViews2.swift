//
//  DPSGroupedIconNavViews2.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct DPSGroupedIconNavViews2: View {
    var body: some View {
        CustomNavLink(destination: TestView()
            .customNavBarItems(title: "", backButtonHidden: false, classIcon: Image("RedMage"), iconDescription: "RDM", navBarColor: Color("DPSColor"))){
            ClassIconView(classIcon: Image("RedMage"), iconDescription: "RDM")
        }
    }
}

struct DPSGroupedIconNavViews2_Previews: PreviewProvider {
    static var previews: some View {
        DPSGroupedIconNavViews2()
    }
}

//
//  CustomNavBarPreferenceKeys.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import Foundation
import SwiftUI

//@State var showBackButton: Bool = true
//@State var title: String? = ""
//@State var classIcon: Image = Image("")
//@State var iconDescription: String = ""
//@State var navBarColor : Color = Color("")

struct CustomNavBarTitlePreferenceKey: PreferenceKey{
    
    static var defaultValue: String? = ""
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}

struct CustomNavBarBackButtonHiddenPreferenceKey: PreferenceKey{
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct CustomNavBarClassIconPreferenceKey: PreferenceKey{
    
    static var defaultValue: Image? = Image("")
    
    static func reduce(value: inout Image?, nextValue: () -> Image?) {
        value = nextValue()
    }
}

struct CustomNavBarIconDescriptionPreferenceKey: PreferenceKey{
    
    static var defaultValue: String? = ""
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}

struct CustomNavBarColorPreferenceKey: PreferenceKey{
    
    static var defaultValue: Color? = Color("")
    
    static func reduce(value: inout Color?, nextValue: () -> Color?) {
        value = nextValue()
    }
}

extension View {
    
//    .navigationTitle("Title 2")
//    .navigationBarBackButtonHidden(false), label: { Text("Naviagte")})
    
    func customNavigationTitle(_ title: String?) -> some View {
        preference(key: CustomNavBarTitlePreferenceKey.self, value: title)
    }
    
    func customNavigationBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtonHiddenPreferenceKey.self, value: hidden)
    }
    
    func customNavBarClassIcon(_ classIcon: Image?) -> some View {
        preference(key: CustomNavBarClassIconPreferenceKey.self, value: classIcon)
    }
    
    func customNavBarIconDescription(_ iconDescription: String?) -> some View {
        preference(key: CustomNavBarIconDescriptionPreferenceKey.self, value: iconDescription)
    }
    
    func customNavBarColor(_ navBarColor: Color?) -> some View {
        preference(key: CustomNavBarColorPreferenceKey.self, value: navBarColor)
    }
    
    func customNavBarItems(title: String? = "", backButtonHidden: Bool = false, classIcon: Image? = Image(""), iconDescription: String? = "", navBarColor: Color? = Color("")) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationBarBackButtonHidden(backButtonHidden)
            .customNavBarClassIcon(classIcon)
            .customNavBarIconDescription(iconDescription)
            .customNavBarColor(navBarColor)
    }
    
}


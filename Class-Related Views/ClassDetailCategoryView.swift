//
//  ClassDetailCategoryView.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/23/22.
//

import SwiftUI

struct ClassDetailCategoryView: View {
    var category : String = ""
    var shadowColor : Color = .blue.opacity(0.5)
    
    var body: some View {
        ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 165, height: 75)
                    .foregroundColor(.black.opacity(0.8))
                    .shadow(color: shadowColor, radius: 12)
                Text(category.uppercased())
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
        }
    }
}

struct ClassDetailCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetailCategoryView2(category: "Category", shadowColor: Color("CustomRed").opacity(0.5))
    }
}

struct ClassDetailCategoryView2: View {
    var category : String = ""
    var shadowColor : Color = Color("CustomRed")
    
    var body: some View {
        ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 105, height: 49)
                    .foregroundColor(.white)
                    .shadow(color: shadowColor, radius: 4)
                Text(category.uppercased())
                .font(.caption)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
        }
    }
}

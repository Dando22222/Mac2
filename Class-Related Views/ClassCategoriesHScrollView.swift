//
//  ClassCategoriesHScrollView.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/23/22.
//

import SwiftUI

struct ClassCategoriesHScrollView: View {
    var body: some View {
        
        
        ScrollView(.horizontal) {
            HStack{
                ClassDetailCategoryView2(category: "Category", shadowColor: Color("CustomRed").opacity(0.5))
                ClassDetailCategoryView2(category: "Category", shadowColor: Color("CustomRed").opacity(0.5))
                ClassDetailCategoryView2(category: "Category", shadowColor: Color("CustomRed").opacity(0.5))
                ClassDetailCategoryView2(category: "Category", shadowColor: Color("CustomRed").opacity(0.5))
                ClassDetailCategoryView2(category: "Category", shadowColor: Color("CustomRed").opacity(0.5))
            }
            .frame(width: .infinity, height: .infinity)
        }
    }
}

struct ClassCategoriesHScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            ClassCategoriesHScrollView()
            Spacer()
        }
    }
}

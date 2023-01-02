//
//  ClassGridView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct ClassGridView: View {
    
    @State var detailViewHidden : Bool = true
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        CustomNavView{
            ScrollView{
                LazyVGrid(
                    columns: columns,
                    spacing: 20,
                    content: {
                    Section(header:
                        GridSectionHeaderTanks())
                        {
                        TanksGroupedIconNavViews()
                        }
                    Section(header:
                        GridSectionHeaderHealers())
                        {
                        HealersGroupedIconNavViews()
                        }
                    Section(header:
                        GridSectionHeaderDPS()){
                        DPSGroupedIconNavViews1()
                        DPSGroupedIconNavViews2()
                        }
                            }
                        )
                
                    }
            .customNavBarItems(title: "CLASSES", backButtonHidden: true, navBarColor: Color("NavBarColor"))
                }
            }
}
  

                        
struct ClassGridView_Previews: PreviewProvider {
    static var previews: some View {
        ClassGridView()
    }
}

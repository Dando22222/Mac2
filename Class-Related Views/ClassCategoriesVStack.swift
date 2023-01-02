//
//  WarriorClassView.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct TankClassView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            ClassDetailCategoryView(category: "Opener/Rotation", shadowColor: .blue.opacity(0.5))
            ClassDetailCategoryView(category: "Gear", shadowColor: .blue.opacity(0.5))
            ClassDetailCategoryView(category: "Mitigations", shadowColor: .blue.opacity(0.5))
            ClassDetailCategoryView(category: "Tips", shadowColor: .blue.opacity(0.5))
            ClassDetailCategoryView(category: "Resources", shadowColor: .blue.opacity(0.5))
            Spacer()
        }
        .padding(.top, 50)
        }
    }

struct HealerClassView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            ClassDetailCategoryView(category: "Opener/Rotation", shadowColor: .green.opacity(0.4))
            ClassDetailCategoryView(category: "Gear", shadowColor: .green.opacity(0.4))
            ClassDetailCategoryView(category: "Mitigations", shadowColor: .green.opacity(0.4))
            ClassDetailCategoryView(category: "Tips", shadowColor: .green.opacity(0.4))
            ClassDetailCategoryView(category: "Resources", shadowColor: .green.opacity(0.4))
            }
            Spacer()
        }
    }

struct DPSClassView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            ClassDetailCategoryView(category: "Opener/Rotation", shadowColor: Color("DPSColor").opacity(0.4))
            ClassDetailCategoryView(category: "Gear", shadowColor: Color("DPSColor").opacity(0.4))
            ClassDetailCategoryView(category: "Mitigations", shadowColor: Color("DPSColor").opacity(0.4))
            ClassDetailCategoryView(category: "Tips", shadowColor: Color("DPSColor").opacity(0.4))
            ClassDetailCategoryView(category: "Resources", shadowColor: Color("DPSColor").opacity(0.4))
            }
            Spacer()
        }
    }

struct WarriorClassView_Peviews: PreviewProvider {
    static var previews: some View {
            TankClassView()
            HealerClassView()
            DPSClassView()
    }
}

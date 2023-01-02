//
//  GridSectionsViews.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct GridSectionHeaderTanks: View {
    var body: some View {
        VStack {
            Divider()
                .frame(height: 3)
                .overlay(.black.opacity(0.4))
            Text("Tanks")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        .padding()
            Divider()
                .frame(height: 3)
                .overlay(.black.opacity(0.4))
        }
        .background(Color("TankColor"))
        
        
    }
}

struct GridSectionHeaderHealers: View {
    var body: some View {
        VStack {
            Divider()
                .frame(height: 3)
                .overlay(.black.opacity(0.4))
            Text("Healers")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        .padding()
            Divider()
                .frame(height: 3)
                .overlay(.black.opacity(0.4))
        }
        .background(Color("HealerColor"))
    
    }
}

struct GridSectionHeaderDPS : View {
    var body: some View {
        VStack {
            Divider()
                .frame(height: 3)
                .overlay(.black.opacity(0.4))
            Text("DPS")
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        .padding()
            Divider()
                .frame(height: 3)
                .overlay(.black.opacity(0.4))
        }
        .background(Color("DPSColor"))
        
        
        
    }
}

struct GridSectionsViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            GridSectionHeaderTanks()
            GridSectionHeaderHealers()
            GridSectionHeaderDPS()
        }
    }
}

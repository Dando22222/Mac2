//
//  ClassIconView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct ClassIconView2: View {
    var classIcon : Image = Image("Warrior")
    var iconDescription : String = "WAR"

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(lineWidth: 1.0)
                .shadow(color: .blue, radius: 2)
                .frame(width: 155, height: 155)
                .foregroundColor(Color.blue.opacity(0.9))
            VStack {
                classIcon
                    .frame(height: 60)

                Text(iconDescription)
                    .font(.system(size: 20))
                    .foregroundColor(.black)
            }
        }
    }
}
                    

struct ClassIconView2_Previews: PreviewProvider {
    static var previews: some View {
        ClassIconView2()
    }
}

//
//  ClassIconView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct ClassIconView: View {
    var classIcon : Image = Image("Warrior")
    var iconDescription : String = "WAR"

    var body: some View {
        
        VStack {
            classIcon
                .frame(height: 60)

            Text(iconDescription)
                .font(.system(size: 20))
                .foregroundColor(.black)
                        }
    }
}
                    

struct ClassIconView_Previews: PreviewProvider {
    static var previews: some View {
        ClassIconView()
    }
}

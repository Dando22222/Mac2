//
//  HomeView.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/24/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            starButton
                Spacer()
                classButton()
                Spacer()
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 24))
            }
            .padding(16)
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HomeView()
            Spacer()
        }
    }
}

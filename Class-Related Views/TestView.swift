//
//  ClassIconDuplicateTester.swift
//  PracticeNavBarStuff
//
//  Created by Diane Smith on 12/18/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .frame(width: .infinity, height: .infinity, alignment: .center)
        .background(.blue)
    }
}

struct ClassIconDuplicateTester_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

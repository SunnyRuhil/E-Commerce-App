//
//  SwiftUIView2.swift
//  sa
//
//  Created by User on 13/09/23.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //Rectangle 3
        Rectangle()
            .fill(Color(#colorLiteral(red: 0.6958333253860474, green: 0.17975693941116333, blue: 0.17975693941116333, alpha: 1)))
        .frame(width: 430, height: 888)
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}

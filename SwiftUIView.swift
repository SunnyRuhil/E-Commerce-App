//
//  SwiftUIView.swift
//  sa
//
//  Created by User on 13/09/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        //Rectangle 1
        RoundedRectangle(cornerRadius: 40)
            .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
        .frame(width: 437, height: 100)
        //Rectangle 2
        RoundedRectangle(cornerRadius: 40)
            .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
        .frame(width: 430, height: 100)
        //Email Id-
        Text("Email Id-").font(.custom("Inter Regular", size: 30))
        //Password-
        Text("Password-").font(.custom("Inter Regular", size: 30))
        //Login in your iPhone
        Text("Login in your \niPhone").font(.custom("Inter Regular", size: 45))
        //Ellipse 1
        Ellipse()
            .fill(Color(#colorLiteral(red: 0.9458333253860474, green: 0.2749222218990326, blue: 0.06305555254220963, alpha: 1)))
        .frame(width: 297, height: 262)
        //Hello iPhone Users
        Text("Hello\niPhone \nUsers").font(.custom("Inter Regular", size: 30))
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

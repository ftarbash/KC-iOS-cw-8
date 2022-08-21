//
//  SecoundView.swift
//  myDiary
//
//  Created by Fatma Alarbash on 21/08/2022.
//

import SwiftUI

struct SecoundView: View {
    let myC :Color
    let myS : String
    var body: some View {
        ZStack{
            myC.ignoresSafeArea()
            VStack{
                Text(myS)
            }
            
        }
    }
}

struct SecoundView_Previews: PreviewProvider {
    static var previews: some View {
        SecoundView(myC: Color.blue, myS: "hi")
    }
}

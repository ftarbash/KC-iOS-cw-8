//
//  ContentView.swift
//  myDiary
//
//  Created by Fatma Alarbash on 21/08/2022.
//

import SwiftUI

struct ContentView: View {
    let chooseColor = [Color.indigo.opacity(0.3) , Color.pink.opacity(0.3) , Color.blue.opacity(0.3) , Color.green.opacity(0.3)]
    @State var MyNote = ""
    @State var Selected:Color = Color.yellow
    var body: some View {
        NavigationView{
        ZStack{
            Color.gray.opacity(0.2).ignoresSafeArea()
            VStack{
                Spacer()
                Text("اختر اللون المفضل").font(.system(size: 25))
                HStack{
                ForEach(chooseColor,id:\.self){
        chooseColor in
                    Circle().fill(chooseColor).frame(width: 80, height: 80).onTapGesture {
                        Selected = chooseColor
                    }
                }
                }.padding()
                Text("ماذا تريد ان تكتب").font(.system(size: 20))
                TextField("اكتب هنا", text:$MyNote).padding().frame(width: 385.0, height: 56.0).background(.white).multilineTextAlignment(.trailing).border(.gray)
                Spacer()
                NavigationLink(destination: SecoundView(myC: Selected, myS: MyNote)) { Text("حفظ").frame(width: 200, height: 60).font(.system(size: 30)).background(.green).cornerRadius(10).foregroundColor(.white)
                    
                }
            }.padding()
        }
        .navigationTitle("دفتر يومياتي")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

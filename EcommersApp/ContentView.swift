//
//  ContentView.swift
//  EcommersApp
//
//  Created by praneeth vithanage on 2021-09-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("BgColor").edgesIgnoringSafeArea(.all)
            
            VStack(alignment:.leading){
                AppBarView()
                    .padding()
                TagLineView()
                    .padding()
            }
            
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct  AppBarView: View {
    var body: some View {
        HStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                
                Image("menu")
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(10.0)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(uiImage:#imageLiteral(resourceName: "profile"))
                    .resizable()
                    .frame(width: 42, height: 42)
                    .cornerRadius(10.0)
            }
            
        }
    }
}

struct  TagLineView: View {
    var body: some View {
        Text("Find The \nBest  ")
            .font(.custom("playfairDisplay-Regular", size: 28))
            .foregroundColor(Color("Primary"))
            +   Text("Furniture!")
            .font(.custom("playfairDisplay-Bold", size: 28))
            .foregroundColor(Color("Primary"))
    }
}

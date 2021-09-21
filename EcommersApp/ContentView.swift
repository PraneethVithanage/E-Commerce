//
//  ContentView.swift
//  EcommersApp
//
//  Created by praneeth vithanage on 2021-09-20.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex : Int = 0
    private let categories = ["All","Chair","Sofa","Lamp","Kitchen","Tables"]
    var body: some View {
        ZStack{
            Color("BgColor").edgesIgnoringSafeArea(.all)
            
            VStack(alignment:.leading){
                AppBarView()
                    .padding()
                TagLineView()
                    .padding()
                SearchAndScanView()
                
                ScrollView(.horizontal,showsIndicators:false){
                    HStack{
                        ForEach(0..<categories.count) { i in
                            // if index == 1 then isActive is true
                            CategoryView(isActive: i == selectedIndex , text:categories[i]).onTapGesture {
                                 selectedIndex = 1
                            }
                        }
                    }
                    .padding()
                }
             
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

struct SearchAndScanView: View {
    @State private var search : String = ""
    var body: some View {
        HStack{
            HStack{
                Image("Search")
                    .padding(.trailing,8)
                TextField("Search Furniture", text : $search)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("Scan")
                    .padding(.all,20)
                    .background(Color("Primary"))
                    .cornerRadius(10.0)
                    .padding(.trailing)
                
            }
            
        }
    }
}

struct CategoryView: View {
    let isActive : Bool
    let text : String
    var body: some View {
        VStack(alignment: .leading, spacing:0){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary"): Color.black.opacity(0.5))
            
            
            if (isActive){
                Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        
        .padding(.trailing)
    }
}

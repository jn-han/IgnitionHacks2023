//
//  Tabs.swift
//  IgnitionHacks2023
//
//  Created by Kennedy Yung on 2023-08-27.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        
            TabView {
                ContentView()

                ContentView()
                    .tabItem{
                        Label("Home", systemImage: "list.dash")
                    }
                Profile()
                    .tabItem{
                        Label("Menu", systemImage: "square.and.pencil")
                    }
            }
        }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("inteflow")
                    .resizable()
                    .frame(width: 120, height: 25, alignment: .center)
                Text("Welcome Back, Miguel!")
                //.font(.title2)
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .padding(.bottom, 648)
                    .padding(.trailing, 60)
                    .padding(.top, 10)
            }
            
            VStack{
                Text("Problem Sets for you")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.trailing, 135)
                    .padding(.bottom, -2)
                Image("Problem_Sets")
                    .resizable()
                    .frame(width:355, height: 116)
                    .padding(.bottom, 385)
            }
            
            VStack {
                Text("Recommended Textbooks")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.trailing, 85)
                    .padding(.top, -30)
                Image("Textbooks")
                    .resizable()
                    .frame(width: 400, height: 153)
                    .padding(.leading, 45)
                    .padding(.bottom, 5)
                    .padding(.top, -15)
            }
            
            VStack{
                Text("Past Problems")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.trailing, 200)
                    .padding(.top, 535)
                Image("Past Problems")
                    .resizable()
                    .frame(width: 350, height: 210)
                    .padding(.bottom, 139)
                    .padding(.top, -15)
            }
            
            
        }
    }
}

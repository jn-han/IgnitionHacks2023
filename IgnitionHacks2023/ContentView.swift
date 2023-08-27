//
//  ContentView.swift
//  IgnitionHacks2023
//
//  Created by Joshua Nguyen on 2023-08-25.
//



import SwiftUI


struct ContentView: View {
    var body: some View {
        
            TabView {
                ExtractedView()

                
                ExtractedView()
                    .tabItem{
                        Label("Home", systemImage: "house")
                    }
                
                Spacer()
                

                
                Profile()
                    .tabItem{
                        Label("Profile", systemImage: "person")
                    }
                    Spacer()
            }
            .navigationBarTitle("", displayMode: .inline) // Hide navigation title
            .overlay(
                NavigationLink(destination: Profile()) {
                    Image(systemName: "camera")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .frame(width: 80, height: 80)
                        .background(Color.blue) // Use your CustomColor here
                        .cornerRadius(40) // Adjust as needed
                        .padding(.bottom, 16)
                }
                .padding(.trailing, 155), // Adjust the trailing padding as needed
                alignment: .bottomTrailing
            )
        

        }
}

//
//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            VStack {
//                Image("inteflow")
//                    .resizable()
//                    .frame(width: 120, height: 25, alignment: .center)
//                Text("Welcome Back, Miguel!")
//                //.font(.title2)
//                    .font(.system(size: 27))
//                    .fontWeight(.bold)
//                    .padding(.bottom, 648)
//                    .padding(.trailing, 60)
//                    .padding(.top, 10)
//            }
//
//            VStack{
//                Text("Problem Sets for you")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding(.trailing, 135)
//                    .padding(.bottom, -2)
//                Image("Problem_Sets")
//                    .resizable()
//                    .frame(width:355, height: 116)
//                    .padding(.bottom, 385)
//            }
//
//            VStack {
//                Text("Recommended Textbooks")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding(.trailing, 85)
//                    .padding(.top, -30)
//                Image("Textbooks")
//                    .resizable()
//                    .frame(width: 400, height: 153)
//                    .padding(.leading, 45)
//                    .padding(.bottom, 5)
//                    .padding(.top, -15)
//            }
//
//            VStack{
//                Text("Past Problems")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding(.trailing, 200)
//                    .padding(.top, 535)
//                Image("Past Problems")
//                    .resizable()
//                    .frame(width: 350, height: 210)
//                    .padding(.bottom, 139)
//                    .padding(.top, -15)
//            }
//
//
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//NavigationView {
//    VStack{
//        Text("Welcome Back, Miguel!")
//                            .font(.title2)
//                            .fontWeight(.bold)
//                            .padding(.bottom, 650)
//                            .padding(.trailing, 100)
//        Text("Hello")
//            .font(.title3)
//            .fontWeight(.bold)
//    }
//        .navigationBarItems(trailing:
//                                HStack{
//            Image("inteflow")
//                .resizable()
//                .frame(width: 120, height: 25, alignment: .center)
//            Spacer(minLength: 120)
//
//
//        })
//    Spacer()
//
//}



struct ExtractedView: View {
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
            
//            VStack{
//                NavigationLink(destination: Profile()) {
//                    Text("Go!").ignoresSafeArea()
//                                            .frame(width: 50, height: 50, alignment: .center)
//                                            .background(Color.black)
//                                            .cornerRadius(11000)
//                                            .padding(.top, 320)
//                                            .padding(.bottom, -320)
//
//                                    }
//            }
            
            
        }
    }
}

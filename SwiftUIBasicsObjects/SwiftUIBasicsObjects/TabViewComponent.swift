//
//  TabViewComponent.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct TabViewComponent: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab)
        {
            HomeView(selectedTab: $selectedTab)
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            
            Text("Browse tabs")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.red)
    }
       
    
}

#Preview {
    TabViewComponent()
}


struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}


struct BrowseView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

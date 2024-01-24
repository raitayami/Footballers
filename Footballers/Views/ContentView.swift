//
//  ContentView.swift
//  Footballers
//
//  Created by Tayami Rai on 24/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                ClubView()
                    .tabItem {
                        VStack{
                            Image(systemName: "suit.club")
                            Text("Club")
                        }
                    }
                
                InternationalView()
                    .tabItem {
                        VStack{
                            Image(systemName: "globe")
                            Text("Club")
                        }
                    }
                
                AllTimeStatsView()
                    .tabItem {
                        VStack{
                            Image(systemName: "figure.soccer")
                            Text("All time stats")
                        }
                    }
            }
        
    }
}

#Preview {
    ContentView()
}

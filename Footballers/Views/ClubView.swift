//
//  ClubView.swift
//  Footballers
//
//  Created by Tayami Rai on 24/01/2024.
//

import SwiftUI

struct ClubView: View {
    
    @State var leagues = [League]()
    var dataService = DataService()
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(leagues){ league in
                    if league.name == "bundesliga"
                        || league.name == "laliga" 
                        || league.name == "premierleague"
                        || league.name == "ligue1ubereats"
                        || league.name == "seriea"
                    {
                        Text(league.name)
                    }
                }
            }
        }
        .task{
            
            var tempString = ""
            for name in await dataService.getLeague(){
                if name == "," || name == "{"{
                    
                    leagues.append(League(name: tempString))

                    tempString = ""
                } else {
                    tempString += String(name)
                }
            }
            

        }
    }
}

#Preview {
    ClubView()
}

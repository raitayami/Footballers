//
//  DataService.swift
//  Footballers
//
//  Created by Tayami Rai on 24/01/2024.
//

import Foundation

struct DataService{
    
    
    func getLeague() async -> String{
        
        let headers = [
            "X-RapidAPI-Key": "cb2566c9c3mshdf9d5ff8bc1c46ap1aff4bjsn9b3267ae0657",
            "X-RapidAPI-Host": "football98.p.rapidapi.com"
        ]
        
        if let url = URL(string: "https://football98.p.rapidapi.com/competitions"){
             
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            request.allHTTPHeaderFields = headers
            
            do {
                let (data, response) =  try await URLSession.shared.data(for: request)
                                
                let decoder = JSONDecoder()
                let result = try decoder.decode(String.self, from: data)
                print(result)
                return result
            }
            catch {
                print(error)
            }
        }
        
        return ""
        
    }
}

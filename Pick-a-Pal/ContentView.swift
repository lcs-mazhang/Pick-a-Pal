//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by GengYu Zhang on 2023-12-07.
//

import SwiftUI


struct ContentView: View {
    
    // Contact name list @State keep it up dating
    
    @State private var names: [String] = ["Matthew", "AJ", "Yoshi", "Ong"]
    @State private var nameToAdd = ""
    
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

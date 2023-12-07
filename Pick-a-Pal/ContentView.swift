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
    @State private var pickedName = ""
    
    var body: some View {
        VStack {
            Text(pickedName.isEmpty ? " " : pickedName)
            
            List {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
            
            // Using name to add var to let us adding more contact list
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Button("Pick Random Name") {
                if names.count > 0 {
                    pickedName = names.randomElement()!
                } else {
                    pickedName = ""
                }
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

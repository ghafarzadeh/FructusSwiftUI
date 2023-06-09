//
//  ContentView.swift
//  FructusSwiftUI
//
//  Created by Habib Ghaffarzadeh on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                             .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

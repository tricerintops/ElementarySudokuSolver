//
//  ContentView.swift
//  ElementarySudokuSolver
//
//  Created by Erin Hamalainen on 03/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    let data = (1...9).map { "Item \($0)" }
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        LazyVGrid(
            columns: columns,
            alignment: .center,
            spacing: 0
        ) {
            ForEach(data, id: \.self) { item in
                HStack {
                    Spacer()
                    Text(item)
                    Spacer()
                }
                .padding()
                .border(Color.blue, width: 1)
            }
        }
        .border(Color.red, width: 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

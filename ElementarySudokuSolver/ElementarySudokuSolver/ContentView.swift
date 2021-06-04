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
                NonetView()
                .border(Color.yellow, width: 1)
            }
        }
        .border(Color.orange, width: 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NonetView: View {
    let data = (1...9).map { "\($0)" }
    
    let columns = [
        // 3 identical GridItems because I want 3 identical columns
        GridItem(.adaptive(minimum: 35, maximum: 100), spacing: 0),
        GridItem(.adaptive(minimum: 35, maximum: 100), spacing: 0),
        GridItem(.adaptive(minimum: 35, maximum: 100), spacing: 0)
    ]
    
    var body: some View {
        LazyVGrid(
            columns: columns,
            alignment: .center,
            spacing: 0
        ) {
            ForEach(data, id: \.self) { item in
                HStack(spacing: 0) {
                    Spacer()
                    Text(item)
                        //.font(.system(size: 4))
                        .border(Color.green, width: 1)
                    Spacer()
                }
                .border(Color.blue, width: 1)
            }
        }
        .border(Color.red, width: 3)
    }
}

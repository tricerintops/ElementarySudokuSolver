//
//  ContentView.swift
//  ElementarySudokuSolver
//
//  Created by Erin Hamalainen on 03/06/2021.
//

import SwiftUI

struct ContentView: View {
    let data = (1...81).map { "\($0)" }
    
    let rows = [
        // 9 identical GridItems because I want 3 identical rows
        // because these are rows, the minimum is the minimum height
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0)
    ]
    
    var body: some View {
        Text("Triplet View")
            .padding()
        LazyHGrid(
            rows: rows,
            alignment: .center,
            spacing: 0
        ) {
            ForEach(data, id: \.self) { item in
                HStack {
                    Spacer()
                    VStack(spacing: 0) {
                        Spacer()
                        Text(item)
                            .border(Color.green, width: 1)
                        Spacer()
                    }
                    Spacer()
                }
                .border(Color.blue, width: 1)
            }
        }
        .border(Color.yellow, width: 3)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NonetView: View {
    let data = (1...3).map { "Row \($0)" }
    
    let rows = [
        // 3 identical GridItems because I want 3 identical rows
        // because these are rows, the minimum is the minimum height
        GridItem(.flexible(minimum: 100), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 100), spacing: 0)
    ]
    
    var body: some View {
        LazyHGrid(
            rows: rows,
            alignment: .center,
            spacing: 0
        ) {
            ForEach(data, id: \.self) { item in
                TripletView()
                    .padding(0)
            }
        }
        .border(Color.yellow, width: 3)
    }
}

struct TripletView: View {
    let data = (1...3).map { "\($0)" }
    
    let columns = [
        // 3 identical GridItems because I want 3 identical columns
        // because these are columns, the minimum is the minimum width
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0),
        GridItem(.flexible(minimum: 35), spacing: 0)
    ]
    
    var body: some View {
        LazyVGrid(
            columns: columns,
            alignment: .center,
            spacing: 0
        ) {
            ForEach(data, id: \.self) { item in
                HStack {
                    Spacer()
                    VStack(spacing: 0) {
                        Spacer()
                        Text(item)
                            .border(Color.green, width: 1)
                        Spacer()
                    }
                    Spacer()
                }
                .border(Color.blue, width: 1)
            }
        }
        .border(Color.red, width: 3)
    }
}

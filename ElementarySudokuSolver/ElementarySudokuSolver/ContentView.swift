//
//  ContentView.swift
//  ElementarySudokuSolver
//
//  Created by Erin Hamalainen on 03/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Keep trying!!")
        GeometryReader { geometry in
            
            let shorterLength = (geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height
            
            VStack (spacing: 0) {
                TripletView2(containerLimit: shorterLength)
                    .frame(height: shorterLength * 0.33)
                    .border(Color.red, width: 4)
                TripletView2(containerLimit: shorterLength)
                    .frame(height: shorterLength * 0.34)
                    .border(Color.red, width: 4)
                TripletView2(containerLimit: shorterLength)
                    .frame(height: shorterLength * 0.33)
                    .border(Color.red, width: 4)
            }
            
            VStack {
                Text("width: \(geometry.size.width)")
                Text("height: \(geometry.size.height)")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    
struct TripletView2: View {
    
    let containerLimit: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            
            //let shorterLength = (geometry.size.width < geometry.size.height) ? geometry.size.width : geometry.size.height
            
            HStack(spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: containerLimit * 0.33, height: containerLimit * 0.33)
                    .background(Color.yellow)
                    .border(Color.black, width: 1)
                Text("2")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: containerLimit * 0.34, height: containerLimit * 0.33)
                    .background(Color.orange)
                    .border(Color.black, width: 1)
                Text("3")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width:  containerLimit * 0.33, height: containerLimit * 0.33)
                    .background(Color.green)
                    .border(Color.black, width: 1)
            }
            
            VStack {
                Text("width: \(geometry.size.width)")
                Text("height: \(geometry.size.height)")
            }
        }
    }
}

struct NonetView2: View {
    let columnData = (1...3).map { "c\($0)" }
    let rowData = (1...3).map { "r\($0)" }
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(columnData, id: \.self) { item in
                VStack(spacing: 0) {
                    ForEach(rowData, id: \.self) { item in
                        Text("2")
                            //.padding()
                        Divider()
                    }
                }
                Divider()
            }
        }
        .border(Color.yellow, width: 2)
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

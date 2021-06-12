//
//  ContentView.swift
//  ElementarySudokuSolver
//
//  Created by Erin Hamalainen on 03/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            
            let shorterSide = geometry.size.width < geometry.size.height ? geometry.size.width : geometry.size.height
            let nonetSideLength = shorterSide / 3
            
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                }
                VStack(spacing: 0) {
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                }
                VStack(spacing: 0) {
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                    NonetView().frame(width: nonetSideLength, height: nonetSideLength)
                }
            }.border(Color.black, width: 2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




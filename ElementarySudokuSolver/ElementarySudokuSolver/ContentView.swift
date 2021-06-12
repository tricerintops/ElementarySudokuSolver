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
        VStack {
            Text("This should show a nonet in a containing view that is wider than it is tall. So the size of the nonent will be limited by the height dimension of the containing view. The nonet should fill the height but not the width (since the nonet should always be a square.")
            NonetView()
                .frame(width: 300, height: 100)
                .background(Color.blue)
        }
        VStack {
            Text("This should show a nonet in a containing view that is taller than it is wide. So the size of the nonent will be limited by the width dimension of the containing view. The nonet should fill the width but not the height (since the nonet should always be a square.")
            NonetView()
                .frame(width: 100, height: 300)
                .background(Color.blue)
        }
        VStack {
            Text("This is not what I want")
            VStack(spacing: 0) {
                NonetView()
                    .border(Color.blue, width: 2)
                NonetView()
                NonetView()
            }.frame(width: 100)
        }
    }
}

/*
 A NonetView is a square made up of 9 squares in a 3 x 3 formation. It fills it's containing view, but does not overflow it ever.
 */
struct NonetView: View {
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0) {
                TripletView(containerSize: geometry.size)
                TripletView(containerSize: geometry.size)
                TripletView(containerSize: geometry.size)
            }
            .border(Color.black, width: 2)
        }
    }
}

/*
 A TripletView is a 1 x 3 grid. It is a single row of 3 squares. It will expand to fill it's containing view, but will always
 be comprised of 3 squares, not rectangles.
 */
struct TripletView: View {
    
    let containerSize: CGSize
    
    var body: some View {
        
        let containerLimit = containerSize.width < containerSize.height ? containerSize.width : containerSize.height
        let sqSide: CGFloat = containerLimit / 3
            
        HStack(spacing: 0) {
            Text(" ")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width: sqSide, height: sqSide)
                .border(Color.black, width: 1)
            Text(" ")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width: sqSide, height: sqSide)
                .border(Color.black, width: 1)
            Text(" ")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width: sqSide, height: sqSide)
                .border(Color.black, width: 1)
        }
    }
}

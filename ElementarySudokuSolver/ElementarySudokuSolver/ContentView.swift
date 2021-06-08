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
            
            NonetView()
            
//            HStack {
//                VStack(spacing: 0)  {
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                }
//                VStack(spacing: 0)  {
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                }
//                VStack(spacing: 0)  {
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                    NonetView3(containerLimit: shorterLength * 0.33)
//                        .frame(height: shorterLength * 0.33)
//                }
//            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
            .border(Color.red, width: 4)
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
            Text("1")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width: sqSide, height: sqSide)
                .background(Color.yellow)
                .border(Color.black, width: 1)
            Text("2")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width: sqSide, height: sqSide)
                .background(Color.orange)
                .border(Color.black, width: 1)
            Text("3")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width: sqSide, height: sqSide)
                .background(Color.green)
                .border(Color.black, width: 1)
        }
    }
}

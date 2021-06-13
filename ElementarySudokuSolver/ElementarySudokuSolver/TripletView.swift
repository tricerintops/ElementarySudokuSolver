//
//  TripletView.swift
//  ElementarySudokuSolver
//
//  Created by Erin Hamalainen on 12/06/2021.
//

import SwiftUI

/*
 A TripletView is a 1 x 3 grid. It is a single row of 3 squares. It will expand to fill it's containing view, but will always
 be comprised of 3 squares, not rectangles.
 */
struct TripletView: View {
    
    // Set this value to the size of the parent view.
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

struct TripletView_Previews: PreviewProvider {
    static var previews: some View {
        TripletView(containerSize: CGSize(width: 100, height: 100))
    }
}

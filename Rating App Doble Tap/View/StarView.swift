//
//  StarView.swift
//  Rating App Doble Tap
//
//  Created by Aman Singh on 5/26/21.
//

import SwiftUI

struct StarView: View {
    @State var rating: Int = 3
    var body: some View {
       starsView
        .overlay(
          overlayView.mask(starsView))
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment:.leading){
                Rectangle()
                    .foregroundColor(Color("Color"))
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
    }
    
    
    private var starsView: some View {
        HStack{
            ForEach(1..<6){ index in
                Image(systemName: "star.fill")
                    .font(rating == index ? .system(size: 50) :  .largeTitle)
                    .foregroundColor(rating >= index ? Color("Color") : Color.white)
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            rating = index
                        }
                        }
                    .offset(y: rating == index ? -10 : 0)
                       
                
            }
           
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}

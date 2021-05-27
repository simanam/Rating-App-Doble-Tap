//
//  PostCardView.swift
//  Rating App Doble Tap
//
//  Created by Aman Singh on 5/26/21.
//

import SwiftUI
import SwiftUIX

struct PostCardView: View {
    var body: some View {
        VStack(spacing:15){
            HStack{
                Text("3.0")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                  
                
                Spacer()
                
                Text("5min")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    
                    
                
            }
            HStack{
                Text(" Add Title")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    
                
                
            }
            StarView()
            HStack{
                Button(action:{}, label: {
                    Text("+ Location")
                        .font(.callout)
                        .foregroundColor(Color.white)
                       
                      
                      
                        
                
                })
               Spacer()
                
                Button(action:{}, label: {
                    Text("+ Description")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        
                        
                
                })
                
                
            }
        }.frame(maxWidth:.infinity)
        .padding()
        .background(VisualEffectBlurView(blurStyle: .light).clipShape(CustomShape()))
        .cornerRadius(25)
        .padding(.horizontal)
        .padding(.vertical)
        
        
    }    }


struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView()
    }
}

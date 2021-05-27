//
//  PostView.swift
//  Rating App Doble Tap
//
//  Created by Aman Singh on 5/22/21.
//

import SwiftUI
import SwiftUIX

struct PostView: View {
    var body: some View {
        ZStack{
            Image("coffee")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            TopLayer()
           
        }
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
struct TopLayer: View{
    var body: some View{
        VStack{
            HStack{
                Button(action:{}, label: {
                    Image(systemName: "multiply")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.black.opacity(0.25))
                        .cornerRadius(15)
                
                })
                
                Spacer()
                
            }.padding()
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "plus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.black.opacity(0.25))
                    .overlay(Circle().stroke().fill(Color.white))
                    .clipShape(Circle())
            }).offset(y:70)
            
         PostCardView()
            
            

        }
        
        
    }
}



struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to:CGPoint(x: 0, y: 0))
            path.addLine(to:CGPoint(x: rect.width, y: 0))
            path.addLine(to:CGPoint(x: rect.width, y: rect.height))
            path.addLine(to:CGPoint(x: 0, y: rect.height))
            
            let center = rect.width / 2
            
            path.move(to:CGPoint(x: center - 70, y: 0))
            
            
            let to1 = CGPoint(x: center, y: 55)
            let control1 = CGPoint(x: center - 45, y: 0)
            let control2 = CGPoint(x: center - 45, y: 55)
            
            let to2 = CGPoint(x: center + 70, y: 0)
            let control3 = CGPoint(x: center + 45, y: 55)
            let control4 = CGPoint(x: center + 45, y: 0)
            
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
    
   
}

//struct RatingStar: View{
//
//
//}

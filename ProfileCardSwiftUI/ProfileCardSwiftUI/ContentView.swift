//
//  ContentView.swift
//  ProfileCardSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 27/04/21.
//  The App Wizard
//  Instagram : theappwizard2408

import SwiftUI



struct ContentView: View {
    var body: some View {
        ZStack{
            FinalView()
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}































//Color Extension
extension Color{
    static let darkStart = Color("darkStart")
    static let darkEnd = Color("darkEnd")
}



struct FinalView: View {
    var body: some View {
        ZStack{
        BaseCard()
        SideButton()
        
        }
        
    }
}


struct BaseCard: View {
    
    var body: some View {
        ZStack{
            Color("darkStart").opacity(1).edgesIgnoringSafeArea(.all)
            
            
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(.darkStart)
                .frame(width: 300, height: 300, alignment: .center)
                .shadow(color: Color.darkStart, radius: 10, x: 5, y: 5)
                .shadow(color: Color.darkEnd, radius: 10, x: -5, y: -5)
            
            
            
            VStack{
           Image("mainwizard")
            .resizable()
                .frame(width: 120, height: 120, alignment: .center)
            .clipShape(Circle())
           
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                
                Text("Shreyas Bhike")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
                
                Text("Mobile Developer")
                    .font(.title3)
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
            
            }
        }
    }
}


struct SideButton: View {
    
    @State private var buttonToggle = false
    @State private var arrowanim = false
    
    var body: some View {
        ZStack{
            Button(action: {
                           self.buttonToggle.toggle()
                }) {
                
                ZStack{
                Rectangle()
                    .clipShape(CustomShape(
                        corner: [.bottomRight,.topLeft], radii: 35
                    ))
                    .frame(width: 65, height: 65, alignment: .center)
                    .foregroundColor(.white)
                    .shadow(radius: 7)
                    
                ZStack{
                    Image(systemName: "arrow.right")
                        .resizable()
                        .foregroundColor(Color("darkStart"))
                        .frame(width: 35, height: 20, alignment: .center)
                        .rotationEffect(.degrees(40))
                    }
                    
                    
                }
            }
            
            Rectangle()
                 .clipShape(CustomShape(
                     corner: [.bottomRight,.topLeft], radii: 35
                 ))
                .frame(width: 70, height: 70, alignment: .center)
                .offset(x: -235.8, y: -235.8)
                .foregroundColor(Color("darkEnd"))
                
            
        }.offset(x: 120, y: 120)
        
        
        if buttonToggle{
            SkillCardView()
       
            ZStack{
            Rectangle()
                .clipShape(CustomShape(
                    corner: [.bottomRight,.topLeft], radii: 35
                ))
                .frame(width: 65, height: 65, alignment: .center)
                .foregroundColor(.white)
                .shadow(radius: 7)
                
            ZStack{
                Image(systemName: "arrow.right")
                    .resizable()
                    .foregroundColor(Color("darkStart"))
                    .frame(width: 35, height: 20, alignment: .center)
                    .rotationEffect(.degrees(arrowanim ? 220 : 40))
                    .animation(Animation.easeInOut(duration: 1.5).delay(1).repeatCount(1))
                                        .onAppear {
                                            arrowanim.toggle()
                                        }
                }
            }.offset(x: 120, y: 120)
        
        }
    
    }
}



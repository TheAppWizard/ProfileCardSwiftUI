//
//  SkillCardView.swift
//  ProfileCardSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 27/04/21.
//

import SwiftUI

struct SkillCardView: View {
    
       @State private var shapechange = false
    
       @State private var skillsopac = false
       @State private var androidopac = false
       @State private var iosopac = false
       @State private var unityopac = false
    
       @State private var facebooksh = false
       @State private var instagramsh = false
       @State private var linkedinsh = false

    
    
    
    var body: some View {
        ZStack{
            
           //Background Shape
           Rectangle()
                .clipShape(CustomShape(
                    corner: [.bottomRight,.topLeft,.bottomLeft,.topRight], radii: shapechange ? 15 : 35
                ))
                .foregroundColor(Color("darkEnd"))
            
                //.shadow(radius: 7)
           
                
            .frame(width: shapechange ? 300 : 65, height: shapechange ? 300 : 65, alignment: .center)
            .offset(x: shapechange ? 0 : -120, y: shapechange ? 0 : -120)
            .animation(Animation.easeInOut(duration: 1.5).delay(1).repeatCount(1))
                                .onAppear {
                                    shapechange.toggle()
                                }
            
            
            VStack{
            HStack{
            
           //Skill Opacity
            Text("Skills")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .scaleEffect(skillsopac ? 1 : 0)
                .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                    .onAppear {
                                        skillsopac.toggle()
                                    }
                
                
                
                
                
                
                Spacer().frame(width: 180, height: 0, alignment: .center)
            }
                Spacer().frame(width: 0, height: 20, alignment: .center)
            
                
                
                
                //Skills
                HStack{
               
              // Android Opacity
                ZStack{
                    Rectangle()
                        .frame(width: 85, height: 30, alignment: .center)
                        .foregroundColor(.clear)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                    
                    Text("Android")
                        .foregroundColor(.white)
                }.scaleEffect(androidopac ? 1 : 0)
                .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                    .onAppear {
                                        androidopac.toggle()
                                    }
                
                ZStack{
                    Rectangle()
                        .frame(width: 45, height: 30, alignment: .center)
                        .foregroundColor(.clear)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        
                        Text("IOS")
                            .foregroundColor(.white)
                    }.scaleEffect(iosopac ? 1 : 0)
                .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                    .onAppear {
                                        iosopac.toggle()
                                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 75, height: 30, alignment: .center)
                            .foregroundColor(.clear)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                            
                            Text("Unity3D")
                                .foregroundColor(.white)
                        }.scaleEffect(unityopac ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                        .onAppear {
                                            unityopac.toggle()
                                        }
                }.padding()
                //Skills
                
                //SocialMedia
                HStack{
                   Image("facebook")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .scaleEffect(facebooksh ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                        .onAppear {
                                            facebooksh.toggle()
                                        }
                   
                    
                    Image("insta")
                     .resizable()
                     .frame(width: 35, height: 35, alignment: .center)
                     .scaleEffect(instagramsh ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                    .onAppear {
                                                instagramsh.toggle()
                                            }
                    
                    Image("linked")
                     .resizable()
                     .frame(width: 35, height: 35, alignment: .center)
                        .scaleEffect(linkedinsh ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 1).delay(2).repeatCount(1))
                                            .onAppear {
                                                linkedinsh.toggle()
                                            }
                    
                    
                }
                
                //SocialMedia
            }
        }
    }
}

struct SkillCardView_Previews: PreviewProvider {
    static var previews: some View {
        SkillCardView()
    }
}

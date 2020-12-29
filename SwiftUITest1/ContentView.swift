//
//  ContentView.swift
//  SwiftUITest1
//
//  Created by Ivan Lam on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State private var roll = false
    @State private var a = 0
    @State private var b = 0
    @State private var c = 0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text("SwiftUI Slots")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }
                Spacer()
                ZStack {
                    Image(systemName: "capsule.fill")
                        .resizable()
                        .frame(width: 150, height: 40, alignment: .center)
                        .foregroundColor(.yellow)
                    Text("Credits: \(String(credits))")
                }
                Spacer()
                HStack {
                    Image(String(a))
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                    Image(String(b))
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                    Image(String(c))
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                Button(action: {
                    self.roll.toggle()
                    credits -= 1
                    self.a = Int.random(in: 1...8)
                    self.b = Int.random(in: 1...8)
                    self.c = Int.random(in: 1...8)
                    if (self.a==self.b && self.b==self.c && self.a==1) {
                        credits += 5000
                    }
                    else if (self.a==self.b && self.b==self.c && self.a==2) {
                        credits += 2500
                    }
                    else if (self.a==self.b && self.b==self.c && self.a==3) {
                        credits += 1500
                    }
                    else if (self.a==self.b && self.b==self.c && self.a==4) {
                        credits += 750
                    }
                    else if (self.a==self.b && self.b==self.c && self.a==5) {
                        credits += 500
                    }
                    else if (self.a==self.b && self.b==self.c && self.a==6) {
                        credits += 100
                    }
                    else if (self.a==self.b && self.b==self.c) {
                        credits += 10
                    }
                    self.roll.toggle()
                }, label: {
                    ZStack {
                        if roll {
                            Image(systemName: "capsule.fill")
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                            Text("Bet").foregroundColor(.black)
                        }
                        else {
                            Image(systemName: "capsule")
                                .font(.system(size: 50))
                                .foregroundColor(.black)
                            Text("Bet").foregroundColor(.black)
                        }
                    }
                })
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

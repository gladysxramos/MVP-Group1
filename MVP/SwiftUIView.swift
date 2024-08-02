//
//  SwiftUIView.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack {
            ZStack (alignment: .bottom){
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                HStack (alignment : .top){
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image("home icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                    NavigationLink(destination: infoView()) {
                        Image("info icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                    Image("blank")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/){
                        Image("map icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image("profile icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .bottom, .trailing], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                }
                .background(Rectangle())
                .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                .cornerRadius(45)
                Button{
                    var hi = 1
                } label: {
                    Image("plus icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}

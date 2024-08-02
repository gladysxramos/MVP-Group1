//
//  proflieView.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        NavigationStack {
            ZStack (alignment: .bottom){
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                VStack(alignment:.leading){
                    HStack (alignment: .top){
                        Text ("Your Profile")
                            .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            .padding(.leading)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .lineLimit(/*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                            
                        Image("camera")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180.0, height: 180.0)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.leading)}
                    VStack(alignment: .leading){
                        Text("🔥 Streaks:")
                            .font(Font.custom("Times New Roman MT Std Condensed", size: 40))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            .padding(.leading)
                        Text("Date Joined: 08/02/2024")
                            .font(Font.custom("Times New Roman MT Std Condensed", size: 40))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            .padding(.leading)
                        Text("Total Pieces:")
                            .font(Font.custom("Times New Roman MT Std Condensed", size: 40))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            .padding(.leading)
                        Text("Pieces Recycled:")
                            .font(Font.custom("Times New Roman MT Std Condensed", size: 40))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                        .padding(.leading)}
                    Spacer()
                //ToolBar
                    HStack (alignment : .top){
                        NavigationLink(destination: ContentView()) {
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
                        NavigationLink(destination: mapView()){
                            Image("map icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .leading, .bottom], 10.0)
                            .frame(width: 70.0, height: 70.0)}
                        Image("profile icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .bottom, .trailing], 10.0)
                            .frame(width: 70.0, height: 70.0)
                    }
                    .background(Rectangle())
                    .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                    .cornerRadius(45)
                }
                Button{
                    
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
    profileView()
}

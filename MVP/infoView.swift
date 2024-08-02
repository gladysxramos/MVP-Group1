//
//  infoView.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct infoView: View {
    @State private var showfastFashionView = false
    @State private var showtheFactsView = false
    var body: some View {
        NavigationStack{
            ZStack (alignment: .bottom){
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                VStack {
                    VStack (alignment: .leading) {
                        Text("                                                                                         ")
                        Text ("Info")
                            .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            .padding(.leading)
                    }
                    ScrollView{
                        ZStack (alignment : .topTrailing){
                            Image("fastfashion")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .opacity(0.7)
                            Button{
                                withAnimation{
                                    self.showfastFashionView = true}
                            }label:{
                                Text ("Fast Fashion")
                                    .font(Font.custom("Times New Roman MT Condensed Italic", size: 50))
                                    .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                                    .lineLimit(2)
                                    .padding(.trailing)
                            }
                        }
                        ZStack (alignment:.leading){
                                                    Image("trashFast")
                                                        .resizable(resizingMode: .stretch)
                                                        .aspectRatio(contentMode: .fit)
                                                        .opacity(0.6)
                                                    Button{
                                                        withAnimation{
                                                            self.showtheFactsView = true}
                                                    }label:{
                                                        Text ("The Facts")
                                                            .font(Font.custom("Times New Roman MT Condensed Italic", size: 50))
                                                            .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                                                            .lineLimit(2)
                                                            .padding(.leading)
                                                    }
                                                }
                        
                    }
//                    if showfastFashionView{
//                        fastFashionView(showfastFashionView: $showfastFashionView)}
//                    if showtheFactsView{
//                        theFactsView(showtheFactsView: $showtheFactsView)}
                    Spacer()
                    //Toolbar
                    HStack (alignment : .top){
                        NavigationLink(destination: ContentView()) {
                            Image("home icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .leading, .bottom], 10.0)
                            .frame(width: 70.0, height: 70.0)}
                        Image("info icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                            .frame(width: 70.0, height: 70.0)
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
                        NavigationLink(destination: profileView()) {
                            Image("profile icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .bottom, .trailing], 10.0)
                            .frame(width: 70.0, height: 70.0)}
                    }
                    .background(Rectangle())
                    .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                    .cornerRadius(45)}
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
    infoView()
}

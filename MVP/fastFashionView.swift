//
//  fastFashionView.swift
//  MVP
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct fastFashionView: View {
    
    @Binding var showfastFashionView: Bool
    
    var body: some View {
        ScrollView{
            VStack{
                Button{
                    self.showfastFashionView = false
                } label: {Text("⌄")
                        .font(Font.custom("AtkinsonHyperlegible-Regular", size: 60))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                }
                Text("Fast Fashion Stats")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding([.leading, .bottom, .trailing])
            }
            VStack(alignment:.leading){
                Text("                                                                                           ")
                Text("1. Clothing sales have doubled from 100 to 200 billion units a year")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("2. The average number of times an item was worn decreased by 36%")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("3.The fashion industry is the second-largest industrial polluter, accounting for about 10% of global pollution, ranking higher than emissions from air travel and maritime transport combined.")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("4. More than $500 billion are lost every year due to lack of recycling and clothing utilisation")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("5. Fast fashion habits are global, but the worst in the USA")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("6. 20% of global wastewater comes from textile dyeing")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("7. We discard 92 million tons of clothes-related waste each year")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Image("fastFashionGraphic")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("8. Produces half a million tons of microplastics")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 30))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("9. Returns of items bought online exceed the amount of all purchased goods by 30%")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("10. It has been shown that by skipping one in six washing loads, washing half loads at below 30 degrees, and substituting every sixth dryer usage with open-air drying, we would reduce consumer emissions by more than half. ")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Spacer()
                Text("Provided by earth.org")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
            }
        }
        .background(Rectangle())
        .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
        .frame(width: 400.0)
    }
}

//#Preview {
//    fastFashionView()
//}

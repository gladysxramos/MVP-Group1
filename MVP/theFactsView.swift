//
//  theFactsView.swift
//  MVP
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct theFactsView: View {
    @Binding var showtheFactsView: Bool
    var body: some View {
        ScrollView{
            VStack{
                Button{
                    self.showtheFactsView = false
                } label: {Text("⌄")
                        .font(Font.custom("AtkinsonHyperlegible-Regular", size: 60))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                }
                Text("The Facts")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding([.leading, .bottom, .trailing])
            }
            VStack(alignment:.leading){
                Text("                                                                                           ")
                Text("1. The fashion industry produces 100 billion garments a year and 87% (40 million tons) end up in a landfill where they smolder and pollute the air or an incinerator")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("2. Only 1% of all discarded clothing is actually recycled")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("3. The average person today buys 60 percent more items of clothing than they did 15 years ago, but keep them for only half as long. The average garment may be worn as few as ten times before disposal")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("4. The apparel industry is responsible for 4% of greenhouse gas emissions – the same as the countries of Germany, France and the U.K. combined.  Unchecked, fashion production would account for 26% of all carbon emissions by 2050")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("5. Fashion is one of the most polluting of all industries. Clothing is manufactured with highly toxic dyes and heavy metals that are flushed into clean water streams, rivers and aquifers where they sicken people and animals, harm ecosystems, and cause biodiversity loss")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("6. The industry razes 150 million trees for cellulosic fabrics.  Cattle grazing has contributed to deforestation in the Amazon and the leather produced from that region has been traced to global fashion brands’ shoes and bags")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("7. Non-organic cotton farming heavily depletes and degrades soil. It is one of the world’s most pesticide intensive crops. These affect the health of farmers and populations nearby. The toxic farm runoff contaminates fresh waters, wetlands and aquifers and threatens biodiversity and eco-systems")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("8. 69% of all clothing is made partially or entirely of synthetic fibers such as polyester which is a crude oil derivative. Petroleum is a non-renewable resource with significant negative impacts on the earth")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 30))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("9. Up to 40% of fashion’s carbon emissions are from the production of polyester and polyester production is expected to grow by 47% over the next 10 years")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("10. Washing our synthetic clothing accounts for 35% of all microplastics in the ocean making them the largest source of microplastic pollution in the world’s oceans. Microplastics infiltrate the food chain and, in a study in the Netherlands in March 2022, microplastics were found in the blood of 80% of those tested, half of which were PET (polyethylene terephthalate), the plastic material found in clothing")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("11. Clothing production has doubled since 2000 and with a shifting population and consumption patterns, the fast fashion industry is expected to continue to grow.  By 2030, one estimate suggests that clothing consumption will grow 63% along with a rise since 2015 of 2.4 billion people into the global middle class, and a recent report estimated the world is on track to triple clothing production by 2050")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("12. The true cost of fast fashion’s cheap clothing is extracted from the industry’s factory garment workers. Workers are paid less than the minimum wage in countries in the global south which does not nearly constitute a “living” wage")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("13. In order for true recycling to take place, clothing must be collected, sorted and distributed to recyclers. These systems are in their infancy. Sorting is still done by hand.  And while there are innovative technologies that can break down the fabric of used garments to make new clothing, many await business investment to scale their systems to the colossal size necessary. Fully scaled, however, these technologies could drive 80% circularity in the fashion industry")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Text("14. Most major industries are highly regulated.  But the fashion industry, one of the largest manufacturing industries on the planet, is almost entirely unregulated")
                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                    .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                    .padding(.leading)
                Spacer()
                Text("Provided by earthday.org")
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
//    theFactsView()
//}

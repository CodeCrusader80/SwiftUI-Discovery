//
//  TextView.swift
//  Grece-visite
//
//  Created by Mathieu Moutarde on 19/06/2023.
//

import SwiftUI
struct TextView: View {
    
    let intro = "Santorini, également connue sous le nom de Théra, est une île grecque située dans la mer Égée. C'est l'une des destinations les plus emblématiques et pittoresques de la Grèce. L'île est réputée pour ses paysages à couper le souffle, avec ses maisons blanches aux dômes bleus perchées au sommet de falaises abruptes offrant une vue imprenable sur la mer cristalline.Santorini est célèbre pour ses couchers de soleil spectaculaires, qui attirent des visiteurs du monde entier. Les villages perchés tels que Oia, Fira et Imerovigli offrent des vues panoramiques incroyables sur la caldeira, une immense formation géologique résultant d'une éruption volcanique ancienne. En plus de ses paysages époustouflants, Santorini propose une riche histoire et une culture fascinante. L'île abrite des sites archéologiques remarquables, notamment les ruines de la cité minoenne d'Akrotiri, ensevelie sous des cendres volcaniques pendant des milliers d'années. Les visiteurs peuvent explorer ces sites historiques et en apprendre davantage sur l'histoire fascinante de l'île.Santorini est également réputée pour sa cuisine délicieuse. Les visiteurs peuvent déguster des plats traditionnels grecs, des fruits de mer frais et des vins locaux renommés, produits à partir de vignes cultivées sur les pentes fertiles de l'île.Que vous souhaitiez vous détendre sur les plages de sable noir ou explorer les ruelles sinueuses des villages pittoresques, Santorini offre une expérience inoubliable. C'est un véritable paradis pour les amoureux de la nature, les passionnés d'histoire et les voyageurs en quête de beauté et d'authenticité."
    var greceColor : Color {
#if os(iOS)
        return Color(uiColor: UIColor(
            red: 12/255, green: 95/255, blue: 175/255, alpha: 1))
#else
        return Color(nsColor: NSColor(red: 12/255, green: 95/255, blue: 175/255, alpha: 1))
#endif
    }
    
    var backgroundColor : Color {
        return Color.white
    }
    
    var body: some View {
        ScrollView {
            Text(intro)
        }
        .fontDesign(.serif)
        .fontWeight(.light)
        .truncationMode(.tail)
        .multilineTextAlignment(.center)
        .foregroundColor(greceColor)
        .background(backgroundColor)
        .cornerRadius(20)
        .frame(height: 200)
        .lineSpacing(2)
        .clipped()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}

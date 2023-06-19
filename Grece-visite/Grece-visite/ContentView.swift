//
//  ContentView.swift
//  Grece-visite
//
//  Created by Mathieu Moutarde on 19/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    var greceColor : Color {
#if os(iOS)
        return Color(uiColor: UIColor(
            red: 12/255, green: 95/255, blue: 175/255, alpha: 1))
#else
        return Color(nsColor: NSColor(red: 12/255, green: 95/255, blue: 175/255, alpha: 1))
#endif
    }
    
    
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width
            let height = proxy.size.height
            
            VStack(alignment: .center, spacing: 20) {
                ZStack (alignment: .bottomTrailing) {
                    Image("bg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: height * 0.3)
                        .clipped()
                    
                    HStack (alignment: .lastTextBaseline) {
                        Text("I 💙 Santorini")
                            .font(.largeTitle)
                            .bold()
                            .frame(alignment: .trailing)
                            .foregroundColor(greceColor)
                            .offset(y: height * 0.05)
                        Spacer()
                        Image("flag")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: width * 0.2, alignment: .trailing)
                            .offset(y: height * 0.05)
                    }
                } .ignoresSafeArea()
                Divider()
                    .frame(height: 2)
                    .overlay(greceColor)
                HStack {
                    Text("Avis :")
                        .italic()
                    ForEach(1...4, id: \.self) { _ in
                        Image(systemName: "star.fill")
                    }
                    Image(systemName: "star")
                }
                .foregroundColor(greceColor)
                .font(.title2)
                
                VStack {
                    HstackImage()
                }
                HStack {
                    TextView()
                }
                Divider()
                VStack {
                    Text("\(Image(systemName: "square.and.arrow.up")) Je partage")
                }
                .foregroundColor(greceColor)
                
    
            }

        }
       
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

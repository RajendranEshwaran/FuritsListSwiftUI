//
//  ContentView.swift
//  FuritsListSwiftUI
//
//  Created by gomathi saminathan on 10/8/20.
//

import SwiftUI


struct ContentView: View {
    var fruitsName:[Fruits] = []
    var body: some View {
        
        NavigationView {
                    List(fruitsName) { fruitsnames in
                       FruitsCell(fru: fruitsnames)
                    }
                }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
        Group {
                    ContentView(fruitsName: testData)
                    ContentView(fruitsName: testData)
                        .environment(\.colorScheme, .dark)
                    ContentView(fruitsName: testData)
                        .environment(\.sizeCategory, .extraExtraExtraLarge)
                }
//            ContentView()
//            .padding()
//            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//
//            .previewDisplayName(  "Rajay iPhone 11")
        
        
    }
}

struct FruitsCell:View {
    let fru: Fruits
    var body: some View{
            
                NavigationLink(destination:DescriptionView(fruit: fru)) {
                    Image(fru.thumbnailName)
                        .cornerRadius(8)
                    VStack (alignment: .leading){
                        Text(fru.name)
                        Text("Number: \(fru.capacity)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }.navigationBarTitle("Animals")
            
    }
}

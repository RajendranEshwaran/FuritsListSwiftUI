//
//  DescriptionView.swift
//  FuritsListSwiftUI
//
//  Created by gomathi saminathan on 10/8/20.
//

import SwiftUI
struct DescriptionView: View {
    let fruit:Fruits
    @State private var zoomed = false
    var body: some View {
        ZStack (alignment:.topLeading){
            Image(fruit.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill:.fit)
                .navigationBarTitle(Text("\(fruit.name) ( \(fruit.capacity) )"), displayMode:.inline)
                .frame(minWidth:0, maxWidth: .infinity, minHeight:0 , maxHeight: .infinity)
                .onTapGesture {
                    withAnimation { self.zoomed.toggle() }
            }
            if !zoomed {
                Text("Touch The Image")
                    .font(.title)
                    .padding(.all)
                    .transition(.move(edge: .leading))
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { DescriptionView(fruit: testData[0]) }
    }
}

//
//  ContentView.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Welcome").font(.title).padding().foregroundColor(.white).scaledToFill()
        }.background(Image("title_screen").scaledToFill())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

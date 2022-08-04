//
//  MapView.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/07/25.
//

import SwiftUI

struct MapView: View {
    
    var body: some View {
        Image("campusmap")
            .resizable().scaledToFit()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

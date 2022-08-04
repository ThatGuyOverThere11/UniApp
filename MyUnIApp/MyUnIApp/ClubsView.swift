//
//  ClubsView.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/08/01.
//

import SwiftUI

struct ClubsView: View {
    //var clubs = ["War Games","Sking","Chess","BasketBall","Gymnastics"]
    @ObservedObject private var viewModel = ClubsModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.clubs){ clubs in
                VStack(alignment: .leading){
                    Text(clubs.name ?? "").font(.title)
                }
            }.onAppear() {
                self.viewModel.fetchData()
            }
        }
    }
}

struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
    }
}

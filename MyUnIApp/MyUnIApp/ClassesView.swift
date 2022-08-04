//
//  ClassesView.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/08/01.
//

import SwiftUI

struct ClassesView: View {
    
    
    //var classes = ["English 101","Philosophy 101","Information Systems 101","Databases 101"]
    @ObservedObject private var viewModel = ClassesModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.classes){ classes in
                VStack(alignment: .leading){
                    Text(classes.name ?? "").font(.title)
                }
            }.onAppear() {
                self.viewModel.fetchData()
            }
        }
    }
}

struct ClassesView_Previews: PreviewProvider {
    static var previews: some View {
        ClassesView()
    }
}

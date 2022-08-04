//
//  ClubsModel.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/08/03.
//

import Foundation
import FirebaseFirestore

class ClubsModel: ObservableObject {
    @Published var clubs = [Clubs]()
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Clubs and Societies").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print(" ")
                print("No Documents")
                print(" ")
                return
            }
            
            self.clubs = documents.map { (QueryDocumentSnapshot) -> Clubs in
                let data = QueryDocumentSnapshot.data()
                let name = data["Name"] as? String ?? ""
                return Clubs(name: name)
            }
        }
    }
}

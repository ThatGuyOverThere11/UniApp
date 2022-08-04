//
//  ClassesModel.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/08/03.
//

import Foundation
import FirebaseFirestore

class ClassesModel: ObservableObject {
    @Published var classes = [Classes]()
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Classes").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print(" ")
                print("No Documents")
                print(" ")
                return
            }
            
            self.classes = documents.map { (QueryDocumentSnapshot) -> Classes in
                let data = QueryDocumentSnapshot.data()
                let name = data["Name"] as? String ?? ""
                return Classes(name: name)
            }
        }
    }
}

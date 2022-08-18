//
//  GroupRepository.swift
//  KittenKindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

//To install into DB
import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class GroupRepository: ObservableObject {
    let db = Firestore.firestore()

    @Published var groups = [Group]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        db.collection("groups")
            .order(by: "createdTime")
            .addSnapshotListener { (querySnapshot, error) in
            if let querySnapshot = querySnapshot {
                self.groups = querySnapshot.documents.map {   document in
                    try! document.data(as: Group.self)
                }
            }
        }
    }
    
    //add to database
    func addGroup(_ group: Group) {
        do {
          let _ = try db.collection("groups").addDocument(from: group)
        }
        catch {
            fatalError("Unable to encode group: \(error.localizedDescription)")
        }
    }
    
    //update group to database
    func updateGroup(_ group: Group) {
        if let groupID = group.id {
            do {
                try db.collection("groups").document(groupID).setData(from: group)
            }
            catch {
                fatalError("Unable to encode group: \(error.localizedDescription)")
            }
        }
    }
}

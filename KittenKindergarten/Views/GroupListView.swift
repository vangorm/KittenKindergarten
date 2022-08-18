//
//  GroupListView.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

import SwiftUI

struct GroupListView: View {
    @ObservedObject var groupListVM = GroupListViewModel()
    
    let groups = testDataGroup
    
    @State var presentAddNewGroup = false
    
    var body: some View {
            VStack(alignment: .leading) {
                //iterate through saved groups
                List {
                    ForEach(groupListVM.groupCellViewModels) { groupCellVM in
                        GroupCell(groupCellVM: groupCellVM)
                    }
                    //if adding a new cell
                    if presentAddNewGroup {
                        GroupCell(groupCellVM: GroupCellViewModel(group: Group(name: "", age: 0, frequency: 0, lowEnd: 0, highEnd: 0, foodType: "", behavior: ""))) { group in
                            self.groupListVM.addGroup(group: group)
                            self.presentAddNewGroup.toggle()
                        }
                    }
                }

                //show or hide add new cell
                Button(action:{ self.presentAddNewGroup.toggle() }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add New Age Group")
                            .font(.system(size: 20, weight: .thin))
                            .foregroundColor(.gray)
                    }
                }
                .padding()
            }
            .navigationTitle("Groups")
            .navigationBarHidden(false)
    }
}

struct GroupCell: View {
    @ObservedObject var groupCellVM: GroupCellViewModel
    
    //when user commits their text
    var onCommit: (Group) -> (Void) = { _ in }
    
    //If less than 4 weeks, leave paw print blank
    var body: some View {
        HStack {
            Image(systemName: "pawprint.fill")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.mint)
            TextField("Enter the group name", text: $groupCellVM.group.name, onCommit: {
                self.onCommit(self.groupCellVM.group)
            })
        }
    }
}

struct GroupListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupListView()
            .previewInterfaceOrientation(.portrait)
    }
}

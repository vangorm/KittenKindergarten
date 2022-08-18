//
//  GroupListViewModel.swift
//  KittenKindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

import Foundation
import Combine

class GroupListViewModel: ObservableObject {
    @Published var groupRepository = GroupRepository()
    @Published var groupCellViewModels = [GroupCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        groupRepository.$groups.compactMap { groups in
            groups.map { group in
                GroupCellViewModel(group: group)
            }
        }
        .assign(to: \.groupCellViewModels, on: self)
        .store(in: &cancellables)
    }
    
    //add new group
    func addGroup(group: Group) {
        groupRepository.addGroup(group)
    }
}

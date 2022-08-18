//
//  GroupCellViewModel.swift
//  KittenKindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

import Foundation
import Combine

class GroupCellViewModel: ObservableObject, Identifiable {
    @Published var groupRepository = GroupRepository()
    @Published var group : Group
    
    var id = ""
    @Published var stateIconName = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    init(group: Group) {
        self.group = group
        //assigns an icon and name to each row
        $group
            .map {  group in
//                group.age ?? < 28 ? "pawprint" : "pawprint.fill"
                "pawprint.fill"
            }
            .assign(to: \.stateIconName, on: self)
            .store(in: &cancellables)
        
        //assigns an id to each line
        $group
            .compactMap { group in
                group.id
            }
            .assign(to: \.id, on: self)
            .store(in: &cancellables)
        
        //updates after you are done typing
        $group
        .dropFirst()
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .sink { group in
            self.groupRepository.updateGroup(group)
        }
        .store(in: &cancellables)
    }
}

//
//  AddressSearchNavigator.swift
//  GroupingApp
//
//  Created by seungjin on 2019/10/06.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import Foundation
import FlowInject

enum AddressSearch: Route {
  case registry
}

class AddressSearchNavigator: Navigator<AddressSearch> {
  
  func navigate(to destination: AddressSearch) {
    switch destination {
    case .registry:
      presenter?.popViewController(animated: true)
    }
  }
  
}

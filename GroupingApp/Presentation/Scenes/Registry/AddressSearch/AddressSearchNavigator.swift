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
  case selectMap(PlaceModel)
}

class AddressSearchNavigator: Navigator<AddressSearch> {
  
  func navigate(to destination: AddressSearch) {
    switch destination {
    case .selectMap(let placeModel):
      let viewModel = SelectMapViewModel()
      let viewController = SelectMapViewController(viewModel: viewModel, selectedItem: placeModel)
      presenter?.pushViewController(viewController, animated: true)
    }
  }
  
}

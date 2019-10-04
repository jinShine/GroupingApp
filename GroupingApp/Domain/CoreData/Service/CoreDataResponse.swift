//
//  CoreDataResponse.swift
//  GroupingApp
//
//  Created by seungjin on 2019/10/03.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import Foundation

enum CoreDataResult {
  case success
  case failure
}

enum CoreDataError: Error {
  case saveError
}

struct CoreDataResponse {
  let result: CoreDataResult
  var error: CoreDataError?
}



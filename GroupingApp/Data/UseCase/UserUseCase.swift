//
//  UserUseCase.swift
//  GroupingApp
//
//  Created by seungjin on 2019/10/04.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import RxSwift

protocol UserUseCase {
  
  func create(profileImage: Data?,
              name: String,
              number: String,
              crew: String,
              address: String?,
              email: String?,
              birth: String?,
              memo: String?) -> Single<Void>
  
}

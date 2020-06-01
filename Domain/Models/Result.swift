//
//  Result.swift
//  Domain
//
//  Created by alexey on 5/24/20.
//  Copyright © 2020 Alexey Bondar. All rights reserved.
//

import Foundation

public class Result<T> {
  public let value: T?
  public let error: Error?

  public init(value: T? = nil, error: Error? = nil) {
    self.value = value
    self.error = error
  }
}

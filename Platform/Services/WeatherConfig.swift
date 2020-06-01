//
//  WeatherConfig.swift
//  Platform
//
//  Created by alexey on 5/25/20.
//  Copyright © 2020 Alexey Bondar. All rights reserved.
//

import Foundation
import Moya
import Alamofire

struct WeatherConfig {
  static let appId = "afbaa3d091555716c3162421038d0555"
  static let url = "https://api.openweathermap.org/data/2.5"

  static func defaultProvider<TargetType>() -> MoyaProvider<TargetType> {
    return MoyaProvider(manager: Manager(), plugins: [])
  }
}

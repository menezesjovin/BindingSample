//
//  FancyTimer.swift
//  BindingSample
//
//  Created by Jovin Menezes on 21/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
class FancyTimer : ObservableObject {
    @Published var value : Int = 0
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.value += 1
        }
    }
}

//
//  EnvorimentViewModel.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 11/06/2026.
//

import Foundation
import SwiftUI
import Combine
class EnvorimentViewModel : ObservableObject {
    @Published var dataArray : [String] = []
    init(){
      getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: [
            "Iphone",
            "Ipad",
            "MacBook",
            "Apple Watch"
        ])
    }
}

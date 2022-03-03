//
//  ViewModel.swift
//  test
//
//  Created by kitano hajime on 2022/03/04.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var shown = false // trigger
    @Published var input = ""
    @Published var alert: Alert?
    
    // store data
    func save() {
        guard isValidInput else { return }
        alert = AlertContext.sucess
        shown = true
    }    
    // validation input data
    var isValidInput: Bool {
        if input.isEmpty {
            shown = true
            alert = AlertContext.empty
            return false
        } else if !(input == "ベジータ") {
            shown = true
            alert = AlertContext.invalidData
            return false
        }
        return true
    }
}


struct Alert {
    var title: String
    var message: String
    var imageName: String
}

struct AlertContext {
    static let sucess = Alert(title: "Sucess", message: "Data storing is sucess!!", imageName: SFSymbolString.sucess.rawValue)
    static let empty = Alert(title: "Failer", message: "Empty input is not allowed.", imageName: SFSymbolString.failer.rawValue)
    static let invalidData = Alert(title: "Failer", message: "Something went wrong.", imageName: SFSymbolString.failer.rawValue)
}

enum SFSymbolString: String {
    case sucess = "checkmark.circle.fill"
    case failer = "xmark.circle.fill"
}

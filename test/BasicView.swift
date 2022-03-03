//
//  BasicView.swift
//  test
//
//  Created by kitano hajime on 2022/03/04.
//

import SwiftUI

struct BasicView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Form {
                        Section {
                            TextField("おれが悟空でお前が", text: $viewModel.input)
                        }
                        HStack {
                            Spacer()
                            Button("Save") { // Button title
                                // Button action
                                viewModel.save()
                            }
                            Spacer()
                        }//: HSTACK
                    }//: FORM
                }
            }//: VSTACK
            .overlay {
                if viewModel.shown {
                    CutomAlertView(shown: $viewModel.shown, alert: viewModel.alert!) // AlertView intialize with shown property
                   }
            }
        }
    }
}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}

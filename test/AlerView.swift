//
//  AlerView.swift
//  test
//
//  Created by kitano hajime on 2022/03/04.
//

import SwiftUI


struct CutomAlertView: View {
    
    @Binding var shown: Bool
    var alert: Alert
    
    var body: some View {
        VStack {            
            Image(systemName: alert.imageName)
                .resizable().frame(width: 50, height: 50)
                .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(alert.title))
            Spacer()
            Text(alert.message).foregroundColor(Color.white)
            Spacer()
            Divider()
            HStack {
                Button("Ok") {                    
                    shown.toggle()
                }//: BUTTON
                .frame(width: UIScreen.main.bounds.width, height: 40)
                .foregroundColor(.white)
            }//: HSTACK
        }//: VSTAC
        .frame(width: UIScreen.main.bounds.width-50, height: 200)
        .background(Color.black.opacity(0.5))
        .cornerRadius(12)
        .clipped()
        
    }
}

//struct CutomAlertView: PreviewProvider {
//    static var previews: some View {
//        AlerView()
//    }
//}

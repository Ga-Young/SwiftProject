//
//  modalView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/13/24.
//

import SwiftUI

struct MyOnboardingView: View {
    var body: some View {
        VStack {
            Text("What's New In GayoungApp")
                .font(.system(size: 35))
                .bold()
                .padding(.bottom, 30)
            
            subView(image: "photo", title: "Snoopy", description: "Add a new photo to your collectionhhhhhhhhhhhhhhhdddddddddddd dddd ddd ddddddd dddd ddddddhhhhhhhhdddddddddddddddd")
            subView(image: "photo", title: "Setting", description: "Add a new photo to your collectionhhhhhhhhhhhhhhhdddddddddddd dddd ddd ddddddd dddd ddddddhhhhhhhhdddddddddddddddd")
            subView(image: "photo", title: "New AI Photo", description: "Add a new photo to your collectionhhhhhhhhhhhhhhhdddddddddddd dddd ddd ddddddd dddd ddddddhhhhhhhhdddddddddddddddd")
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 50)
    }
}

#Preview {
    MyOnboardingView()
}


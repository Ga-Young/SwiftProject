//
//  OnboardingView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/8/24.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isFirstLaunch: Bool
    
    var body: some View {
        VStack {
            Text("What's New In GayoungApp")
                .font(.system(size: 35))
                .bold()
                .padding(.bottom, 30)
            
            subView(image: "photo", title: "New Photo", description: "Add a new photo to your collectionhhhhhhhhhhhhhhhdddddddddddd dddd ddd ddddddd dddd ddddddhhhhhhhhdddddddddddddddd")
            subView(image: "photo", title: "New Copy Photo", description: "Add a new photo to your collectionhhhhhhhhhhhhhhhdddddddddddd dddd ddd ddddddd dddd ddddddhhhhhhhhdddddddddddddddd")
            subView(image: "photo", title: "New AI Photo", description: "Add a new photo to your collectionhhhhhhhhhhhhhhhdddddddddddd dddd ddd ddddddd dddd ddddddhhhhhhhhdddddddddddddddd")
            
            Spacer()
            
            Button {
                print("Get stratted button pressed")
                isFirstLaunch = false
                
            } label: {
                Text("Get stratted")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 60)
        }
        .padding(.horizontal, 20)
        .padding(.top, 50)
    }
}

struct subView: View {
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.trailing, 10)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(.gray)
            }
        }
        .padding(.bottom, 20)
    }
}
    
#Preview {
    OnboardingView(isFirstLaunch: .constant(true))
}

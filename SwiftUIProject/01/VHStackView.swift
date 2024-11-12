//
//  VHStackView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/6/24.
//

import SwiftUI

struct VHStackView: View {
    @AppStorage("isFirstLaunch") private var isFirstLaunch: Bool = true
    
    var body: some View {
        ZStack {
            mainView()
                .sheet(isPresented: $isFirstLaunch) {
                    OnboardingView(isFirstLaunch: $isFirstLaunch)
                }
        }
    }
}

struct mainView: View {
    var body: some View {
        VStack {
            Image("snoopy")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text("스누피 사진")
                .font(.headline)
                .padding()
            Text("스누피는 강아지")
                .font(.subheadline)
                .padding()
            Text("스누피 귀여워")
                .font(.body)
                .padding()
            
            HStack {
                myButton(title: "Button1", buttonColor: .green)
                myButton(title: "Button2", buttonColor: .blue)
            }
            
            Button {
                print("Button3")
            } label: {
                VStack {
                    Image(systemName: "arrow.2.circlepath.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Button3")
                        .font(.system(size: 25))
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(10)
            }
        }
    }
}

struct myButton: View {
    var title: String
    var buttonColor: Color
    
    var body: some View {
        Button {
            print(title)
            
        } label: {
            Text(title)
                .padding()
                .foregroundColor(.white)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    VHStackView()
}

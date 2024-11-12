//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.down.badge.clock")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            
            Text("헤드라인 텍스트")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브헤드라인 텍스트")
                .font(.subheadline)
                .padding()
            
            Text("기본 바디")
                .font(.body)
                .padding()
            
            Button {
                //
            } label: {
                Text("누르기")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .bold()
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

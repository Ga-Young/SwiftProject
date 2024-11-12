//
//  NavigationView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/12/24.
//

import SwiftUI

struct NavigationView: View {
    let titles: [String] = ["Navigation", "Navigation2"]
    let descriptions: [String] = ["Navigation 입니다.", "Navigation2 입니다."]
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(titles.indices, id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                        
                    } label: {
                        HStack {
                            Image(systemName: "airplane")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .padding(7)
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            Text(titles[index])
                        }
                    }
                }
            }
            .toolbar(content: {
                ToolbarItem {
                    Button("ADD") {
                        showModal = true
                    }
                }

            })
            .sheet(isPresented: $showModal, content: {
                Text("추가 모달입니다.")
            })
            .navigationTitle("Navigation")
        }
    }
}

#Preview {
    NavigationView()
}

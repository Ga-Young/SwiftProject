//
//  MyApp.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/13/24.
//

import SwiftUI

struct MyApp: View {
    @State var showModal: Bool = false
    
    init() {
         // UIPageControl 스타일 설정
        UIPageControl.appearance().currentPageIndicatorTintColor = .gray
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
     }
    
    var body: some View {
        TabView {
            VHStackView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            MySettingView()
                .tabItem {
                    Label("Setting", systemImage: "gearshape.fill")
                }
            
            Text("세 번째 페이지")
                .tabItem {
                    Label("Third", systemImage: "person.crop.circle.fill")
                }
            
            Text("네 번째 페이지")
                .tabItem {
                    Label("forth", systemImage: "storefront.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                MyOnboardingView()
                
                ZStack {
                    Color.yellow.ignoresSafeArea()
                    Text("yellow sheet")
                }
                
                ZStack {
                    Color.green.ignoresSafeArea()
                    VStack {
                        Spacer()
                        
                        Text("green sheet")
                        
                        Spacer()
                        
                        Button {
                            print("Get strat button pressed")
                            showModal = false
                            
                        } label: {
                            Text("Get strat!")
                                .padding(.vertical, 15)
                                .padding(.horizontal, 30)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.bottom, 60)
                    }
                }
            }
            .tabViewStyle(.page)
        
        })
        .onAppear { //화면이 불리자마자 바로 보여지는 화면
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}

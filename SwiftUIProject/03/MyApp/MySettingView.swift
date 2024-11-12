//
//  MySettingView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/13/24.
//

import SwiftUI

struct MySettingView: View {
    var settings: [[SettingInfo]] = [[SettingInfo(title: "일반", titleImage: "gear", backImageColor: .gray),
                                  SettingInfo(title: "손쉬운 사용", titleImage: "accessibility", backImageColor: .blue),
                                  SettingInfo(title: "검색", titleImage: "magnifyingglass", backImageColor: .gray),
                                  SettingInfo(title: "동작 버튼", titleImage: "iphone.and.arrow.left.and.arrow.right.inward", backImageColor: .blue),
                                  SettingInfo(title: "스탠바이", titleImage: "sparkles.square.fill.on.square", backImageColor: .black),
                                  SettingInfo(title: "카메라", titleImage: "camera.fill", backImageColor: .gray),
                                  SettingInfo(title: "홈 화면 및 앱 보관함", titleImage: "apps.iphone", backImageColor: .blue),
                                  SettingInfo(title: "Siri", titleImage: "globe.asia.australia.fill", backImageColor: .gray)],
                                 [SettingInfo(title: "스크린 타임", titleImage: "hourglass", backImageColor: .purple)],
                                 [SettingInfo(title: "개인정보 보호 및 보안", titleImage: "hand.raised.fill", backImageColor: .blue)],
                                 [SettingInfo(title: "지갑 및 Apple Pay", titleImage: "creditcard", backImageColor: .black),
                                  SettingInfo(title: "Game Center", titleImage: "rectangle.pattern.checkered", backImageColor: .white),
                                  SettingInfo(title: "iCloud", titleImage: "cloud.fill", backImageColor: .white, foreImageColor: .blue)],
                                 [SettingInfo(title: "앱", titleImage: "apple.meditate.circle.fill", backImageColor: .purple)],
                                 [SettingInfo(title: "개발자", titleImage: "hammer.fill", backImageColor: .gray)]]
    
    @State var searchText: String = ""
    
    var filteredSettings: [[SettingInfo]] {
        if searchText.isEmpty {
            return settings
            
        } else {
            return settings.map { section in
                section.filter { $0.title.contains(searchText) }
            }.filter { !$0.isEmpty }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.gray)
                        
                        TextField("검색", text: $searchText)
                            .padding(.vertical, 10)
                    }
                    .padding(.horizontal, 10)
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(10)
                    .listRowInsets(EdgeInsets()) // 리스트 내부에서 꽉 차도록
                }
                .listRowBackground(Color(UIColor.systemGroupedBackground)) // 배경 색상 설정
                
                ForEach(filteredSettings, id: \.self) { setting in
                    Section {
                        ForEach(setting, id: \.self) { settingInfo in
                            NavigationLink {
                                Text(settingInfo.desc)
                                
                            } label: {
                                Label {
                                    Text(settingInfo.title)
                                        .foregroundColor(.black)
                                    
                                } icon: {
                                    Image(systemName: settingInfo.titleImage)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(7)
                                        .background(settingInfo.backImageColor)
                                        .foregroundColor(settingInfo.foreImageColor)
                                        .cornerRadius(10)
                                }
                            }

                        }

                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    MySettingView()
}

//
//  TabView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/12/24.
//

import SwiftUI

struct TabTabView: View {
    var body: some View {
        TabView {
            Text("Received View")
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fillㅋ")
                }

            Text("Sent View")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
                   
            Text("Account View")
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

#Preview {
    TabTabView()
}

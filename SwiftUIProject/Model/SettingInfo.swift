//
//  Setting.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/11/24.
//

import Foundation
import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let titleImage: String
    var backImageColor: Color
    var foreImageColor: Color
    var desc: String
    
    init(title: String, titleImage: String, backImageColor: Color, foreImageColor: Color = .white) {
        self.title = title
        self.titleImage = titleImage
        self.backImageColor = backImageColor
        self.foreImageColor = foreImageColor
        self.desc = "\(title)으로 이동"
    }
}

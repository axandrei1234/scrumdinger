//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Axente Andrei on 29.06.2022.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)
            Label(theme.name, systemImage: "paintpalette")
                .padding(4)
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
            .previewDevice("iPhone 13 Pro Max")
    }
}

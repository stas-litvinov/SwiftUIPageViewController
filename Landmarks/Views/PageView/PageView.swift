//
//  PageView.swift
//  Landmarks
//
//  Created by Stanislav Litvinov on 11.06.2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        PageViewController(pages: pages, currentPage: $currentPage)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(
            pages: ModelData().features.map {
                FeatureCard(landmark: $0)
            }
        ).aspectRatio(2 / 3, contentMode: .fit)
    }
}

//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Stanislav Litvinov on 11.06.2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark

    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}

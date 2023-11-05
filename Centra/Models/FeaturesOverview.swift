//
//  FeaturesOverview.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/31.
//

import Foundation

struct FeatureOverview: Identifiable {
    var id = UUID()
    var featureSymbol: String
    var featureTitle: String
    var briefExplanation: String
}

// DUMMY MODULE FOR TESTING
let dummyFeatureOverview: FeatureOverview = FeatureOverview(
    featureSymbol: "list.bullet.clipboard",
    featureTitle: "Assignments",
    briefExplanation: "See your Assignments at a glance, all in one place."
)

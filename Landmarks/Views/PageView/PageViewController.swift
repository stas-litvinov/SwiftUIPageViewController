//
//  PageViewController.swift
//  Landmarks
//
//  Created by Stanislav Litvinov on 11.06.2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable  {
    typealias UIViewControllerType = UIPageViewController

    var pages: [Page]

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )

        return pageViewController
    }

    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])],
            direction: .forward,
            animated: true
        )
    }

    class Coordinator: NSObject {
        var parent: PageViewController

        init(_ pageViewController: PageViewController) {
            parent = pageViewController
        }
    }
}

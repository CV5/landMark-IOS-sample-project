//
//  PageView.swift
//  Landmarks
//
//  Created by Cristian  Veras on 9/7/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
                .aspectRatio(3 / 2, contentMode: .fit)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}

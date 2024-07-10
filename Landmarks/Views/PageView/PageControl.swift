//
//  PageControl.swift
//  Landmarks
//
//  Created by Cristian  Veras on 9/7/24.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
       }
    
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
                  context.coordinator,
                  action: #selector(Coordinator.updateCurrentPage(sender:)),
                  for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject{
        var control: PageControl
        
        init(_ control: PageControl) {
            self.control = control
        }
        
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }

        
    }
    
}



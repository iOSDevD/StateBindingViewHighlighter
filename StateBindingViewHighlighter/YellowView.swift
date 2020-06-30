//
//  YellowView.swift
//  ViewHighlighter
//
//  Created by iOSDev on 6/28/20.
//  Copyright © 2020 iOSDev. All rights reserved.
//

import SwiftUI

/**
 * `YellowView` binded to Parent View with `highlightView`
 *  property
 */
struct YellowView: View {
    @Binding var highlightView: Bool
    var body: some View {
        
        VStack {
            Text("Yellow Hello, World!")
            Toggle(isOn: $highlightView) {
                Text("Enable From Yellow")
            }
        }
        .background(highlightView ? /*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/:Color.clear)
        
    }
}

struct YellowView_Previews: PreviewProvider {
    
    static var previews: some View {
        YellowView(highlightView: .constant(true))
    }
}

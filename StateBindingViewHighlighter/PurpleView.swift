//
//  PurpleView.swift
//  ViewHighlighter
//
//  Created by iOSDev on 6/28/20.
//  Copyright © 2020 iOSDev. All rights reserved.
//

import SwiftUI

/**
 * `PurpleView` binded to Parent View with `highlightView`
 *  property
 */
struct PurpleView: View {
    @Binding var highlightView: Bool
    var body: some View {
        
        VStack {
            Text("Purple Hello, World!")
            Toggle(isOn: $highlightView) {
                Text("Enable From Purple")
            }
        }
        .background(highlightView ? Color.purple:Color.clear)
        
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        PurpleView(highlightView: .constant(true))
    }
}

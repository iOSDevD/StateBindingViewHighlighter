//
//  BlueView.swift
//  ViewHighlighter
//
//  Created by iOSDev on 6/29/20.
//  Copyright © 2020 iOSDev. All rights reserved.
//

import SwiftUI

/**
 * `BlueView` has a state property but since it does
 *  not have binding with Parent View, it is does not listen
 *  to Parent View `highlightView` changes
 */
struct BlueView: View {
    @State var highlightView: Bool
    var body: some View {
        
        VStack {
            Text("Blue Hello, World!")
            Toggle(isOn: $highlightView) {
                Text("Enable From Blue")
            }
        }
        .background(highlightView ? Color.blue:Color.clear)
        
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView(highlightView: true)
    }
}

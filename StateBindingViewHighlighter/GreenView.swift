//
//  GreenView.swift
//  ViewHighlighter
//
//  Created by iOSDev on 6/28/20.
//  Copyright © 2020 iOSDev. All rights reserved.
//

import SwiftUI

struct PurpleView: View {
    @Binding var highlightView: Bool
    var body: some View {
        
        VStack {
            Text("Green Hello, World!")
            Toggle(isOn: $highlightView) {
                Text("Enable From Green")
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

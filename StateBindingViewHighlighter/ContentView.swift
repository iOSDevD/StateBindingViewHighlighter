//
//  ContentView.swift
//  ViewHighlighter
//
//  Created by iOSDev on 6/28/20.
//  Copyright © 2020 iOSDev. All rights reserved.
//

import SwiftUI

/**
 * Main Content View which shows all the view and has a @State property
 *  `highlight` managed by a `Toggle`.
 *
 *  If this is on , View background will change for Yellow and Purple as there
 *  is two way Binding between parent View (ContentView) and it's child views
 *  (`PurpleView` and `BlueView`).
 *
 *  Blue View background will not change as there is no binding
 *  with this property
 *
 */
struct ContentView: View {
    @State private var highlight:Bool = false
    
    var body: some View {
        VStack{
            Text("Hello, World!")
            Toggle(isOn: $highlight) {
                Text("Default Switch")
            }
            YellowView(highlightView: $highlight)
            PurpleView(highlightView: $highlight)
            BlueView(highlightView: highlight)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

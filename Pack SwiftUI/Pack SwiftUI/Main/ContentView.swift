//
//  ContentView.swift
//  Pack SwiftUI
//
//  Created by b.fernandes.santos on 20/05/20.
//  Copyright © 2020 bfs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Circle().fill(Color.green)
        }.border(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        ContentView()
    }
}

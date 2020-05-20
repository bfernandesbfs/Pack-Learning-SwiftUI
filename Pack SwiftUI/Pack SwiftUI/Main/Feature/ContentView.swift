//
//  ContentView.swift
//  Pack SwiftUI
//
//  Created by b.fernandes.santos on 20/05/20.
//  Copyright © 2020 bfs. All rights reserved.
//

import SwiftUI


extension VerticalAlignment {
    struct CustomAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[VerticalAlignment.center]
        }
    }

    static let custom = VerticalAlignment(CustomAlignment.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .custom) {
            Image(systemName: "star")
            VStack(alignment: .leading) {
                Text("Toronto")
                Text("Paris")
                Text("London")
                    .alignmentGuide(.custom) { $0[VerticalAlignment.center] }
                Text("Madrid")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        ContentView()
    }
}

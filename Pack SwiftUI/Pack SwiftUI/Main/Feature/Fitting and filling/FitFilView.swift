//
//  FitFilView.swift
//  Pack SwiftUI
//
//  Created by b.fernandes.santos on 20/05/20.
//  Copyright © 2020 bfs. All rights reserved.
//

import SwiftUI

struct FitFilView: View {
    var body: some View {

        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            HStack {
                Circle().fill(Color.green)
            }.border(Color.blue)
        }
    }
}

struct FitFilView_Previews: PreviewProvider {
    static var previews: some View {
        FitFilView()
    }
}

//
//  ContentView.swift
//  TCABasicUsage
//
//  Created by Yu Kanamori on 2023/01/17.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        NavigationView {
            FeatureView(
                store: Store(
                    initialState: Feature.State(),
                    reducer: Feature()
                )
            )
            .navigationTitle("TCA Basic Usage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

//
//  ContentView.swift
//  RickAndMortyModularArch
//
//  Created by Andrew Hardin on 5/20/25.
//

import SwiftUI
import Factory
import Home

struct ContentView: View {
    @Injected(\.viewModel) private var viewModel : RandMHomeViewModel
    var body: some View {
        RandMHomeView(viewModel: viewModel)
    }
}

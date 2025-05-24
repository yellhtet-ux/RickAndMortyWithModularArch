//
//  RandMHomeView.swift
//  Home
//
//  Created by Andrew Hardin on 5/22/25.
//

import SwiftUI
import Factory
import FactoryKit
 
public struct RandMHomeView: View {
    @ObservedObject var viewModel: RandMHomeViewModel
    
    public init(viewModel: RandMHomeViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        VStack {
            Button("Fetch") { 
                Task {
                    await viewModel.loadCharacters()
                }
            }
            if viewModel.isFetchingData {
                ProgressView()
                    .frame(width: 100, height: 100)
            }else {
                List (viewModel.allCharacters, id: \.id) { charater in
                    Text(charater.name)
                        .font(.headline)
                }    
            }
            
            if viewModel.isFetchingData {
                ProgressView()
                    .frame(width: 100, height: 100)
            }else {
                Text(viewModel.character?.name ?? "NO NAME")
            }
        }
        .padding()
        .task {
            await viewModel.loadSingleCharacter(id: 2)
        }
    }
}

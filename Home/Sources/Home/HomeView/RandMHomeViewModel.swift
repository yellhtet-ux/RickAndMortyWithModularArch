//
//  RandMHomeViewModel.swift
//  Home
//
//  Created by Andrew Hardin on 5/22/25.
//

import UseCaseInterfaceProtocol
import SwiftUI

public final class RandMHomeViewModel : ObservableObject {
    private let randMCharacterUseCase : RandMUseCaseInterfaceProtocol
    
    @Published public private(set) var allCharacters : [RandMCharacterItem] = []
    @Published public private(set) var character: RandMCharacterItem?
    @Published public private(set) var isFetchingData = false
    
    public init(randMCharacterUseCase: RandMUseCaseInterfaceProtocol) {
        self.randMCharacterUseCase = randMCharacterUseCase
    }
    
    public func loadCharacters () async  {
        do {
            let result = try await randMCharacterUseCase.execute().map (RandMCharacterItem.init)
            await MainActor.run { 
                self.allCharacters = result   
            }
        }catch {
            // MARK: - Handle Error
        }
    }
    
    public func loadSingleCharacter(id: Int) async {
        do {
            let result = try await randMCharacterUseCase.execute(id: id)
            await MainActor.run { 
                self.character = .init(character: result)   
            }
        }catch {
            // MARK: - Handle Error
            print("ERROR: \(error.localizedDescription)")
        }
    }
    
    public func fetchAllData(isRefreshing: Bool = false) async {
        if !isRefreshing {
            isFetchingData = true
        }

        // Make `loadCharacters` and `_____` run in parallel
        await withTaskGroup(of: Void.self) { taskGroup in
            taskGroup.addTask { await self.loadCharacters() }
        }

        isFetchingData = false
    }
    
}

//
//  Feature.swift
//  TCABasicUsage
//
//  Created by Yu Kanamori on 2023/01/17.
//

import Foundation
import ComposableArchitecture

struct Feature: ReducerProtocol {
    struct State: Equatable {
        var count = 0
        var numberFactAlert: String?
    }
    
    enum Action: Equatable {
        case factAlertDismissed
        case decrementButtonTapped
        case incrementButtonTapped
        case numberFactButtonTapped
        case numberFactResponse(TaskResult<String>)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .factAlertDismissed:
            state.numberFactAlert = nil
            return .none
        case .decrementButtonTapped:
            state.count -= 1
            return .none
        case .incrementButtonTapped:
            state.count += 1
            return .none
        case .numberFactButtonTapped:
            return .task { [count = state.count] in
                await .numberFactResponse(
                    TaskResult {
                        let url = URL(string: "http://numbersapi.com/\(count)/trivia")!
                        let data = try await URLSession.shared.data(from: url).0
                        return String(data: data, encoding: .utf8)!
                    }
                )
            }
        case let .numberFactResponse(.success(fact)):
            state.numberFactAlert = fact
            return .none
        case .numberFactResponse(.failure):
            state.numberFactAlert = "Could not load a number fact :("
            return .none
        }
    }
}

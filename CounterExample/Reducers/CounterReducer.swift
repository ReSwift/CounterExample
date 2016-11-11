import ReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
struct CounterReducer: Reducer {
    typealias ReducerStateType = AppState

    
    func handleAction(action: Action, state: AppState?) -> AppState {
        
        // if no state has been provided, create the default state
        var state = state ?? AppState()
        
        switch action {
        case let increaseAction as CounterActionIncrease:
            state.counters[increaseAction.index] += 1
        case let decreaseAction as CounterActionDecrease:
            state.counters[decreaseAction.index] -= 1
        default:
            break
        }
        
        return state
    }
    
}

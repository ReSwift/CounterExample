import ReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
struct CounterReducer: Reducer {
    typealias ReducerStateType = AppState

    
    func handleAction(action: Action, state: AppState?) -> AppState {
        
        // if no state has been provided, create the default state
        var state = state ?? AppState()
        
        switch action {
        case _ as CounterActionIncrease:
            state.counters[0] += 1
        case _ as CounterActionDecrease:
            state.counters[0] -= 1
        default:
            break
        }
        
        return state
    }
    
}

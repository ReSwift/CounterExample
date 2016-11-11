import ReSwift

typealias Counter = Int

struct AppState: StateType {
    var counters: [Counter] = [Counter(), Counter(), Counter()]
}

//: [Previous](@previous)

import Foundation

let data = [
    """
        ____________________________________________________
        |                                                   |
        |                   App is colsed                   |<------------------|
        |___________________________________________________|                   |
    """,
    "                           ⬇️                                               |",
    """
    ___________________________________________________________                 |
    | ForeGround        |                                      |                |
    |___________________|                                      |                |
    |   __________________________________________________     |                |
    |   |                                                 |    |                |
    |   |  Application in foreground and inactive state   |<----------|         |
    |   |_________________________________________________|    |      |         |
    |                                                          |      |         |
    |                        ↕️                                |      |         |
    |   _________________________________________________      |      |         |
    |   |                                                |     |      |         |
    |   |   Application in foreground and active state   |     |      |         |
    |   |________________________________________________|     |      |         |
    |                                                          |      |         |
    |__________________________________________________________|      |         |
    """,
    
    """
                                                                      |         |
    ____________________________________________________________      |         |
    | Background  |                                            |      |         |
    |_____________|                                            |      |         |
    |                                                          |      |         |
    |    _________________________________________________     |      |         |
    |    |                                                |    |      |         |
    |    |  Application may enter background              |<----------          |
    |    |________________________________________________|    |                |
    |                                                          |                |
    |                                                          |                |
    |__________________________________________________________|                |
    """,
    "                             ↕️                                             |",
    """
    ____________________________________________________________                |
    |                                                          |                |
    |           Application enter Suspended state              |-----------------
    |__________________________________________________________|
    """
]


struct ApplicationLifeCycle {
    func printWithDelay(_ message: String) async {
        do {
            try await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
            print(message)
        } catch {
            print("Error")
        }
    }
    
    func run() {
        Task {
            for statement in data {
                await printWithDelay(statement)
            }
        }
    }
}


let applicationLifeCycle = ApplicationLifeCycle()
applicationLifeCycle.run()



// MARK: -Not Running state
// The app has not been launched or terminated by the system.

// MARK: - Inactive state
// The app is entering the foreground state but not receiving events.

// MARK: - Active state
// The app enters the foreground state and can process event.

// MARK: - Background state
// In this state, if there is executable code, it will execute and if there is no executable code or the execution is complete, the application will be suspended immediately.

// MARK: - Suspended state
// The app is in the background(in memory) but is not executing code and if system does not have enough memory, it will terminate the app

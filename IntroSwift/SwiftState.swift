//
//  SwiftState.swift
//  IntroSwift
//
//  Created by Juli Yanti on 06/09/25.
//

import SwiftUI

// MARK: - ObservableObject example
class CounterModel: ObservableObject {
    @Published var count = 0
}

// MARK: - EnvironmentObject example
class UserSettings: ObservableObject {
    @Published var username: String = "Guest"
}

struct SwiftState: View {
    @State private var localCount = 0                      // @State
    @StateObject private var counterModel = CounterModel() // @StateObject (owner)
    @StateObject private var settings = UserSettings()     // For @EnvironmentObject demo

    var body: some View {
        NavigationStack {
            List {
    // -------------------------
    // @State + @Binding
    // -------------------------
                Section("@State + @Binding") {
                    VStack(spacing: 12) {
                        Text("Local Count: \(localCount)")
                            .font(.title2)
                        Button("Increase Local Count") {
                            localCount += 1
                        }
                        BindingView(value: $localCount) // child modifies parent
                    }
                    .padding(.vertical)
                }

    // -------------------------
    // @ObservedObject / @StateObject
    // -------------------------
                Section("@ObservedObject / @StateObject") {
                    VStack(spacing: 12) {
                        CounterDisplay(model: counterModel)
                        CounterControls(model: counterModel)
                    }
                    .padding(.vertical)
                }

    // -------------------------
    // @EnvironmentObject
    // -------------------------
                Section("@EnvironmentObject") {
                    NavigationLink("Go to Environment Demo") {
                        EnvironmentDemo()
                            .environmentObject(settings) // inject once
                    }
                }
            }
            .navigationTitle("SwiftState Demo")
        }
    }
}

// MARK: - @Binding child view
struct BindingView: View {
    @Binding var value: Int

    var body: some View {
        Button("Child +1") {
            value += 1
        }
    }
}

// MARK: - @ObservedObject child views
struct CounterDisplay: View {
    @ObservedObject var model: CounterModel

    var body: some View {
        Text("Shared Count: \(model.count)")
            .font(.title3)
    }
}

struct CounterControls: View {
    @ObservedObject var model: CounterModel

    var body: some View {
        Button("Increase Shared Count") {
            model.count += 1
        }
    }
}

// MARK: - @EnvironmentObject child view
struct EnvironmentDemo: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, \(settings.username)!")
                .font(.title)

            TextField("Change name", text: $settings.username)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        .padding()
    }
}

#Preview {
    SwiftState()
}


/**
 @State (local only)
 @Binding (child shares parent’s state)
 @StateObject → you create and own the object here.
 @ObservedObject → other views observe it.
 @StateObject + @ObservedObject (shared object state)
 @EnvironmentObject (shared across the app without passing around)
 */

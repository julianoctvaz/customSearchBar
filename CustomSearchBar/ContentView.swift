//
//  ContentView.swift
//  CustomSearchBar
//
//  Created by Juliano Cezar Teles Vaz on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var names: [String] = [
        "Juliana",
        "Francis",
        "Michael Jackson",
        "Leibniz",
        "Matheus",
        "Alana",
        "Lula",
        "Michael (The Office)"
    ]

    private var filteredNames: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

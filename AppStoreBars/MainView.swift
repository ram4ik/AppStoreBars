//
//  MainView.swift
//  AppStoreBars
//
//  Created by test on 24.01.2024.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                Label("Discover", systemImage: "star")
                    .onTapGesture {
                        print("Discover")
                    }
                Label("Arcade", systemImage: "gamecontroller")
                    .onTapGesture {
                        print("Arcade")
                    }
                Label("Create", systemImage: "paintbrush")
                    .onTapGesture {
                        print("Create")
                    }
                Label("Categories", systemImage: "square.grid.3x3.square")
                    .onTapGesture {
                        print("Categories")
                    }
                Label("Favorites", systemImage: "heart")
                    .onTapGesture {
                        print("Favorites")
                    }
                Label("Updates", systemImage: "square.and.arrow.down")
                    .onTapGesture {
                        print("Updates")
                    }
            }
            .searchable(text: $searchText)
            .onSubmit(of: .search) {
                print(searchText)
            }
        }
    }
}

#Preview {
    MainView()
}

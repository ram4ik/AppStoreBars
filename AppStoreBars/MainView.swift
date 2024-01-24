//
//  MainView.swift
//  AppStoreBars
//
//  Created by test on 24.01.2024.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""
    @State private var imageName = ""
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 30))
    ]
    
    var body: some View {
        NavigationView {
            List {
                Label("Discover", systemImage: "star")
                    .onTapGesture {
                        print("Discover")
                        imageName = "star"
                    }
                Label("Arcade", systemImage: "gamecontroller")
                    .onTapGesture {
                        print("Arcade")
                        imageName = "gamecontroller"
                    }
                Label("Create", systemImage: "paintbrush")
                    .onTapGesture {
                        print("Create")
                        imageName = "paintbrush"
                    }
                Label("Categories", systemImage: "square.grid.3x3.square")
                    .onTapGesture {
                        print("Categories")
                        imageName = "square.grid.3x3.square"
                    }
                Label("Favorites", systemImage: "heart")
                    .onTapGesture {
                        print("Favorites")
                        imageName = "heart"
                    }
                Label("Updates", systemImage: "square.and.arrow.down")
                    .onTapGesture {
                        print("Updates")
                        imageName = "square.and.arrow.down"
                    }
            }
            .searchable(text: $searchText)
            .onSubmit(of: .search) {
                print(searchText)
            }
            
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach (0..<99) { index in
                        VStack(alignment: .leading) {
                            Image(systemName: imageName)
                                .font(.system(size: 26))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}

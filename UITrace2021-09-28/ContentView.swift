//
//  ContentView.swift
//  UITrace2021-09-28
//
//  Created by 吉田周平 on 2021/09/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("My Work")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)) {
                        Cell(name: "Issue", color: .green)
                        Cell(name: "Pull Requests", color: .blue)
                        Cell(name: "Repositories", color: .purple)
                        Cell(name: "Organizations", color: .orange)
                    }
                    Section(header: CustomSection()) {
                        VStack {
                            Text("add favorites repositories here to have quick access at any time, without having to search")
                                .lineLimit(nil)
                                .font(.body)
                                .foregroundColor(Pallet.grayTintColor)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .center)
                                .padding(.horizontal)
                            Button(action: {}) {
                                Text("Add Favorites")
                                    .foregroundColor(Color.black)
                                    .fontWeight(.bold)
                                    .padding(.vertical, 4.0)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white)
                                    .cornerRadius(4)
                                    .padding(.horizontal)
                            }
                        }
                        .listRowBackground(Pallet.lightGray)
                    }
                }.listStyle(InsetGroupedListStyle())
                
            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Circle()
                            .frame(width: 24, height: 24, alignment: .center)
                            .foregroundColor(.red)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 24, height: 24, alignment: .center)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Notification")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notification")
                }
            Text("Seach")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Cell: View {
    var name: String
    var color: Color
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 24, height: 24, alignment: .center)
                .foregroundColor(color)
            Text(name)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
    }
}

struct CustomSection: View {
    var body: some View {
        HStack {
            Text("Favorites")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Spacer()
            Button(action: {}) {
                Text("Edit")
            }
        }
    }
}

class Pallet {
    static let lightGray = Color(.sRGB,
                                 red: 142/255,
                                 green: 142/255,
                                 blue: 142/255,
                                 opacity: 1.0)
    static let grayTintColor = Color(.sRGB,
                                     red: 46/255,
                                     green: 47/255,
                                     blue: 51/255,
                                     opacity: 1.0)
}

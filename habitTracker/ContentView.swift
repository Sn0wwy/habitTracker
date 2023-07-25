//
//  ContentView.swift
//  habitTracker
//
//  Created by Nacho Alaves on 24/7/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var activities = Activities()
    @State private var showingAddActivity = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(activities.items, id: \.id) { item in
                        NavigationLink {
                            ActivityView(activity: item)
                        } label: {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.title2)
                                        .padding()
                                }
                            }
                        }
                    }
                    .onDelete(perform: removeItems)
                }
            }
            .navigationTitle("Habit Tracker")
            .toolbar {
                Button {
                    showingAddActivity = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddActivity) {
                AddView(activities: activities)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

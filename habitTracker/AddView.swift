//
//  AddView.swift
//  habitTracker
//
//  Created by Nacho Alaves on 24/7/23.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var activities: Activities
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add new habits")
            .toolbar {
                Button("Save") {
                    let item = Activity(name: name, description: description)
                    activities.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(activities: Activities())
    }
}

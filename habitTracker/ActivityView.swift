//
//  ActivityView.swift
//  habitTracker
//
//  Created by Nacho Alaves on 25/7/23.
//

import SwiftUI

struct ActivityView: View {
    let activity: Activity
    
    var body: some View {
        
        Form {
            Section {
                Text(activity.name)
                    .font(.title)
            }
            
            Section {
                Text(activity.description)
                    .font(.headline)
                    .foregroundColor(.gray)
            }
        }
        
    }
}

 //
//  ContentView.swift
//  TaskToDo
//
//  Created by Lucas Hollas on 09/01/23.
//

import SwiftUI

enum Priority: String, Identifiable, CaseIterable {
    
    var id: UUID {
        return UUID()
    }
    
    case low = "Low"
    case medium = "Medium"
    case high = "High"
    }



struct ContentView: View {
    
    @State private var title: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                TextField("Enter title", text: $title)
            }
            .navigationTitle("All Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

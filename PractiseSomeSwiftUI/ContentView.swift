//
//  ContentView.swift
//  PractiseSomeSwiftUI
//
//  Created by Mac on 20/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Harry", "Hari", "Shyam"]
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    @State private var tapCount = 0
    
    var body: some View {
        NavigationStack {
            Form{
                Picker("Select your student", selection: $selectedStudent ){
                    ForEach(students, id: \.self){
                        Text("\($0)")
                    }
                }
                
                TextField("Enter your name", text: $name)
                    .padding()
                
                HStack {
                    Button("Tap Count:\(tapCount)"){
                        tapCount += 1
                    }
                    .padding()
                    
                    Spacer()
                }
                
                VStack{
                    Section {
                        Text("Hello \(name.isEmpty ? "World" : name)")
                        Text("Hello \(name.isEmpty ? "World" : name)")
                    }
                    
                    Section {
                        Text("Hello \(name.isEmpty ? "World" : name)")
                        Text("Hello \(name.isEmpty ? "World" : name)")
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

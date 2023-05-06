//
//  ContentView.swift
//  Swift Concurrency Learning Area
//
//  Created by Frank on 06.05.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Text("Learning Swift Concurrency")
                        .font(.title)
                }
                HStack {
                    VStack {
                        Text("This Test-App needs network connections.")
                        Text("So switch on in Xcode under targets -> App sandbox \"Incoming and Outgoing Connections\" ")
                    }
                    .frame(width: 300)
                    List {
                        NavigationLink(destination: TestViewA()) {
                            Text("First")
                        }
                        Divider()
                        NavigationLink(destination: TestViewB()) {
                            Text("First")
                        }
                        Divider()
                    }
                }
            }
            .navigationTitle("Learn Swift Concurrency")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

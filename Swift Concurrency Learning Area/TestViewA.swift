//
//  TestViewA.swift
//  Swift Concurrency Learning Area
//
//  Created by Frank on 06.05.23.
//

import SwiftUI

func awaitWithConcurrency() async {
  let url = URL(string: "https://bsdforen.de")!
  
  do {
    let (data, _) = try await URLSession.shared.data(from: url)
    let htmlBody = String(data: data, encoding: .utf8)!
    print(htmlBody)
  } catch {
    print(error)
  }
}


struct TestViewA: View {
    var body: some View {
        VStack {
            Button("Run with concurrency...") {
                Task {
                    await awaitWithConcurrency()
                }
            }
        }
    }
}

struct TestViewA_Previews: PreviewProvider {
    static var previews: some View {
        TestViewA()
    }
}

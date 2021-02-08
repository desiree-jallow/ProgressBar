//
//  ContentView.swift
//  ProgressBar
//
//  Created by Desiree on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AudioBookCell()
        
    }
}

struct AudioBookCell: View {
    var body: some View {
        VStack {
            Image("sampleOne")
            ProgressView(progressPercent: 0.3)
        }
        .frame(width: 200)
    }
}
struct ProgressView: View {
    var progressPercent = 1.0
    var body: some View {
        ZStack {
            GeometryReader { geo in
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 5)
                Rectangle()
                .fill(Color.orange)
                .frame(width: geo.size.width * CGFloat(self.progressPercent), height: 5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

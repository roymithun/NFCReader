//
//  ContentView.swift
//  NFCReader
//
//  Created by Arman Morshed on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var nfcReader = NFCReader()
    
    var body: some View {
        VStack(spacing: 10) {
            Text(nfcReader.message)
                
            Button {
                nfcReader.scan()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .overlay {
                        Text("Tap to start Scan")
                            .foregroundColor(.white)
                    }
            }
            .frame(height: 40)
        }
        .padding(.horizontal, 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

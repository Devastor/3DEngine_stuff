//
//  ContentView.swift
//  DevastorMetal3DExample
//
//  Created by Devastor on 15.10.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var renderer = Renderer()

    var body: some View {
        MetalView(renderer: renderer)
    }
}

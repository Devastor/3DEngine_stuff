//
//  MetalView.swift
//  DevastorMetal3DExample
//
//  Created by Devastor on 15.10.2023.
//

import SwiftUI
import MetalKit

struct MetalView: NSViewRepresentable {
    @ObservedObject var renderer: Renderer

    func makeNSView(context: Context) -> MTKView {
        let metalView = MTKView()
        metalView.device = renderer.device
        metalView.delegate = renderer
        return metalView
    }

    func updateNSView(_ nsView: MTKView, context: Context) {
        // Реализуйте обновления, если необходимо
    }
}

//
//  Renderer.swift
//  DevastorMetal3DExample
//
//  Created by Devastor on 15.10.2023.
//

import Metal
import MetalKit

class Renderer: NSObject, ObservableObject, MTKViewDelegate {
    var device: MTLDevice!
    
    init(metalView: MTKView) {
        super.init()
        
        device = MTLCreateSystemDefaultDevice()
        
        metalView.device = device
        metalView.delegate = self
    }
    
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        // Size change if needed
    }
    
    func draw(in view: MTKView) {
        guard let drawable = view.currentDrawable, let descriptor = view.currentRenderPassDescriptor else {
            return
        }
        
        // Create vertex buffer 
        
        let commandBuffer = device.makeCommandQueue()?.makeCommandBuffer()
        let renderEncoder = commandBuffer?.makeRenderCommandEncoder(descriptor: descriptor)
        
        // Set render state and draw test triangle
        
        renderEncoder?.endEncoding()
        commandBuffer?.present(drawable)
        commandBuffer?.commit()
    }
}

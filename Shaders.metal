//
//  Shaders.metal
//  DevastorMetal3DExample
//
//  Created by Devastor on 15.10.2023.
//

#include <metal_stdlib>
using namespace metal;

struct Vertex {
    float4 position [[position]];
};

vertex Vertex vertex_main(uint vertexID [[vertex_id]]) {
    Vertex out;
    out.position = float4(0.0, 0.5, 0.0, 1.0);
    return out;
}

fragment half4 fragment_main() {
    return half4(1.0, 0.0, 0.0, 1.0); // red color
}

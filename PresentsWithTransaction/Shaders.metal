//
//  Shaders.metal
//  PresentsWithTransaction
//
//  Created by zero on 2022/12/29.
//

#include <metal_stdlib>
using namespace metal;

struct VertexIn {
    float4 position [[ attribute(0) ]];
    float4 color [[ attribute(1) ]];
};

struct VertexOut {
    float4 position [[ position ]];
    float4 color;
};

fragment half4 fragment_color_shader(const VertexOut vertexIn [[ stage_in ]]) {
    return half4(vertexIn.color);
}

vertex VertexOut vertex_shader(const VertexIn vertexIn [[ stage_in ]]) {
    VertexOut vertexOut;
    vertexOut.position = vertexIn.position;
    vertexOut.color = vertexIn.color;
    return vertexOut;
}



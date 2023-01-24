/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DrawFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMMidiDrawBuffer_DrawFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer PerFrame [Size: 16]
@C    ParticleSize_id46 => SMMidiDrawBuffer_DrawFX.ParticleSize
cbuffer PerView [Size: 352]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerFrame => PerFrame [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    SMMidiDrawBuffer_DrawFX => d0377e8d30c9fdcd314be923b7dc7813
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    ColorBase => b8b78679285939723aa5d9647437398b
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
***************************
*****     Stages      *****
***************************
@G    Vertex => 6f8c9ca535759576f4e6a76e0eeface1
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// COLOR                    0   xyzw        0     NONE   float   xyzw
// POSITION_WS              0   xyzw        1     NONE   float   xyzw
// SV_Position              0   xyzw        2      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyzw
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output_siv o2.xyzw, position
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id14.x; v0.y <- __input__.Position_id14.y; v0.z <- __input__.Position_id14.z; v0.w <- __input__.Position_id14.w; 
//   o2.x <- <VSMain return value>.ShadingPosition_id0.x; o2.y <- <VSMain return value>.ShadingPosition_id0.y; o2.z <- <VSMain return value>.ShadingPosition_id0.z; o2.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o1.x <- <VSMain return value>.PositionWS_id15.x; o1.y <- <VSMain return value>.PositionWS_id15.y; o1.z <- <VSMain return value>.PositionWS_id15.z; o1.w <- <VSMain return value>.PositionWS_id15.w; 
//   o0.x <- <VSMain return value>.Color_id37.x; o0.y <- <VSMain return value>.Color_id37.y; o0.z <- <VSMain return value>.Color_id37.z; o0.w <- <VSMain return value>.Color_id37.w
//
#line 91 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_DrawFXEffect_a77d9ac3e7491600bb5e4f5c8fec8381.hlsl"
and r0.x, v0.w, l(255)
utof r0.x, r0.x
ubfe r1.xy, l(8, 8, 0, 0), l(8, 16, 0, 0), v0.wwww
utof r0.yz, r1.xxyx
ushr r1.x, v0.w, l(24)
utof r0.w, r1.x
mul o0.xyzw, r0.xyzw, l(0.003922, 0.003922, 0.003922, 0.003922)

#line 142
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
mov o1.xyzw, r0.xyzw
mov o2.xyzw, r0.xyzw
ret 
// Approximately 12 instruction slots used
@G    Geometry => 1c3720874657491719257cb516903bac
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerFrame
// {
//
//   float ParticleSize_id46;           // Offset:    0 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerFrame                          cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// COLOR                    0   xyzw        0     NONE   float   xyzw
// POSITION_WS              0   xyzw        1     NONE   float   xyzw
// SV_Position              0   xyzw        2      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD_ID47_SEM        0   xy          0     NONE   float   xy  
// SV_Position              0   xyzw        1      POS   float   xyzw
// COLOR                    0   xyzw        2     NONE   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 1.000000, 0, 0},
                              { 1.000000, 1.000000, 0, 0},
                              { 0, 0, -1.000000, 1.000000},
                              { 1.000000, 0, 1.000000, 1.000000},
                              { 0, 0, -1.000000, -1.000000},
                              { 0, 0, 1.000000, -1.000000} }
dcl_constantbuffer CB0[16], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[12], immediateIndexed
dcl_input v[1][0].xyzw
dcl_input v[1][1].xyzw
dcl_input_siv v[1][2].xyzw, position
dcl_temps 4
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xy
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_maxout 4
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].Color_id37.x; v[0][0].y <- input[0].Color_id37.y; v[0][0].z <- input[0].Color_id37.z; v[0][0].w <- input[0].Color_id37.w; 
//   v[0][1].x <- input[0].PositionWS_id15.x; v[0][1].y <- input[0].PositionWS_id15.y; v[0][1].z <- input[0].PositionWS_id15.z; v[0][1].w <- input[0].PositionWS_id15.w; 
//   v[0][2].x <- input[0].ShadingPosition_id0.x; v[0][2].y <- input[0].ShadingPosition_id0.y; v[0][2].z <- input[0].ShadingPosition_id0.z; v[0][2].w <- input[0].ShadingPosition_id0.w
//
#line 116 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_DrawFXEffect_a77d9ac3e7491600bb5e4f5c8fec8381.hlsl"
dp4 r0.x, v[0][1].xyzw, cb0[12].xyzw  // r0.x <- posView.x
dp4 r0.y, v[0][1].xyzw, cb0[13].xyzw  // r0.y <- posView.y
dp4 r0.z, v[0][1].xyzw, cb0[14].xyzw  // r0.z <- posView.z
dp4 r1.w, v[0][1].xyzw, cb0[15].xyzw  // r1.w <- posView.w

#line 117
add r2.z, l(0.080000), v[0][0].x
add r3.x, l(0.080000), v[0][0].x
mov r3.z, l(0)

#line 113
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r2.w, r0.w, l(4)
  breakc_nz r2.w

#line 117
  mov r2.xy, icb[r0.w + 2].zwzz
  mul r2.xyw, r2.xyxz, cb1[0].xxxx
  mad r1.xyz, r2.xywx, r3.xxzx, r0.xyzx  // r1.x <- posView.x; r1.y <- posView.y; r1.z <- posView.z

#line 118
  dp4 r2.x, r1.xyzw, cb2[8].xyzw  // r2.x <- streams.ShadingPosition_id0.x
  dp4 r2.y, r1.xyzw, cb2[9].xyzw  // r2.y <- streams.ShadingPosition_id0.y
  dp4 r2.w, r1.xyzw, cb2[10].xyzw  // r2.w <- streams.ShadingPosition_id0.z
  dp4 r1.x, r1.xyzw, cb2[11].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 125
  mov o0.xy, icb[r0.w + 0].xyxx
  mov o1.x, r2.x
  mov o1.y, r2.y
  mov o1.z, r2.w
  mov o1.w, r1.x
  mov o2.xyzw, v[0][0].xyzw
  emit_stream m0

#line 127
  iadd r0.w, r0.w, l(1)
endloop 

#line 128
ret 
// Approximately 28 instruction slots used
@G    Pixel => b3344bfb6b70ac5188753b36812c6399
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD_ID47_SEM        0   xy          0     NONE   float   xy  
// SV_Position              0   xyzw        1      POS   float       
// COLOR                    0   xyzw        2     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_input_ps linear v0.xy
dcl_input_ps linear v2.xyzw
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.TexCoord_id47.x; v0.y <- __input__.TexCoord_id47.y; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.Color_id37.x; v2.y <- __input__.Color_id37.y; v2.z <- __input__.Color_id37.z; v2.w <- __input__.Color_id37.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 82 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_DrawFXEffect_a77d9ac3e7491600bb5e4f5c8fec8381.hlsl"
add r0.xy, v0.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
dp2 r0.x, r0.xyxx, r0.xyxx
sqrt r0.x, r0.x
lt r0.x, l(0.500000), r0.x

#line 84
discard_nz r0.x

#line 103
mov o0.xyzw, v2.xyzw
ret 
// Approximately 7 instruction slots used
***************************
*************************/
static const float3 QuadPositions_id43[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id44[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float2 TexCoord_id47;
    float4 Color_id37;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float2 TexCoord_id47 : TEXCOORD_ID47_SEM;
    float4 ShadingPosition_id0 : SV_Position;
    float4 Color_id37 : COLOR;
};
struct GS_STREAMS 
{
    float4 PositionWS_id15;
    float4 Color_id37;
    float2 TexCoord_id47;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float2 TexCoord_id47 : TEXCOORD_ID47_SEM;
    float4 ShadingPosition_id0 : SV_Position;
    float4 Color_id37 : COLOR;
};
struct GS_INPUT 
{
    float4 Color_id37 : COLOR;
    float4 PositionWS_id15 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float4 Color_id37;
    float4 PositionWS_id15;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 Color_id37 : COLOR;
    float4 PositionWS_id15 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerFrame 
{
    float ParticleSize_id46;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
};
void CircleSpriteDiscard_id2(float2 uv)
{
    if (length(uv - 0.5f) > 0.5f)
    {
        discard;
    }
}
float4 BitsToColor_id6(float f)
{
    uint u = asuint(f);
    float4 c;
    c = float4((u >> 0) % 256, (u >> 8) % 256, (u >> 16) % 256, (u >> 24) % 256) / 255.0;
    return c;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id47 = __input__.TexCoord_id47;
    streams.Color_id37 = __input__.Color_id37;
    CircleSpriteDiscard_id2(streams.TexCoord_id47);
    streams.ColorTarget_id2 = streams.Color_id37;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.Color_id37 = input[0].Color_id37;
    streams.PositionWS_id15 = input[0].PositionWS_id15;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id47 = QuadUV_id44[i].xy;
        float4 posView = mul(streams.PositionWS_id15, WorldView_id32);
        posView.xyz += QuadPositions_id43[i].xyz * ParticleSize_id46 * (streams.Color_id37.r + 0.08);
        streams.ShadingPosition_id0 = mul(posView, Projection_id24);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.TexCoord_id47 = streams.TexCoord_id47;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.Color_id37 = streams.Color_id37;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    float4 pos = streams.Position_id14;
    streams.Color_id37 = BitsToColor_id6(pos.w);
    pos.w = 1;
    streams.PositionWS_id15 = float4(pos.xyz, 1);
    streams.ShadingPosition_id0 = streams.PositionWS_id15;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.Color_id37 = streams.Color_id37;
    __output__.PositionWS_id15 = streams.PositionWS_id15;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}
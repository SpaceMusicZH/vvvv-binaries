/**************************
***** Compiler Parameters *****
***************************
@P EffectName: BloomUpSample
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 96]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    Radius_id74 => BloomUpSample.Radius
@C    Strength_id75 => BloomUpSample.Strength
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    BloomUpSample => c3e8c298300cae8fdd91803310ffffa8
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    PostEffectCommon => af38cf1814fc29be0c21f6c2a879be01
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 156 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_BloomUpSample_8e003eab62d23d3938ae99e11f85a4bc.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 160
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 9a3969a3c3b255f4af4609b337597394
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float Radius_id74;                 // Offset:   80 Size:     4
//   float Strength_id75;               // Offset:   84 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id44                sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 131 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_BloomUpSample_8e003eab62d23d3938ae99e11f85a4bc.hlsl"
mad r0.xy, -cb0[0].xyxx, cb0[5].xxxx, v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s0  // r0.x <- c0.x; r0.y <- c0.y; r0.z <- c0.z; r0.w <- c0.w

#line 130
mul r1.xy, cb0[0].xyxx, cb0[5].xxxx  // r1.x <- offset.x; r1.y <- offset.y

#line 133
mad r2.xyzw, r1.xyxy, l(0.000000, -1.000000, 1.000000, -1.000000), v1.xyxy

#line 132
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t0.xyzw, s0  // r3.x <- c1.x; r3.y <- c1.y; r3.z <- c1.z; r3.w <- c1.w

#line 133
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0  // r2.x <- c2.x; r2.y <- c2.y; r2.z <- c2.z; r2.w <- c2.w

#line 140
mad r0.xyzw, r3.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), r0.xyzw
add r0.xyzw, r2.xyzw, r0.xyzw

#line 136
mad r2.xyzw, r1.xyxy, l(-1.000000, 0.000000, 1.000000, 0.000000), v1.xyxy

#line 138
mad r1.xyzw, r1.xyxy, l(-1.000000, 1.000000, 0.000000, 1.000000), v1.xyxy

#line 134
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t0.xyzw, s0  // r3.x <- c3.x; r3.y <- c3.y; r3.z <- c3.z; r3.w <- c3.w

#line 136
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0  // r2.x <- c5.x; r2.y <- c5.y; r2.z <- c5.z; r2.w <- c5.w

#line 140
mad r0.xyzw, r3.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), r0.xyzw

#line 135
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v1.xyxx, t0.xyzw, s0  // r3.x <- c4.x; r3.y <- c4.y; r3.z <- c4.z; r3.w <- c4.w

#line 140
mad r0.xyzw, r3.xyzw, l(4.000000, 4.000000, 4.000000, 4.000000), r0.xyzw
mad r0.xyzw, r2.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), r0.xyzw

#line 137
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s0  // r2.x <- c6.x; r2.y <- c6.y; r2.z <- c6.z; r2.w <- c6.w

#line 138
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s0  // r1.x <- c7.x; r1.y <- c7.y; r1.z <- c7.z; r1.w <- c7.w

#line 140
add r0.xyzw, r0.xyzw, r2.xyzw
mad r0.xyzw, r1.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), r0.xyzw

#line 139
mad r1.xy, cb0[0].xyxx, cb0[5].xxxx, v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t0.xyzw, s0  // r1.x <- c8.x; r1.y <- c8.y; r1.z <- c8.z; r1.w <- c8.w

#line 140
add r0.xyzw, r0.xyzw, r1.xyzw
mul r0.xyzw, r0.xyzw, cb0[5].yyyy
mul o0.xyzw, r0.xyzw, l(0.062500, 0.062500, 0.062500, 0.062500)

#line 149
ret 
// Approximately 26 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
    float Radius_id74;
    float Strength_id75;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
float4 Shading_id6(inout PS_STREAMS streams)
{
    float2 offset = Texture0TexelSize_id15 * Radius_id74;
    float4 c0 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(-1, -1) * offset);
    float4 c1 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(0, -1) * offset);
    float4 c2 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(1, -1) * offset);
    float4 c3 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(-1, 0) * offset);
    float4 c4 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62);
    float4 c5 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(1, 0) * offset);
    float4 c6 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(-1, 1) * offset);
    float4 c7 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(0, 1) * offset);
    float4 c8 = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + float2(1, 1) * offset);
    return 0.0625f * (c0 + 2 * c1 + c2 + 2 * c3 + 4 * c4 + 2 * c5 + c6 + 2 * c7 + c8) * Strength_id75;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id6(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}

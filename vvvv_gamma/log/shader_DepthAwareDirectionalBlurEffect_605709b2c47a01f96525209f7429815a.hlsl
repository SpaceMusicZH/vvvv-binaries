/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DepthAwareDirectionalBlurEffect
@P   - DepthAwareDirectionalBlur.Count: 3
@P DepthAwareDirectionalBlur.TotalTap: 5
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id79 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 144]
@C    Texture0TexelSize_id1 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id3 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id5 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id7 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id9 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id11 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id13 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id15 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id17 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id19 => Texturing.Texture9TexelSize
@C    Direction_id60 => DepthAwareDirectionalBlurUtil.Direction
@C    Radius_id61 => DepthAwareDirectionalBlurUtil.Radius
@C    TapWeights_id62 => DepthAwareDirectionalBlurUtil.TapWeights
@C    CoCReference_id63 => DepthAwareDirectionalBlurUtil.CoCReference
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id30 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id0 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    DepthAwareDirectionalBlurShader => 3a551b8ef39680114b449aa00b937d5d
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    DepthAwareDirectionalBlurUtil => b48ab166127008e17fe98168f779f8c0
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
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
//   float4x4 MatrixTransform_id79;     // Offset:    0 Size:    64
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
//   v0.x <- __input__.Position_id78.x; v0.y <- __input__.Position_id78.y; v0.z <- __input__.Position_id78.z; v0.w <- __input__.Position_id78.w; 
//   v1.x <- __input__.TexCoord_id48.x; v1.y <- __input__.TexCoord_id48.y; 
//   o1.x <- <VSMain return value>.TexCoord_id48.x; o1.y <- <VSMain return value>.TexCoord_id48.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id64.x; o0.y <- <VSMain return value>.ShadingPosition_id64.y; o0.z <- <VSMain return value>.ShadingPosition_id64.z; o0.w <- <VSMain return value>.ShadingPosition_id64.w
//
#line 198 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DepthAwareDirectionalBlurEffect_605709b2c47a01f96525209f7429815a.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 202
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 0e16764d3036406d2308abe704d8c8f4
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id1;      // Offset:    0 Size:     8
//   float2 Texture1TexelSize_id3;      // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id5;      // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id7;      // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id9;      // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id11;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id13;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id15;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id17;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id19;     // Offset:   72 Size:     8 [unused]
//   float2 Direction_id60;             // Offset:   80 Size:     8
//   float Radius_id61;                 // Offset:   88 Size:     4
//   float TapWeights_id62[3];          // Offset:   96 Size:    36
//   float CoCReference_id63;           // Offset:  132 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id30                sampler      NA          NA             s0      1 
// Texture0_id0                      texture  float4          2d             t0      1 
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
dcl_constantbuffer CB0[9], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id64.x; v0.y <- __input__.ShadingPosition_id64.y; v0.z <- __input__.ShadingPosition_id64.z; v0.w <- __input__.ShadingPosition_id64.w; 
//   v1.x <- __input__.TexCoord_id48.x; v1.y <- __input__.TexCoord_id48.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id66.x; o0.y <- <PSMain return value>.ColorTarget_id66.y; o0.z <- <PSMain return value>.ColorTarget_id66.z; o0.w <- <PSMain return value>.ColorTarget_id66.w
//
#line 134 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DepthAwareDirectionalBlurEffect_605709b2c47a01f96525209f7429815a.hlsl"
mul r0.x, cb0[5].z, l(0.500000)
mul r0.xy, r0.xxxx, cb0[0].xyxx  // r0.x <- tapOffset.x; r0.y <- tapOffset.y

#line 145
mad r0.zw, -cb0[5].xxxy, r0.xxxy, v1.xxxy  // r0.z <- tapUV.x; r0.w <- tapUV.y

#line 147
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.zwzz, t0.xyzw, s0

#line 148
mul r1.xyz, r1.wwww, r1.xyzx

#line 163
mul r1.xyzw, r1.xyzw, cb0[7].xxxx

#line 145
mul r0.zw, r0.xxxy, cb0[5].xxxy

#line 150
mad r0.xy, cb0[5].xyxx, r0.xyxx, v1.xyxx  // r0.x <- tapUV.x; r0.y <- tapUV.y

#line 152
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t0.xyzw, s0

#line 145
mad r0.xy, -r0.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), v1.xyxx

#line 150
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), v1.xxxy  // r0.z <- tapUV.x; r0.w <- tapUV.y

#line 152
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.zwzz, t0.xyzw, s0

#line 147
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s0

#line 148
mul r0.xyz, r0.wwww, r0.xyzx

#line 163
mad r0.xyzw, r0.xyzw, cb0[8].xxxx, r1.xyzw  // r0.x <- resultColor.x; r0.y <- resultColor.y; r0.z <- resultColor.z; r0.w <- resultColor.w

#line 138
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0

#line 139
mul r1.xyz, r1.wwww, r1.xyzx

#line 163
mad r0.xyzw, r1.xyzw, cb0[6].xxxx, r0.xyzw

#line 153
mul r2.xyz, r2.wwww, r2.xyzx

#line 163
mad r0.xyzw, r2.xyzw, cb0[7].xxxx, r0.xyzw

#line 153
mul r3.xyz, r3.wwww, r3.xyzx

#line 163
mad r0.xyzw, r3.xyzw, cb0[8].xxxx, r0.xyzw

#line 164
add r1.x, cb0[7].x, cb0[8].x  // r1.x <- totalWeight
add r1.x, r1.x, cb0[6].x
add r1.x, r1.x, cb0[7].x
add r1.x, r1.x, cb0[8].x

#line 168
div r0.xyzw, r0.xyzw, r1.xxxx

#line 166
lt r1.x, l(0.000000), r1.x

#line 173
and r0.xyzw, r0.xyzw, r1.xxxx

#line 174
lt r1.x, l(0.000000), r0.w

#line 176
div r1.yzw, r0.xxyz, r0.wwww  // r1.y <- resultColor.x; r1.z <- resultColor.y; r1.w <- resultColor.z

#line 177
movc o0.xyz, r1.xxxx, r1.yzwy, r0.xyzx

#line 191
mov o0.w, r0.w
ret 
// Approximately 34 instruction slots used
***************************
*************************/
const static int TWeightCount_id58 = 3;
const static int TTotalNumber_id59 = 5;
struct PS_STREAMS 
{
    float2 TexCoord_id48;
    float4 ColorTarget_id66;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id66 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id64 : SV_Position;
    float2 TexCoord_id48 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id78;
    float2 TexCoord_id48;
    float4 ShadingPosition_id64;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id64 : SV_Position;
    float2 TexCoord_id48 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id78 : POSITION;
    float2 TexCoord_id48 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id79;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id1;
    float2 Texture1TexelSize_id3;
    float2 Texture2TexelSize_id5;
    float2 Texture3TexelSize_id7;
    float2 Texture4TexelSize_id9;
    float2 Texture5TexelSize_id11;
    float2 Texture6TexelSize_id13;
    float2 Texture7TexelSize_id15;
    float2 Texture8TexelSize_id17;
    float2 Texture9TexelSize_id19;
    float2 Direction_id60;
    float Radius_id61;
    float TapWeights_id62[TWeightCount_id58];
    float CoCReference_id63;
};
Texture2D Texture0_id0;
Texture2D Texture1_id2;
Texture2D Texture2_id4;
Texture2D Texture3_id6;
Texture2D Texture4_id8;
Texture2D Texture5_id10;
Texture2D Texture6_id12;
Texture2D Texture7_id14;
Texture2D Texture8_id16;
Texture2D Texture9_id18;
TextureCube TextureCube0_id20;
TextureCube TextureCube1_id21;
TextureCube TextureCube2_id22;
TextureCube TextureCube3_id23;
Texture3D Texture3D0_id24;
Texture3D Texture3D1_id25;
Texture3D Texture3D2_id26;
Texture3D Texture3D3_id27;
SamplerState Sampler_id28;
SamplerState PointSampler_id29 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id30 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id31 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id32 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id33 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id34 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id35 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id36 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id37 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id38;
SamplerState Sampler1_id39;
SamplerState Sampler2_id40;
SamplerState Sampler3_id41;
SamplerState Sampler4_id42;
SamplerState Sampler5_id43;
SamplerState Sampler6_id44;
SamplerState Sampler7_id45;
SamplerState Sampler8_id46;
SamplerState Sampler9_id47;
float4 Compute_id1(inout PS_STREAMS streams)
{
    float2 tapOffset = Radius_id61 / (TWeightCount_id58 - 1) * Texture0TexelSize_id1;
    float4 tapColor[TTotalNumber_id59];
    float tapOriginalWeight[TTotalNumber_id59];
    int centerIndex = TWeightCount_id58 - 1;
    tapColor[centerIndex] = Texture0_id0.Sample(LinearSampler_id30, streams.TexCoord_id48).xyzw;
    tapColor[centerIndex].rgb *= tapColor[centerIndex].a;
    tapOriginalWeight[centerIndex] = TapWeights_id62[0];

    [unroll]
    for (int i = 1; i < TWeightCount_id58; i++)
    {
        float2 tapUV = streams.TexCoord_id48 - i * Direction_id60 * tapOffset;
        int tapIndex = centerIndex - i;
        tapColor[tapIndex] = Texture0_id0.Sample(LinearSampler_id30, tapUV).xyzw;
        tapColor[tapIndex].rgb *= tapColor[tapIndex].a;
        tapOriginalWeight[tapIndex] = TapWeights_id62[i];
        tapUV = streams.TexCoord_id48 + i * Direction_id60 * tapOffset;
        tapIndex = centerIndex + i;
        tapColor[tapIndex] = Texture0_id0.Sample(LinearSampler_id30, tapUV).xyzw;
        tapColor[tapIndex].rgb *= tapColor[tapIndex].a;
        tapOriginalWeight[tapIndex] = TapWeights_id62[i];
    }
    float4 resultColor = float4(0.0, 0.0, 0.0, 0.0);
    float totalWeight = 0.0;

    [unroll]
    for (int k = 0; k < TTotalNumber_id59; k++)
    {
        float tapWeight = tapOriginalWeight[k];
        resultColor += tapColor[k].xyzw * tapWeight;
        totalWeight += tapWeight;
    }
    if (totalWeight > 0)
    {
        resultColor /= totalWeight;
    }
    else
    {
        resultColor = float4(0.0, 0.0, 0.0, 0.0);
    }
    if (resultColor.a > 0)
    {
        resultColor.rgb /= resultColor.a;
    }
    return resultColor;
}
float4 Shading_id5(inout PS_STREAMS streams)
{
    return Compute_id1(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id48 = __input__.TexCoord_id48;
    streams.ColorTarget_id66 = Shading_id5(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id66 = streams.ColorTarget_id66;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id78 = __input__.Position_id78;
    streams.TexCoord_id48 = __input__.TexCoord_id48;
    streams.ShadingPosition_id64 = mul(streams.Position_id78, MatrixTransform_id79);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id64 = streams.ShadingPosition_id64;
    __output__.TexCoord_id48 = streams.TexCoord_id48;
    return __output__;
}

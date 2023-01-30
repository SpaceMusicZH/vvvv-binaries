/**************************
***** Compiler Parameters *****
***************************
@P EffectName: AmbientOcclusionWithOrthoBlurEffect
@P   - AmbientOcclusionWithOrthoBlur.VerticalBlur: False
@P AmbientOcclusionWithOrthoBlur.IsOrtho: False
@P AmbientOcclusionWithOrthoBlur.Count: 5
@P AmbientOcclusionWithOrthoBlur.BlurScale: 1.85
@P AmbientOcclusionWithOrthoBlur.EdgeSharpness: 3
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerView [Size: 32]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
cbuffer Globals [Size: 160]
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
@C    Weights_id84 => AmbientOcclusionWithOrthoBlurShader.Weights
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    AmbientOcclusionWithOrthoBlurShader => c33546e41519ee4d16ece37622a5b4ad
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
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
#line 189 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_AmbientOcclusionWithOrthoBlurEffect_36adfe6dc18a1dbf5057cbb1ddd08d7c.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 193
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 64657468eb92aa55ae0b02c81f90b08f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerView
// {
//
//   float NearClipPlane_id74;          // Offset:    0 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id75;           // Offset:    4 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id76;           // Offset:    8 Size:     8
//   float2 ViewSize_id77;              // Offset:   16 Size:     8 [unused]
//   float AspectRatio_id78;            // Offset:   24 Size:     4 [unused]
//
// }
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
//   float Weights_id84[5];             // Offset:   80 Size:    68
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
// Texture1_id16                     texture  float4          2d             t1      1 
// PerView                           cbuffer      NA          NA            cb0      1 
// Globals                           cbuffer      NA          NA            cb1      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_constantbuffer CB1[10], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 149 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_AmbientOcclusionWithOrthoBlurEffect_36adfe6dc18a1dbf5057cbb1ddd08d7c.hlsl"
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
mul r0.xyz, r0.xyzx, cb1[5].xxxx  // r0.x <- sum.x; r0.y <- sum.y; r0.z <- sum.z

#line 150
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t1.yzwx, s0

#line 142
add r0.w, r0.w, -cb0[0].z
div r0.w, cb0[0].w, r0.w  // r0.w <- <reconstructCSZ_id3 return value>

#line 158
lt r1.x, r0.w, l(300.000000)
if_nz r1.x

#line 164
  add r1.x, cb1[6].x, l(0.300000)  // r1.x <- weight

#line 165
  mad r2.xyzw, cb1[0].xyxy, l(-1.850000, -0.000000, 1.850000, 0.000000), v1.xyxy
  sample_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t0.yxzw, s0  // r1.y <- value

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.z, r2.xyxx, t1.yzxw, s0

#line 142
  add r1.z, r1.z, -cb0[0].z
  div r1.z, cb0[0].w, r1.z  // r1.z <- <reconstructCSZ_id3 return value>

#line 167
  add r1.z, r0.w, -r1.z
  mad r1.z, -|r1.z|, l(3.000000), l(1.000000)
  max r1.z, r1.z, l(0.000000)
  mul r1.w, r1.z, r1.x  // r1.w <- weight

#line 168
  mad r3.xyz, r1.yyyy, r1.wwww, r0.xyzx  // r3.x <- sum.x; r3.y <- sum.y; r3.z <- sum.z

#line 169
  mad r1.y, r1.x, r1.z, cb1[5].x  // r1.y <- totalWeight

#line 165
  sample_indexable(texture2d)(float,float,float,float) r1.z, r2.zwzz, t0.yzxw, s0  // r1.z <- value

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r2.zwzz, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r1.w, r0.w, -r1.w
  mad r1.w, -|r1.w|, l(3.000000), l(1.000000)
  max r1.w, r1.w, l(0.000000)
  mul r2.x, r1.w, r1.x  // r2.x <- weight

#line 168
  mad r2.xyz, r1.zzzz, r2.xxxx, r3.xyzx  // r2.x <- sum.x; r2.y <- sum.y; r2.z <- sum.z

#line 169
  mad r1.x, r1.x, r1.w, r1.y  // r1.x <- totalWeight

#line 164
  add r1.y, cb1[7].x, l(0.300000)  // r1.y <- weight

#line 165
  mad r3.xyzw, cb1[0].xyxy, l(-3.700000, -0.000000, 3.700000, 0.000000), v1.xyxy
  sample_indexable(texture2d)(float,float,float,float) r1.z, r3.xyxx, t0.yzxw, s0

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r3.xyxx, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r1.w, r0.w, -r1.w
  mad r1.w, -|r1.w|, l(3.000000), l(1.000000)
  max r1.w, r1.w, l(0.000000)
  mul r2.w, r1.w, r1.y  // r2.w <- weight

#line 168
  mad r2.xyz, r1.zzzz, r2.wwww, r2.xyzx

#line 169
  mad r1.x, r1.y, r1.w, r1.x

#line 165
  sample_indexable(texture2d)(float,float,float,float) r1.z, r3.zwzz, t0.yzxw, s0

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r1.w, r0.w, -r1.w
  mad r1.w, -|r1.w|, l(3.000000), l(1.000000)
  max r1.w, r1.w, l(0.000000)
  mul r2.w, r1.w, r1.y

#line 168
  mad r2.xyz, r1.zzzz, r2.wwww, r2.xyzx

#line 169
  mad r1.x, r1.y, r1.w, r1.x

#line 164
  add r1.y, cb1[8].x, l(0.300000)  // r1.y <- weight

#line 165
  mad r3.xyzw, cb1[0].xyxy, l(-5.550000, -0.000000, 5.550000, 0.000000), v1.xyxy
  sample_indexable(texture2d)(float,float,float,float) r1.z, r3.xyxx, t0.yzxw, s0

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r3.xyxx, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r1.w, r0.w, -r1.w
  mad r1.w, -|r1.w|, l(3.000000), l(1.000000)
  max r1.w, r1.w, l(0.000000)
  mul r2.w, r1.w, r1.y  // r2.w <- weight

#line 168
  mad r2.xyz, r1.zzzz, r2.wwww, r2.xyzx

#line 169
  mad r1.x, r1.y, r1.w, r1.x

#line 165
  sample_indexable(texture2d)(float,float,float,float) r1.z, r3.zwzz, t0.yzxw, s0

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r1.w, r0.w, -r1.w
  mad r1.w, -|r1.w|, l(3.000000), l(1.000000)
  max r1.w, r1.w, l(0.000000)
  mul r2.w, r1.w, r1.y

#line 168
  mad r2.xyz, r1.zzzz, r2.wwww, r2.xyzx

#line 169
  mad r1.x, r1.y, r1.w, r1.x

#line 164
  add r1.y, cb1[9].x, l(0.300000)  // r1.y <- weight

#line 165
  mad r3.xyzw, cb1[0].xyxy, l(-7.400000, -0.000000, 7.400000, 0.000000), v1.xyxy
  sample_indexable(texture2d)(float,float,float,float) r1.z, r3.xyxx, t0.yzxw, s0

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r3.xyxx, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r1.w, r0.w, -r1.w
  mad r1.w, -|r1.w|, l(3.000000), l(1.000000)
  max r1.w, r1.w, l(0.000000)
  mul r2.w, r1.w, r1.y  // r2.w <- weight

#line 168
  mad r2.xyz, r1.zzzz, r2.wwww, r2.xyzx

#line 169
  mad r1.x, r1.y, r1.w, r1.x

#line 165
  sample_indexable(texture2d)(float,float,float,float) r1.z, r3.zwzz, t0.yzxw, s0

#line 166
  sample_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t1.yzwx, s0  // r1.w <- depth

#line 142
  add r1.w, r1.w, -cb0[0].z
  div r1.w, cb0[0].w, r1.w  // r1.w <- <reconstructCSZ_id3 return value>

#line 167
  add r0.w, r0.w, -r1.w
  mad r0.w, -|r0.w|, l(3.000000), l(1.000000)
  max r0.w, r0.w, l(0.000000)
  mul r1.w, r0.w, r1.y  // r1.w <- weight

#line 168
  mad r2.xyz, r1.zzzz, r1.wwww, r2.xyzx

#line 169
  mad r0.w, r1.y, r0.w, r1.x  // r0.w <- totalWeight

#line 172
  add r0.w, r0.w, l(0.000100)
  div r1.xyz, r2.xyzx, r0.wwww  // r1.x <- sum.x; r1.y <- sum.y; r1.z <- sum.z

#line 173
else   // Prior locations: r0.x <- sum.x; r0.y <- sum.y; r0.z <- sum.z

#line 153
  add r0.w, cb1[5].x, l(0.000100)
  div r1.xyz, r0.xyzx, r0.wwww  // r1.x <- sum.x; r1.y <- sum.y; r1.z <- sum.z

#line 173
endif 

#line 182
mov o0.xyz, r1.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 104 instruction slots used
***************************
*************************/
const static int BlurCount_id79 = 5;
const static bool IsVertical_id80 = false;
const static float BlurScale_id81 = 1.85;
const static float EdgeSharpness_id82 = 3;
const static bool IsOrtho_id83 = false;
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
cbuffer PerView 
{
    float NearClipPlane_id74 = 1.0f;
    float FarClipPlane_id75 = 100.0f;
    float2 ZProjection_id76;
    float2 ViewSize_id77;
    float AspectRatio_id78;
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
    float Weights_id84[BlurCount_id79];
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
float reconstructCSZ_id3(float depth)
{
    return ZProjection_id76.y / (depth - ZProjection_id76.x);
}
float4 Shading_id4(inout PS_STREAMS streams)
{
    const float epsilon = 0.0001;
    float2 direction = (IsVertical_id80 ? float2(0, 1) : float2(1, 0)) * Texture0TexelSize_id15;
    float totalWeight = Weights_id84[0];
    float3 sum = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62).rgb * totalWeight;
    float linearDepth = reconstructCSZ_id3(Texture1_id16.Sample(LinearSampler_id44, streams.TexCoord_id62).x);
    if (linearDepth >= 300)
    {
        sum /= (totalWeight + epsilon);
        return float4(sum, 1);
    }

    [unroll]
    for (int i = 1; i < BlurCount_id79; i++)
    {

        [unroll]
        for (int j = -1; j <= 1; j += 2)
        {
            float weight = 0.3 + Weights_id84[i];
            float value = Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62 + direction * j * i * BlurScale_id81).rgb;
            float linearDepthOther = reconstructCSZ_id3(Texture1_id16.Sample(LinearSampler_id44, streams.TexCoord_id62 + direction * j * i * BlurScale_id81).x);
            weight *= max(0.0, 1.0 - EdgeSharpness_id82 * abs(linearDepth - linearDepthOther));
            sum += value * weight;
            totalWeight += weight;
        }
    }
    sum /= (totalWeight + epsilon);
    return float4(sum, 1);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id4(streams);
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

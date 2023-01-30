/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ColorTransformGroupEffect
@P   - ColorTransformGroup.Transforms: Stride.Rendering.Images.FilmGrain
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
@C    Amount_id75 => FilmGrainShader.Amount.Transforms[0]
@C    Time_id76 => FilmGrainShader.Time.Transforms[0]
@C    GrainSize_id77 => FilmGrainShader.GrainSize.Transforms[0]
@C    LuminanceFactor_id78 => FilmGrainShader.LuminanceFactor.Transforms[0]
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler_id42 => Texturing.Sampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ColorTransformGroupShader => fb26384f5b6470ecead6ca44fcd040e7
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ColorTransformShader => 72c2b9c4ae27125468616d070d5b5284
@S    FilmGrainShader => 52d4c811b36442f2c231f7d5cc15294b
@S    LuminanceUtils => 39cb56630d44d77f1ff5a3ebade5ba1c
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
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
#line 229 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ColorTransformGroupEffect_7a671eae8ca28bce3fbd9e1b58c24021.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 233
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 80fe404628f469131e5926d8bf3d0838
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
//   float Amount_id75;                 // Offset:   80 Size:     4
//   float Time_id76;                   // Offset:   84 Size:     4
//   float GrainSize_id77;              // Offset:   88 Size:     4
//   float LuminanceFactor_id78;        // Offset:   92 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler_id42                      sampler      NA          NA             s0      1 
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
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 181 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ColorTransformGroupEffect_7a671eae8ca28bce3fbd9e1b58c24021.hlsl"
div r0.x, cb0[0].y, cb0[0].x  // r0.x <- aspect

#line 182
mad r0.yz, v1.xxyx, l(0.000000, 2.000000, 2.000000, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r0.y, r0.x, r0.y
sincos r1.x, r2.x, cb0[5].y
mul r0.w, r0.z, r1.x
mad r0.w, r0.y, r2.x, -r0.w  // r0.w <- rotX

#line 183
mul r0.y, r0.y, r1.x
mad r0.y, r0.z, r2.x, r0.y  // r0.y <- rotY

#line 185
mad r1.y, r0.y, l(0.500000), l(0.500000)  // r1.y <- rotY

#line 184
div r0.x, r0.w, r0.x
mad r1.x, r0.x, l(0.500000), l(0.500000)  // r1.x <- rotX

#line 192
div r0.xy, r1.xyxx, cb0[0].xyxx
div r0.xy, r0.xyxx, cb0[5].zzzz  // r0.x <- newCoord.x; r0.y <- newCoord.y

#line 152
round_ni r1.xyzw, r0.xyxy
mov r0.z, cb0[5].y
mad r1.xyzw, r1.xyzw, l(0.003906, 0.003906, 0.003906, 0.003906), r0.zzzz

#line 140
add r2.xyzw, r1.xyzw, l(0.005859, 0.001953, 0.005859, 0.005859)
add r1.xyzw, r1.zwzw, l(0.001953, 0.001953, 0.001953, 0.005859)
dp2 r0.z, r2.zwzz, l(12.989800, 78.233002, 0.000000, 0.000000)
dp2 r0.w, r2.xyxx, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r0.zw, null, r0.zzzw

#line 141
mul r0.zw, r0.zzzw, l(0.000000, 0.000000, 59717.289063, 59717.289063)
frc r0.xyzw, r0.xyzw  // r0.x <- pf.x; r0.y <- pf.y; r0.w <- result.w; r0.w <- result.w; r0.w <- result.w

#line 142
mad r2.z, r0.w, l(2.000000), cb0[5].y
mad r3.x, r0.z, l(2.000000), cb0[5].y

#line 140
mov r3.y, l(0.001953)
mov r4.yz, l(0,0.001953,-1.000000,0)
mov r4.w, cb0[5].y
add r0.zw, r3.xxxy, r4.zzzw
dp2 r0.z, r0.zwzz, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r0.z, null, r0.z

#line 141
mul r0.zw, r0.zzzz, l(0.000000, 0.000000, 43758.546875, 53184.136719)  // r0.z <- noiseFactor; r0.z <- noiseFactor; r0.z <- noiseFactor
frc r0.zw, r0.zzzw  // r0.z <- result.x; r0.w <- result.y; r0.z <- result.x; r0.w <- result.y; r0.z <- result.x; r0.w <- result.y

#line 142
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r0.z <- <rnm_id7 return value>.x; r0.w <- <rnm_id7 return value>.y; r0.z <- <rnm_id7 return value>.x; r0.w <- <rnm_id7 return value>.y; r0.z <- <rnm_id7 return value>.x; r0.w <- <rnm_id7 return value>.y

#line 170
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 4.000000, 4.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r0.z <- grad110.x; r0.w <- grad110.y

#line 171
add r3.xy, r0.xyxx, l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r3.y, r0.zwzz, r3.xyxx  // r3.y <- n110

#line 140
dp2 r0.z, r1.xyxx, l(12.989800, 78.233002, 0.000000, 0.000000)
dp2 r0.w, r1.zwzz, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r0.zw, null, r0.zzzw

#line 141
mul r0.zw, r0.zzzw, l(0.000000, 0.000000, 59717.289063, 59717.289063)
frc r0.zw, r0.zzzw  // r0.w <- result.w; r0.w <- result.w; r0.w <- result.w

#line 142
mad r2.x, r0.w, l(2.000000), cb0[5].y
mad r4.x, r0.z, l(2.000000), cb0[5].y

#line 140
add r0.zw, r4.zzzw, r4.xxxy
dp2 r0.z, r0.zwzz, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r0.z, null, r0.z

#line 141
mul r0.zw, r0.zzzz, l(0.000000, 0.000000, 43758.546875, 53184.136719)  // r0.z <- noiseFactor
frc r0.zw, r0.zzzw  // r0.z <- result.x; r0.w <- result.y

#line 142
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r0.z <- <rnm_id7 return value>.x; r0.w <- <rnm_id7 return value>.y

#line 155
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 4.000000, 4.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r0.z <- grad000.x; r0.w <- grad000.y

#line 156
dp2 r1.x, r0.zwzz, r0.xyxx  // r1.x <- n000

#line 140
mov r2.yw, l(0,0.001953,0,0.001953)
add r0.zw, r2.zzzw, r4.zzzw
add r1.zw, r4.zzzw, r2.xxxy
dp2 r1.z, r1.zwzz, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r1.z, null, r1.z

#line 141
mul r1.zw, r1.zzzz, l(0.000000, 0.000000, 43758.546875, 53184.136719)  // r1.z <- noiseFactor; r1.z <- noiseFactor
frc r1.zw, r1.zzzw  // r1.z <- result.x; r1.w <- result.y; r1.z <- result.x; r1.w <- result.y

#line 142
mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r1.z <- <rnm_id7 return value>.x; r1.w <- <rnm_id7 return value>.y; r1.z <- <rnm_id7 return value>.x; r1.w <- <rnm_id7 return value>.y

#line 160
mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 4.000000, 4.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r1.z <- grad010.x; r1.w <- grad010.y

#line 140
dp2 r0.z, r0.zwzz, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r0.z, null, r0.z

#line 141
mul r0.zw, r0.zzzz, l(0.000000, 0.000000, 43758.546875, 53184.136719)  // r0.z <- noiseFactor
frc r0.zw, r0.zzzw  // r0.z <- result.x; r0.w <- result.y

#line 142
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r0.z <- <rnm_id7 return value>.x; r0.w <- <rnm_id7 return value>.y

#line 165
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 4.000000, 4.000000), l(0.000000, 0.000000, -1.000000, -1.000000)  // r0.z <- grad100.x; r0.w <- grad100.y

#line 166
add r2.xyzw, r0.xyxy, l(-0.000000, -1.000000, -1.000000, -0.000000)
dp2 r3.x, r0.zwzz, r2.zwzz  // r3.x <- n100

#line 161
dp2 r1.y, r1.zwzz, r2.xyxx  // r1.y <- n010

#line 174
add r0.zw, -r1.xxxy, r3.xxxy

#line 132
mul r1.zw, r0.xxxy, r0.xxxy
mul r1.zw, r0.xxxy, r1.zzzw
mad r2.xy, r0.xyxx, l(6.000000, 6.000000, 0.000000, 0.000000), l(-15.000000, -15.000000, 0.000000, 0.000000)
mad r0.xy, r0.xyxx, r2.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, r1.zwzz  // r0.y <- <Quintic_id11 return value>.x

#line 174
mad r0.xz, r0.xxxx, r0.zzwz, r1.xxyx  // r0.x <- n_x.x; r0.z <- n_x.z

#line 175
add r0.z, -r0.x, r0.z
mad r0.x, r0.y, r0.z, r0.x  // r0.x <- n_xy.x

#line 204
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0  // r1.x <- <Shading_id2 return value>.x; r1.y <- <Shading_id2 return value>.y; r1.z <- <Shading_id2 return value>.z; r1.w <- <Shading_id2 return value>.w

#line 146
dp3 r0.y, r1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r0.y, r0.y, l(0.000100)  // r0.y <- <Luma_id10 return value>

#line 197
mad r0.z, cb0[5].w, r0.y, l(-0.200000)

#line 196
mul r0.y, r0.y, cb0[5].w  // r0.y <- luminance

#line 197
mul_sat r0.z, r0.z, l(-5.000000)
mad r0.w, r0.z, l(-2.000000), l(3.000000)
mul r0.z, r0.z, r0.z
mad r0.y, r0.w, r0.z, r0.y  // r0.y <- lum

#line 198
mul r0.y, r0.y, r0.y
mul r0.y, r0.y, r0.y
mad_sat r0.x, r0.y, -r0.x, r0.x  // r0.x <- noiseFactor.x

#line 199
mad o0.xyz, r0.xxxx, cb0[5].xxxx, r1.xyzx

#line 222
mov o0.w, r1.w
ret 
// Approximately 94 instruction slots used
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
    float Amount_id75;
    float Time_id76;
    float GrainSize_id77;
    float LuminanceFactor_id78;
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
float2 Quintic_id11(float2 x)
{
    return x * x * x * (x * (x * 6.0 - 15.0) + 10.0);
}
float fade_id8(float t)
{
    return Quintic_id11(t);
}
float4 rnm_id7(float2 tc)
{
    float noiseFactor = sin(dot(tc + float2(Time_id76, Time_id76), float2(12.9898, 78.233))) * 43758.5453;
    float4 result = float4(frac(noiseFactor), frac(noiseFactor * 1.2154), frac(noiseFactor * 1.3453), frac(noiseFactor * 1.3647));
    return result * 2.0 - 1;
}
static float Luma_id10(float3 color)
{
    return max(dot(color, float3(0.299, 0.587, 0.114)), 0.0001);
}
float pnoise3D_id6(float3 p)
{
    float permTexUnit = 1.0 / 256.0;
    float permTexUnitHalf = permTexUnit * 0.5;
    float3 pi = permTexUnit * floor(p) + permTexUnitHalf;
    float3 pf = frac(p);
    float perm00 = rnm_id7(pi.xy).a;
    float3 grad000 = rnm_id7(float2(perm00, pi.z)).rgb * 4.0 - 1.0;
    float n000 = dot(grad000, pf);
    float3 grad001 = rnm_id7(float2(perm00, pi.z + permTexUnit)).rgb * 4.0 - 1.0;
    float n001 = dot(grad001, pf - float3(0.0, 0.0, 1.0));
    float perm01 = rnm_id7(pi.xy + float2(0.0, permTexUnit)).a;
    float3 grad010 = rnm_id7(float2(perm01, pi.z)).rgb * 4.0 - 1.0;
    float n010 = dot(grad010, pf - float3(0.0, 1.0, 0.0));
    float3 grad011 = rnm_id7(float2(perm01, pi.z + permTexUnit)).rgb * 4.0 - 1.0;
    float n011 = dot(grad011, pf - float3(0.0, 1.0, 1.0));
    float perm10 = rnm_id7(pi.xy + float2(permTexUnit, 0.0)).a;
    float3 grad100 = rnm_id7(float2(perm10, pi.z)).rgb * 4.0 - 1.0;
    float n100 = dot(grad100, pf - float3(1.0, 0.0, 0.0));
    float3 grad101 = rnm_id7(float2(perm10, pi.z + permTexUnit)).rgb * 4.0 - 1.0;
    float n101 = dot(grad101, pf - float3(1.0, 0.0, 1.0));
    float perm11 = rnm_id7(pi.xy + float2(permTexUnit, permTexUnit)).a;
    float3 grad110 = rnm_id7(float2(perm11, pi.z)).rgb * 4.0 - 1.0;
    float n110 = dot(grad110, pf - float3(1.0, 1.0, 0.0));
    float3 grad111 = rnm_id7(float2(perm11, pi.z + permTexUnit)).rgb * 4.0 - 1.0;
    float n111 = dot(grad111, pf - float3(1.0, 1.0, 1.0));
    float4 n_x = lerp(float4(n000, n001, n010, n011), float4(n100, n101, n110, n111), fade_id8(pf.x));
    float2 n_xy = lerp(n_x.xy, n_x.zw, fade_id8(pf.y));
    float n_xyz = lerp(n_xy.x, n_xy.y, fade_id8(pf.z));
    return n_xyz;
}
float2 coordRot_id5(float2 tc, float angle)
{
    float aspect = Texture0TexelSize_id15.y / Texture0TexelSize_id15.x;
    float rotX = ((tc.x * 2.0 - 1.0) * aspect * cos(angle)) - ((tc.y * 2.0 - 1.0) * sin(angle));
    float rotY = ((tc.y * 2.0 - 1.0) * cos(angle)) + ((tc.x * 2.0 - 1.0) * aspect * sin(angle));
    rotX = ((rotX / aspect) * 0.5 + 0.5);
    rotY = rotY * 0.5 + 0.5;
    return float2(rotX, rotY);
}
float4 Compute_id4(inout PS_STREAMS streams, float4 color)
{
    float2 texCoord = streams.TexCoord_id62;
    float2 rotCoordsR = coordRot_id5(texCoord, Time_id76);
    float2 newCoord = rotCoordsR / Texture0TexelSize_id15 / GrainSize_id77;
    float n = pnoise3D_id6(float3(newCoord, 0.0));
    float3 noiseFactor = float3(n, n, n);
    float3 col = color.rgb;
    float luminance = lerp(0.0, Luma_id10(col), LuminanceFactor_id78);
    float lum = smoothstep(0.2, 0.0, luminance) + luminance;
    noiseFactor = saturate(lerp(noiseFactor, float3(0.0, 0.0, 0.0), pow(lum, 4.0)));
    color.rgb += noiseFactor * Amount_id75;
    return color;
}
float4 Shading_id2(inout PS_STREAMS streams)
{
    return Texture0_id14.Sample(Sampler_id42, streams.TexCoord_id62);
}
float4 Shading_id3(inout PS_STREAMS streams)
{
    float4 color = Shading_id2(streams);

    {
        color = Compute_id4(streams, color);
    }
    return color;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id3(streams);
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

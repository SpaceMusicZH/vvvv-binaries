/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Lomograph_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 16]
@C    InputValue_id97 => ShaderFX.InputValueFloat4
cbuffer PerView [Size: 32]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
cbuffer Globals [Size: 128]
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
@C    VignetteStart_id88 => Lomograph_TextureFX.VignetteStart
@C    VignetteAmount_id89 => Lomograph_TextureFX.VignetteAmount
@C    VignetteDodge_id90 => Lomograph_TextureFX.VignetteDodge
@C    Color_id91 => Lomograph_TextureFX.Color
@C    Contrast_id92 => Lomograph_TextureFX.Contrast
@C    Level_id93 => Lomograph_TextureFX.Level
@C    Effect_id94 => Lomograph_TextureFX.Effect
@C    Type_id95 => Lomograph_TextureFX.Type
@C    Iterations_id96 => Lomograph_TextureFX.Iterations
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    Lomograph_TextureFX => 55d52e1d0b0e2006f4b5a9decedc4c5a
@S    FilterBase => 5bd9cb7e7eb80aa436e148c74d845c07
@S    TextureFX => 27bb4f1f808a5eedf6dfeaa75c669c29
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
#line 333 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_04f684670bb2fde847a9f7f8dc6008e9.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 337
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 187b86c1d1d61e69371bfd4f2a68aae9
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id97;            // Offset:    0 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float NearClipPlane_id74;          // Offset:    0 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id75;           // Offset:    4 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id76;           // Offset:    8 Size:     8 [unused]
//   float2 ViewSize_id77;              // Offset:   16 Size:     8
//   float AspectRatio_id78;            // Offset:   24 Size:     4 [unused]
//
// }
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float VignetteStart_id88;          // Offset:   80 Size:     4
//      = 0x3dcccccd 
//   float VignetteAmount_id89;         // Offset:   84 Size:     4
//      = 0x3e800000 
//   float VignetteDodge_id90;          // Offset:   88 Size:     4
//      = 0x3dcccccd 
//   float Color_id91;                  // Offset:   92 Size:     4
//      = 0x3f19999a 
//   float Contrast_id92;               // Offset:   96 Size:     4
//      = 0x3f000000 
//   float Level_id93;                  // Offset:  100 Size:     4
//      = 0x3f000000 
//   float Effect_id94;                 // Offset:  104 Size:     4
//      = 0x3f800000 
//   uint Type_id95;                    // Offset:  108 Size:     4
//      = 0x00000000 
//   int Iterations_id96;               // Offset:  112 Size:     4
//      = 0x00000004 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler0_id52                     sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
// Globals                           cbuffer      NA          NA            cb2      1 
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
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[8], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 9
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 312 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_04f684670bb2fde847a9f7f8dc6008e9.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 261
imin r1.x, cb2[7].x, l(20)
itof r1.x, r1.x  // r1.x <- itr

#line 172
add r1.y, cb2[5].w, l(-0.500000)

#line 266
add r1.zw, v1.xxxy, l(0.000000, 0.000000, -0.500000, -0.500000)
mul r1.zw, r1.zzzw, cb1[1].xxxy
div r1.zw, r1.zzzw, cb1[1].xxxx
dp2 r1.z, r1.zwzz, r1.zwzz
sqrt r1.z, r1.z

#line 164
mad r1.w, -cb2[5].x, l(0.600000), r1.z
max r1.w, r1.w, l(0.000000)

#line 167
mad r2.xy, -cb2[5].xxxx, l(0.600000, 0.600000, 0.000000, 0.000000), l(1.000000, 1.340000, 0.000000, 0.000000)

#line 164
div r1.w, r1.w, r2.x  // r1.w <- Sglow

#line 165
mad r1.z, cb2[5].x, l(0.600000), -r1.z  // r1.z <- Dglow

#line 166
mul r1.w, r1.w, l(2.000000)

#line 167
max r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)

#line 166
log r1.w, r1.w
mul r1.w, r1.w, l(1.500000)
exp r1.w, r1.w

#line 167
mul r1.z, r1.z, l(2.000000)
mul r1.z, r1.z, r1.z
mul r2.x, r2.y, r2.y

#line 151
mul r2.y, cb2[6].y, l(2.000000)
mov_sat r2.y, r2.y

#line 152
mad_sat r2.z, cb2[6].y, l(2.000000), l(-1.000000)

#line 263
mov r3.xyz, r0.xyzx  // r3.x <- z.x; r3.y <- z.y; r3.z <- z.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ge r3.w, r2.w, r1.x
  breakc_nz r3.w

#line 172
  mad r4.xyz, r1.yyyy, l(0.000000, 0.080000, -0.240000, 0.000000), r3.xyzx  // r4.x <- x.x; r4.y <- x.y; r4.z <- x.z

#line 166
  mad r5.xyz, -r4.xyzx, r4.xyzx, l(1.300000, 1.300000, 1.300000, 0.000000)
  mul r5.xyz, r1.wwww, r5.xyzx
  mul r5.xyz, r5.xyzx, cb2[5].yyyy
  mad r5.xyz, -r5.xyzx, l(0.600000, 0.600000, 0.600000, 0.000000), l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- x.x; r4.y <- x.y; r4.z <- x.z

#line 167
  mul r5.xyz, r4.xyzx, l(5.000000, 5.000000, 5.000000, 0.000000)
  mul r6.xyz, r4.xyzx, r4.xyzx
  mad r6.xyz, -r6.xyzx, l(10.000000, 10.000000, 10.000000, 0.000000), r5.xyzx
  mul r5.xyz, r4.xyzx, r5.xyzx
  mad r5.xyz, r5.xyzx, r4.xyzx, r6.xyzx
  mul r5.xyz, r1.zzzz, r5.xyzx
  mul r5.xyz, r5.xyzx, cb2[5].zzzz
  mul r5.xyz, r2.xxxx, r5.xyzx
  mad r5.xyz, r5.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r6.xyz, r4.xyzx, r5.xyzx  // r6.x <- x.x; r6.y <- x.y; r6.z <- x.z

#line 158
  mul r7.xyz, r6.xyzx, r6.xyzx
  mul r8.xyz, r6.xyzx, r7.xyzx
  mul r7.xyz, r7.xyzx, l(1.840000, 1.840000, 1.840000, 0.000000)
  mad r7.xyz, r8.xyzx, l(-1.240000, -1.240000, -1.240000, 0.000000), r7.xyzx
  mad r7.xyz, r6.xyzx, l(0.400000, 0.400000, 0.400000, 0.000000), r7.xyzx
  mad r8.xyz, r4.xyzx, r5.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
  rsq r8.xyz, |r8.xyzx|
  div r8.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r8.xyzx
  add r8.xyz, -r8.xyzx, l(1.600000, 1.600000, 1.600000, 0.000000)
  mul r8.xyz, r8.xyzx, cb2[6].xxxx
  mad r4.xyz, -r4.xyzx, r5.xyzx, r7.xyzx
  mad r4.xyz, r8.xyzx, r4.xyzx, r6.xyzx  // r4.x <- x.x; r4.y <- x.y; r4.z <- x.z

#line 151
  mul r5.xyz, r4.xyzx, r4.xyzx
  mul r6.xyz, r4.xyzx, r5.xyzx
  mul r5.xyz, r5.xyzx, l(0.110000, 0.110000, 0.110000, 0.000000)
  mad r5.xyz, r6.xyzx, l(0.270000, 0.270000, 0.270000, 0.000000), r5.xyzx
  mad r5.xyz, r4.xyzx, l(0.455000, 0.455000, 0.455000, 0.000000), r5.xyzx
  add r5.xyz, r5.xyzx, l(-0.006000, -0.006000, -0.006000, 0.000000)
  min r5.xyz, r5.xyzx, l(0.840000, 0.840000, 0.840000, 0.000000)
  add r4.xyz, r4.xyzx, -r5.xyzx
  mad r4.xyz, r2.yyyy, r4.xyzx, r5.xyzx  // r4.x <- x.x; r4.y <- x.y; r4.z <- x.z

#line 152
  mul r5.xyz, r4.xyzx, r4.xyzx
  mul r6.xyz, r4.xyzx, r5.xyzx
  mul r7.xyz, r5.xyzx, l(-0.130000, -0.130000, -0.130000, 0.000000)
  mad r7.xyz, r6.xyzx, l(-0.600000, -0.600000, -0.600000, 0.000000), r7.xyzx
  mad r7.xyz, r4.xyzx, l(1.690000, 1.690000, 1.690000, 0.000000), r7.xyzx
  mul r5.xyz, r5.xyzx, r6.xyzx
  mad r5.xyz, r5.xyzx, l(0.070000, 0.070000, 0.070000, 0.000000), r7.xyzx
  min r5.xyz, r5.xyzx, l(1.020000, 1.020000, 1.020000, 0.000000)
  add r5.xyz, -r4.xyzx, r5.xyzx
  mad r3.xyz, r2.zzzz, r5.xyzx, r4.xyzx  // r3.x <- x.x; r3.y <- x.y; r3.z <- x.z

#line 269
  add r2.w, r2.w, l(1.000000)
endloop   // r3.x <- z.x; r3.y <- z.y; r3.z <- z.z

#line 280
switch cb2[6].w

#line 283
  case l(0)

#line 253
  mul r1.xyz, r3.xyzx, r3.xyzx
  mul r2.xyz, r3.xyzx, r1.xyzx
  mul r1.xyz, r1.xyzx, l(0.830000, 0.560000, -1.040000, 0.000000)
  mad r1.xyz, r2.xyzx, l(-0.420000, -0.640000, 0.490000, 0.000000), r1.xyzx
  mad r1.xyz, r3.xyzx, l(0.500000, 0.980000, 1.240000, 0.000000), r1.xyzx
  add r1.xyz, r1.xyzx, l(0.090000, 0.090000, 0.240000, 0.000000)

#line 252
  add r1.xy, -r3.xyxx, r1.xyxx
  mad r3.xy, cb2[6].zzzz, r1.xyxx, r3.xyxx  // r3.x <- x.x; r3.y <- x.y

#line 253
  max r1.x, r1.z, l(0.240000)
  add r1.x, -r3.z, r1.x
  mad r3.z, cb2[6].z, r1.x, r3.z  // r3.z <- x.z

#line 285
  break 

#line 286
  case l(1)

#line 240
  mul r1.x, cb2[6].z, l(0.800000)  // r1.x <- eff

#line 243
  mul r1.yzw, r3.xxyz, r3.xxyz
  mul r2.xyz, r3.xyzx, r1.yzwy
  mul r1.yzw, r1.yyzw, l(0.000000, 2.460000, 1.920000, -0.380000)
  mad r1.yzw, r2.xxyz, l(0.000000, -1.170000, -1.470000, 0.100000), r1.yyzw
  mad r1.yzw, r3.xxyz, l(0.000000, -0.100000, 0.440000, 0.980000), r1.yyzw
  add r1.yzw, r1.yyzw, l(0.000000, 0.110000, 0.110000, 0.230000)
  add r1.yzw, -r3.xxyz, r1.yyzw
  mad r3.xyz, r1.xxxx, r1.yzwy, r3.xyzx  // r3.x <- x.x; r3.y <- x.y; r3.z <- x.z

#line 288
  break 

#line 289
  case l(2)

#line 229
  mul r1.x, cb2[6].z, l(0.800000)  // r1.x <- eff

#line 232
  mul r1.yzw, r3.xxyz, r3.xxyz
  mul r2.xyz, r3.xyzx, r1.yzwy
  mul r4.xyz, r1.yzwy, l(-1.310000, 1.140000, 0.940000, 0.000000)
  mad r4.xyz, r2.xyzx, l(4.070000, -0.840000, -0.840000, 0.000000), r4.xyzx
  mul r1.yz, r1.yywy, r2.xxzx

#line 230
  mad r1.y, r1.y, l(-1.760000), r4.x
  add r1.y, -r3.x, r1.y
  mad r3.x, r1.x, r1.y, r3.x  // r3.x <- x.x

#line 232
  mad r1.yw, r3.yyyz, l(0.000000, 0.600000, 0.000000, 0.600000), r4.yyyz

#line 231
  add r1.y, -r3.y, r1.y
  mad r3.y, r1.x, r1.y, r3.y  // r3.y <- x.y

#line 232
  mad r1.y, r1.z, l(0.040000), r1.w
  add r1.y, -r3.z, r1.y
  mad r3.z, r1.x, r1.y, r3.z  // r3.z <- x.z

#line 291
  break 

#line 292
  case l(3)

#line 218
  mul r1.x, cb2[6].z, l(0.800000)  // r1.x <- eff

#line 219
  mad r1.y, -r3.x, l(0.300000), l(1.300000)

#line 220
  mul r1.zw, r3.xxxy, r3.xxxy
  mul r2.xy, r3.xyxx, r1.zwzz
  mul r1.zw, r1.zzzw, l(0.000000, 0.000000, 2.240000, 2.580000)
  mad r1.zw, r2.xxxy, l(0.000000, 0.000000, -0.530000, -1.760000), r1.zzzw
  mad r1.zw, r3.xxxy, l(0.000000, 0.000000, -0.210000, 0.170000), r1.zzzw

#line 219
  min r1.y, r1.z, r1.y
  add r1.y, -r3.x, r1.y
  mad r3.x, r1.x, r1.y, r3.x  // r3.x <- x.x

#line 220
  add r1.y, -r3.y, r1.w
  mad r3.y, r1.x, r1.y, r3.y  // r3.y <- x.y

#line 221
  mad r1.y, r3.z, l(0.810000), l(0.090000)
  max r1.y, r1.y, l(0.090000)
  add r1.y, -r3.z, r1.y
  mad r3.z, r1.x, r1.y, r3.z  // r3.z <- x.z

#line 294
  break 

#line 295
  case l(4)

#line 207
  mul r1.x, cb2[6].z, l(0.800000)  // r1.x <- eff

#line 210
  mul r1.yz, r3.yyzy, l(0.000000, 1.030000, -0.300000, 0.000000)
  mad r2.xy, r3.xzxx, l(0.770000, 1.500000, 0.000000, 0.000000), l(0.100000, -0.280000, 0.000000, 0.000000)

#line 208
  add r1.w, -r3.x, r2.x
  mad r3.x, r1.x, r1.w, r3.x  // r3.x <- x.x

#line 209
  mul r1.w, r3.y, r3.y
  mul r1.w, r3.y, r1.w
  mad r1.y, r1.w, l(0.010000), r1.y
  add r1.y, r1.y, l(-0.020000)
  add r1.y, -r3.y, r1.y
  mad r3.y, r1.x, r1.y, r3.y  // r3.y <- x.y

#line 210
  max r1.y, r1.z, r2.y
  add r1.y, -r3.z, r1.y
  mad r3.z, r1.x, r1.y, r3.z  // r3.z <- x.z

#line 297
  break 

#line 298
  case l(5)

#line 192
  max r1.x, r3.z, r3.y
  max r1.x, r1.x, r3.x
  add r1.xyz, -r3.yxzy, r1.xxxx
  mad r1.xyz, l(0.100000, 0.100000, 0.100000, 0.000000), r1.xyzx, r3.yxzy
  min r1.w, r3.z, r3.y
  min r1.w, r1.w, r3.x
  add r2.xyz, -r1.xyzx, r1.wwww
  mad r1.xyz, l(0.100000, 0.100000, 0.100000, 0.000000), r2.xyzx, r1.xyzx  // r1.x <- x.y; r1.y <- x.x; r1.z <- x.z

#line 199
  mul r2.xyz, r1.xyzx, r1.xyzx
  mul r1.w, r2.x, l(2.770000)

#line 197
  mad r1.w, r1.x, l(0.110000), r1.w

#line 199
  mul r4.xyz, r1.xyzx, r2.xyzx

#line 197
  mad r1.w, r4.x, l(-0.610000), r1.w
  mul r2.w, r1.x, r4.x
  mad r1.w, r2.w, l(-1.830000), r1.w
  mul r2.x, r2.w, r2.x
  mul r2.x, r1.x, r2.x
  mad r1.w, r2.x, l(0.550000), r1.w
  add r1.w, -r1.x, r1.w
  mad r3.y, cb2[6].z, r1.w, r1.x  // r3.y <- x.y

#line 199
  mad r1.xw, r1.yyyz, l(5.000000, 0.000000, 0.000000, 13.000000), l(-2.900000, 0.000000, 0.000000, -2.200000)
  mul r1.xw, r1.xxxw, l(1.442695, 0.000000, 0.000000, 1.442695)
  exp r2.xw, r1.xxxw
  exp r1.xw, -r1.xxxw
  add r4.xw, -r1.xxxw, r2.xxxw
  add r1.xw, r1.xxxw, r2.xxxw
  div r1.xw, l(1.000000, 1.000000, 1.000000, 1.000000), r1.xxxw
  mul r1.xw, r1.xxxw, r4.xxxw

#line 198
  mad r1.x, r1.x, l(0.500000), l(0.500000)
  mad r1.x, r1.y, l(-0.010000), r1.x
  mad r1.x, r2.y, l(0.520000), r1.x
  mad r1.x, r4.y, l(-0.740000), r1.x

#line 199
  mul r2.xy, r2.yzyy, r4.yzyy
  mul r2.xy, r1.yzyy, r2.xyxx

#line 198
  mad r1.x, r2.x, l(0.230000), r1.x
  add r1.x, -r1.y, r1.x
  mad r3.x, cb2[6].z, r1.x, r1.y  // r3.x <- x.x

#line 199
  mad r1.x, r1.w, l(0.100000), r1.z
  add r1.x, r1.x, l(0.090000)
  mad r1.x, r2.z, l(-0.960000), r1.x
  mad r1.x, r4.z, l(0.960000), r1.x
  mad r1.x, r2.y, l(-0.180000), r1.x
  add r1.x, -r1.z, r1.x
  mad r3.z, cb2[6].z, r1.x, r1.z  // r3.z <- x.z

#line 300
  break 

#line 301
  case l(6)

#line 187
  dp3 r3.xyz, r3.xyzx, l(0.357718, 0.357718, 0.278225, 0.000000)  // r3.x <- col.x; r3.y <- col.y; r3.z <- col.z

#line 303
  break 

#line 304
  case l(7)

#line 181
  mad r1.xy, r3.xyxx, l(0.320000, 0.530000, 0.000000, 0.000000), l(0.660000, 0.430000, 0.000000, 0.000000)

#line 182
  mul r2.xyz, r3.xyzx, r3.xyzx
  mul r4.xyz, r3.xyzx, r2.xyzx
  mul r2.xzw, r2.xxyz, l(2.080000, 0.000000, 3.000000, 0.330000)
  mad r2.xzw, r4.xxyz, l(-1.240000, 0.000000, -2.530000, -0.310000), r2.xxzw

#line 181
  mad r1.zw, r3.xxxy, l(0.000000, 0.000000, 0.140000, 0.030000), r2.xxxz
  add r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.110000, 0.020000)

#line 180
  min r1.x, r1.z, r1.x
  add r1.x, -r3.x, r1.x
  mad r3.x, cb2[6].z, r1.x, r3.x  // r3.x <- x.x

#line 181
  mul r1.x, r2.y, r4.y
  mad r1.x, r1.x, l(0.470000), r1.w
  min r1.x, r1.x, r1.y
  add r1.x, -r3.y, r1.x
  mad r3.y, cb2[6].z, r1.x, r3.y  // r3.y <- x.y

#line 182
  mul r1.x, cb2[6].z, l(0.100000)
  mad r1.y, r3.z, l(0.800000), r2.w
  add r1.y, r1.y, l(0.110000)
  add r1.y, -r3.z, r1.y
  mad r1.y, cb2[6].z, r1.y, r3.z
  max r3.z, r1.y, r1.x  // r3.z <- x.z

#line 306
  break 

#line 307
  default 
  break 
endswitch   // r3.x <- col.x; r3.y <- col.y; r3.z <- col.z

#line 317
add r1.xyz, -r0.xyzx, r3.xyzx
mov r1.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 326
ret 
// Approximately 234 instruction slots used
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
cbuffer PerUpdate 
{
    float4 InputValue_id97;
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
    float VignetteStart_id88 = 0.1f;
    float VignetteAmount_id89 = 0.25f;
    float VignetteDodge_id90 = 0.1f;
    float Color_id91 = 0.6f;
    float Contrast_id92 = 0.5f;
    float Level_id93 = 0.5f;
    float Effect_id94 = 1.0f;
    uint Type_id95 = 0;
    int Iterations_id96 = 4;
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
float3 ColorLevel_id38(float3 x, float level)
{
    float4 k0 = float4(0.27, 0.11, 0.455, -0.006);
    float4 k1 = float4(-0.6, -0.13, 1.69, 0.00);
    x = lerp(min(x * x * x * k0.x + x * x * k0.y + x * k0.z + k0.w, .84), x, saturate(level * 2));
    x = lerp(x, min(x * x * x * k1.x + x * x * k1.y + x * k1.z + k1.w + x * x * x * x * x * .07, 1.02), saturate(level * 2 - 1));
    return x;
}
float3 ColorContrast_id40(float3 x, float contrast)
{
    float4 k0 = float4(-1.24, 1.84, 0.4, 0.0);
    x = lerp(x, x * x * x * k0.x + x * x * k0.y + x * k0.z + k0.w, contrast * (1 + (.6 - pow(abs(x - .5), .5))));
    return x;
}
float3 Vignette_id37(float3 x, float glow, float amount, float start, float dodge)
{
    start *= .6;
    float Sglow = max(0, glow - start) / (1 - start);
    float Dglow = start - glow;
    x = x * (1 - (1.3 - pow(x, 2)) * pow(max(0, Sglow * 2), 1.5) * .6 * amount);
    x *= 1 + pow(max(0, Dglow) * 2, 2) * (x * 5 - x * x * 10 + 5 * x * x * x) * 2 * dodge * pow(1.34 - start, 2);
    return x;
}
float3 ColorShape_id39(float3 x, float color)
{
    x += (color - .5) * float3(.0, .08, -.24);
    return x;
}
float3 EffectShapeSEPIA_id34(float3 x, float eff)
{
    float4 B = float4(-0.31, 0.33, 0.8, 0.11);
    float4 G = float4(-2.53, 3.0, 0.03, 0.02);
    float4 R = float4(-1.24, 2.08, .14, .11);
    x.r = lerp(x, min(.66 + x * .32, x * x * x * R.x + x * x * R.y + x * R.z + R.w), eff).r;
    x.g = lerp(x, min(.43 + x * .53, x * x * x * G.x + x * x * G.y + x * G.z + G.w + x * x * x * x * x * .47), eff).g;
    x.b = max(.1 * eff, lerp(x, x * x * x * B.x + x * x * B.y + x * B.z + B.w, eff).b);
    return x;
}
float3 EffectShapeBW_id36(float3 x, float eff)
{
    x = dot(x.xyz, normalize(float3(.36, .36, .28)) / sqrt(3));
    return x;
}
float3 EffectShapeE6C41_id35(float3 x, float eff)
{
    x = lerp(lerp(x, max(x.x, max(x.y, x.z)), .1), min(x.x, min(x.y, x.z)), .1);
    float3 y = x;
    float4 B = float4(-0.18, 0.96, -0.96, 1.0);
    float4 G = float4(0.55, -1.83, -0.61, 2.77);
    float4 R = float4(0.23, -0.74, 0.52, -0.01);
    x.g = lerp(x, x * .11 + x * x * G.w + x * x * x * G.z + x * x * x * x * G.y + x * x * x * x * x * x * x * G.x, eff).g;
    x.r = lerp(x, tanh(x * 5 - 2.9) / 2 + .5 + x * R.w + x * x * R.z + x * x * x * R.y + x * x * x * x * x * x * R.x, eff).r;
    x.b = lerp(x, tanh(x * 13 - 2.2) / 10 + .09 + x * B.w + x * x * B.z + x * x * x * B.y + x * x * x * x * x * x * B.x, eff).b;
    return x;
}
float3 EffectShape5_id33(float3 x, float eff)
{
    float4 B = float4(0.0, 0.0, 1.5, -0.28);
    float4 G = float4(0.01, 0.0, 1.03, -0.02);
    float4 R = float4(0.0, 0.0, 0.77, 0.1);
    eff *= 4. / 5.;
    x.r = lerp(x, x * x * x * R.x + x * x * R.y + x * R.z + R.w, eff).r;
    x.g = lerp(x, x * x * x * G.x + x * x * G.y + x * G.z + G.w, eff).g;
    x.b = lerp(x, max(-.3 * x, x * x * x * B.x + x * x * B.y + x * B.z + B.w), eff).b;
    return x;
}
float3 EffectShape4_id32(float3 x, float eff)
{
    float4 B = float4(0.0, 0.0, 0.81, 0.09);
    float4 G = float4(-1.76, 2.58, 0.17, 0.0);
    float4 R = float4(-0.53, 2.24, -0.21, 0.0);
    eff *= 4. / 5.;
    x.r = lerp(x, min(1.3 - x * .3, x * x * x * R.x + x * x * R.y + x * R.z + R.w), eff).r;
    x.g = lerp(x, x * x * x * G.x + x * x * G.y + x * G.z + G.w, eff).g;
    x.b = lerp(x, max(.09, x * x * x * B.x + x * x * B.y + x * B.z + B.w), eff).b;
    return x;
}
float3 EffectShape3_id31(float3 x, float eff)
{
    float4 B = float4(-0.84, 0.94, 0.6, 0.04);
    float4 G = float4(-0.84, 1.14, 0.6, 0.0);
    float4 R = float4(4.07, -1.31, 0.0, -1.76);
    eff *= 4. / 5.;
    x.r = lerp(x, x * x * x * R.x + x * x * R.y + x * R.z + R.w * x * x * x * x * x, eff).r;
    x.g = lerp(x, x * x * x * G.x + x * x * G.y + x * G.z + G.w, eff).g;
    x.b = lerp(x, x * x * x * B.x + x * x * B.y + x * B.z + B.w * x * x * x * x * x, eff).b;
    return x;
}
float3 EffectShape2_id30(float3 x, float eff)
{
    float4 B = float4(0.1, -0.38, 0.98, 0.23);
    float4 G = float4(-1.47, 1.92, 0.44, 0.11);
    float4 R = float4(-1.17, 2.46, -0.1, 0.11);
    eff *= 4. / 5.;
    x.r = lerp(x, x * x * x * R.x + x * x * R.y + x * R.z + R.w, eff).r;
    x.g = lerp(x, x * x * x * G.x + x * x * G.y + x * G.z + G.w, eff).g;
    x.b = lerp(x, x * x * x * B.x + x * x * B.y + x * B.z + B.w, eff).b;
    return x;
}
float3 EffectShape1_id29(float3 x, float eff)
{
    float4 B = float4(0.49, -1.04, 1.24, 0.24);
    float4 G = float4(-0.64, 0.56, 0.98, 0.09);
    float4 R = float4(-0.42, 0.83, 0.5, 0.09);
    x.r = lerp(x, x * x * x * R.x + x * x * R.y + x * R.z + R.w, eff).r;
    x.g = lerp(x, x * x * x * G.x + x * x * G.y + x * G.z + G.w, eff).g;
    x.b = lerp(x, max(.24, x * x * x * B.x + x * x * B.y + x * B.z + B.w), eff).b;
    return x;
}
float4 prepass_id41(inout PS_STREAMS streams, float4 col)
{
    float2 x = streams.TexCoord_id62;
    float2 R = ViewSize_id77;
    float3 z = col.rgb;
    float itr = min(Iterations_id96, 20);

    for (float i = 0; i < itr; i++)
    {
        z = ColorShape_id39(z, Color_id91);
        z = Vignette_id37(z, length((x - 0.5) * R / R.x), VignetteAmount_id89, VignetteStart_id88, VignetteDodge_id90);
        z = ColorContrast_id40(z, Contrast_id92);
        z = ColorLevel_id38(z, Level_id93);
    }
    col.rgb = z;
    return col;
}
float4 Compute_id43()
{
    return InputValue_id97;
}
float4 Filter_id42(inout PS_STREAMS streams, float4 tex0col)
{
    float4 col = prepass_id41(streams, tex0col);
    switch (Type_id95)

    {
        case 0:
            col.rgb = EffectShape1_id29(col.rgb, Effect_id94);
            break;
        case 1:
            col.rgb = EffectShape2_id30(col.rgb, Effect_id94);
            break;
        case 2:
            col.rgb = EffectShape3_id31(col.rgb, Effect_id94);
            break;
        case 3:
            col.rgb = EffectShape4_id32(col.rgb, Effect_id94);
            break;
        case 4:
            col.rgb = EffectShape5_id33(col.rgb, Effect_id94);
            break;
        case 5:
            col.rgb = EffectShapeE6C41_id35(col.rgb, Effect_id94);
            break;
        case 6:
            col.rgb = EffectShapeBW_id36(col.rgb, Effect_id94);
            break;
        case 7:
            col.rgb = EffectShapeSEPIA_id34(col.rgb, Effect_id94);
            break;
    }
    return col;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id42(streams, col), Compute_id43());
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id28(streams);
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
/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin ChannelKeying_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 16]
@C    InputValue_id95 => ShaderFX.InputValueFloat4
cbuffer PerView [Size: 32]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
cbuffer Globals [Size: 112]
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
@C    Type_id88 => ChannelKeying_TextureFX.Type
@C    Threshold_id89 => ChannelKeying_TextureFX.Threshold
@C    Smooth_id90 => ChannelKeying_TextureFX.Smooth
@C    AlphaBlur_id91 => ChannelKeying_TextureFX.AlphaBlur
@C    Invert_id92 => ChannelKeying_TextureFX.Invert
@C    SourceAlpha_id93 => ChannelKeying_TextureFX.SourceAlpha
@C    Premultiply_id94 => ChannelKeying_TextureFX.Premultiply
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
@S    ChannelKeying_TextureFX => f6670f9f8b933b96929dd742cd7d6e3a
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
#line 255 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_30d44c9038e12bf0771431e128058a51.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 259
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 2a4e664dc7861e473341ef3771a61719
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id95;            // Offset:    0 Size:    16
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
//   int Type_id88;                     // Offset:   80 Size:     4
//   float Threshold_id89;              // Offset:   84 Size:     4
//      = 0x3e99999a 
//   float Smooth_id90;                 // Offset:   88 Size:     4
//      = 0x3dcccccd 
//   float AlphaBlur_id91;              // Offset:   92 Size:     4
//      = 0x00000000 
//   bool Invert_id92;                  // Offset:   96 Size:     4
//      = 0x00000000 
//   bool SourceAlpha_id93;             // Offset:  100 Size:     4
//      = 0x00000000 
//   bool Premultiply_id94;             // Offset:  104 Size:     4
//      = 0x00000000 
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
dcl_constantbuffer CB2[7], immediateIndexed
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
#line 234 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_30d44c9038e12bf0771431e128058a51.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 203
mov_sat r1.x, cb2[5].w
max r1.y, cb1[1].y, cb1[1].x
log r1.y, r1.y
mul r1.x, r1.y, r1.x
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.yzxw, s0, r1.x  // r1.z <- <mmap_id29 return value>.x; r1.x <- <mmap_id29 return value>.y; r1.y <- <mmap_id29 return value>.z; r1.w <- <mmap_id29 return value>.w

#line 215
udiv null, r2.x, cb2[5].x, l(6)
switch r2.x

#line 218
  case l(0)

#line 156
  add r3.x, -cb2[5].z, cb2[5].y
  add r3.y, cb2[5].z, cb2[5].y
  add r3.y, r3.y, l(0.000100)
  add r3.y, -r3.x, r3.y
  add r3.x, r0.w, -r3.x
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.y
  mul_sat r3.x, r3.y, r3.x
  mad r3.y, r3.x, l(-2.000000), l(3.000000)
  mul r3.x, r3.x, r3.x
  mul r3.z, r3.x, r3.y  // r3.z <- col.w

#line 159
  mad r3.x, -r3.y, r3.x, l(1.000000)  // r3.x <- col.w

#line 160
  movc r3.x, cb2[6].x, r3.x, r3.z

#line 163
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
  sqrt r3.y, r3.y
  mul r3.yzw, r0.xxyz, r3.yyyy  // r3.y <- col.x; r3.z <- col.y; r3.w <- col.z

#line 164
  movc r2.xyz, cb2[6].zzzz, r3.yzwy, r0.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 167
  mul r3.y, r1.w, r3.x  // r3.y <- col.w

#line 168
  movc r2.w, cb2[6].y, r3.y, r3.x  // r2.w <- col.w

#line 219
  break 

#line 220
  case l(1)

#line 156
  add r3.x, -cb2[5].z, cb2[5].y
  add r3.y, cb2[5].z, cb2[5].y
  add r3.y, r3.y, l(0.000100)
  add r3.y, -r3.x, r3.y
  add r3.x, r0.x, -r3.x
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.y
  mul_sat r3.x, r3.y, r3.x
  mad r3.y, r3.x, l(-2.000000), l(3.000000)
  mul r3.x, r3.x, r3.x
  mul r3.z, r3.x, r3.y  // r3.z <- col.w

#line 159
  mad r3.x, -r3.y, r3.x, l(1.000000)  // r3.x <- col.w

#line 160
  movc r3.x, cb2[6].x, r3.x, r3.z

#line 163
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
  sqrt r3.y, r3.y
  mul r3.yzw, r0.xxyz, r3.yyyy  // r3.y <- col.x; r3.z <- col.y; r3.w <- col.z

#line 164
  movc r2.xyz, cb2[6].zzzz, r3.yzwy, r0.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 167
  mul r3.y, r1.w, r3.x  // r3.y <- col.w

#line 168
  movc r2.w, cb2[6].y, r3.y, r3.x  // r2.w <- col.w

#line 221
  break 

#line 222
  case l(2)

#line 156
  add r3.x, -cb2[5].z, cb2[5].y
  add r3.y, cb2[5].z, cb2[5].y
  add r3.y, r3.y, l(0.000100)
  add r3.y, -r3.x, r3.y
  add r3.x, r0.y, -r3.x
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.y
  mul_sat r3.x, r3.y, r3.x
  mad r3.y, r3.x, l(-2.000000), l(3.000000)
  mul r3.x, r3.x, r3.x
  mul r3.z, r3.x, r3.y  // r3.z <- col.w

#line 159
  mad r3.x, -r3.y, r3.x, l(1.000000)  // r3.x <- col.w

#line 160
  movc r3.x, cb2[6].x, r3.x, r3.z

#line 163
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
  sqrt r3.y, r3.y
  mul r3.yzw, r0.xxyz, r3.yyyy  // r3.y <- col.x; r3.z <- col.y; r3.w <- col.z

#line 164
  movc r2.xyz, cb2[6].zzzz, r3.yzwy, r0.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 167
  mul r3.y, r1.w, r3.x  // r3.y <- col.w

#line 168
  movc r2.w, cb2[6].y, r3.y, r3.x  // r2.w <- col.w

#line 223
  break 

#line 224
  case l(3)

#line 156
  add r3.x, -cb2[5].z, cb2[5].y
  add r3.y, cb2[5].z, cb2[5].y
  add r3.y, r3.y, l(0.000100)
  add r3.y, -r3.x, r3.y
  add r3.x, r0.z, -r3.x
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.y
  mul_sat r3.x, r3.y, r3.x
  mad r3.y, r3.x, l(-2.000000), l(3.000000)
  mul r3.x, r3.x, r3.x
  mul r3.z, r3.x, r3.y  // r3.z <- col.w

#line 159
  mad r3.x, -r3.y, r3.x, l(1.000000)  // r3.x <- col.w

#line 160
  movc r3.x, cb2[6].x, r3.x, r3.z

#line 163
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
  sqrt r3.y, r3.y
  mul r3.yzw, r0.xxyz, r3.yyyy  // r3.y <- col.x; r3.z <- col.y; r3.w <- col.z

#line 164
  movc r2.xyz, cb2[6].zzzz, r3.yzwy, r0.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 167
  mul r3.y, r1.w, r3.x  // r3.y <- col.w

#line 168
  movc r2.w, cb2[6].y, r3.y, r3.x  // r2.w <- col.w

#line 225
  break 

#line 226
  case l(4)

#line 183
  dp3 r3.x, r1.zxyz, l(0.330000, 0.590000, 0.110000, 0.000000)

#line 156
  add r3.y, -cb2[5].z, cb2[5].y
  add r3.z, cb2[5].z, cb2[5].y
  add r3.z, r3.z, l(0.000100)
  add r3.xz, -r3.yyyy, r3.xxzx
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.z
  mul_sat r3.x, r3.y, r3.x
  mad r3.y, r3.x, l(-2.000000), l(3.000000)
  mul r3.x, r3.x, r3.x
  mul r3.z, r3.x, r3.y  // r3.z <- col.w

#line 159
  mad r3.x, -r3.y, r3.x, l(1.000000)  // r3.x <- col.w

#line 160
  movc r3.x, cb2[6].x, r3.x, r3.z

#line 163
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
  sqrt r3.y, r3.y
  mul r3.yzw, r0.xxyz, r3.yyyy  // r3.y <- col.x; r3.z <- col.y; r3.w <- col.z

#line 164
  movc r2.xyz, cb2[6].zzzz, r3.yzwy, r0.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 167
  mul r3.y, r1.w, r3.x  // r3.y <- col.w

#line 168
  movc r2.w, cb2[6].y, r3.y, r3.x  // r2.w <- col.w

#line 227
  break 

#line 228
  case l(5)

#line 148
  lt r3.x, r1.x, r1.y
  movc r1.xy, r3.xxxx, r1.yxyy, r1.xyxx  // r1.x <- P.x; r1.y <- P.y

#line 149
  lt r3.x, r1.z, r1.x
  movc r1.xyz, r3.xxxx, r1.xyzx, r1.zyxz  // r1.x <- Q.x; r1.y <- Q.y; r1.z <- Q.w

#line 150
  min r1.y, r1.y, r1.z
  add r1.y, -r1.y, r1.x  // r1.y <- C

#line 174
  add r1.x, r1.x, l(0.000000)
  div r1.x, r1.y, r1.x  // r1.x <- S

#line 156
  add r1.y, -cb2[5].z, cb2[5].y
  add r1.z, cb2[5].z, cb2[5].y
  add r1.z, r1.z, l(0.000100)
  add r1.xz, -r1.yyyy, r1.xxzx
  div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.z
  mul_sat r1.x, r1.y, r1.x
  mad r1.y, r1.x, l(-2.000000), l(3.000000)
  mul r1.x, r1.x, r1.x
  mul r1.z, r1.x, r1.y  // r1.z <- col.w

#line 159
  mad r1.x, -r1.y, r1.x, l(1.000000)  // r1.x <- col.w

#line 160
  movc r1.x, cb2[6].x, r1.x, r1.z

#line 163
  div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.x
  sqrt r1.y, r1.y
  mul r3.xyz, r0.xyzx, r1.yyyy  // r3.x <- col.x; r3.y <- col.y; r3.z <- col.z

#line 164
  movc r2.xyz, cb2[6].zzzz, r3.xyzx, r0.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 167
  mul r1.y, r1.w, r1.x  // r1.y <- col.w

#line 168
  movc r2.w, cb2[6].y, r1.y, r1.x  // r2.w <- col.w

#line 229
  break 

#line 230
endswitch   // r2.x <- <Filter_id37 return value>.x; r2.y <- <Filter_id37 return value>.y; r2.z <- <Filter_id37 return value>.z; r2.w <- <Filter_id37 return value>.w

#line 239
add r1.xyzw, -r0.xyzw, r2.xyzw
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 248
ret 
// Approximately 139 instruction slots used
***************************
*************************/
static const float Epsilon_id83 = 0.0000000596;
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
    float4 InputValue_id95;
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
    int Type_id88;
    float Threshold_id89 = 0.3f;
    float Smooth_id90 = 0.1f;
    float AlphaBlur_id91 = 0.0f;
    bool Invert_id92 = false;
    bool SourceAlpha_id93 = false;
    bool Premultiply_id94 = false;
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
float3 RGBtoHCV_id11(in float3 RGB)
{
    float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
    float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
    float C = Q.x - min(Q.w, Q.y);
    float H = abs((Q.w - Q.y) / (6 * C + Epsilon_id83) + Q.z);
    return float3(H, C, Q.x);
}
float4 keyer_id30(float4 col, float4 map, float key)
{
    col.a = smoothstep(Threshold_id89 - Smooth_id90, Threshold_id89 + Smooth_id90 + .0001, key);
    if (Invert_id92)
    {
        col.a = 1 - col.a;
    }
    if (Premultiply_id94)
    {
        col.rgb *= sqrt(1. / col.a);
    }
    if (SourceAlpha_id93)
    {
        col.a *= map.a;
    }
    return col;
}
float3 RGBtoHSV_id12(in float3 RGB)
{
    float3 HCV = RGBtoHCV_id11(RGB);
    float S = HCV.y / (HCV.z + Epsilon_id83);
    return float3(HCV.x, S, HCV.z);
}
float4 KeySaturation_id36(float4 col, float4 map)
{
    return keyer_id30(col, map, RGBtoHSV_id12(map.xyz).y);
}
float4 KeyLuma_id35(float4 col, float4 map)
{
    return keyer_id30(col, map, dot(map.xyz, float3(.33, .59, .11)));
}
float4 KeyBlue_id34(float4 col, float4 map)
{
    return keyer_id30(col, map, col.b);
}
float4 KeyGreen_id33(float4 col, float4 map)
{
    return keyer_id30(col, map, col.g);
}
float4 KeyRed_id32(float4 col, float4 map)
{
    return keyer_id30(col, map, col.r);
}
float4 KeyAlpha_id31(float4 col, float4 map)
{
    return keyer_id30(col, map, col.a);
}
float4 mmap_id29(float2 uv, float2 R)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, uv, (saturate(AlphaBlur_id91) * log2(max(R.x, R.y))));
}
float4 Compute_id38()
{
    return InputValue_id95;
}
float4 Filter_id37(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float2 R = ViewSize_id77;
    float4 col = Texture0_id14.SampleLevel(Sampler0_id52, uv, 0);
    float4 map = mmap_id29(uv, R);
    switch ((uint)Type_id88 % 6)

    {
        case 0:
            return KeyAlpha_id31(col, map);
        case 1:
            return KeyRed_id32(col, map);
        case 2:
            return KeyGreen_id33(col, map);
        case 3:
            return KeyBlue_id34(col, map);
        case 4:
            return KeyLuma_id35(col, map);
        case 5:
            return KeySaturation_id36(col, map);
    }
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id37(streams, col), Compute_id38());
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

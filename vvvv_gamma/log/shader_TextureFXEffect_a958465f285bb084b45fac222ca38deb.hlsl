/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Resize_TextureFX
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
@C    Mode_id93 => Resize_TextureFX.Mode
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PointSampler_id43 => Texturing.PointSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (1-1)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    Resize_TextureFX => 45f5e58c85a454605c3eed55906782ee
@S    TextureFX => 27bb4f1f808a5eedf6dfeaa75c669c29
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    TextureUtils => 3b321ac8393acfe8eb5c1ca710073e6b
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
#line 244 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_a958465f285bb084b45fac222ca38deb.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 248
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 1ed62d2edf3958d5368d48728720329b
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
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
//   uint Mode_id93;                    // Offset:   80 Size:     4
//      = 0x00000001 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PointSampler_id43                 sampler      NA          NA             s0      1 
// LinearSampler_id44                sampler      NA          NA             s1      1 
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
dcl_sampler s1, mode_default
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
#line 216 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_a958465f285bb084b45fac222ca38deb.hlsl"
switch cb0[5].x

#line 219
  case l(0)

#line 220
  sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0  // r0.x <- <Shading_id43 return value>.x; r0.y <- <Shading_id43 return value>.y; r0.z <- <Shading_id43 return value>.z; r0.w <- <Shading_id43 return value>.w
  mov r1.x, l(-1)
  break 

#line 221
  case l(1)

#line 222
  sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s1  // r0.x <- <Shading_id43 return value>.x; r0.y <- <Shading_id43 return value>.y; r0.z <- <Shading_id43 return value>.z; r0.w <- <Shading_id43 return value>.w
  mov r1.x, l(-1)
  break 

#line 223
  case l(2)

#line 211
  resinfo_indexable(texture2d)(float,float,float,float) r1.yz, l(0), t0.zxyw  // r1.y <- w; r1.z <- h

#line 181
  div r2.xy, l(1.000000, 1.000000, 1.000000, 1.000000), r1.yzyy  // r2.x <- pix.x; r2.y <- pix.y

#line 182
  mad r1.yz, v1.xxyx, r1.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)  // r1.y <- w.x; r1.z <- w.y

#line 138
  frc r1.yz, r1.yyzy  // r1.z <- x

#line 139
  add r1.yz, -r1.yyzy, l(0.000000, 1.000000, 1.000000, 0.000000)

#line 140
  mul r3.xyzw, r1.yyzz, r1.yyzz  // r3.w <- x2

#line 141
  mul r4.xyzw, r1.yyyz, r3.yyyw  // r4.w <- x3

#line 143
  mul r5.xyzw, r3.xyzw, l(3.000000, 6.000000, 3.000000, 6.000000)

#line 142
  mad r3.xy, r3.xzxx, l(3.000000, 3.000000, 0.000000, 0.000000), -r4.zwzz
  mad r3.xy, -r1.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), r3.xyxx

#line 143
  mul r1.w, r4.z, l(0.166667)  // r1.w <- w3
  mad r3.zw, r4.xxxw, l(0.000000, 0.000000, 3.000000, 3.000000), -r5.yyyw

#line 142
  add r3.xyzw, r3.xyzw, l(1.000000, 1.000000, 4.000000, 4.000000)

#line 143
  mul r3.zw, r3.zzzw, l(0.000000, 0.000000, 0.166667, 0.166667)  // r3.w <- w1

#line 144
  mad r2.w, r4.y, l(-3.000000), r5.x
  mad r2.w, r1.y, l(3.000000), r2.w
  add r2.w, r2.w, l(1.000000)

#line 146
  mad r3.xy, r3.xyxx, l(0.166667, 0.166667, 0.000000, 0.000000), r3.zwzz
  div r3.zw, r3.zzzw, r3.xxxy
  add r3.zw, r1.yyyz, -r3.zzzw

#line 147
  mad r2.w, r2.w, l(0.166667), r1.w
  div r1.w, r1.w, r2.w
  add r1.w, r1.w, l(1.000000)
  add r1.y, -r1.y, r1.w  // r1.y <- h1; r1.y <- h1

#line 145
  mul r1.w, r4.w, l(0.166667)  // r1.w <- w3

#line 144
  mad r2.w, r4.w, l(-3.000000), r5.z
  mad r2.w, r1.z, l(3.000000), r2.w
  add r2.w, r2.w, l(1.000000)

#line 146
  add r3.zw, r3.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)  // r3.w <- h0

#line 147
  mad r2.w, r2.w, l(0.166667), r1.w
  div r1.w, r1.w, r2.w
  add r1.w, r1.w, l(1.000000)
  add r1.z, -r1.z, r1.w  // r1.z <- h1

#line 187
  mul r4.x, r2.x, r3.z

#line 188
  mov r4.yw, l(0,0,0,0)

#line 187
  add r4.xy, r4.xyxx, v1.xyxx  // r4.x <- coord_source10.x; r4.y <- coord_source10.y

#line 188
  mul r4.z, r2.x, r1.y
  add r1.yw, -r4.zzzw, v1.xxxy  // r1.y <- coord_source00.x; r1.w <- coord_source00.y

#line 189
  mov r2.z, l(0)
  mad r2.xw, r3.wwww, r2.zzzy, r4.xxxy  // r2.x <- coord_source11.x; r2.w <- coord_source11.y

#line 190
  mad r3.zw, r3.wwww, r2.zzzy, r1.yyyw  // r3.z <- coord_source01.x; r3.w <- coord_source01.y

#line 191
  mad r4.xy, -r1.zzzz, r2.zyzz, r4.xyxx

#line 192
  mad r1.yz, -r1.zzzz, r2.zzyz, r1.yywy  // r1.z <- coord_source00.y

#line 193
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r1.yzyy, t0.xyzw, s1, l(0.000000)  // r5.x <- tex_source00.x; r5.y <- tex_source00.y; r5.z <- tex_source00.z; r5.w <- tex_source00.w

#line 194
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.xyxx, t0.xyzw, s1, l(0.000000)  // r4.x <- tex_source10.x; r4.y <- tex_source10.y; r4.z <- tex_source10.z; r4.w <- tex_source10.w

#line 195
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyzw, r3.zwzz, t0.xyzw, s1, l(0.000000)  // r6.x <- tex_source01.x; r6.y <- tex_source01.y; r6.z <- tex_source01.z; r6.w <- tex_source01.w

#line 196
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xwxx, t0.xyzw, s1, l(0.000000)  // r2.x <- tex_source11.x; r2.y <- tex_source11.y; r2.z <- tex_source11.z; r2.w <- tex_source11.w

#line 197
  add r6.xyzw, -r5.xyzw, r6.xyzw
  mad r5.xyzw, r3.yyyy, r6.xyzw, r5.xyzw

#line 198
  add r2.xyzw, -r4.xyzw, r2.xyzw
  mad r2.xyzw, r3.yyyy, r2.xyzw, r4.xyzw  // r2.x <- tex_source10.x; r2.y <- tex_source10.y; r2.z <- tex_source10.z; r2.w <- tex_source10.w

#line 199
  add r2.xyzw, -r5.xyzw, r2.xyzw
  mad r0.xyzw, r3.xxxx, r2.xyzw, r5.xyzw  // r0.x <- tex_source00.x; r0.y <- tex_source00.y; r0.z <- tex_source00.z; r0.w <- tex_source00.w

#line 224
  mov r1.x, l(-1)
  break 

#line 225
  case l(3)

#line 205
  resinfo_indexable(texture2d)(float,float,float,float) r1.yz, l(0), t0.zxyw  // r1.y <- w; r1.z <- h

#line 153
  mad r2.xy, v1.xyxx, r1.yzyy, l(-0.500000, -0.500000, 0.000000, 0.000000)
  round_ni r2.xy, r2.xyxx

#line 161
  add r3.xyzw, r2.xyxy, l(0.500000, 0.500000, -0.500000, -0.500000)  // r3.x <- texPos1.x; r3.y <- texPos1.y; r3.z <- texPos0.x; r3.w <- texPos0.y

#line 154
  mad r4.xyzw, v1.xyxy, r1.yzyz, -r3.xyxy  // r4.z <- f.x; r4.w <- f.y

#line 157
  mad r5.xyzw, -r4.zwzw, l(0.500000, 0.500000, 1.500000, 1.500000), l(1.000000, 1.000000, 2.000000, 2.000000)
  mad r5.xyzw, r4.zwzw, r5.xyzw, l(-0.500000, -0.500000, 0.500000, 0.500000)

#line 156
  mul r6.xyzw, r4.zwzw, r4.zwzw

#line 158
  mad r7.xyzw, r4.zwzw, l(1.500000, 1.500000, 0.500000, 0.500000), l(-2.500000, -2.500000, -0.500000, -0.500000)
  mul r2.zw, r6.zzzw, r7.zzzw  // r2.z <- w3.x; r2.w <- w3.y

#line 156
  mad r6.xy, r6.xyxx, r7.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)  // r6.x <- w1.x; r6.y <- w1.y

#line 157
  mul r7.xyzw, r4.xyzw, r5.xyzw  // r7.x <- w0.x; r7.y <- w0.y; r7.z <- w2.x; r7.w <- w2.y

#line 159
  mad r4.xy, r4.zwzz, r5.zwzz, r6.xyxx  // r4.x <- w12.x; r4.y <- w12.y

#line 160
  div r4.zw, r7.zzzw, r4.xxxy  // r4.z <- offset12.x; r4.w <- offset12.y

#line 162
  add r2.xy, r2.xyxx, l(2.500000, 2.500000, 0.000000, 0.000000)  // r2.x <- texPos3.x; r2.y <- texPos3.y

#line 163
  add r3.xy, r3.xyxx, r4.zwzz  // r3.x <- texPos12.x; r3.y <- texPos12.y

#line 165
  div r6.xy, r2.xyxx, r1.yzyy  // r6.x <- texPos3.x; r6.y <- texPos3.y

#line 164
  div r5.xyzw, r3.zyxw, r1.yzyz  // r5.x <- texPos0.x; r5.w <- texPos0.y; r5.y <- texPos12.y; r5.z <- texPos12.x

#line 168
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r5.xwxx, t0.xyzw, s1, l(0.000000)
  mul r3.xyzw, r7.xxxx, r3.xyzw

#line 169
  sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.zwzz, t0.xyzw, s1, l(0.000000)
  mul r8.xyzw, r4.xxxx, r8.xyzw
  mul r8.xyzw, r7.yyyy, r8.xyzw
  mad r3.xyzw, r3.xyzw, r7.yyyy, r8.xyzw  // r3.x <- result.x; r3.y <- result.y; r3.z <- result.z; r3.w <- result.w

#line 173
  mov r6.zw, r5.wwwy

#line 170
  sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r6.xzxx, t0.xyzw, s1, l(0.000000)
  mul r8.xyzw, r2.zzzz, r8.xyzw
  mad r3.xyzw, r8.xyzw, r7.yyyy, r3.xyzw

#line 171
  sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.xyxx, t0.xyzw, s1, l(0.000000)
  mul r8.xyzw, r7.xxxx, r8.xyzw
  mad r3.xyzw, r8.xyzw, r4.yyyy, r3.xyzw

#line 172
  sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.zyzz, t0.xyzw, s1, l(0.000000)
  mul r8.xyzw, r4.xxxx, r8.xyzw
  mad r3.xyzw, r8.xyzw, r4.yyyy, r3.xyzw

#line 173
  sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r6.xwxx, t0.xyzw, s1, l(0.000000)
  mul r8.xyzw, r2.zzzz, r8.xyzw
  mad r3.xyzw, r8.xyzw, r4.yyyy, r3.xyzw

#line 174
  mov r5.y, r6.y
  sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.xyxx, t0.xyzw, s1, l(0.000000)
  mul r7.xyzw, r7.xxxx, r8.xyzw
  mad r3.xyzw, r7.xyzw, r2.wwww, r3.xyzw

#line 175
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r5.zyzz, t0.xyzw, s1, l(0.000000)
  mul r4.xyzw, r4.xxxx, r5.xyzw
  mad r3.xyzw, r4.xyzw, r2.wwww, r3.xyzw

#line 176
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r6.xyxx, t0.xyzw, s1, l(0.000000)
  mul r4.xyzw, r2.zzzz, r4.xyzw
  mad r0.xyzw, r4.xyzw, r2.wwww, r3.xyzw  // r0.x <- result.x; r0.y <- result.y; r0.z <- result.z; r0.w <- result.w

#line 226
  mov r1.x, l(-1)
  break 

#line 227
  default 
  mov r1.x, l(0)
  break 
endswitch   // r0.x <- <Shading_id43 return value>.x; r0.y <- <Shading_id43 return value>.y; r0.z <- <Shading_id43 return value>.z; r0.w <- <Shading_id43 return value>.w

#line 228
movc o0.xyzw, r1.xxxx, r0.xyzw, l(1.000000,1.000000,1.000000,1.000000)

#line 237
ret 
// Approximately 121 instruction slots used
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
    uint Mode_id93 = 1;
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
Texture2D BicubicFilterKernel_id87;
float3 BSplineFilter_id31(float x)
{
    x = frac(x);
    x = 1 - x;
    float x2 = x * x;
    float x3 = x2 * x;
    float w0 = (-x3 + 3 * x2 - 3 * x + 1) / 6.0;
    float w1 = (3 * x3 - 6 * x2 + 4) / 6.0;
    float w2 = (-3 * x3 + 3 * x2 + 3 * x + 1) / 6.0;
    float w3 = x3 / 6.0;
    float h0 = 1 - w1 / (w0 + w1) + x;
    float h1 = 1 + w3 / (w2 + w3) - x;
    return float3(h0, h1, w0 + w1);
}
float4 SampleTextureCatmullRom_id34(in Texture2D tex, in SamplerState linearSampler, in float2 uv, in float2 texSize)
{
    float2 samplePos = uv * texSize;
    float2 texPos1 = floor(samplePos - 0.5f) + 0.5f;
    float2 f = samplePos - texPos1;
    float2 w0 = f * (-0.5f + f * (1.0f - 0.5f * f));
    float2 w1 = 1.0f + f * f * (-2.5f + 1.5f * f);
    float2 w2 = f * (0.5f + f * (2.0f - 1.5f * f));
    float2 w3 = f * f * (-0.5f + 0.5f * f);
    float2 w12 = w1 + w2;
    float2 offset12 = w2 / w12;
    float2 texPos0 = texPos1 - 1;
    float2 texPos3 = texPos1 + 2;
    float2 texPos12 = texPos1 + offset12;
    texPos0 /= texSize;
    texPos3 /= texSize;
    texPos12 /= texSize;
    float4 result = 0.0f;
    result += tex.SampleLevel(linearSampler, float2(texPos0.x, texPos0.y), 0.0f) * w0.x * w0.y;
    result += tex.SampleLevel(linearSampler, float2(texPos12.x, texPos0.y), 0.0f) * w12.x * w0.y;
    result += tex.SampleLevel(linearSampler, float2(texPos3.x, texPos0.y), 0.0f) * w3.x * w0.y;
    result += tex.SampleLevel(linearSampler, float2(texPos0.x, texPos12.y), 0.0f) * w0.x * w12.y;
    result += tex.SampleLevel(linearSampler, float2(texPos12.x, texPos12.y), 0.0f) * w12.x * w12.y;
    result += tex.SampleLevel(linearSampler, float2(texPos3.x, texPos12.y), 0.0f) * w3.x * w12.y;
    result += tex.SampleLevel(linearSampler, float2(texPos0.x, texPos3.y), 0.0f) * w0.x * w3.y;
    result += tex.SampleLevel(linearSampler, float2(texPos12.x, texPos3.y), 0.0f) * w12.x * w3.y;
    result += tex.SampleLevel(linearSampler, float2(texPos3.x, texPos3.y), 0.0f) * w3.x * w3.y;
    return result;
}
float4 SampleTextureBicubic_id29(in Texture2D tex, in SamplerState linearSampler, in float2 uv, in float2 texSize)
{
    float2 pix = 1.0 / texSize;
    float2 w = uv * texSize - 0.5;
    float3 hg_x = BSplineFilter_id31(w.x);
    float3 hg_y = BSplineFilter_id31(w.y);
    float2 e_x = float2(pix.x, 0);
    float2 e_y = float2(0, pix.y);
    float2 coord_source10 = uv + hg_x.x * e_x;
    float2 coord_source00 = uv - hg_x.y * e_x;
    float2 coord_source11 = coord_source10 + hg_y.x * e_y;
    float2 coord_source01 = coord_source00 + hg_y.x * e_y;
    coord_source10 = coord_source10 - hg_y.y * e_y;
    coord_source00 = coord_source00 - hg_y.y * e_y;
    float4 tex_source00 = tex.SampleLevel(linearSampler, coord_source00, 0);
    float4 tex_source10 = tex.SampleLevel(linearSampler, coord_source10, 0);
    float4 tex_source01 = tex.SampleLevel(linearSampler, coord_source01, 0);
    float4 tex_source11 = tex.SampleLevel(linearSampler, coord_source11, 0);
    tex_source00 = lerp(tex_source00, tex_source01, hg_y.z);
    tex_source10 = lerp(tex_source10, tex_source11, hg_y.z);
    tex_source00 = lerp(tex_source00, tex_source10, hg_x.z);
    return tex_source00;
}
float4 SampleCubicCatmullRom_id35(in Texture2D tex, in SamplerState linearSampler, in float2 uv)
{
    float w, h;
    tex.GetDimensions(w, h);
    return SampleTextureCatmullRom_id34(tex, linearSampler, uv, float2(w, h));
}
float4 SampleCubicBSpline_id30(in Texture2D tex, in SamplerState linearSampler, in float2 uv)
{
    float w, h;
    tex.GetDimensions(w, h);
    return SampleTextureBicubic_id29(tex, linearSampler, uv, float2(w, h));
}
float4 Shading_id43(inout PS_STREAMS streams)
{
    switch (Mode_id93)

    {
        case 0:
            return Texture0_id14.Sample(PointSampler_id43, streams.TexCoord_id62);
        case 1:
            return Texture0_id14.Sample(LinearSampler_id44, streams.TexCoord_id62);
        case 2:
            return SampleCubicBSpline_id30(Texture0_id14, LinearSampler_id44, streams.TexCoord_id62);
        case 3:
            return SampleCubicCatmullRom_id35(Texture0_id14, LinearSampler_id44, streams.TexCoord_id62);
    }
    return 1;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id43(streams);
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

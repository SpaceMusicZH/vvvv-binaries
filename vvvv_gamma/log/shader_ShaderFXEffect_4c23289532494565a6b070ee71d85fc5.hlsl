/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMBoxImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
@P ShadingColor0: ComputeColor
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id30 => Transformation.World
@C    WorldInverse_id31 => Transformation.WorldInverse
@C    WorldInverseTranspose_id32 => Transformation.WorldInverseTranspose
@C    WorldView_id33 => Transformation.WorldView
@C    WorldViewInverse_id34 => Transformation.WorldViewInverse
@C    WorldViewProjection_id35 => Transformation.WorldViewProjection
@C    WorldScale_id36 => Transformation.WorldScale
@C    EyeMS_id37 => Transformation.EyeMS
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id105 => SMBoxImpostor_ShaderFX.ParticleSize
cbuffer PerView [Size: 352]
@C    View_id23 => Transformation.View
@C    ViewInverse_id24 => Transformation.ViewInverse
@C    Projection_id25 => Transformation.Projection
@C    ProjectionInverse_id26 => Transformation.ProjectionInverse
@C    ViewProjection_id27 => Transformation.ViewProjection
@C    ProjScreenRay_id28 => Transformation.ProjScreenRay
@C    Eye_id29 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id104 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id104 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id104 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    SMBoxImpostor_ShaderFX => 97707c6c4db6de5bb09491109bc1ab96
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalBase => b2b31addde884722f942622026837c39
@S    NormalUpdate => 6fd3c9b8fa943d9951400645fe40502e
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    TransformUtils => 651146ed53d019a2c2c72b489f9cff84
@S    HappyTransform => 40e380fb8141f7a8a6b741a8bd03a993
***************************
*****     Stages      *****
***************************
@G    Vertex => 960d5a33030250e0d9532c42d83f2afb
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VertexID              0   x           0   VERTID    uint   x   
// POSITION                 0   xyzw        1     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VID_ID108_SEM            0   x           0     NONE    uint   x   
// SV_Position              0   xyzw        1      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_input v1.xyzw
dcl_output o0.x
dcl_output_siv o1.xyzw, position
//
// Initial variable locations:
//   v0.x <- __input__.VertexID_id107; 
//   v1.x <- __input__.Position_id15.x; v1.y <- __input__.Position_id15.y; v1.z <- __input__.Position_id15.z; v1.w <- __input__.Position_id15.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id108
//
#line 316 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_4c23289532494565a6b070ee71d85fc5.hlsl"
mov o0.x, v0.x
mov o1.xyzw, v1.xyzw
ret 
// Approximately 3 instruction slots used
@G    Geometry => c862c225c9ea3df43c3f82107e712f3f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id30;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id31;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id32;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id33;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id34;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id35; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id36;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id37;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id105;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id23;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id24;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id25;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id26;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id27;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id28;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id29;                   // Offset:  336 Size:    16
//
// }
//
// Resource bind info for ParticlesBuffer_id104
// {
//
//   struct SMGridParticle
//   {
//       
//       float3 Pos;                    // Offset:    0
//       float3 Vel;                    // Offset:   12
//       float3 Rot;                    // Offset:   24
//       float3 Size;                   // Offset:   36
//       float3 Col;                    // Offset:   48
//       float Mesh;                    // Offset:   60
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// ParticlesBuffer_id104             texture  struct         r/o             t0      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerMaterial                       cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VID_ID108_SEM            0   x           0     NONE    uint   x   
// SV_Position              0   xyzw        1      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[22], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v[1][0].x
dcl_input_siv v[1][1].xyzw, position
dcl_temps 9
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output_siv o0.xyzw, position
dcl_maxout 12
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].VID_id108; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w
//
#line 283 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_4c23289532494565a6b070ee71d85fc5.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v[0][0].x, l(24), t0.xyzw  // r0.x <- p.Rot.x; r0.y <- p.Rot.y; r0.z <- p.Rot.z; r0.w <- p.Size.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xy, v[0][0].x, l(40), t0.xyxx  // r1.x <- p.Size.y; r1.y <- p.Size.z

#line 285
mov r1.z, r0.w
mul r1.xyz, r1.zxyz, cb1[0].xxxx  // r1.x <- streams.PSize_id106.x; r1.y <- streams.PSize_id106.y; r1.z <- streams.PSize_id106.z

#line 286
dp3 r0.w, r1.xyzx, r1.xyzx
ge r0.w, l(0.000000), r0.w
if_nz r0.w

#line 287
  ret 
endif 

#line 283
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, v[0][0].x, l(0), t0.xyzx  // r2.x <- p.Pos.x; r2.y <- p.Pos.y; r2.z <- p.Pos.z

#line 252
mul r0.xyz, r0.xyzx, l(-6.283185, 6.283185, -6.283185, 0.000000)  // r0.x <- z.x; r0.y <- z.y; r0.z <- z.z

#line 253
sincos r0.xyz, r3.xyz, r0.xyzx  // r3.x <- x.x; r3.y <- x.y; r3.z <- x.z; r0.x <- y.x; r0.y <- y.y; r0.z <- y.z

#line 254
mul r4.xyz, r3.zzyz, r3.yxxy  // r4.y <- <rot3x3_id51 return value>._m11; r4.z <- <rot3x3_id51 return value>._m22
mul r0.w, r0.y, r0.x
mad r5.x, r0.w, r0.z, r4.x  // r5.x <- <rot3x3_id51 return value>._m00
mul r5.y, r0.z, -r3.x  // r5.y <- <rot3x3_id51 return value>._m01
mul r6.xyzw, r0.xyzy, r3.yzyx  // r6.w <- <rot3x3_id51 return value>._m20

#line 295
mov r7.xy, r6.ywyy
mov r7.z, r0.x
mov r7.w, r4.z

#line 254
mad r5.z, r6.x, r0.z, -r7.x  // r5.z <- <rot3x3_id51 return value>._m02
mad r4.x, -r0.w, r3.z, r6.z  // r4.x <- <rot3x3_id51 return value>._m10
mul r0.x, r3.z, r6.x
mad r4.z, -r0.y, r0.z, -r0.x  // r4.z <- <rot3x3_id51 return value>._m12

#line 292
add r0.xyz, -r2.xyzx, cb2[21].xyzx  // r0.x <- viewDir.x; r0.y <- viewDir.y; r0.z <- viewDir.z

#line 293
dp3 r0.w, r0.xyzx, r7.yzwy
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 235
  mov r3.w, l(1.000000)

#line 227
  mov r0.w, l(0)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(4)
    breakc_nz r1.w

#line 195
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 196
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id75 return value>.x; r6.y <- <CubeVert_id75 return value>.y; r6.z <- <CubeVert_id75 return value>.z

#line 232
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 233
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 234
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 235
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 239
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 245
    mov o0.x, r1.w
    mov o0.y, r2.w
    mov o0.z, r3.x
    mov o0.w, r3.y
    emit_stream m0

#line 247
    iadd r0.w, r0.w, l(1)
  endloop 

#line 248
  cut_stream m0

#line 294
endif 

#line 295
dp3 r0.w, r0.xyzx, -r7.yzwy
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 233
  mov r4.w, r4.y

#line 235
  mov r3.w, l(1.000000)

#line 227
  mov r0.w, l(4)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(8)
    breakc_nz r1.w

#line 195
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 196
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id75 return value>.x; r6.y <- <CubeVert_id75 return value>.y; r6.z <- <CubeVert_id75 return value>.z

#line 232
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 233
    mul r6.xyw, r4.xwxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 234
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 235
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 239
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 245
    mov o0.x, r1.w
    mov o0.y, r2.w
    mov o0.z, r3.x
    mov o0.w, r3.y
    emit_stream m0

#line 247
    iadd r0.w, r0.w, l(1)
  endloop 

#line 248
  cut_stream m0

#line 296
endif 

#line 297
dp3 r0.w, r0.xyzx, r4.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 235
  mov r3.w, l(1.000000)

#line 227
  mov r0.w, l(8)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(12)
    breakc_nz r1.w

#line 195
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 196
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id75 return value>.x; r6.y <- <CubeVert_id75 return value>.y; r6.z <- <CubeVert_id75 return value>.z

#line 232
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 233
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 234
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 235
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 239
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 245
    mov o0.x, r1.w
    mov o0.y, r2.w
    mov o0.z, r3.x
    mov o0.w, r3.y
    emit_stream m0

#line 247
    iadd r0.w, r0.w, l(1)
  endloop 

#line 248
  cut_stream m0

#line 298
endif 

#line 299
dp3 r0.w, r0.xyzx, -r4.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 235
  mov r3.w, l(1.000000)

#line 227
  mov r0.w, l(12)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(16)
    breakc_nz r1.w

#line 195
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 196
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id75 return value>.x; r6.y <- <CubeVert_id75 return value>.y; r6.z <- <CubeVert_id75 return value>.z

#line 232
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 233
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 234
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 235
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 239
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 245
    mov o0.x, r1.w
    mov o0.y, r2.w
    mov o0.z, r3.x
    mov o0.w, r3.y
    emit_stream m0

#line 247
    iadd r0.w, r0.w, l(1)
  endloop 

#line 248
  cut_stream m0

#line 300
endif 

#line 301
dp3 r0.w, r0.xyzx, r5.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 235
  mov r3.w, l(1.000000)

#line 227
  mov r0.w, l(16)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(20)
    breakc_nz r1.w

#line 195
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 196
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id75 return value>.x; r6.y <- <CubeVert_id75 return value>.y; r6.z <- <CubeVert_id75 return value>.z

#line 232
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 233
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 234
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 235
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 239
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 245
    mov o0.x, r1.w
    mov o0.y, r2.w
    mov o0.z, r3.x
    mov o0.w, r3.y
    emit_stream m0

#line 247
    iadd r0.w, r0.w, l(1)
  endloop 

#line 248
  cut_stream m0

#line 302
endif 

#line 303
dp3 r0.x, r0.xyzx, -r5.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 235
  mov r0.w, l(1.000000)

#line 227
  mov r1.w, l(20)  // r1.w <- i
  loop 
    uge r2.w, r1.w, l(24)
    breakc_nz r2.w

#line 195
    ishl r2.w, l(1), r1.w  // r2.w <- b

#line 196
    and r3.xyz, r2.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r3.xyz, r3.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r3.x <- <CubeVert_id75 return value>.x; r3.y <- <CubeVert_id75 return value>.y; r3.z <- <CubeVert_id75 return value>.z

#line 232
    mul r6.xyz, r5.xyzx, r3.xxxx
    mad r6.xyz, r6.xyzx, r1.xxxx, r2.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 233
    mul r3.xyw, r4.xyxz, r3.yyyy
    mad r3.xyw, r3.xyxw, r1.yyyy, r6.xyxz  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.w <- posWorld.z

#line 234
    mul r6.xyz, r7.yzwy, r3.zzzz
    mad r0.xyz, r6.xyzx, r1.zzzz, r3.xywx  // r0.x <- posWorld.x; r0.y <- posWorld.y; r0.z <- posWorld.z

#line 235
    dp4 r3.x, r0.xyzw, cb0[0].xyzw  // r3.x <- posWorld.x
    dp4 r3.y, r0.xyzw, cb0[1].xyzw  // r3.y <- posWorld.y
    dp4 r3.z, r0.xyzw, cb0[2].xyzw  // r3.z <- posWorld.z
    dp4 r3.w, r0.xyzw, cb0[3].xyzw  // r3.w <- posWorld.w

#line 239
    dp4 r0.x, r3.xyzw, cb2[16].xyzw  // r0.x <- streams.ShadingPosition_id0.x
    dp4 r0.y, r3.xyzw, cb2[17].xyzw  // r0.y <- streams.ShadingPosition_id0.y
    dp4 r0.z, r3.xyzw, cb2[18].xyzw  // r0.z <- streams.ShadingPosition_id0.z
    dp4 r2.w, r3.xyzw, cb2[19].xyzw  // r2.w <- streams.ShadingPosition_id0.w

#line 245
    mov o0.x, r0.x
    mov o0.y, r0.y
    mov o0.z, r0.z
    mov o0.w, r2.w
    emit_stream m0

#line 247
    iadd r1.w, r1.w, l(1)
  endloop 

#line 248
  cut_stream m0

#line 304
endif 

#line 305
ret 
// Approximately 231 instruction slots used
@G    Pixel => 1e4661860b473dbad885e3752643153d
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
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
dcl_output o0.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 274 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_4c23289532494565a6b070ee71d85fc5.hlsl"
mov o0.xyzw, l(0,0,0,0)
ret 
// Approximately 2 instruction slots used
***************************
*************************/
static const float2 QuadUV_id102[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_STREAMS 
{
    uint VID_id108;
    float4 PositionWS_id16;
    float3 PSize_id106;
    float2 TexCoord_id86;
    float3 normalWS_id21;
    float3 meshNormalWS_id19;
    float DepthVS_id17;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    uint VID_id108 : VID_ID108_SEM;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    uint VertexID_id107;
    float4 Position_id15;
    uint InstanceID_id13;
    uint VID_id108;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    uint VID_id108 : VID_ID108_SEM;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    uint VertexID_id107 : SV_VertexID;
    float4 Position_id15 : POSITION;
};
struct SMGridParticle 
{
    float3 Pos;
    float3 Vel;
    float3 Rot;
    float3 Size;
    float3 Col;
    float Mesh;
};
cbuffer PerDraw 
{
    float4x4 World_id30;
    float4x4 WorldInverse_id31;
    float4x4 WorldInverseTranspose_id32;
    float4x4 WorldView_id33;
    float4x4 WorldViewInverse_id34;
    float4x4 WorldViewProjection_id35;
    float3 WorldScale_id36;
    float4 EyeMS_id37;
};
cbuffer PerMaterial 
{
    float ParticleSize_id105 = 0.1;
};
cbuffer PerView 
{
    float4x4 View_id23;
    float4x4 ViewInverse_id24;
    float4x4 Projection_id25;
    float4x4 ProjectionInverse_id26;
    float4x4 ViewProjection_id27;
    float2 ProjScreenRay_id28;
    float4 Eye_id29;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id39;
    float2 Texture1TexelSize_id41;
    float2 Texture2TexelSize_id43;
    float2 Texture3TexelSize_id45;
    float2 Texture4TexelSize_id47;
    float2 Texture5TexelSize_id49;
    float2 Texture6TexelSize_id51;
    float2 Texture7TexelSize_id53;
    float2 Texture8TexelSize_id55;
    float2 Texture9TexelSize_id57;
};
Texture2D Texture0_id38;
Texture2D Texture1_id40;
Texture2D Texture2_id42;
Texture2D Texture3_id44;
Texture2D Texture4_id46;
Texture2D Texture5_id48;
Texture2D Texture6_id50;
Texture2D Texture7_id52;
Texture2D Texture8_id54;
Texture2D Texture9_id56;
TextureCube TextureCube0_id58;
TextureCube TextureCube1_id59;
TextureCube TextureCube2_id60;
TextureCube TextureCube3_id61;
Texture3D Texture3D0_id62;
Texture3D Texture3D1_id63;
Texture3D Texture3D2_id64;
Texture3D Texture3D3_id65;
SamplerState Sampler_id66;
SamplerState PointSampler_id67 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id68 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id69 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id70 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id71 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id72 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id73 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id74 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id75 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id76;
SamplerState Sampler1_id77;
SamplerState Sampler2_id78;
SamplerState Sampler3_id79;
SamplerState Sampler4_id80;
SamplerState Sampler5_id81;
SamplerState Sampler6_id82;
SamplerState Sampler7_id83;
SamplerState Sampler8_id84;
SamplerState Sampler9_id85;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id104;
float4 Compute_id77()
{
    return 0;
}
float4 Shading_id2()
{
    return Compute_id77();
}
float4 Shading_id16()
{
    return Shading_id2();
}
void PSMain_id1()
{
}
float3 CubeVert_id75(in uint vertexID)
{
    uint b = 1 << vertexID;
    return float3((0xFA55A & b) != 0, (0x5A0F33 & b) != 0, (0x33330F & b) != 0) - 0.5;
}
void PostTransformPosition_id73(inout VS_STREAMS streams)
{
    streams.VID_id108 = streams.VertexID_id107;
    streams.InstanceID_id13 = streams.VertexID_id107;
    streams.ShadingPosition_id0 = streams.Position_id15;
}
void TransformPosition_id72()
{
}
void PreTransformPosition_id71()
{
}
void GenerateNormal_VS_id74()
{
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id16();
}
void GenerateNormal_PS_id5()
{
}
void SpawnQuad_id76(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, SMGridParticle p, float3 AxisX, float3 AxisY, float3 AxisZ)
{

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id86 = QuadUV_id102[i % 4].xy;
        float4 posWorld = float4(p.Pos, 1);
        float3 qPos = CubeVert_id75(i);
        posWorld.xyz += qPos.x * AxisX * streams.PSize_id106.x;
        posWorld.xyz += qPos.y * AxisY * streams.PSize_id106.y;
        posWorld.xyz += qPos.z * AxisZ * streams.PSize_id106.z;
        posWorld = mul(posWorld, World_id30);
        streams.PositionWS_id16 = posWorld;
        streams.normalWS_id21 = normal;
        streams.meshNormalWS_id19 = normal;
        streams.ShadingPosition_id0 = mul(posWorld, ViewProjection_id27);
        streams.DepthVS_id17 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
}
float3x3 rot3x3_id51(float3 rotation)
{
    float3 z = float3(-rotation.x, rotation.y, -rotation.z) * acos(-1) * 2;
    float3 x = cos(z), y = sin(z);
    return float3x3(x.y * x.z + y.x * y.y * y.z, -x.x * y.z, y.x * x.y * y.z - y.y * x.z, x.y * y.z - y.x * y.y * x.z, x.x * x.z, -y.y * y.z - y.x * x.y * x.z, x.x * y.y, y.x, x.x * x.y);
}
void BaseTransformVS_id15(inout VS_STREAMS streams)
{
    PreTransformPosition_id71();
    TransformPosition_id72();
    PostTransformPosition_id73(streams);
}
void VSMain_id10()
{
    VSMain_id0();
    GenerateNormal_VS_id74();
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    GenerateNormal_PS_id5();
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(12)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id108 = input[0].VID_id108;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    uint id = streams.VID_id108;
    SMGridParticle p = ParticlesBuffer_id104[id];
    streams.PositionWS_id16 = float4(p.Pos.xyz, 1);
    streams.PSize_id106 = p.Size * ParticleSize_id105;
    if (dot(streams.PSize_id106, streams.PSize_id106) <= 0)
        return;
    float3x3 or = rot3x3_id51(p.Rot);
    float3 AxisX = or._m00_m01_m02;
    float3 AxisY = or._m10_m11_m12;
    float3 AxisZ = or._m20_m21_m22;
    float3 viewDir = Eye_id29.xyz - p.Pos;
    if (dot(viewDir, AxisZ) > 0)
        SpawnQuad_id76(streams, 0, triangleStream, AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisZ) > 0)
        SpawnQuad_id76(streams, 4, triangleStream, -AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisY) > 0)
        SpawnQuad_id76(streams, 8, triangleStream, AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisY) > 0)
        SpawnQuad_id76(streams, 12, triangleStream, -AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisX) > 0)
        SpawnQuad_id76(streams, 16, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisX) > 0)
        SpawnQuad_id76(streams, 20, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id107 = __input__.VertexID_id107;
    streams.Position_id15 = __input__.Position_id15;
    VSMain_id10();
    BaseTransformVS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id108 = streams.VID_id108;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}

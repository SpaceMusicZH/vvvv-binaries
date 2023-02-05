/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin BoxGeomExt_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@R    Particles_id98 => ParticleBuffer.Particles [Stage: None, Slot: (-1--1)]
@R    Particles_id98 => ParticleBuffer.Particles [Stage: None, Slot: (-1--1)]
@R    Particles_id98 => ParticleBuffer.Particles [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerView => PerView [Stage: Geometry, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    BoxGeomExt_ShaderFX => e49733cba5e3750bed8a8797dd47ef02
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
@S    VertexIDStream => 9d1d889df6ab3d2e141f4e6e5d369333
@S    ParticleBuffer => a64a4612fd198ca64a3658584f8219de
***************************
*****     Stages      *****
***************************
@G    Vertex => c2d7179366b2b7df8a71985751ec4d16
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
// SV_VertexID              0   x           1   VERTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// VERTEXID_ID97_SEM        0   x           1     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyzw
dcl_input_sgv v1.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.x
//
// Initial variable locations:
//   v0.x <- __input__.Position_id15.x; v0.y <- __input__.Position_id15.y; v0.z <- __input__.Position_id15.z; v0.w <- __input__.Position_id15.w; 
//   v1.x <- __input__.VertexID_VS_id96; 
//   o1.x <- <VSMain return value>.VertexID_id97; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 297 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_f8965f4a8c229787f24850ad2d1cc02b.hlsl"
mov o0.xyzw, v0.xyzw
mov o1.x, v1.x
ret 
// Approximately 3 instruction slots used
@G    Geometry => c8275958985baf2523e777597691b18e
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
// cbuffer PerView
// {
//
//   float4x4 View_id23;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id24;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id25;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id26;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id27;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id28;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id29;                   // Offset:  336 Size:    16 [unused]
//
// }
//
// Resource bind info for Particles_id98
// {
//
//   struct Particle
//   {
//       
//       float3 Velocity;               // Offset:    0
//       float3 Position;               // Offset:   12
//       float4 Color;                  // Offset:   24
//       float Drag;                    // Offset:   40
//       int Cycle;                     // Offset:   44
//       float Age;                     // Offset:   48
//       float LifeTime;                // Offset:   52
//       int Id;                        // Offset:   56
//       float3 AxisY;                  // Offset:   60
//       float3 AxisX;                  // Offset:   72
//       float3 AxisZ;                  // Offset:   84
//       float3 Size3;                  // Offset:   96
//
//   } $Element;                        // Offset:    0 Size:   108
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Particles_id98                    texture  struct         r/o             t0      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// VERTEXID_ID97_SEM        0   x           1     NONE    uint   x   
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
dcl_immediateConstantBuffer { { -1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, 1.000000, -1.000000, 0},
                              { 1.000000, -1.000000, -1.000000, 0},
                              { -1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, 1.000000, 0},
                              { -1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, -1.000000, -1.000000, 0} }
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[12], immediateIndexed
dcl_resource_structured t0, 108
dcl_input_siv v[1][0].xyzw, position
dcl_input v[1][1].x
dcl_temps 9
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output_siv o0.xyzw, position
dcl_maxout 24
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[0][1].x <- input[0].VertexID_id97
//
#line 277 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_f8965f4a8c229787f24850ad2d1cc02b.hlsl"
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r0.xy, v[0][1].x, l(44), t0.xyxx  // r0.x <- p.Cycle; r0.y <- p.Age

#line 278
ieq r0.x, r0.x, l(0)
lt r0.y, r0.y, l(0.000000)
or r0.x, r0.y, r0.x
if_nz r0.x

#line 279
  ret 
endif 

#line 277
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r0.xyz, v[0][1].x, l(12), t0.xyzx  // r0.x <- p.Position.x; r0.y <- p.Position.y; r0.z <- p.Position.z
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r1.xyzw, v[0][1].x, l(60), t0.xyzw  // r1.x <- p.AxisY.x; r1.y <- p.AxisY.y; r1.z <- p.AxisY.z; r1.w <- p.AxisX.x
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r2.xyzw, v[0][1].x, l(76), t0.zwxy  // r2.z <- p.AxisX.y; r2.w <- p.AxisX.z; r2.x <- p.AxisZ.x; r2.y <- p.AxisZ.y
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r3.xyzw, v[0][1].x, l(92), t0.xyzw  // r3.x <- p.AxisZ.z; r3.y <- p.Size3.x; r3.z <- p.Size3.y; r3.w <- p.Size3.z

#line 233
mov r4.x, r1.w
mov r4.yz, r2.zzwz

#line 235
mov r5.xy, r2.xyxx
mov r5.z, r3.x

#line 236
mov r6.w, l(1.000000)

#line 229
mov r0.w, l(0)  // r0.w <- i
loop 
  uge r4.w, r0.w, l(4)
  breakc_nz r4.w

#line 233
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 234
  mul r8.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r7.xyz, r8.xyzx, r3.zzzz, r7.xyzx

#line 235
  mul r8.xyz, r5.xyzx, icb[r0.w + 0].zzzz
  mad r6.xyz, r8.xyzx, r3.wwww, r7.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 236
  dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
  dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
  dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
  dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 239
  dp4 r8.x, r7.xyzw, cb1[0].xyzw  // r8.x <- posView.x
  dp4 r8.y, r7.xyzw, cb1[1].xyzw  // r8.y <- posView.y
  dp4 r8.z, r7.xyzw, cb1[2].xyzw  // r8.z <- posView.z
  dp4 r8.w, r7.xyzw, cb1[3].xyzw  // r8.w <- posView.w

#line 240
  dp4 r4.w, r8.xyzw, cb1[8].xyzw  // r4.w <- streams.ShadingPosition_id0.x
  dp4 r5.w, r8.xyzw, cb1[9].xyzw  // r5.w <- streams.ShadingPosition_id0.y
  dp4 r6.x, r8.xyzw, cb1[10].xyzw  // r6.x <- streams.ShadingPosition_id0.z
  dp4 r6.y, r8.xyzw, cb1[11].xyzw  // r6.y <- streams.ShadingPosition_id0.w

#line 246
  mov o0.x, r4.w
  mov o0.y, r5.w
  mov o0.z, r6.x
  mov o0.w, r6.y
  emit_stream m0

#line 248
  iadd r0.w, r0.w, l(1)
endloop 

#line 249
cut_stream m0

#line 233
mov r4.x, r1.w
mov r4.yz, r2.zzwz

#line 235
mov r5.xy, r2.xyxx
mov r5.z, r3.x

#line 236
mov r6.w, l(1.000000)

#line 229
mov r0.w, l(4)  // r0.w <- i
loop 
  uge r4.w, r0.w, l(8)
  breakc_nz r4.w

#line 233
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 234
  mul r8.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r7.xyz, r8.xyzx, r3.zzzz, r7.xyzx

#line 235
  mul r8.xyz, r5.xyzx, icb[r0.w + 0].zzzz
  mad r6.xyz, r8.xyzx, r3.wwww, r7.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 236
  dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
  dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
  dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
  dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 239
  dp4 r8.x, r7.xyzw, cb1[0].xyzw  // r8.x <- posView.x
  dp4 r8.y, r7.xyzw, cb1[1].xyzw  // r8.y <- posView.y
  dp4 r8.z, r7.xyzw, cb1[2].xyzw  // r8.z <- posView.z
  dp4 r8.w, r7.xyzw, cb1[3].xyzw  // r8.w <- posView.w

#line 240
  dp4 r4.w, r8.xyzw, cb1[8].xyzw  // r4.w <- streams.ShadingPosition_id0.x
  dp4 r5.w, r8.xyzw, cb1[9].xyzw  // r5.w <- streams.ShadingPosition_id0.y
  dp4 r6.x, r8.xyzw, cb1[10].xyzw  // r6.x <- streams.ShadingPosition_id0.z
  dp4 r6.y, r8.xyzw, cb1[11].xyzw  // r6.y <- streams.ShadingPosition_id0.w

#line 246
  mov o0.x, r4.w
  mov o0.y, r5.w
  mov o0.z, r6.x
  mov o0.w, r6.y
  emit_stream m0

#line 248
  iadd r0.w, r0.w, l(1)
endloop 

#line 249
cut_stream m0

#line 233
mov r4.x, r1.w
mov r4.yz, r2.zzwz

#line 235
mov r5.xy, r2.xyxx
mov r5.z, r3.x

#line 236
mov r6.w, l(1.000000)

#line 229
mov r0.w, l(8)  // r0.w <- i
loop 
  uge r4.w, r0.w, l(12)
  breakc_nz r4.w

#line 233
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 234
  mul r8.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r7.xyz, r8.xyzx, r3.zzzz, r7.xyzx

#line 235
  mul r8.xyz, r5.xyzx, icb[r0.w + 0].zzzz
  mad r6.xyz, r8.xyzx, r3.wwww, r7.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 236
  dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
  dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
  dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
  dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 239
  dp4 r8.x, r7.xyzw, cb1[0].xyzw  // r8.x <- posView.x
  dp4 r8.y, r7.xyzw, cb1[1].xyzw  // r8.y <- posView.y
  dp4 r8.z, r7.xyzw, cb1[2].xyzw  // r8.z <- posView.z
  dp4 r8.w, r7.xyzw, cb1[3].xyzw  // r8.w <- posView.w

#line 240
  dp4 r4.w, r8.xyzw, cb1[8].xyzw  // r4.w <- streams.ShadingPosition_id0.x
  dp4 r5.w, r8.xyzw, cb1[9].xyzw  // r5.w <- streams.ShadingPosition_id0.y
  dp4 r6.x, r8.xyzw, cb1[10].xyzw  // r6.x <- streams.ShadingPosition_id0.z
  dp4 r6.y, r8.xyzw, cb1[11].xyzw  // r6.y <- streams.ShadingPosition_id0.w

#line 246
  mov o0.x, r4.w
  mov o0.y, r5.w
  mov o0.z, r6.x
  mov o0.w, r6.y
  emit_stream m0

#line 248
  iadd r0.w, r0.w, l(1)
endloop 

#line 249
cut_stream m0

#line 233
mov r4.x, r1.w
mov r4.yz, r2.zzwz

#line 235
mov r5.xy, r2.xyxx
mov r5.z, r3.x

#line 236
mov r6.w, l(1.000000)

#line 229
mov r0.w, l(12)  // r0.w <- i
loop 
  uge r4.w, r0.w, l(16)
  breakc_nz r4.w

#line 233
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 234
  mul r8.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r7.xyz, r8.xyzx, r3.zzzz, r7.xyzx

#line 235
  mul r8.xyz, r5.xyzx, icb[r0.w + 0].zzzz
  mad r6.xyz, r8.xyzx, r3.wwww, r7.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 236
  dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
  dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
  dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
  dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 239
  dp4 r8.x, r7.xyzw, cb1[0].xyzw  // r8.x <- posView.x
  dp4 r8.y, r7.xyzw, cb1[1].xyzw  // r8.y <- posView.y
  dp4 r8.z, r7.xyzw, cb1[2].xyzw  // r8.z <- posView.z
  dp4 r8.w, r7.xyzw, cb1[3].xyzw  // r8.w <- posView.w

#line 240
  dp4 r4.w, r8.xyzw, cb1[8].xyzw  // r4.w <- streams.ShadingPosition_id0.x
  dp4 r5.w, r8.xyzw, cb1[9].xyzw  // r5.w <- streams.ShadingPosition_id0.y
  dp4 r6.x, r8.xyzw, cb1[10].xyzw  // r6.x <- streams.ShadingPosition_id0.z
  dp4 r6.y, r8.xyzw, cb1[11].xyzw  // r6.y <- streams.ShadingPosition_id0.w

#line 246
  mov o0.x, r4.w
  mov o0.y, r5.w
  mov o0.z, r6.x
  mov o0.w, r6.y
  emit_stream m0

#line 248
  iadd r0.w, r0.w, l(1)
endloop 

#line 249
cut_stream m0

#line 233
mov r4.x, r1.w
mov r4.yz, r2.zzwz

#line 235
mov r5.xy, r2.xyxx
mov r5.z, r3.x

#line 236
mov r6.w, l(1.000000)

#line 229
mov r0.w, l(16)  // r0.w <- i
loop 
  uge r4.w, r0.w, l(20)
  breakc_nz r4.w

#line 233
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 234
  mul r8.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r7.xyz, r8.xyzx, r3.zzzz, r7.xyzx

#line 235
  mul r8.xyz, r5.xyzx, icb[r0.w + 0].zzzz
  mad r6.xyz, r8.xyzx, r3.wwww, r7.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 236
  dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
  dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
  dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
  dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 239
  dp4 r8.x, r7.xyzw, cb1[0].xyzw  // r8.x <- posView.x
  dp4 r8.y, r7.xyzw, cb1[1].xyzw  // r8.y <- posView.y
  dp4 r8.z, r7.xyzw, cb1[2].xyzw  // r8.z <- posView.z
  dp4 r8.w, r7.xyzw, cb1[3].xyzw  // r8.w <- posView.w

#line 240
  dp4 r4.w, r8.xyzw, cb1[8].xyzw  // r4.w <- streams.ShadingPosition_id0.x
  dp4 r5.w, r8.xyzw, cb1[9].xyzw  // r5.w <- streams.ShadingPosition_id0.y
  dp4 r6.x, r8.xyzw, cb1[10].xyzw  // r6.x <- streams.ShadingPosition_id0.z
  dp4 r6.y, r8.xyzw, cb1[11].xyzw  // r6.y <- streams.ShadingPosition_id0.w

#line 246
  mov o0.x, r4.w
  mov o0.y, r5.w
  mov o0.z, r6.x
  mov o0.w, r6.y
  emit_stream m0

#line 248
  iadd r0.w, r0.w, l(1)
endloop 

#line 249
cut_stream m0

#line 233
mov r4.x, r1.w
mov r4.yz, r2.zzwz

#line 235
mov r2.z, r3.x

#line 236
mov r5.w, l(1.000000)

#line 229
mov r0.w, l(20)  // r0.w <- i
loop 
  uge r1.w, r0.w, l(24)
  breakc_nz r1.w

#line 233
  mul r6.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r6.xyz, r6.xyzx, r3.yyyy, r0.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 234
  mul r7.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r6.xyz, r7.xyzx, r3.zzzz, r6.xyzx

#line 235
  mul r7.xyz, r2.xyzx, icb[r0.w + 0].zzzz
  mad r5.xyz, r7.xyzx, r3.wwww, r6.xyzx  // r5.x <- posWorld.x; r5.y <- posWorld.y; r5.z <- posWorld.z

#line 236
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
  dp4 r6.y, r5.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
  dp4 r6.z, r5.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
  dp4 r6.w, r5.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 239
  dp4 r7.x, r6.xyzw, cb1[0].xyzw  // r7.x <- posView.x
  dp4 r7.y, r6.xyzw, cb1[1].xyzw  // r7.y <- posView.y
  dp4 r7.z, r6.xyzw, cb1[2].xyzw  // r7.z <- posView.z
  dp4 r7.w, r6.xyzw, cb1[3].xyzw  // r7.w <- posView.w

#line 240
  dp4 r1.w, r7.xyzw, cb1[8].xyzw  // r1.w <- streams.ShadingPosition_id0.x
  dp4 r2.w, r7.xyzw, cb1[9].xyzw  // r2.w <- streams.ShadingPosition_id0.y
  dp4 r3.x, r7.xyzw, cb1[10].xyzw  // r3.x <- streams.ShadingPosition_id0.z
  dp4 r4.w, r7.xyzw, cb1[11].xyzw  // r4.w <- streams.ShadingPosition_id0.w

#line 246
  mov o0.x, r1.w
  mov o0.y, r2.w
  mov o0.z, r3.x
  mov o0.w, r4.w
  emit_stream m0

#line 248
  iadd r0.w, r0.w, l(1)
endloop 

#line 249
cut_stream m0

#line 286
ret 
// Approximately 221 instruction slots used
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
#line 269 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_f8965f4a8c229787f24850ad2d1cc02b.hlsl"
mov o0.xyzw, l(0,0,0,0)
ret 
// Approximately 2 instruction slots used
***************************
*************************/
static const float3 QuadPositions_id100[24] = { float3(-1, 1, 1), float3(1, 1, 1), float3(-1, -1, 1), float3(1, -1, 1), float3(1, 1, -1), float3(-1, 1, -1), float3(1, -1, -1), float3(-1, -1, -1), float3(1, 1, 1), float3(-1, 1, 1), float3(1, 1, -1), float3(-1, 1, -1), float3(-1, -1, 1), float3(1, -1, 1), float3(-1, -1, -1), float3(1, -1, -1), float3(1, -1, 1), float3(1, 1, 1), float3(1, -1, -1), float3(1, 1, -1), float3(-1, 1, 1), float3(-1, -1, 1), float3(-1, 1, -1), float3(-1, -1, -1)};
static const float2 QuadUV_id101[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
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
    uint VertexID_id97;
    float2 TexCoord_id86;
    float4 PositionWS_id16;
    float3 normalWS_id21;
    float DepthVS_id17;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id97 : VERTEXID_ID97_SEM;
};
struct VS_STREAMS 
{
    float4 Position_id15;
    uint VertexID_VS_id96;
    float3 normalWS_id21;
    bool Skip_id99;
    float4 ShadingPosition_id0;
    uint VertexID_id97;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id97 : VERTEXID_ID97_SEM;
};
struct VS_INPUT 
{
    float4 Position_id15 : POSITION;
    uint VertexID_VS_id96 : SV_VertexID;
};
struct Particle 
{
    float3 Velocity;
    float3 Position;
    float4 Color;
    float Drag;
    int Cycle;
    float Age;
    float LifeTime;
    int Id;
    float3 AxisY;
    float3 AxisX;
    float3 AxisZ;
    float3 Size3;
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
StructuredBuffer<Particle> Particles_id98;
float4 Compute_id23()
{
    return 0;
}
float4 Shading_id2()
{
    return Compute_id23();
}
void AssignVertexID_id18(inout VS_STREAMS streams)
{
    streams.VertexID_id97 = streams.VertexID_VS_id96;
}
float4 Shading_id16()
{
    return Shading_id2();
}
void PSMain_id1()
{
}
void PostTransformPosition_id21(inout VS_STREAMS streams)
{
    streams.ShadingPosition_id0 = streams.Position_id15;
    AssignVertexID_id18(streams);
    streams.Skip_id99 = false;
}
void TransformPosition_id20()
{
}
void PreTransformPosition_id19()
{
}
void GenerateNormal_VS_id4(inout VS_STREAMS streams)
{
    streams.normalWS_id21 = 0.0f;
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
void SpawnQuad_id22(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, Particle p)
{

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id86 = QuadUV_id101[i % 4].xy;
        float4 posWorld = float4(p.Position, 1);
        posWorld.xyz += QuadPositions_id100[i].x * p.AxisX * p.Size3.x;
        posWorld.xyz += QuadPositions_id100[i].y * p.AxisY * p.Size3.y;
        posWorld.xyz += QuadPositions_id100[i].z * p.AxisZ * p.Size3.z;
        posWorld = mul(posWorld, World_id30);
        streams.PositionWS_id16 = posWorld;
        streams.normalWS_id21 = normal;
        float4 posView = mul(posWorld, View_id23);
        streams.ShadingPosition_id0 = mul(posView, Projection_id25);
        streams.DepthVS_id17 = streams.ShadingPosition_id0.w + 0.001;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
}
void BaseTransformVS_id15(inout VS_STREAMS streams)
{
    PreTransformPosition_id19();
    TransformPosition_id20();
    PostTransformPosition_id21(streams);
}
void VSMain_id10(inout VS_STREAMS streams)
{
    VSMain_id0();
    GenerateNormal_VS_id4(streams);
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
[maxvertexcount(24)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.VertexID_id97 = input[0].VertexID_id97;
    Particle p = Particles_id98[streams.VertexID_id97];
    if (p.Cycle == 0 || p.Age < 0)
        return;
    SpawnQuad_id22(streams, 0, triangleStream, p.AxisZ, p);
    SpawnQuad_id22(streams, 4, triangleStream, -p.AxisZ, p);
    SpawnQuad_id22(streams, 8, triangleStream, p.AxisY, p);
    SpawnQuad_id22(streams, 12, triangleStream, -p.AxisY, p);
    SpawnQuad_id22(streams, 16, triangleStream, p.AxisX, p);
    SpawnQuad_id22(streams, 20, triangleStream, -p.AxisX, p);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id15 = __input__.Position_id15;
    streams.VertexID_VS_id96 = __input__.VertexID_VS_id96;
    VSMain_id10(streams);
    BaseTransformVS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.VertexID_id97 = streams.VertexID_id97;
    return __output__;
}

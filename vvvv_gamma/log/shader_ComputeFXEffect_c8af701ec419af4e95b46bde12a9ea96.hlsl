/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin BSplineMesh_ComputeFX [{Color = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {RibbonUp = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}, {TubeUp = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}, {Width = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]
@P Width: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Color: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
@P RibbonUp: InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>
@P TubeUp: InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 112]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    SampleCount_id45 => BSplineMesh_ComputeFX.SampleCount
@C    Resolution_id46 => BSplineMesh_ComputeFX.Resolution
@C    IsClose_id47 => BSplineMesh_ComputeFX.IsClose
@C    ThicknessSpace_id48 => BSplineMesh_ComputeFX.ThicknessSpace
@C    MeshType_id49 => BSplineMesh_ComputeFX.MeshType
@C    Transform_id50 => BSplineMesh_ComputeFX.Transform
@C    ViewAlign_id51 => BSplineMesh_ComputeFX.ViewAlign
@C    NormalBend_id52 => BSplineMesh_ComputeFX.NormalBend
@C    LineCount_id53 => BSplineMesh_ComputeFX.LineCount
@C    CtrlPtCountGlobal_id54 => BSplineMesh_ComputeFX.CtrlPtCountGlobal
cbuffer PerUpdate [Size: 48]
@C    InputValue_id60 => ShaderFX.InputValueFloat4
@C    InputValue_id61 => ShaderFX.InputValueFloat3
@C    InputValue_id62 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id63 => ShaderFX.InputValueFloat
cbuffer PerView [Size: 384]
@C    View_id11 => Transformation.View
@C    ViewInverse_id12 => Transformation.ViewInverse
@C    Projection_id13 => Transformation.Projection
@C    ProjectionInverse_id14 => Transformation.ProjectionInverse
@C    ViewProjection_id15 => Transformation.ViewProjection
@C    ProjScreenRay_id16 => Transformation.ProjScreenRay
@C    Eye_id17 => Transformation.Eye
@C    NearClipPlane_id26 => Camera.NearClipPlane
@C    FarClipPlane_id27 => Camera.FarClipPlane
@C    ZProjection_id28 => Camera.ZProjection
@C    ViewSize_id29 => Camera.ViewSize
@C    AspectRatio_id30 => Camera.AspectRatio
***************************
******  Resources    ******
***************************
@R    ControlPointBuffer_id43 => BSplineMesh_ComputeFX.ControlPointBuffer [Stage: Compute, Slot: (0-0)]
@R    InfoBuffer_id55 => BSplineMesh_ComputeFX.InfoBuffer [Stage: Compute, Slot: (1-1)]
@R    outputBuffer_id44 => BSplineMesh_ComputeFX.outputBuffer [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Compute, Slot: (1-1)]
@R    PerView => PerView [Stage: Compute, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    BSplineMesh_ComputeFX => 5fa852e4c156b9688090b7ef133a27ea
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    BSplineCommon => 112d457de7d2ca3db981e22d0143ed75
@S    FuseCommonBuffer => 65b35e271cc4ebdf63ebebd0f53f481c
@S    FuseCommonTypes => 294db151085426350495bb436e7480dd
@S    LineAttributeStream => c7aed8089f4a7eedb3fda14d4c26e4b9
@S    LineCommon => 6f3c9bb0f15c5b291748baebfb4315ac
@S    FuseCoreMath => fdeacca3b2f02b9acb6430ed603f50b4
@S    Pos3Norm3Col4Tex2Tan4Vertex => fbfbdc4d1671a224b444e9e4cfddfd89
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
***************************
*****     Stages      *****
***************************
@G    Compute => 8e63d9189f2ec0a5303e710b005386f8
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDispatch
// {
//
//   int3 ThreadGroupCountGlobal_id10;  // Offset:    0 Size:    12 [unused]
//   int SampleCount_id45;              // Offset:   12 Size:     4
//   int Resolution_id46;               // Offset:   16 Size:     4
//   bool IsClose_id47;                 // Offset:   20 Size:     4
//   int ThicknessSpace_id48;           // Offset:   24 Size:     4
//      = 0x00000000 
//   int MeshType_id49;                 // Offset:   28 Size:     4
//      = 0x00000000 
//   float4x4 Transform_id50;           // Offset:   32 Size:    64
//   bool ViewAlign_id51;               // Offset:   96 Size:     4
//   bool NormalBend_id52;              // Offset:  100 Size:     4
//   int LineCount_id53;                // Offset:  104 Size:     4
//   int CtrlPtCountGlobal_id54;        // Offset:  108 Size:     4
//
// }
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id60;            // Offset:    0 Size:    16
//   float3 InputValue_id61;            // Offset:   16 Size:    12
//   float3 InputValue_id62;            // Offset:   32 Size:    12
//   float InputValue_id63;             // Offset:   44 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id11;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id12;         // Offset:   64 Size:    64
//   float4x4 Projection_id13;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id14;   // Offset:  192 Size:    64
//   float4x4 ViewProjection_id15;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id16;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id17;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id26;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id27;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id28;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id29;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id30;            // Offset:  376 Size:     4 [unused]
//
// }
//
// Resource bind info for ControlPointBuffer_id43
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for InfoBuffer_id55
// {
//
//   struct LineInfo
//   {
//       
//       int id;                        // Offset:    0
//       int start;                     // Offset:    4
//       int count;                     // Offset:    8
//
//   } $Element;                        // Offset:    0 Size:    12
//
// }
//
// Resource bind info for outputBuffer_id44
// {
//
//   struct Pos3Norm3Col4Tex2Tan4Id2
//   {
//       
//       float3 Position;               // Offset:    0
//       float3 Normal;                 // Offset:   12
//       float4 Color;                  // Offset:   24
//       float2 TexCoord;               // Offset:   40
//       float4 Tangent;                // Offset:   48
//       uint LineId;                   // Offset:   64
//       uint SegmentId;                // Offset:   68
//
//   } $Element;                        // Offset:    0 Size:    72
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// ControlPointBuffer_id43           texture  struct         r/o             t0      1 
// InfoBuffer_id55                   texture  struct         r/o             t1      1 
// outputBuffer_id44                     UAV  struct         r/w             u0      1 
// PerDispatch                       cbuffer      NA          NA            cb0      1 
// PerUpdate                         cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[7], immediateIndexed
dcl_constantbuffer CB1[3], immediateIndexed
dcl_constantbuffer CB2[14], immediateIndexed
dcl_resource_structured t0, 12
dcl_resource_structured t1, 12
dcl_uav_structured u0, 72
dcl_input vThreadID.x
dcl_temps 24
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 264 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_c8af701ec419af4e95b46bde12a9ea96.hlsl"
movc r0.x, cb0[1].y, l(1), l(0)
iadd r0.y, r0.x, cb0[0].w
imul null, r0.z, r0.y, cb0[6].z

#line 266
ult r0.z, vThreadID.x, r0.z
if_nz r0.z

#line 267
  udiv r1.x, r2.x, vThreadID.x, r0.y  // r1.x <- streams.LineId_id32; r2.x <- streams.SegmentId_id33

#line 271
  bufinfo_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.z, t1.yzxw  // r0.z <- count

#line 272
  ult r0.z, l(0), r0.z

#line 274
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r1.zw, r1.x, l(4), t1.xxxy  // r1.z <- info.start; r1.w <- info.count

#line 280
  imul null, r3.x, r1.x, cb0[6].w  // r3.x <- startIndex

#line 282
  mov r3.y, cb0[6].w
  movc r0.zw, r0.zzzz, r1.zzzw, r3.xxxy  // r0.z <- startIndex; r0.w <- ctrlPtCount

#line 283
  iadd r0.x, r0.x, r0.w
  iadd r0.x, r0.x, l(-1)
  imul null, r0.x, r0.x, r2.x
  utof r0.x, r0.x
  itof r1.z, r0.y
  add r1.w, r1.z, l(-1.000000)
  div r0.x, r0.x, r1.w  // r0.x <- t

#line 284
  ieq r1.w, r2.x, cb0[0].w
  movc r0.x, r1.w, l(0), r0.x

#line 242
  frc r1.w, r0.x  // r1.w <- range

#line 243
  add r0.x, r0.x, -r1.w
  round_ne r0.x, r0.x
  ftoi r0.x, r0.x  // r0.x <- t2

#line 245
  if_nz cb0[1].y

#line 250
    iadd r2.yzw, r0.xxxx, l(0, -1, 1, 2)

#line 116
    bufinfo_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r3.x, t0.xyzw  // r3.x <- count

#line 144
    iadd r3.x, -r0.z, r3.x
    umin r3.x, r0.w, r3.x  // r3.x <- count

#line 145
    ult r3.y, l(0), r3.x

#line 147
    ilt r4.xyz, r2.yzwy, l(0, 0, 0, 0)
    imax r5.xyz, -r2.yzwy, r2.yzwy
    udiv null, r5.xyz, r5.xyzx, r3.xxxx
    iadd r5.xyz, r3.xxxx, -r5.xyzx
    udiv null, r2.yzw, r2.yyzw, r3.xxxx
    movc r2.yzw, r4.xxyz, r5.xxyz, r2.yyzw  // r2.w <- index; r2.w <- index

#line 148
    iadd r2.yzw, r0.zzzz, r2.yyzw
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r4.xyz, r2.y, l(0), t0.xyzx  // r4.x <- value.x; r4.y <- value.y; r4.z <- value.z; r4.x <- value.x; r4.y <- value.y; r4.z <- value.z

#line 149
    and r4.xyz, r3.yyyy, r4.xyzx

#line 147
    ilt r2.y, r0.x, l(0)
    imax r3.z, -r0.x, r0.x
    udiv null, r3.z, r3.z, r3.x
    iadd r3.z, -r3.z, r3.x
    udiv null, r3.x, r0.x, r3.x
    movc r2.y, r2.y, r3.z, r3.x  // r2.y <- index; r2.y <- index

#line 148
    iadd r2.y, r0.z, r2.y
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r3.xzw, r2.y, l(0), t0.xxyz  // r3.x <- value.x; r3.z <- value.y; r3.w <- value.z; r3.x <- value.x; r3.z <- value.y; r3.w <- value.z

#line 149
    and r3.xzw, r3.xxzw, r3.yyyy

#line 148
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r5.xyz, r2.z, l(0), t0.xyzx  // r5.x <- value.x; r5.y <- value.y; r5.z <- value.z; r5.x <- value.x; r5.y <- value.y; r5.z <- value.z

#line 149
    and r5.xyz, r3.yyyy, r5.xyzx

#line 148
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r2.yzw, r2.w, l(0), t0.xxyz  // r2.y <- value.x; r2.z <- value.y; r2.w <- value.z

#line 149
    and r2.yzw, r2.yyzw, r3.yyyy

#line 251
  else 

#line 257
    iadd r6.xyz, r0.xxxx, l(-1, 1, 2, 0)

#line 254
    imax r3.y, r6.x, l(0)

#line 116
    bufinfo_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r4.w, t0.yzwx  // r4.w <- count

#line 144
    iadd r4.w, -r0.z, r4.w
    umin r4.w, r0.w, r4.w  // r4.w <- count

#line 145
    ult r5.w, l(0), r4.w

#line 147
    udiv null, r3.y, r3.y, r4.w

#line 148
    iadd r3.y, r0.z, r3.y
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r7.xyz, r3.y, l(0), t0.xyzx  // r7.x <- value.x; r7.y <- value.y; r7.z <- value.z

#line 149
    and r4.xyz, r5.wwww, r7.xyzx  // r4.x <- value.x; r4.y <- value.y; r4.z <- value.z

#line 147
    ilt r3.y, r0.x, l(0)
    imax r6.x, -r0.x, r0.x
    udiv null, r6.x, r6.x, r4.w
    iadd r6.x, r4.w, -r6.x
    udiv null, r0.x, r0.x, r4.w
    movc r0.x, r3.y, r6.x, r0.x  // r0.x <- index

#line 148
    iadd r0.x, r0.z, r0.x
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r7.xyz, r0.x, l(0), t0.xyzx  // r7.x <- value.x; r7.y <- value.y; r7.z <- value.z

#line 149
    and r3.xzw, r5.wwww, r7.xxyz  // r3.x <- value.x; r3.z <- value.y; r3.w <- value.z

#line 256
    iadd r0.x, r0.w, l(-1)

#line 257
    umin r0.xw, r0.xxxx, r6.yyyz

#line 147
    ilt r6.xy, r0.xwxx, l(0, 0, 0, 0)
    imax r6.zw, -r0.xxxw, r0.xxxw
    udiv null, r6.zw, r6.zzzw, r4.wwww
    iadd r6.zw, r4.wwww, -r6.zzzw
    udiv null, r0.xw, r0.xxxw, r4.wwww
    movc r0.xw, r6.xxxy, r6.zzzw, r0.xxxw  // r0.w <- index

#line 148
    iadd r0.xz, r0.zzzz, r0.xxwx
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r6.xyz, r0.x, l(0), t0.xyzx  // r6.x <- value.x; r6.y <- value.y; r6.z <- value.z; r6.x <- value.x; r6.y <- value.y; r6.z <- value.z

#line 149
    and r5.xyz, r5.wwww, r6.xyzx  // r5.x <- value.x; r5.y <- value.y; r5.z <- value.z; r5.x <- value.x; r5.y <- value.y; r5.z <- value.z

#line 148
    ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.xzw, r0.z, l(0), t0.xxyz  // r0.x <- value.x; r0.z <- value.y; r0.w <- value.z

#line 149
    and r2.yzw, r0.xxzw, r5.wwww  // r5.x <- value.x; r5.y <- value.y; r5.z <- value.z

#line 258
  endif 

#line 132
  frc r0.x, r1.w  // r0.x <- mu

#line 133
  mul r6.xyz, r5.xyzx, l(3.000000, 3.000000, 3.000000, 0.000000)
  mad r2.yzw, -r5.xxyz, l(0.000000, 3.000000, 3.000000, 3.000000), r2.yyzw
  mad r2.yzw, r3.xxzw, l(0.000000, 3.000000, 3.000000, 3.000000), r2.yyzw
  add r2.yzw, -r4.xxyz, r2.yyzw  // r2.y <- a0.x; r2.z <- a0.y; r2.w <- a0.z

#line 134
  mad r6.xyz, -r3.xzwx, l(6.000000, 6.000000, 6.000000, 0.000000), r6.xyzx
  mul r7.xyz, r4.xyzx, l(3.000000, 3.000000, 3.000000, 0.000000)
  mad r6.xyz, r4.xyzx, l(3.000000, 3.000000, 3.000000, 0.000000), r6.xyzx  // r6.x <- a1.x; r6.y <- a1.y; r6.z <- a1.z

#line 135
  mad r7.xyz, r5.xyzx, l(3.000000, 3.000000, 3.000000, 0.000000), -r7.xyzx  // r7.x <- a2.x; r7.y <- a2.y; r7.z <- a2.z

#line 136
  mad r3.xyz, r3.xzwx, l(4.000000, 4.000000, 4.000000, 0.000000), r5.xyzx
  add r3.xyz, r4.xyzx, r3.xyzx  // r3.x <- a3.x; r3.y <- a3.y; r3.z <- a3.z

#line 137
  mul r4.xyz, r0.xxxx, r2.yzwy
  mad r2.yzw, r0.xxxx, r2.yyzw, r6.xxyz
  mul r5.xyz, r0.xxxx, r2.yzwy
  mad r2.yzw, r0.xxxx, r2.yyzw, r7.xxyz
  mad r2.yzw, r0.xxxx, r2.yyzw, r3.xxyz
  mul r3.xyz, r2.yzwy, l(0.166667, 0.166667, 0.166667, 0.000000)  // r3.x <- o.p.x; r3.y <- o.p.y; r3.z <- o.p.z

#line 138
  mad r2.yzw, r4.xxyz, l(0.000000, 2.000000, 2.000000, 2.000000), r6.xxyz
  mad r0.xzw, r0.xxxx, r2.yyzw, r5.xxyz
  add r0.xzw, r7.xxyz, r0.xxzw
  mul r0.xzw, r0.xxzw, l(0.166667, 0.000000, 0.166667, 0.166667)  // r0.x <- o.t.x; r0.z <- o.t.y; r0.w <- o.t.z

#line 286
  mov r3.w, l(1.000000)
  dp4 r4.x, r3.xyzw, cb0[2].xyzw  // r4.x <- pos.x
  dp4 r4.y, r3.xyzw, cb0[3].xyzw  // r4.y <- pos.y
  dp4 r4.z, r3.xyzw, cb0[4].xyzw  // r4.z <- pos.z

#line 287
  dp3 r3.x, r0.xzwx, cb0[2].xyzx  // r3.x <- tan.x
  dp3 r3.y, r0.xzwx, cb0[3].xyzx  // r3.y <- tan.y
  dp3 r3.z, r0.xzwx, cb0[4].xyzx  // r3.z <- tan.z

#line 289
  add r5.x, -r4.x, cb2[4].w  // r5.x <- viewDir.x
  add r5.y, -r4.y, cb2[5].w  // r5.y <- viewDir.y
  add r5.z, -r4.z, cb2[6].w  // r5.z <- viewDir.z

#line 293
  ieq r0.x, cb0[1].z, l(1)

#line 291
  mov r6.x, cb2[4].z
  mov r6.y, cb2[5].z
  mov r6.z, cb2[6].z
  dp3 r6.x, r6.xyzx, r5.xyzx
  mov r6.y, l(1.000000)
  dp4 r0.z, r6.xxxy, cb2[13].xyzw
  mul r0.z, r0.z, l(0.200000)
  movc r0.x, r0.x, r0.z, l(1.000000)  // r0.x <- scale

#line 292
  mul r0.x, r0.x, cb1[2].w

#line 293
  if_z cb0[1].w

#line 295
    iadd r0.z, -r1.x, vThreadID.x
    dp3 r0.w, r5.xyzx, r5.xyzx
    rsq r0.w, r0.w
    mul r2.yzw, r0.wwww, r5.xxyz
    movc r2.yzw, cb0[6].xxxx, r2.yyzw, cb1[1].xxyz

#line 155
    mul r5.xyz, r2.zwyz, r3.zxyz
    mad r5.xyz, r3.yzxy, r2.wyzw, -r5.xyzx
    dp3 r0.w, r5.xyzx, r5.xyzx
    rsq r0.w, r0.w
    mul r6.xyz, r0.wwww, r5.xyzx  // r6.x <- dir.x; r6.y <- dir.y; r6.z <- dir.z

#line 156
    mul r7.xyz, r0.xxxx, r6.xyzx
    mad r8.xyz, r7.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r4.xyzx  // r8.x <- v0.Position.x; r8.y <- v0.Position.y; r8.z <- v0.Position.z

#line 157
    mad r7.xyz, -r7.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r4.xyzx  // r7.x <- v1.Position.x; r7.y <- v1.Position.y; r7.z <- v1.Position.z

#line 158
    movc r1.w, cb0[6].y, l(0.500000), l(1.000000)  // r1.w <- t

#line 159
    mad r9.xyz, -r5.xyzx, r0.wwww, r2.yzwy
    mad r9.xyz, r1.wwww, r9.xyzx, r6.xyzx
    dp3 r4.w, r9.xyzx, r9.xyzx
    rsq r4.w, r4.w
    mul r9.xyz, r4.wwww, r9.yzxy  // r9.x <- v0.Normal.y; r9.y <- v0.Normal.z; r9.z <- v0.Normal.x

#line 160
    mad r2.yzw, r5.xxyz, r0.wwww, r2.yyzw
    mad r2.yzw, r1.wwww, r2.yyzw, -r6.xxyz
    dp3 r0.w, r2.yzwy, r2.yzwy
    rsq r0.w, r0.w
    mul r5.xyz, r0.wwww, r2.zwyz  // r5.x <- v1.Normal.y; r5.y <- v1.Normal.z; r5.z <- v1.Normal.x

#line 162
    iadd r0.w, r0.y, l(-1)
    itof r1.w, r0.w
    div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- div

#line 163
    utof r2.y, r2.x
    mul r6.z, r1.w, r2.y  // r6.z <- v0.TexCoord.x

#line 169
    imul null, r1.w, r0.z, l(6)

#line 171
    if_nz r2.x

#line 175
      imad r2.yzw, r0.zzzz, l(0, 6, 6, 6), l(0, -6, -2, -1)  // r2.y <- pOffset

#line 173
      iadd r2.y, r2.y, l(1)
      mov r8.w, r9.z
      store_structured u0.xyzw, r2.y, l(0), r8.xyzw
      mov r10.xy, r9.xyxx
      mov r10.zw, cb1[0].xxxy
      store_structured u0.xyzw, r2.y, l(16), r10.xyzw
      mov r6.xy, cb1[0].zwzz
      mov r6.w, l(1.000000)
      store_structured u0.xyzw, r2.y, l(32), r6.xyzw
      mov r3.w, l(-1.000000)
      store_structured u0.xyzw, r2.y, l(48), r3.xyzw
      mov r1.y, r2.x
      store_structured u0.xy, r2.y, l(64), r1.xyxx

#line 174
      mov r7.w, r5.z
      store_structured u0.xyzw, r2.z, l(0), r7.xyzw
      mov r11.xy, r5.xyxx
      mov r11.zw, cb1[0].xxxy
      store_structured u0.xyzw, r2.z, l(16), r11.xyzw
      mov r11.xyz, r6.xyzx
      mov r11.w, l(0)
      store_structured u0.xyzw, r2.z, l(32), r11.xyzw
      store_structured u0.xyzw, r2.z, l(48), r3.xyzw
      store_structured u0.xy, r2.z, l(64), r1.xyxx

#line 175
      store_structured u0.xyzw, r2.w, l(0), r8.xyzw
      store_structured u0.xyzw, r2.w, l(16), r10.xyzw
      store_structured u0.xyzw, r2.w, l(32), r6.xyzw
      store_structured u0.xyzw, r2.w, l(48), r3.xyzw
      store_structured u0.xy, r2.w, l(64), r1.xyxx

#line 176
    endif 

#line 177
    ine r0.w, r0.w, r2.x
    if_nz r0.w

#line 179
      mov r7.w, r5.z
      store_structured u0.xyzw, r1.w, l(0), r7.xyzw
      mov r5.zw, cb1[0].xxxy
      store_structured u0.xyzw, r1.w, l(16), r5.xyzw
      mov r6.xy, cb1[0].zwzz
      mov r6.w, l(0)
      store_structured u0.xyzw, r1.w, l(32), r6.xyzw
      mov r3.w, l(-1.000000)
      store_structured u0.xyzw, r1.w, l(48), r3.xyzw
      mov r1.y, r2.x
      store_structured u0.xy, r1.w, l(64), r1.xyxx

#line 181
      imad r0.zw, r0.zzzz, l(0, 0, 6, 6), l(0, 0, 2, 3)

#line 180
      mov r8.w, r9.z
      store_structured u0.xyzw, r0.z, l(0), r8.xyzw
      mov r9.zw, cb1[0].xxxy
      store_structured u0.xyzw, r0.z, l(16), r9.xyzw
      mov r8.xyz, r6.xyzx
      mov r8.w, l(1.000000)
      store_structured u0.xyzw, r0.z, l(32), r8.xyzw
      store_structured u0.xyzw, r0.z, l(48), r3.xyzw
      store_structured u0.xy, r0.z, l(64), r1.xyxx

#line 181
      store_structured u0.xyzw, r0.w, l(0), r7.xyzw
      store_structured u0.xyzw, r0.w, l(16), r5.xyzw
      store_structured u0.xyzw, r0.w, l(32), r6.xyzw
      store_structured u0.xyzw, r0.w, l(48), r3.xyzw
      store_structured u0.xy, r0.w, l(64), r1.xyxx

#line 182
    endif 

#line 296
  else   // Prior locations: r5.x <- viewDir.x; r5.y <- viewDir.y; r5.z <- viewDir.z

#line 299
    iadd r0.z, -r1.x, vThreadID.x

#line 191
    mul r2.yzw, r3.xxyz, cb1[2].zzxy
    mad r2.yzw, r3.zzxy, cb1[2].xxyz, -r2.yyzw
    mul r5.xyz, r2.yzwy, r3.zxyz
    mad r2.yzw, r3.yyzx, r2.zzwy, -r5.xxyz
    dp3 r0.w, r2.yzwy, r2.yzwy
    rsq r0.w, r0.w
    mul r2.yzw, r0.wwww, r2.yyzw  // r2.y <- dir.x; r2.z <- dir.y; r2.w <- dir.z

#line 192
    dp3 r0.w, r3.xyzx, r3.xyzx
    rsq r0.w, r0.w
    mul r5.xyz, r0.wwww, r3.zxyz
    itof r0.w, cb0[1].x
    div r1.y, l(6.283185), r0.w

#line 122
    sincos r6.x, r7.x, r1.y  // r7.x <- c; r6.x <- s

#line 123
    add r1.y, -r7.x, l(1.000000)  // r1.y <- t

#line 127
    mul r8.xyzw, r5.yyyz, r1.yyyy
    mul r6.xyz, r5.xyzx, r6.xxxx
    mad r9.xy, r8.zyzz, r5.xzxx, r6.zxzz  // r9.x <- <rot3D_id53 return value>._m02; r9.y <- <rot3D_id53 return value>._m10
    mad r10.xy, r8.xwxx, r5.yzyy, r7.xxxx  // r10.x <- <rot3D_id53 return value>._m00; r10.y <- <rot3D_id53 return value>._m11
    mad r9.z, r8.w, r5.x, -r6.y  // r9.z <- <rot3D_id53 return value>._m12
    mad r11.xy, r8.yzyy, r5.zxzz, -r6.xzxx  // r11.x <- <rot3D_id53 return value>._m01; r11.y <- <rot3D_id53 return value>._m20
    mad r11.z, r8.w, r5.x, r6.y  // r11.z <- <rot3D_id53 return value>._m21
    mul r1.w, r5.x, r5.x
    mad r9.w, r1.w, r1.y, r7.x  // r9.w <- <rot3D_id53 return value>._m22

#line 193
    mul r5.xyz, r0.xxxx, r2.yzwy
    mad r5.xyz, r5.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r4.xyzx  // r5.x <- v0.Position.x; r5.y <- v0.Position.y; r5.z <- v0.Position.z

#line 195
    div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.z  // r1.y <- divX

#line 196
    div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w  // r0.w <- divY

#line 197
    utof r1.z, r2.x
    mul r6.z, r1.z, r1.y  // r6.z <- v0.TexCoord.x

#line 210
    imul null, r1.y, r0.z, l(6)
    imad r0.z, r0.z, l(6), l(-6)

#line 218
    iadd r0.y, r0.y, l(-1)
    ine r0.y, r0.y, r2.x

#line 206
    mov r10.z, r9.y
    mov r10.w, r11.y
    mov r11.w, r10.y

#line 214
    mov r7.zw, cb1[0].xxxy
    mov r8.xy, cb1[0].zwzz
    mov r12.xyz, r3.xyzx
    mov r12.w, l(-1.000000)

#line 215
    mov r13.zw, cb1[0].xxxy
    mov r6.xy, cb1[0].zwzz

#line 220
    mov r14.zw, cb1[0].xxxy
    mov r15.xy, cb1[0].zwzz
    mov r3.w, l(-1.000000)
    mov r16.xz, r1.xxxx
    mov r16.yw, r2.xxxx

#line 221
    mov r17.zw, cb1[0].xxxy
    mov r18.xy, cb1[0].zwzz

#line 203
    mov r19.xyz, r5.xyzx  // r19.x <- v0.Position.x; r19.y <- v0.Position.y; r19.z <- v0.Position.z
    mov r19.w, r6.z  // r19.w <- v0.TexCoord.x
    mov r1.xzw, r2.yyzw  // r1.x <- dir.x; r1.z <- dir.y; r1.w <- dir.z
    mov r18.w, l(0)  // r18.w <- v0.TexCoord.y
    mov r4.w, l(0)  // r4.w <- i
    loop 
      uge r5.w, r4.w, cb0[1].x
      breakc_nz r5.w

#line 206
      dp3 r20.x, r1.xzwx, r10.xzwx  // r20.x <- dir.x
      dp3 r20.y, r1.xwzx, r11.xzwx  // r20.y <- dir.y
      dp3 r20.z, r1.xzwx, r9.xzwx  // r20.z <- dir.z

#line 207
      mul r21.xyz, r0.xxxx, r20.xyzx
      mad r21.xyz, r21.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r4.xyzx  // r21.x <- v1.Position.x; r21.y <- v1.Position.y; r21.z <- v1.Position.z

#line 209
      iadd r5.w, r4.w, l(1)
      utof r9.y, r5.w
      mul r6.w, r0.w, r9.y  // r6.w <- v1.TexCoord.y

#line 210
      imul null, r9.y, r4.w, l(6)

#line 212
      if_nz r2.x

#line 210
        imad r10.y, r0.z, cb0[1].x, r9.y  // r10.y <- prevOffset

#line 216
        iadd r22.xyz, r10.yyyy, l(1, 4, 5, 0)

#line 214
        mov r23.xyz, r19.xyzx
        mov r23.w, r1.x
        store_structured u0.xyzw, r22.x, l(0), r23.xyzw
        mov r7.xy, r1.zwzz
        store_structured u0.xyzw, r22.x, l(16), r7.xyzw
        mov r8.z, r19.w
        mov r8.w, r18.w
        store_structured u0.xyzw, r22.x, l(32), r8.xyzw
        store_structured u0.xyzw, r22.x, l(48), r12.xyzw
        store_structured u0.xy, r22.x, l(64), r16.xyxx

#line 215
        mov r21.w, r20.x
        store_structured u0.xyzw, r22.y, l(0), r21.xyzw
        mov r13.xy, r20.yzyy
        store_structured u0.xyzw, r22.y, l(16), r13.xyzw
        store_structured u0.xyzw, r22.y, l(32), r6.xyzw
        store_structured u0.xyzw, r22.y, l(48), r12.xyzw
        store_structured u0.xy, r22.y, l(64), r16.xyxx

#line 216
        store_structured u0.xyzw, r22.z, l(0), r23.xyzw
        store_structured u0.xyzw, r22.z, l(16), r7.xyzw
        store_structured u0.xyzw, r22.z, l(32), r8.xyzw
        store_structured u0.xyzw, r22.z, l(48), r12.xyzw
        store_structured u0.xy, r22.z, l(64), r16.xyxx

#line 217
      endif 

#line 218
      if_nz r0.y

#line 211
        imad r7.x, r1.y, cb0[1].x, r9.y  // r7.x <- offset

#line 220
        mov r21.w, r20.x
        store_structured u0.xyzw, r7.x, l(0), r21.xyzw
        mov r14.xy, r20.yzyy
        store_structured u0.xyzw, r7.x, l(16), r14.xyzw
        mov r15.zw, r6.zzzw
        store_structured u0.xyzw, r7.x, l(32), r15.xyzw
        store_structured u0.xyzw, r7.x, l(48), r3.xyzw
        store_structured u0.xy, r7.x, l(64), r16.zwzz

#line 222
        iadd r8.zw, r7.xxxx, l(0, 0, 2, 3)

#line 221
        mov r22.xyz, r19.xyzx
        mov r22.w, r1.x
        store_structured u0.xyzw, r8.z, l(0), r22.xyzw
        mov r17.xy, r1.zwzz
        store_structured u0.xyzw, r8.z, l(16), r17.xyzw
        mov r18.z, r19.w
        store_structured u0.xyzw, r8.z, l(32), r18.xyzw
        store_structured u0.xyzw, r8.z, l(48), r3.xyzw
        store_structured u0.xy, r8.z, l(64), r16.zwzz

#line 222
        store_structured u0.xyzw, r8.w, l(0), r21.xyzw
        store_structured u0.xyzw, r8.w, l(16), r14.xyzw
        store_structured u0.xyzw, r8.w, l(32), r15.xyzw
        store_structured u0.xyzw, r8.w, l(48), r3.xyzw
        store_structured u0.xy, r8.w, l(64), r16.zwzz

#line 223
      endif 

#line 226
      mov r19.xyz, r21.xyzx
      mov r19.w, r6.z
      mov r1.xzw, r20.xxyz  // r1.x <- dir.x; r1.z <- dir.y; r1.w <- dir.z
      mov r18.w, r6.w
      mov r4.w, r5.w
    endloop 

#line 300
  endif 
endif 

#line 315
ret 
// Approximately 348 instruction slots used
***************************
*************************/
static const float PI_id34 = 3.1415926535897;
static const float TWOPI_id37 = 6.28318531;
struct CS_STREAMS 
{
    uint3 GroupId_id0;
    uint3 DispatchThreadId_id1;
    int ThreadCountX_id7;
    int ThreadCountY_id8;
    int ThreadCountZ_id9;
    uint ThreadCountPerGroup_id5;
    uint3 ThreadGroupCount_id4;
    uint ThreadGroupIndex_id6;
    uint LineId_id32;
    uint SegmentId_id33;
    float3 LinePosition_id31;
};
struct CS_INPUT 
{
    uint3 GroupId_id0 : SV_GroupID;
    uint3 DispatchThreadId_id1 : SV_DispatchThreadID;
};
struct Matrix4x4 
{
    float4x4 Matrix;
};
struct Ray 
{
    float3 ro, rd, sp, sn;
};
struct PointAttribute 
{
    float3 p;
    float3 t;
};
struct LineAttribute 
{
    float w;
    float4 c;
};
struct LineInfo 
{
    int id;
    int start;
    int count;
};
struct Pos3Norm3Col4Tex2 
{
    float3 Position;
    float3 Normal;
    float4 Color;
    float2 TexCoord;
};
struct Pos3Norm3Col4Tex2Tan4Id2 
{
    float3 Position;
    float3 Normal;
    float4 Color;
    float2 TexCoord;
    float4 Tangent;
    uint LineId;
    uint SegmentId;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int SampleCount_id45;
    int Resolution_id46;
    bool IsClose_id47;
    int ThicknessSpace_id48 = 0;
    int MeshType_id49 = 0;
    float4x4 Transform_id50;
    bool ViewAlign_id51;
    bool NormalBend_id52;
    int LineCount_id53;
    int CtrlPtCountGlobal_id54;
};
cbuffer PerDraw 
{
    float4x4 World_id18;
    float4x4 WorldInverse_id19;
    float4x4 WorldInverseTranspose_id20;
    float4x4 WorldView_id21;
    float4x4 WorldViewInverse_id22;
    float4x4 WorldViewProjection_id23;
    float3 WorldScale_id24;
    float4 EyeMS_id25;
};
cbuffer PerUpdate 
{
    float4 InputValue_id60;
    float3 InputValue_id61;
    float3 InputValue_id62;
    float InputValue_id63;
};
cbuffer PerView 
{
    float4x4 View_id11;
    float4x4 ViewInverse_id12;
    float4x4 Projection_id13;
    float4x4 ProjectionInverse_id14;
    float4x4 ViewProjection_id15;
    float2 ProjScreenRay_id16;
    float4 Eye_id17;
    float NearClipPlane_id26 = 1.0f;
    float FarClipPlane_id27 = 100.0f;
    float2 ZProjection_id28;
    float2 ViewSize_id29;
    float AspectRatio_id30;
};
StructuredBuffer<float3> ControlPointBuffer_id43;
RWStructuredBuffer<Pos3Norm3Col4Tex2Tan4Id2> outputBuffer_id44;
StructuredBuffer<LineInfo> InfoBuffer_id55;
uint sbSize3_id5(StructuredBuffer<float3> sBuffer)
{
    uint count, dummy;
    sBuffer.GetDimensions(count, dummy);
    return count;
}
float3x3 rot3D_id53(float3 axis, float angle)
{
    float c, s;
    sincos(angle, s, c);
    float t = 1 - c;
    float x = axis.x;
    float y = axis.y;
    float z = axis.z;
    return float3x3(t * x * x + c, t * x * y - s * z, t * x * z + s * y, t * x * y + s * z, t * y * y + c, t * y * z - s * x, t * x * z - s * y, t * y * z + s * x, t * z * z + c);
}
PointAttribute BSplineCubic_id15(float3 p1, float3 p2, float3 p3, float3 p4, float range)
{
    PointAttribute o = (PointAttribute)0;
    float mu = frac(range);
    float3 a0 = p4 - p3 * 3 + p2 * 3 - p1;
    float3 a1 = p3 * 3 - p2 * 6 + p1 * 3;
    float3 a2 = p3 * 3 - p1 * 3;
    float3 a3 = p3 + p2 * 4 + p1;
    o.p = (a3 + mu * (a2 + mu * (a1 + mu * a0))) / 6.;
    o.t = (mu * (2 * a0 * mu + a1) + mu * (a0 * mu + a1) + a2) / 6.;
    return o;
}
float3 sbLoadRange_id16(int index, StructuredBuffer<float3> sBuffer, uint start, uint range, float3 defaultValue = 0.)
{
    float3 value = defaultValue;
    uint count = min(range, max(sbSize3_id5(sBuffer) - start, 0));
    if (count > 0)
    {
        index = index < 0 ? count - (abs(index) % count) : index % count;
        value = sBuffer[index + start];
    }
    return value;
}
void FlatMeshLineStrip_id55(RWStructuredBuffer<Pos3Norm3Col4Tex2Tan4Id2> outputBuffer, uint id, uint lineId, uint segmentId, float3 pos, float3 tan, float scale, float4 color, int sampleCnt, bool normalBend, float3 up = float3(0, 1, 0))
{
    Pos3Norm3Col4Tex2Tan4Id2 v0, v1;
    float3 dir = normalize(cross(tan, up));
    v0.Position = pos + dir * .5 * scale;
    v1.Position = pos - dir * .5 * scale;
    float t = normalBend ? .5 : 1;
    v0.Normal = normalize(lerp(dir, up, t));
    v1.Normal = normalize(lerp(-dir, up, t));
    v0.Color = v1.Color = color;
    float div = 1.0 / (sampleCnt - 1);
    v0.TexCoord = float2(div * segmentId, 1);
    v1.TexCoord = float2(div * segmentId, 0);
    v0.Tangent = float4(tan, -1);
    v1.Tangent = float4(tan, -1);
    v0.LineId = v1.LineId = lineId;
    v0.SegmentId = v1.SegmentId = segmentId;
    uint pOffset = (id - 1) * 6;
    uint offset = id * 6;
    if (segmentId != 0)
    {
        outputBuffer[pOffset + 1] = v0;
        outputBuffer[pOffset + 4] = v1;
        outputBuffer[pOffset + 5] = v0;
    }
    if (segmentId != sampleCnt - 1)
    {
        outputBuffer[offset + 0] = v1;
        outputBuffer[offset + 2] = v0;
        outputBuffer[offset + 3] = v1;
    }
}
float3 Compute_id62()
{
    return InputValue_id61;
}
void TubeMeshLineStrip_id57(RWStructuredBuffer<Pos3Norm3Col4Tex2Tan4Id2> outputBuffer, uint id, uint lineId, uint segmentId, float3 pos, float3 tan, float scale, float4 color, int sampleCnt, int resolution, float3 up = float3(0, 1, 0))
{
    Pos3Norm3Col4Tex2Tan4Id2 v0, v1;
    float3 dir = normalize(cross(tan, cross(tan, up)));
    float3x3 r = rot3D_id53(normalize(tan), TWOPI_id37 / resolution);
    v0.Position = pos + dir * .5 * scale;
    v0.Color = v1.Color = color;
    float divX = 1.0 / (float)sampleCnt;
    float divY = 1.0 / resolution;
    v0.TexCoord = float2(divX * segmentId, 0);
    v0.Tangent = float4(tan, -1);
    v1.Tangent = float4(tan, -1);
    v0.LineId = v1.LineId = lineId;
    v0.SegmentId = v1.SegmentId = segmentId;

    for (uint i = 0; i < resolution; i++)
    {
        v0.Normal = dir;
        dir = mul(dir, r);
        v1.Position = pos + dir * .5 * scale;
        v1.Normal = dir;
        v1.TexCoord = float2(divX * segmentId, divY * (i + 1));
        uint prevOffset = (id - 1) * 6 * resolution + 6 * i;
        uint offset = id * 6 * resolution + 6 * i;
        if (segmentId != 0)
        {
            outputBuffer[prevOffset + 1] = v0;
            outputBuffer[prevOffset + 4] = v1;
            outputBuffer[prevOffset + 5] = v0;
        }
        if (segmentId != sampleCnt - 1)
        {
            outputBuffer[offset + 0] = v1;
            outputBuffer[offset + 2] = v0;
            outputBuffer[offset + 3] = v1;
        }
        v0.Position = v1.Position;
        v0.TexCoord = v1.TexCoord;
    }
}
float3 Compute_id61()
{
    return InputValue_id62;
}
float4 Compute_id60()
{
    return InputValue_id60;
}
float Compute_id59()
{
    return InputValue_id63;
}
PointAttribute SampleBSpline_id17(StructuredBuffer<float3> CtrlPtBuffer, float t, uint start, uint ctrlPtCount, bool Close)
{
    float range = frac(t);
    int t2 = round(t - range);
    float3 p1, p2, p3, p4;
    if (Close)
    {
        p1 = sbLoadRange_id16(t2 - 1, CtrlPtBuffer, start, ctrlPtCount);
        p2 = sbLoadRange_id16(t2, CtrlPtBuffer, start, ctrlPtCount);
        p3 = sbLoadRange_id16(t2 + 1, CtrlPtBuffer, start, ctrlPtCount);
        p4 = sbLoadRange_id16(t2 + 2, CtrlPtBuffer, start, ctrlPtCount);
    }
    else
    {
        p1 = sbLoadRange_id16(max(t2 - 1, 0), CtrlPtBuffer, start, ctrlPtCount);
        p2 = sbLoadRange_id16(t2, CtrlPtBuffer, start, ctrlPtCount);
        p3 = sbLoadRange_id16(min(t2 + 1, ctrlPtCount - 1), CtrlPtBuffer, start, ctrlPtCount);
        p4 = sbLoadRange_id16(min(t2 + 2, ctrlPtCount - 1), CtrlPtBuffer, start, ctrlPtCount);
    }
    return BSplineCubic_id15(p1, p2, p3, p4, range);
}
void Compute_id58(inout CS_STREAMS streams)
{
    uint dtid = streams.DispatchThreadId_id1.x;
    if (dtid >= (SampleCount_id45 + IsClose_id47) * LineCount_id53)
        return;
    int SegmentCount = SampleCount_id45 + IsClose_id47;
    uint lineId = streams.LineId_id32 = dtid / SegmentCount;
    uint segmentId = streams.SegmentId_id33 = dtid % SegmentCount;
    int startIndex, ctrlPtCount;
    uint count, dummy;
    InfoBuffer_id55.GetDimensions(count, dummy);
    if (count > 0)
    {
        LineInfo info = InfoBuffer_id55[lineId];
        startIndex = info.start;
        ctrlPtCount = info.count;
    }
    else
    {
        startIndex = lineId * CtrlPtCountGlobal_id54;
        ctrlPtCount = CtrlPtCountGlobal_id54;
    }
    float t = segmentId * (ctrlPtCount - (1 - IsClose_id47)) / ((float)SegmentCount - 1);
    t = segmentId == SampleCount_id45 ? .0 : t;
    PointAttribute p = SampleBSpline_id17(ControlPointBuffer_id43, t, startIndex, ctrlPtCount, IsClose_id47);
    float3 pos = mul(float4(p.p, 1), Transform_id50).xyz;
    float3 tan = mul(p.t, (float3x3)Transform_id50).xyz;
    streams.LinePosition_id31 = pos;
    float3 viewDir = ViewInverse_id12[3].xyz - pos;
    float3 viewFront = ViewInverse_id12[2].xyz;
    float scale = ThicknessSpace_id48 == 1 ? mul(float4(dot(viewFront, viewDir).xxx, 1.0), ProjectionInverse_id14).y * .2 : 1;
    scale *= Compute_id59();
    if (MeshType_id49 == 0)
    {
        FlatMeshLineStrip_id55(outputBuffer_id44, dtid - lineId, lineId, segmentId, pos, tan, scale, Compute_id60(), SegmentCount, NormalBend_id52, ViewAlign_id51 ? normalize(viewDir) : Compute_id62());
    }
    else
    {
        TubeMeshLineStrip_id57(outputBuffer_id44, dtid - lineId, lineId, segmentId, pos, tan, scale, Compute_id60(), SegmentCount, Resolution_id46, Compute_id61());
    }
}
[numthreads(1, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 1;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 1 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id58(streams);
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin BoxRenderer_ComputeFX [{UpVector = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}]
@P UpVector: InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerUpdate [Size: 16]
@C    InputValue_id44 => ShaderFX.InputValueFloat3
***************************
******  Resources    ******
***************************
@R    PositionBuffer_id36 => BoxRenderer_ComputeFX.PositionBuffer [Stage: Compute, Slot: (0-0)]
@R    DirectionBuffer_id37 => BoxRenderer_ComputeFX.DirectionBuffer [Stage: Compute, Slot: (1-1)]
@R    SizeBuffer_id38 => BoxRenderer_ComputeFX.SizeBuffer [Stage: Compute, Slot: (2-2)]
@R    DiffuseBuffer_id39 => BoxRenderer_ComputeFX.DiffuseBuffer [Stage: Compute, Slot: (3-3)]
@R    EmissionBuffer_id40 => BoxRenderer_ComputeFX.EmissionBuffer [Stage: Compute, Slot: (4-4)]
@R    AttributesBuffer_id41 => BoxRenderer_ComputeFX.AttributesBuffer [Stage: Compute, Slot: (5-5)]
@R    outputBuffer_id42 => BoxRenderer_ComputeFX.outputBuffer [Stage: Compute, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    BoxRenderer_ComputeFX => 40a142b79af9e1f63b44e281fc9db018
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    FuseCommonBuffer => 65b35e271cc4ebdf63ebebd0f53f481c
@S    FuseCommonTypes => 294db151085426350495bb436e7480dd
@S    BoxRendererCommon => f4fa510f4855ca5e08f8f41f6c6262e4
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
***************************
*****     Stages      *****
***************************
@G    Compute => b1bfe9e78eaeff9c5cbdbd8a3a6764c9
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float3 InputValue_id44;            // Offset:    0 Size:    12
//
// }
//
// Resource bind info for PositionBuffer_id36
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for DirectionBuffer_id37
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for SizeBuffer_id38
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for DiffuseBuffer_id39
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for EmissionBuffer_id40
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for AttributesBuffer_id41
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for outputBuffer_id42
// {
//
//   struct Pos3Norm3Col4Tex2Id
//   {
//       
//       float3 Position;               // Offset:    0
//       float3 Normal;                 // Offset:   12
//       float2 TexCoord;               // Offset:   24
//       float4 Attributes;             // Offset:   32
//       float4 Diffuse;                // Offset:   48
//       float4 Emission;               // Offset:   64
//       uint Id;                       // Offset:   80
//
//   } $Element;                        // Offset:    0 Size:    84
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PositionBuffer_id36               texture  struct         r/o             t0      1 
// DirectionBuffer_id37              texture  struct         r/o             t1      1 
// SizeBuffer_id38                   texture  struct         r/o             t2      1 
// DiffuseBuffer_id39                texture  struct         r/o             t3      1 
// EmissionBuffer_id40               texture  struct         r/o             t4      1 
// AttributesBuffer_id41             texture  struct         r/o             t5      1 
// outputBuffer_id42                     UAV  struct         r/w             u0      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_resource_structured t0, 12
dcl_resource_structured t1, 12
dcl_resource_structured t2, 12
dcl_resource_structured t3, 16
dcl_resource_structured t4, 16
dcl_resource_structured t5, 16
dcl_uav_structured u0, 84
dcl_input vThreadID.x
dcl_temps 17
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 88 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_ComputeFXEffect_faa643a6f543ba356f8ce4a0d974cbe0.hlsl"
bufinfo_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.x, t0.xyzw  // r0.x <- count

#line 97
ult r0.x, vThreadID.x, r0.x
if_nz r0.x

#line 98
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.xyz, vThreadID.x, l(0), t0.xyzx  // r0.x <- p.x; r0.y <- p.y; r0.z <- p.z

#line 100
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r1.xyz, vThreadID.x, l(0), t2.xyzx  // r1.x <- size.x; r1.y <- size.y; r1.z <- size.z

#line 101
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r2.xyz, vThreadID.x, l(0), t1.xyzx
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- dir.x; r2.y <- dir.y; r2.z <- dir.z

#line 102
  dp3 r0.w, cb0[0].xyzx, cb0[0].xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, cb0[0].yzxy  // r3.x <- up.y; r3.y <- up.z; r3.z <- up.x

#line 103
  mul r4.xyz, r2.zxyz, r3.xyzx
  mad r3.xyz, r2.yzxy, r3.yzxy, -r4.xyzx  // r3.x <- xDir.x; r3.y <- xDir.y; r3.z <- xDir.z

#line 104
  mul r4.xyz, r2.yzxy, r3.zxyz
  mad r4.xyz, r3.yzxy, r2.zxyz, -r4.xyzx  // r4.x <- yDir.x; r4.y <- yDir.y; r4.z <- yDir.z

#line 116
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r5.xyzw, vThreadID.x, l(0), t3.xyzw  // r5.x <- v3.Diffuse.x; r5.y <- v3.Diffuse.y; r5.z <- v3.Diffuse.z; r5.w <- v3.Diffuse.w

#line 117
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r6.xyzw, vThreadID.x, l(0), t4.xyzw  // r6.x <- v3.Emission.x; r6.y <- v3.Emission.y; r6.z <- v3.Emission.z; r6.w <- v3.Emission.w

#line 118
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r7.xyzw, vThreadID.x, l(0), t5.xyzw  // r7.x <- v3.Attributes.x; r7.y <- v3.Attributes.y; r7.z <- v3.Attributes.z; r7.w <- v3.Attributes.w

#line 123
  mul r8.xyz, r1.xyzx, l(-1.000000, 1.000000, 1.000000, 0.000000)
  mul r9.xyz, r4.xyzx, r8.yyyy
  mad r8.xyw, r8.xxxx, r3.xyxz, r9.xyxz
  mad r8.xyz, r8.zzzz, r2.xyzx, r8.xywx
  add r8.xyz, r0.xyzx, r8.xyzx  // r8.x <- v0.Position.x; r8.y <- v0.Position.y; r8.z <- v0.Position.z

#line 124
  mul r9.xyz, r1.yyyy, r4.xyzx
  mad r9.xyz, r1.xxxx, r3.xyzx, r9.xyzx
  mad r9.xyz, r1.zzzz, r2.xyzx, r9.xyzx
  add r9.xyz, r0.xyzx, r9.xyzx  // r9.x <- v1.Position.x; r9.y <- v1.Position.y; r9.z <- v1.Position.z

#line 125
  mul r10.xyz, r1.xyzx, l(-1.000000, -1.000000, 1.000000, 0.000000)
  mul r11.xyz, r4.xyzx, r10.yyyy
  mad r10.xyw, r10.xxxx, r3.xyxz, r11.xyxz
  mad r10.xyz, r10.zzzz, r2.xyzx, r10.xywx
  add r10.xyz, r0.xyzx, r10.xyzx  // r10.x <- v2.Position.x; r10.y <- v2.Position.y; r10.z <- v2.Position.z

#line 126
  mul r11.xyz, r1.xyzx, l(1.000000, -1.000000, 1.000000, 0.000000)
  mul r12.xyz, r4.xyzx, r11.yyyy
  mad r11.xyw, r11.xxxx, r3.xyxz, r12.xyxz
  mad r11.xyz, r11.zzzz, r2.xyzx, r11.xywx
  add r11.xyz, r0.xyzx, r11.xyzx  // r11.x <- v3.Position.x; r11.y <- v3.Position.y; r11.z <- v3.Position.z

#line 128
  imul null, r0.w, vThreadID.x, l(36)  // r0.w <- offset

#line 129
  mov r10.w, r2.x
  store_structured u0.xyzw, r0.w, l(0), r10.xyzw
  mov r2.w, l(0)
  store_structured u0.xyzw, r0.w, l(16), r2.yzww
  store_structured u0.xyzw, r0.w, l(32), r7.xyzw
  store_structured u0.xyzw, r0.w, l(48), r5.xyzw
  store_structured u0.xyzw, r0.w, l(64), r6.xyzw
  store_structured u0.x, r0.w, l(80), vThreadID.x

#line 132
  imad r12.xy, vThreadID.xxxx, l(36, 36, 0, 0), l(1, 3, 0, 0)

#line 130
  mov r9.w, r10.w
  store_structured u0.xyzw, r12.x, l(0), r9.xyzw
  mov r13.xy, r2.yzyy

#line 131
  mov r13.zw, l(0,0,1.000000,0)

#line 130
  store_structured u0.xyzw, r12.x, l(16), r13.xyzz
  store_structured u0.xyzw, r12.x, l(32), r7.xyzw
  store_structured u0.xyzw, r12.x, l(48), r5.xyzw
  store_structured u0.xyzw, r12.x, l(64), r6.xyzw
  store_structured u0.x, r12.x, l(80), vThreadID.x

#line 131
  imad r1.w, vThreadID.x, l(36), l(2)
  mov r8.w, r9.w
  store_structured u0.xyzw, r1.w, l(0), r8.xyzw
  store_structured u0.xyzw, r1.w, l(16), r13.xywz
  store_structured u0.xyzw, r1.w, l(32), r7.xyzw
  store_structured u0.xyzw, r1.w, l(48), r5.xyzw
  store_structured u0.xyzw, r1.w, l(64), r6.xyzw
  store_structured u0.x, r1.w, l(80), vThreadID.x

#line 132
  mov r11.w, r8.w
  store_structured u0.xyzw, r12.y, l(0), r11.xyzw
  store_structured u0.xyzw, r12.y, l(16), r13.xyzw
  store_structured u0.xyzw, r12.y, l(32), r7.xyzw
  store_structured u0.xyzw, r12.y, l(48), r5.xyzw
  store_structured u0.xyzw, r12.y, l(64), r6.xyzw
  store_structured u0.x, r12.y, l(80), vThreadID.x

#line 131
  imad r12.xyzw, vThreadID.xxxx, l(36, 36, 36, 36), l(4, 5, 6, 8)  // r12.z <- offset

#line 133
  store_structured u0.xyzw, r12.x, l(0), r9.xyzw
  store_structured u0.xyzw, r12.x, l(16), r13.xyzz
  store_structured u0.xyzw, r12.x, l(32), r7.xyzw
  store_structured u0.xyzw, r12.x, l(48), r5.xyzw
  store_structured u0.xyzw, r12.x, l(64), r6.xyzw
  store_structured u0.x, r12.x, l(80), vThreadID.x

#line 134
  store_structured u0.xyzw, r12.y, l(0), r10.xyzw
  store_structured u0.xyzw, r12.y, l(16), r13.xyww
  store_structured u0.xyzw, r12.y, l(32), r7.xyzw
  store_structured u0.xyzw, r12.y, l(48), r5.xyzw
  store_structured u0.xyzw, r12.y, l(64), r6.xyzw
  store_structured u0.x, r12.y, l(80), vThreadID.x

#line 123
  mul r13.xyz, r1.xyzx, l(1.000000, 1.000000, -1.000000, 0.000000)
  mul r14.xyz, r4.xyzx, r13.yyyy
  mad r13.xyw, r13.xxxx, r3.xyxz, r14.xyxz
  mad r13.xyz, r13.zzzz, r2.xyzx, r13.xywx
  add r13.xyz, r0.xyzx, r13.xyzx  // r13.x <- v0.Position.x; r13.y <- v0.Position.y; r13.z <- v0.Position.z

#line 124
  mul r14.xyz, r1.xyzx, l(-1.000000, 1.000000, -1.000000, 0.000000)
  mul r15.xyz, r4.xyzx, r14.yyyy
  mad r14.xyw, r14.xxxx, r3.xyxz, r15.xyxz
  mad r14.xyz, r14.zzzz, r2.xyzx, r14.xywx
  add r14.xyz, r0.xyzx, r14.xyzx  // r14.x <- v1.Position.x; r14.y <- v1.Position.y; r14.z <- v1.Position.z

#line 125
  mul r15.xyz, r1.xyzx, l(1.000000, -1.000000, -1.000000, 0.000000)
  mul r16.xyz, r4.xyzx, r15.yyyy
  mad r15.xyw, r15.xxxx, r3.xyxz, r16.xyxz
  mad r15.xyz, r15.zzzz, r2.xyzx, r15.xywx
  add r15.xyz, r0.xyzx, r15.xyzx  // r15.x <- v2.Position.x; r15.y <- v2.Position.y; r15.z <- v2.Position.z

#line 126
  mul r16.xyz, -r1.yyyy, r4.xyzx
  mad r1.xyw, -r1.xxxx, r3.xyxz, r16.xyxz
  mad r1.xyz, -r1.zzzz, r2.xyzx, r1.xywx
  add r1.xyz, r0.xyzx, r1.xyzx  // r1.x <- v3.Position.x; r1.y <- v3.Position.y; r1.z <- v3.Position.z

#line 127
  mov r15.w, -r2.x  // r15.w <- v3.Normal.x

#line 129
  store_structured u0.xyzw, r12.z, l(0), r15.xyzw
  mul r2.xyw, r2.yzyw, l(-1.000000, -1.000000, 0.000000, 1.000000)
  store_structured u0.xyzw, r12.z, l(16), r2.xyww
  store_structured u0.xyzw, r12.z, l(32), r7.xyzw
  store_structured u0.xyzw, r12.z, l(48), r5.xyzw
  store_structured u0.xyzw, r12.z, l(64), r6.xyzw
  store_structured u0.x, r12.z, l(80), vThreadID.x

#line 130
  or r0.x, r12.z, l(3)
  mov r14.w, r15.w
  store_structured u0.xyzw, r0.x, l(0), r14.xyzw
  mov r2.z, l(1.000000)
  store_structured u0.xyzw, r0.x, l(16), r2.xyzz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 131
  mov r13.w, r14.w
  store_structured u0.xyzw, r12.w, l(0), r13.xyzw
  store_structured u0.xyzw, r12.w, l(16), r2.xywz
  store_structured u0.xyzw, r12.w, l(32), r7.xyzw
  store_structured u0.xyzw, r12.w, l(48), r5.xyzw
  store_structured u0.xyzw, r12.w, l(64), r6.xyzw
  store_structured u0.x, r12.w, l(80), vThreadID.x

#line 128
  imad r12.xyzw, vThreadID.xxxx, l(36, 36, 36, 36), l(9, 10, 11, 12)  // r12.w <- offset

#line 132
  mov r1.w, r13.w
  store_structured u0.xyzw, r12.x, l(0), r1.xyzw
  store_structured u0.xyzw, r12.x, l(16), r2.xyzw
  store_structured u0.xyzw, r12.x, l(32), r7.xyzw
  store_structured u0.xyzw, r12.x, l(48), r5.xyzw
  store_structured u0.xyzw, r12.x, l(64), r6.xyzw
  store_structured u0.x, r12.x, l(80), vThreadID.x

#line 133
  store_structured u0.xyzw, r12.y, l(0), r14.xyzw
  store_structured u0.xyzw, r12.y, l(16), r2.xyzz
  store_structured u0.xyzw, r12.y, l(32), r7.xyzw
  store_structured u0.xyzw, r12.y, l(48), r5.xyzw
  store_structured u0.xyzw, r12.y, l(64), r6.xyzw
  store_structured u0.x, r12.y, l(80), vThreadID.x

#line 134
  store_structured u0.xyzw, r12.z, l(0), r15.xyzw
  store_structured u0.xyzw, r12.z, l(16), r2.xyww
  store_structured u0.xyzw, r12.z, l(32), r7.xyzw
  store_structured u0.xyzw, r12.z, l(48), r5.xyzw
  store_structured u0.xyzw, r12.z, l(64), r6.xyzw
  store_structured u0.x, r12.z, l(80), vThreadID.x

#line 129
  mov r13.w, r4.x
  store_structured u0.xyzw, r12.w, l(0), r13.xyzw
  mov r4.w, l(0)
  store_structured u0.xyzw, r12.w, l(16), r4.yzww
  store_structured u0.xyzw, r12.w, l(32), r7.xyzw
  store_structured u0.xyzw, r12.w, l(48), r5.xyzw
  store_structured u0.xyzw, r12.w, l(64), r6.xyzw
  store_structured u0.x, r12.w, l(80), vThreadID.x

#line 132
  iadd r0.xy, r12.wwww, l(1, 3, 0, 0)

#line 130
  mov r8.w, r13.w
  store_structured u0.xyzw, r0.x, l(0), r8.xyzw
  mov r2.xy, r4.yzyy

#line 131
  mov r2.zw, l(0,0,1.000000,0)

#line 130
  store_structured u0.xyzw, r0.x, l(16), r2.xyzz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 131
  iadd r0.x, r12.w, l(2)
  mov r9.w, r8.w
  store_structured u0.xyzw, r0.x, l(0), r9.xyzw
  store_structured u0.xyzw, r0.x, l(16), r2.xywz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 132
  mov r14.w, r9.w
  store_structured u0.xyzw, r0.y, l(0), r14.xyzw
  store_structured u0.xyzw, r0.y, l(16), r2.xyzw
  store_structured u0.xyzw, r0.y, l(32), r7.xyzw
  store_structured u0.xyzw, r0.y, l(48), r5.xyzw
  store_structured u0.xyzw, r0.y, l(64), r6.xyzw
  store_structured u0.x, r0.y, l(80), vThreadID.x

#line 131
  imad r12.xyzw, vThreadID.xxxx, l(36, 36, 36, 36), l(16, 17, 18, 20)  // r12.z <- offset

#line 133
  store_structured u0.xyzw, r12.x, l(0), r8.xyzw
  store_structured u0.xyzw, r12.x, l(16), r2.xyzz
  store_structured u0.xyzw, r12.x, l(32), r7.xyzw
  store_structured u0.xyzw, r12.x, l(48), r5.xyzw
  store_structured u0.xyzw, r12.x, l(64), r6.xyzw
  store_structured u0.x, r12.x, l(80), vThreadID.x

#line 134
  store_structured u0.xyzw, r12.y, l(0), r13.xyzw
  store_structured u0.xyzw, r12.y, l(16), r2.xyww
  store_structured u0.xyzw, r12.y, l(32), r7.xyzw
  store_structured u0.xyzw, r12.y, l(48), r5.xyzw
  store_structured u0.xyzw, r12.y, l(64), r6.xyzw
  store_structured u0.x, r12.y, l(80), vThreadID.x

#line 127
  mov r1.w, -r4.x  // r1.w <- v3.Normal.x

#line 129
  store_structured u0.xyzw, r12.z, l(0), r1.xyzw
  mul r2.xyw, r4.yzyw, l(-1.000000, -1.000000, 0.000000, 1.000000)
  store_structured u0.xyzw, r12.z, l(16), r2.xyww
  store_structured u0.xyzw, r12.z, l(32), r7.xyzw
  store_structured u0.xyzw, r12.z, l(48), r5.xyzw
  store_structured u0.xyzw, r12.z, l(64), r6.xyzw
  store_structured u0.x, r12.z, l(80), vThreadID.x

#line 130
  or r0.x, r12.z, l(3)
  mov r11.w, r1.w
  store_structured u0.xyzw, r0.x, l(0), r11.xyzw
  mov r2.z, l(1.000000)
  store_structured u0.xyzw, r0.x, l(16), r2.xyzz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 131
  mov r10.w, r11.w
  store_structured u0.xyzw, r12.w, l(0), r10.xyzw
  store_structured u0.xyzw, r12.w, l(16), r2.xywz
  store_structured u0.xyzw, r12.w, l(32), r7.xyzw
  store_structured u0.xyzw, r12.w, l(48), r5.xyzw
  store_structured u0.xyzw, r12.w, l(64), r6.xyzw
  store_structured u0.x, r12.w, l(80), vThreadID.x

#line 128
  imad r4.xyzw, vThreadID.xxxx, l(36, 36, 36, 36), l(21, 22, 23, 24)  // r4.w <- offset

#line 132
  mov r15.w, r10.w
  store_structured u0.xyzw, r4.x, l(0), r15.xyzw
  store_structured u0.xyzw, r4.x, l(16), r2.xyzw
  store_structured u0.xyzw, r4.x, l(32), r7.xyzw
  store_structured u0.xyzw, r4.x, l(48), r5.xyzw
  store_structured u0.xyzw, r4.x, l(64), r6.xyzw
  store_structured u0.x, r4.x, l(80), vThreadID.x

#line 133
  store_structured u0.xyzw, r4.y, l(0), r11.xyzw
  store_structured u0.xyzw, r4.y, l(16), r2.xyzz
  store_structured u0.xyzw, r4.y, l(32), r7.xyzw
  store_structured u0.xyzw, r4.y, l(48), r5.xyzw
  store_structured u0.xyzw, r4.y, l(64), r6.xyzw
  store_structured u0.x, r4.y, l(80), vThreadID.x

#line 134
  store_structured u0.xyzw, r4.z, l(0), r1.xyzw
  store_structured u0.xyzw, r4.z, l(16), r2.xyww
  store_structured u0.xyzw, r4.z, l(32), r7.xyzw
  store_structured u0.xyzw, r4.z, l(48), r5.xyzw
  store_structured u0.xyzw, r4.z, l(64), r6.xyzw
  store_structured u0.x, r4.z, l(80), vThreadID.x

#line 129
  mov r15.w, r3.x
  store_structured u0.xyzw, r4.w, l(0), r15.xyzw
  mov r3.w, l(0)
  store_structured u0.xyzw, r4.w, l(16), r3.yzww
  store_structured u0.xyzw, r4.w, l(32), r7.xyzw
  store_structured u0.xyzw, r4.w, l(48), r5.xyzw
  store_structured u0.xyzw, r4.w, l(64), r6.xyzw
  store_structured u0.x, r4.w, l(80), vThreadID.x

#line 132
  iadd r0.xy, r4.wwww, l(1, 3, 0, 0)

#line 130
  mov r9.w, r15.w
  store_structured u0.xyzw, r0.x, l(0), r9.xyzw
  mov r2.xy, r3.yzyy

#line 131
  mov r2.zw, l(0,0,1.000000,0)

#line 130
  store_structured u0.xyzw, r0.x, l(16), r2.xyzz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 131
  iadd r0.x, r4.w, l(2)
  mov r11.w, r9.w
  store_structured u0.xyzw, r0.x, l(0), r11.xyzw
  store_structured u0.xyzw, r0.x, l(16), r2.xywz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 132
  mov r11.xyz, r13.xyzx
  store_structured u0.xyzw, r0.y, l(0), r11.xyzw
  store_structured u0.xyzw, r0.y, l(16), r2.xyzw
  store_structured u0.xyzw, r0.y, l(32), r7.xyzw
  store_structured u0.xyzw, r0.y, l(48), r5.xyzw
  store_structured u0.xyzw, r0.y, l(64), r6.xyzw
  store_structured u0.x, r0.y, l(80), vThreadID.x

#line 131
  imad r4.xyzw, vThreadID.xxxx, l(36, 36, 36, 36), l(28, 29, 30, 32)  // r4.z <- offset

#line 133
  store_structured u0.xyzw, r4.x, l(0), r9.xyzw
  store_structured u0.xyzw, r4.x, l(16), r2.xyzz
  store_structured u0.xyzw, r4.x, l(32), r7.xyzw
  store_structured u0.xyzw, r4.x, l(48), r5.xyzw
  store_structured u0.xyzw, r4.x, l(64), r6.xyzw
  store_structured u0.x, r4.x, l(80), vThreadID.x

#line 134
  store_structured u0.xyzw, r4.y, l(0), r15.xyzw
  store_structured u0.xyzw, r4.y, l(16), r2.xyww
  store_structured u0.xyzw, r4.y, l(32), r7.xyzw
  store_structured u0.xyzw, r4.y, l(48), r5.xyzw
  store_structured u0.xyzw, r4.y, l(64), r6.xyzw
  store_structured u0.x, r4.y, l(80), vThreadID.x

#line 127
  mov r14.w, -r3.x  // r14.w <- v3.Normal.x

#line 129
  store_structured u0.xyzw, r4.z, l(0), r14.xyzw
  mul r2.xyw, r3.yzyw, l(-1.000000, -1.000000, 0.000000, 1.000000)
  store_structured u0.xyzw, r4.z, l(16), r2.xyww
  store_structured u0.xyzw, r4.z, l(32), r7.xyzw
  store_structured u0.xyzw, r4.z, l(48), r5.xyzw
  store_structured u0.xyzw, r4.z, l(64), r6.xyzw
  store_structured u0.x, r4.z, l(80), vThreadID.x

#line 130
  or r0.x, r4.z, l(3)
  mov r10.w, r14.w
  store_structured u0.xyzw, r0.x, l(0), r10.xyzw
  mov r2.z, l(1.000000)
  store_structured u0.xyzw, r0.x, l(16), r2.xyzz
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 131
  mov r8.w, r10.w
  store_structured u0.xyzw, r4.w, l(0), r8.xyzw
  store_structured u0.xyzw, r4.w, l(16), r2.xywz
  store_structured u0.xyzw, r4.w, l(32), r7.xyzw
  store_structured u0.xyzw, r4.w, l(48), r5.xyzw
  store_structured u0.xyzw, r4.w, l(64), r6.xyzw
  store_structured u0.x, r4.w, l(80), vThreadID.x

#line 134
  imad r0.xyz, vThreadID.xxxx, l(36, 36, 36, 0), l(33, 34, 35, 0)

#line 132
  mov r8.xyz, r1.xyzx
  store_structured u0.xyzw, r0.x, l(0), r8.xyzw
  store_structured u0.xyzw, r0.x, l(16), r2.xyzw
  store_structured u0.xyzw, r0.x, l(32), r7.xyzw
  store_structured u0.xyzw, r0.x, l(48), r5.xyzw
  store_structured u0.xyzw, r0.x, l(64), r6.xyzw
  store_structured u0.x, r0.x, l(80), vThreadID.x

#line 133
  store_structured u0.xyzw, r0.y, l(0), r10.xyzw
  store_structured u0.xyzw, r0.y, l(16), r2.xyzz
  store_structured u0.xyzw, r0.y, l(32), r7.xyzw
  store_structured u0.xyzw, r0.y, l(48), r5.xyzw
  store_structured u0.xyzw, r0.y, l(64), r6.xyzw
  store_structured u0.x, r0.y, l(80), vThreadID.x

#line 134
  store_structured u0.xyzw, r0.z, l(0), r14.xyzw
  store_structured u0.xyzw, r0.z, l(16), r2.xyww
  store_structured u0.xyzw, r0.z, l(32), r7.xyzw
  store_structured u0.xyzw, r0.z, l(48), r5.xyzw
  store_structured u0.xyzw, r0.z, l(64), r6.xyzw
  store_structured u0.x, r0.z, l(80), vThreadID.x

#line 135
endif 

#line 150
ret 
// Approximately 330 instruction slots used
***************************
*************************/
static const float3 QuadPositions_id33[24] = { float3(-1, 1, 1), float3(1, 1, 1), float3(-1, -1, 1), float3(1, -1, 1), float3(1, 1, -1), float3(-1, 1, -1), float3(1, -1, -1), float3(-1, -1, -1), float3(1, 1, 1), float3(-1, 1, 1), float3(1, 1, -1), float3(-1, 1, -1), float3(-1, -1, 1), float3(1, -1, 1), float3(-1, -1, -1), float3(1, -1, -1), float3(1, -1, 1), float3(1, 1, 1), float3(1, -1, -1), float3(1, 1, -1), float3(-1, 1, 1), float3(-1, -1, 1), float3(-1, 1, -1), float3(-1, -1, -1)};
static const float3 QuadNormals_id34[6] = { float3(0, 0, 1), float3(0, 0, -1), float3(0, 1, 0), float3(0, -1, 0), float3(1, 0, 0), float3(-1, 0, 0)};
static const float2 QuadUV_id35[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
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
    uint Id_id31;
    float3 Position_id32;
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
struct Pos3Norm3Col4Tex2Id 
{
    float3 Position;
    float3 Normal;
    float2 TexCoord;
    float4 Attributes;
    float4 Diffuse;
    float4 Emission;
    uint Id;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
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
    float3 InputValue_id44;
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
StructuredBuffer<float3> PositionBuffer_id36;
StructuredBuffer<float3> DirectionBuffer_id37;
StructuredBuffer<float3> SizeBuffer_id38;
StructuredBuffer<float4> DiffuseBuffer_id39;
StructuredBuffer<float4> EmissionBuffer_id40;
StructuredBuffer<float4> AttributesBuffer_id41;
RWStructuredBuffer<Pos3Norm3Col4Tex2Id> outputBuffer_id42;
float3 Compute_id16()
{
    return InputValue_id44;
}
uint sbSize3_id5(StructuredBuffer<float3> sBuffer)
{
    uint count, dummy;
    sBuffer.GetDimensions(count, dummy);
    return count;
}
void Compute_id15(inout CS_STREAMS streams)
{
    uint dtid = streams.DispatchThreadId_id1.x;
    uint n = sbSize3_id5(PositionBuffer_id36);
    if (dtid >= n)
        return;
    streams.Id_id31 = dtid;
    float3 p = PositionBuffer_id36[dtid];
    streams.Position_id32 = p;
    float3 size = SizeBuffer_id38[dtid];
    float3 dir = normalize(DirectionBuffer_id37[dtid]);
    float3 up = normalize(Compute_id16());
    float3 xDir = cross(dir, up);
    float3 yDir = cross(xDir, dir);
    float3x3 transform = float3x3(xDir, yDir, dir);
    Pos3Norm3Col4Tex2Id v0, v1, v2, v3;
    v0.Id = v1.Id = v2.Id = v3.Id = dtid;
    v0.TexCoord = QuadUV_id35[0];
    v1.TexCoord = QuadUV_id35[1];
    v2.TexCoord = QuadUV_id35[2];
    v3.TexCoord = QuadUV_id35[3];
    float4 Emission;
    float EmissionIntensity;
    float Roughness;
    float Metallic;
    v0.Diffuse = v1.Diffuse = v2.Diffuse = v3.Diffuse = DiffuseBuffer_id39[dtid];
    v0.Emission = v1.Emission = v2.Emission = v3.Emission = EmissionBuffer_id40[dtid];
    v0.Attributes = v1.Attributes = v2.Attributes = v3.Attributes = AttributesBuffer_id41[dtid];

    [unroll]
    for (int i = 0; i < 6; i++)
    {
        v0.Position = mul(QuadPositions_id33[i * 4 + 0] * size, transform) + p;
        v1.Position = mul(QuadPositions_id33[i * 4 + 1] * size, transform) + p;
        v2.Position = mul(QuadPositions_id33[i * 4 + 2] * size, transform) + p;
        v3.Position = mul(QuadPositions_id33[i * 4 + 3] * size, transform) + p;
        v0.Normal = v1.Normal = v2.Normal = v3.Normal = mul(QuadNormals_id34[i], transform);
        uint offset = dtid * 36 + i * 6;
        outputBuffer_id42[offset + 0] = v2;
        outputBuffer_id42[offset + 1] = v1;
        outputBuffer_id42[offset + 2] = v0;
        outputBuffer_id42[offset + 3] = v3;
        outputBuffer_id42[offset + 4] = v1;
        outputBuffer_id42[offset + 5] = v2;
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
    Compute_id15(streams);
}
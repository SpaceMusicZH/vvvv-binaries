/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_0>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat<Input_18> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_19> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_18>}, {Y = GetVarFloat<Input_18>}, {Z = GetVarFloat<Input_18>}]}], mixin AssignVarFloat3<Input_20> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_21> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_19>}, {Right = GetVarFloat3<Input_20>}]}], mixin AssignVarFloat3<Plus_22> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_17>}, {Right = GetVarFloat3<Multiply_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_22>}, {Right = GetVarFloat3<Input_23>}]}]]}]}, {Value = GetVarFloat3<Multiply_24>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_1> [{Value = InputFloat4<ShaderFX.InputValueFloat4.i1,PerUpdate>}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<Default_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_25> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_26> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_25>}, {Y = GetVarFloat<Input_25>}, {Z = GetVarFloat<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_28> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_9> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_10> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_9>}, {Y = GetVarFloat<Input_9>}, {Z = GetVarFloat<Input_9>}]}], mixin AssignVarFloat3<Input_11> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_12> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_10>}, {Right = GetVarFloat3<Input_11>}]}], mixin AssignVarFloat3<Input_13> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_14> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_12>}, {Right = GetVarFloat3<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_16> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_14>}, {Right = GetVarFloat3<Input_15>}]}]]}]}, {Value = GetVarFloat3<Plus_16>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_4> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_3>}, {Y = GetVarFloat<Input_3>}, {Z = GetVarFloat<Input_3>}]}], mixin AssignVarFloat3<Input_5> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_6> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_4>}, {Right = GetVarFloat3<Input_5>}]}], mixin AssignVarFloat3<Input_7> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_8> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_6>}, {Right = GetVarFloat3<Input_7>}]}]]}]}, {Value = GetVarFloat3<Plus_8>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_0>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_1> [{Value = InputFloat4<ShaderFX.InputValueFloat4.i1,PerUpdate>}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<Default_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_4> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_3>}, {Y = GetVarFloat<Input_3>}, {Z = GetVarFloat<Input_3>}]}], mixin AssignVarFloat3<Input_5> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_6> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_4>}, {Right = GetVarFloat3<Input_5>}]}], mixin AssignVarFloat3<Input_7> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_8> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_6>}, {Right = GetVarFloat3<Input_7>}]}]]}]}, {Value = GetVarFloat3<Plus_8>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_9> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_10> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_9>}, {Y = GetVarFloat<Input_9>}, {Z = GetVarFloat<Input_9>}]}], mixin AssignVarFloat3<Input_11> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_12> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_10>}, {Right = GetVarFloat3<Input_11>}]}], mixin AssignVarFloat3<Input_13> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_14> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_12>}, {Right = GetVarFloat3<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_16> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_14>}, {Right = GetVarFloat3<Input_15>}]}]]}]}, {Value = GetVarFloat3<Plus_16>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat<Input_18> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_19> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_18>}, {Y = GetVarFloat<Input_18>}, {Z = GetVarFloat<Input_18>}]}], mixin AssignVarFloat3<Input_20> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_21> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_19>}, {Right = GetVarFloat3<Input_20>}]}], mixin AssignVarFloat3<Plus_22> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_17>}, {Right = GetVarFloat3<Multiply_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_22>}, {Right = GetVarFloat3<Input_23>}]}]]}]}, {Value = GetVarFloat3<Multiply_24>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_25> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_26> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_25>}, {Y = GetVarFloat<Input_25>}, {Z = GetVarFloat<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_28> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerFrame [Size: 32]
@C    ParticlesCount_id98 => SMGridSimulation_ComputeFX.ParticlesCount
@C    Fake_id99 => SMGridSimulation_ComputeFX.Fake
@C    MeshCount_id100 => SMGridSimulation_ComputeFX.MeshCount
@C    GlobalDamping_id101 => SMGridSimulation_ComputeFX.GlobalDamping
@C    ColorDamping_id102 => SMGridSimulation_ComputeFX.ColorDamping
cbuffer PerUpdate [Size: 192]
@C    InputValue_id108 => ShaderFX.InputValueFloat3.i5
@C    InputValue_id111 => ShaderFX.InputValueFloat.i2
@C    InputValue_id119 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id130 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id140 => ShaderFX.InputValueFloat.i3
@C    InputValue_id148 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id155 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id165 => ShaderFX.InputValueFloat.i1
@C    InputValue_id173 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id180 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id187 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id197 => ShaderFX.InputValueFloat
@C    InputValue_id205 => ShaderFX.InputValueFloat3
@C    InputValue_id212 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id222 => ShaderFX.InputValueFloat4
@C    InputValue_id228 => ShaderFX.InputValueFloat4.i1
cbuffer Globals [Size: 96]
@C    Texture0TexelSize_id12 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id14 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id16 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id18 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id20 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id22 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id24 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id26 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id28 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id30 => Texturing.Texture9TexelSize
@C    Reset_id95 => GPUMappingDamper_ShaderFX.Reset
***************************
******  Resources    ******
***************************
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    LastValues_id96 => GPUMappingDamper_ShaderFX.LastValues [Stage: Compute, Slot: (0-0)]
@R    ParticlesBuffer_id103 => SMGridSimulation_ComputeFX.ParticlesBuffer [Stage: Compute, Slot: (1-1)]
@R    PerFrame => PerFrame [Stage: Compute, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Compute, Slot: (1-1)]
@R    Globals => Globals [Stage: Compute, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    SMGridSimulation_ComputeFX => b898d1713930155e72f79c736fa063e0
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    SMPlacementVertexStruct => d7db2b1ae2bb867d6babd72d88045d05
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    GPUMappingDamper_ShaderFX => d5d887977d3645180563743e87b0b681
@S    SMMappingValuesStruct => 954c1a692dee3148d1e131c056afac72
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    DoFloat3 => a777cae10437d10548290d7d3a46cd99
@S    AssignVarFloat3 => 4040ea8570cd36802d25459fd79c8876
@S    StreamVariableFloat3 => f8eb882d1acd8b041f9a967c812a0d72
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    SMCalcLuminance_ShaderFX => c1d8c73c085a0ac1966a292c66946650
***************************
*****     Stages      *****
***************************
@G    Compute => ee4f576d0afe0cd6be2ecbfd371ec5b2
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerFrame
// {
//
//   uint ParticlesCount_id98;          // Offset:    0 Size:     4
//   bool Fake_id99;                    // Offset:    4 Size:     4
//   uint MeshCount_id100;              // Offset:    8 Size:     4
//   float GlobalDamping_id101;         // Offset:   12 Size:     4
//   float ColorDamping_id102;          // Offset:   16 Size:     4
//
// }
//
// cbuffer PerUpdate
// {
//
//   float3 InputValue_id108;           // Offset:    0 Size:    12
//   float InputValue_id111;            // Offset:   12 Size:     4
//   float3 InputValue_id119;           // Offset:   16 Size:    12
//   float3 InputValue_id130;           // Offset:   32 Size:    12
//   float InputValue_id140;            // Offset:   44 Size:     4
//   float3 InputValue_id148;           // Offset:   48 Size:    12
//   float3 InputValue_id155;           // Offset:   64 Size:    12
//   float InputValue_id165;            // Offset:   76 Size:     4
//   float3 InputValue_id173;           // Offset:   80 Size:    12
//   float3 InputValue_id180;           // Offset:   96 Size:    12
//   float3 InputValue_id187;           // Offset:  112 Size:    12
//   float InputValue_id197;            // Offset:  124 Size:     4
//   float3 InputValue_id205;           // Offset:  128 Size:    12
//   float3 InputValue_id212;           // Offset:  144 Size:    12
//   float4 InputValue_id222;           // Offset:  160 Size:    16
//   float4 InputValue_id228;           // Offset:  176 Size:    16
//
// }
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id12;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id14;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id16;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id18;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id20;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id22;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id24;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id26;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id28;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id30;     // Offset:   72 Size:     8 [unused]
//   bool Reset_id95;                   // Offset:   80 Size:     4
//
// }
//
// Resource bind info for Damping_id97
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for PlacementVertices_id104
// {
//
//   struct PlacementVertex
//   {
//       
//       float3 Pos;                    // Offset:    0
//       float4 Rot;                    // Offset:   12
//       float3 UVW;                    // Offset:   28
//       float2 Pad;                    // Offset:   40
//
//   } $Element;                        // Offset:    0 Size:    48
//
// }
//
// Resource bind info for LastValues_id96
// {
//
//   struct SMMappingValues
//   {
//       
//       float3 Trans;                  // Offset:    0
//       float3 Rot;                    // Offset:   12
//       float3 Dim;                    // Offset:   24
//       float3 Piv;                    // Offset:   36
//
//   } $Element;                        // Offset:    0 Size:    48
//
// }
//
// Resource bind info for ParticlesBuffer_id103
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
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// LastValues_id96                       UAV  struct         r/w             u0      1 
// ParticlesBuffer_id103                 UAV  struct         r/w             u1      1 
// PerFrame                          cbuffer      NA          NA            cb0      1 
// PerUpdate                         cbuffer      NA          NA            cb1      1 
// Globals                           cbuffer      NA          NA            cb2      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_constantbuffer CB1[12], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_resource_structured t0, 12
dcl_resource_structured t1, 48
dcl_uav_structured u0, 48
dcl_uav_structured u1, 64
dcl_input vThreadID.x
dcl_temps 14
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 852 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_005176e88e7126c617ac1e261b00fecf.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 853
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r3.w, vThreadID.x, l(28), t1.xxxx  // r3.w <- p.UVW.x

#line 864
  if_nz cb2[5].x

#line 874
    mov r6.xyz, l(0,0,0,0)  // r6.x <- POut.Vel.x; r6.y <- POut.Vel.y; r6.z <- POut.Vel.z
    mov r0.xyz, r4.xyzx  // r0.x <- oldPos.x; r0.y <- oldPos.y; r0.z <- oldPos.z
    mov r5.z, r4.w
    mov r1.xyz, r5.zxyz  // r1.x <- oldRot.x; r1.y <- oldRot.y; r1.z <- oldRot.z
    mov r2.xyz, l(0.010000,0.010000,0.010000,0)  // r2.x <- oldSize.x; r2.y <- oldSize.y; r2.z <- oldSize.z
    mov r3.xyz, l(1.000000,1.000000,1.000000,0)  // r3.x <- oldCol.x; r3.y <- oldCol.y; r3.z <- oldCol.z
  else   // Prior locations: r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x; r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z; r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z
    mov r6.x, r0.w  // r6.x <- POut.Vel.x
    mov r6.yz, r1.zzwz  // r6.y <- POut.Vel.y; r6.z <- POut.Vel.z
    mov r1.z, r2.w  // r0.x <- oldPos.x; r0.y <- oldPos.y; r0.z <- oldPos.z; r1.x <- oldRot.x; r1.y <- oldRot.y; r1.z <- oldRot.z; r2.x <- oldSize.x; r2.y <- oldSize.y; r2.z <- oldSize.z; r3.x <- oldCol.x; r3.y <- oldCol.y; r3.z <- oldCol.z
  endif 

#line 825
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r7.xyzw, vThreadID.x, l(0), u0.wxyz  // r7.y <- m.Trans.x; r7.z <- m.Trans.y; r7.w <- m.Trans.z; r7.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(16), u0.xzwy  // r8.x <- m.Rot.y; r8.w <- m.Rot.z; r8.y <- m.Dim.x; r8.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(32), u0.xyzw  // r9.x <- m.Dim.z; r9.y <- m.Piv.x; r9.z <- m.Piv.y; r9.w <- m.Piv.z

#line 429
  mad r10.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r10.x <- <Compute_id263 return value>.x; r10.y <- <Compute_id263 return value>.y; r10.z <- <Compute_id263 return value>.z

#line 828
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r11.xyz, l(0), l(0), t0.xyzx
  add r12.xyz, r7.yzwy, -r10.xyzx
  mad r10.xyz, r11.xyzx, r12.xyzx, r10.xyzx  // r10.x <- m.Trans.x; r10.y <- m.Trans.y; r10.z <- m.Trans.z

#line 405
  mad r11.xyz, cb1[4].wwww, cb1[5].xyzx, cb1[6].xyzx  // r11.x <- <Compute_id208 return value>.x; r11.y <- <Compute_id208 return value>.y; r11.z <- <Compute_id208 return value>.z

#line 397
  add r11.xyz, r11.xyzx, cb1[7].xyzx  // r11.x <- <Compute_id216 return value>.x; r11.y <- <Compute_id216 return value>.y; r11.z <- <Compute_id216 return value>.z

#line 829
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(1), l(0), t0.xyzx
  mov r7.yz, r8.xxwx
  add r7.xyz, -r11.xyzx, r7.xyzx
  mad r7.xyz, r12.xyzx, r7.xyzx, r11.xyzx  // r7.x <- m.Rot.x; r7.y <- m.Rot.y; r7.z <- m.Rot.z

#line 373
  mad r11.xyz, cb1[0].wwww, cb1[1].xyzx, cb1[0].xyzx  // r11.x <- <Compute_id76 return value>.x; r11.y <- <Compute_id76 return value>.y; r11.z <- <Compute_id76 return value>.z

#line 365
  mul r12.xyz, r11.xyzx, cb1[2].xyzx  // r12.x <- <Compute_id84 return value>.x; r12.y <- <Compute_id84 return value>.y; r12.z <- <Compute_id84 return value>.z

#line 830
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(2), l(0), t0.xyzx
  mov r8.w, r9.x
  mad r8.xyz, -r11.xyzx, cb1[2].xyzx, r8.yzwy
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Dim.x; r8.y <- m.Dim.y; r8.z <- m.Dim.z

#line 341
  mad r11.xyz, cb1[2].wwww, cb1[3].xyzx, cb1[4].xyzx  // r11.x <- <Compute_id165 return value>.x; r11.y <- <Compute_id165 return value>.y; r11.z <- <Compute_id165 return value>.z

#line 831
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(3), l(0), t0.xyzx
  add r9.xyz, r9.yzwy, -r11.xyzx
  mad r9.yzw, r12.xxyz, r9.xxyz, r11.xxyz  // r9.y <- m.Piv.x; r9.z <- m.Piv.y

#line 833
  mov r10.w, r7.x
  store_structured u0.xyzw, vThreadID.x, l(0), r10.xyzw
  mov r11.xy, r7.yzyy
  mov r11.zw, r8.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r11.xyzw
  mov r9.x, r8.z
  store_structured u0.xyzw, vThreadID.x, l(32), r9.xyzw

#line 840
  mov r5.w, r4.w
  add r7.xyz, r5.wxyw, r7.xyzx

#line 811
  mul r11.xyz, r7.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r11.x <- angle.x; r11.y <- angle.y; r11.z <- angle.z

#line 767
  sincos r9.x, r12.x, r11.z  // r12.x <- c; r9.x <- s

#line 770
  mul r11.zw, r9.zzzy, r9.xxxx

#line 769
  mad r0.w, r12.x, r9.y, -r11.z  // r0.w <- p.x

#line 770
  mad r1.w, r12.x, r9.z, r11.w  // r1.w <- p.y

#line 757
  sincos r9.x, r11.x, r11.x  // r11.x <- c; r9.x <- s

#line 759
  mul r2.w, r9.w, r9.x
  mad r12.y, r11.x, r1.w, -r2.w  // r12.y <- p.y

#line 760
  mul r2.w, r9.w, r11.x
  mad r1.w, r9.x, r1.w, r2.w  // r1.w <- p.z

#line 747
  sincos r9.x, r11.x, r11.y  // r11.x <- c; r9.x <- s

#line 749
  mul r2.w, r1.w, r9.x
  mad r12.x, r11.x, r0.w, r2.w  // r12.x <- p.x

#line 750
  mul r1.w, r1.w, r11.x
  mad r12.z, -r9.x, r0.w, r1.w  // r12.z <- p.z

#line 811
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 767
  sincos r9.x, r11.x, r5.z  // r11.x <- c; r9.x <- s

#line 770
  mul r5.zw, r10.yyyx, r9.xxxx

#line 769
  mad r0.w, r11.x, r10.x, -r5.z

#line 770
  mad r1.w, r11.x, r10.y, r5.w  // r1.w <- p.y

#line 757
  sincos r5.x, r9.x, r5.x  // r9.x <- c; r5.x <- s

#line 759
  mul r2.w, r10.z, r5.x
  mad r11.y, r9.x, r1.w, -r2.w  // r11.y <- p.y

#line 760
  mul r2.w, r10.z, r9.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 747
  sincos r5.x, r9.x, r5.y  // r9.x <- c; r5.x <- s

#line 749
  mul r2.w, r1.w, r5.x
  mad r11.x, r9.x, r0.w, r2.w  // r11.x <- p.x

#line 750
  mul r1.w, r1.w, r9.x
  mad r11.z, -r5.x, r0.w, r1.w  // r11.z <- p.z

#line 841
  add r5.xyz, r12.xyzx, r11.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 333
  dp3 r0.w, cb1[11].xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id41 return value>

#line 876
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 877
  add r0.xyz, r1.xyzx, -r7.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r7.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 878
  add r1.xyz, r2.xyzx, -r8.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r8.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 879
  add r2.xyz, r3.xyzx, -cb1[10].xyzx
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, cb1[10].xyzx  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 880
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 884
  movc r3.xyz, cb0[0].yyyy, r3.wwww, r6.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 885
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 900
ret 
// Approximately 110 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
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
    float2 TexCoord_id59;
    float2 TexCoord1_id60;
    float2 TexCoord2_id61;
    uint InstanceID_id90;
    float Input_3_id196;
    float3 SMVector3Join_ShaderFXResult_4_id199;
    float3 Input_5_id204;
    float3 Multiply_6_id207;
    float3 Input_7_id211;
    float3 Plus_8_id214;
    float Input_9_id164;
    float3 SMVector3Join_ShaderFXResult_10_id167;
    float3 Input_11_id172;
    float3 Multiply_12_id175;
    float3 Input_13_id179;
    float3 Plus_14_id182;
    float3 Input_15_id186;
    float3 Plus_16_id189;
    float3 Input_17_id107;
    float Input_18_id110;
    float3 SMVector3Join_ShaderFXResult_19_id113;
    float3 Input_20_id118;
    float3 Multiply_21_id121;
    float3 Plus_22_id125;
    float3 Input_23_id129;
    float3 Multiply_24_id132;
    float Input_25_id139;
    float3 SMVector3Join_ShaderFXResult_26_id142;
    float3 Input_27_id147;
    float3 Multiply_28_id150;
    float3 Input_29_id154;
    float3 Plus_30_id157;
    float4 Default_0_id221;
    float4 Default_1_id227;
    float SMCalcLuminance_ShaderFXResult_2_id230;
};
struct CS_INPUT 
{
    uint3 GroupId_id0 : SV_GroupID;
    uint3 DispatchThreadId_id1 : SV_DispatchThreadID;
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
struct PlacementVertex 
{
    float3 Pos;
    float4 Rot;
    float3 UVW;
    float2 Pad;
};
struct SMMappingValues 
{
    float3 Trans;
    float3 Rot;
    float3 Dim;
    float3 Piv;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
};
cbuffer PerFrame 
{
    uint ParticlesCount_id98;
    bool Fake_id99;
    uint MeshCount_id100;
    float GlobalDamping_id101;
    float ColorDamping_id102;
};
cbuffer PerUpdate 
{
    float3 InputValue_id108;
    float InputValue_id111;
    float3 InputValue_id119;
    float3 InputValue_id130;
    float InputValue_id140;
    float3 InputValue_id148;
    float3 InputValue_id155;
    float InputValue_id165;
    float3 InputValue_id173;
    float3 InputValue_id180;
    float3 InputValue_id187;
    float InputValue_id197;
    float3 InputValue_id205;
    float3 InputValue_id212;
    float4 InputValue_id222;
    float4 InputValue_id228;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id12;
    float2 Texture1TexelSize_id14;
    float2 Texture2TexelSize_id16;
    float2 Texture3TexelSize_id18;
    float2 Texture4TexelSize_id20;
    float2 Texture5TexelSize_id22;
    float2 Texture6TexelSize_id24;
    float2 Texture7TexelSize_id26;
    float2 Texture8TexelSize_id28;
    float2 Texture9TexelSize_id30;
    bool Reset_id95;
};
Texture2D Texture0_id11;
Texture2D Texture1_id13;
Texture2D Texture2_id15;
Texture2D Texture3_id17;
Texture2D Texture4_id19;
Texture2D Texture5_id21;
Texture2D Texture6_id23;
Texture2D Texture7_id25;
Texture2D Texture8_id27;
Texture2D Texture9_id29;
TextureCube TextureCube0_id31;
TextureCube TextureCube1_id32;
TextureCube TextureCube2_id33;
TextureCube TextureCube3_id34;
Texture3D Texture3D0_id35;
Texture3D Texture3D1_id36;
Texture3D Texture3D2_id37;
Texture3D Texture3D3_id38;
SamplerState Sampler_id39;
SamplerState PointSampler_id40 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id41 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id42 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id43 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id44 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id45 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id46 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id47 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id48 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id49;
SamplerState Sampler1_id50;
SamplerState Sampler2_id51;
SamplerState Sampler3_id52;
SamplerState Sampler4_id53;
SamplerState Sampler5_id54;
SamplerState Sampler6_id55;
SamplerState Sampler7_id56;
SamplerState Sampler8_id57;
SamplerState Sampler9_id58;
RWStructuredBuffer<SMMappingValues> LastValues_id96;
StructuredBuffer<float3> Damping_id97;
RWStructuredBuffer<SMGridParticle> ParticlesBuffer_id103;
StructuredBuffer<PlacementVertex> PlacementVertices_id104;
float3 Compute_id162(inout CS_STREAMS streams)
{
    return streams.Input_29_id154;
}
float3 Compute_id160(inout CS_STREAMS streams)
{
    return streams.Multiply_28_id150;
}
float3 Compute_id154(inout CS_STREAMS streams)
{
    return streams.Input_27_id147;
}
float3 Compute_id152(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_26_id142;
}
float Compute_id146(inout CS_STREAMS streams)
{
    return streams.Input_25_id139;
}
float Compute_id144(inout CS_STREAMS streams)
{
    return streams.Input_25_id139;
}
float Compute_id142(inout CS_STREAMS streams)
{
    return streams.Input_25_id139;
}
float3 Compute_id81(inout CS_STREAMS streams)
{
    return streams.Input_23_id129;
}
float3 Compute_id79(inout CS_STREAMS streams)
{
    return streams.Plus_22_id125;
}
float3 Compute_id73(inout CS_STREAMS streams)
{
    return streams.Multiply_21_id121;
}
float3 Compute_id71(inout CS_STREAMS streams)
{
    return streams.Input_17_id107;
}
float3 Compute_id67(inout CS_STREAMS streams)
{
    return streams.Input_20_id118;
}
float3 Compute_id65(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_19_id113;
}
float Compute_id59(inout CS_STREAMS streams)
{
    return streams.Input_18_id110;
}
float Compute_id57(inout CS_STREAMS streams)
{
    return streams.Input_18_id110;
}
float Compute_id55(inout CS_STREAMS streams)
{
    return streams.Input_18_id110;
}
float3 Compute_id213(inout CS_STREAMS streams)
{
    return streams.Input_15_id186;
}
float3 Compute_id211(inout CS_STREAMS streams)
{
    return streams.Plus_14_id182;
}
float3 Compute_id205(inout CS_STREAMS streams)
{
    return streams.Input_13_id179;
}
float3 Compute_id203(inout CS_STREAMS streams)
{
    return streams.Multiply_12_id175;
}
float3 Compute_id197(inout CS_STREAMS streams)
{
    return streams.Input_11_id172;
}
float3 Compute_id195(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_10_id167;
}
float Compute_id189(inout CS_STREAMS streams)
{
    return streams.Input_9_id164;
}
float Compute_id187(inout CS_STREAMS streams)
{
    return streams.Input_9_id164;
}
float Compute_id185(inout CS_STREAMS streams)
{
    return streams.Input_9_id164;
}
float3 Compute_id260(inout CS_STREAMS streams)
{
    return streams.Input_7_id211;
}
float3 Compute_id258(inout CS_STREAMS streams)
{
    return streams.Multiply_6_id207;
}
float3 Compute_id252(inout CS_STREAMS streams)
{
    return streams.Input_5_id204;
}
float3 Compute_id250(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_4_id199;
}
float Compute_id244(inout CS_STREAMS streams)
{
    return streams.Input_3_id196;
}
float Compute_id242(inout CS_STREAMS streams)
{
    return streams.Input_3_id196;
}
float Compute_id240(inout CS_STREAMS streams)
{
    return streams.Input_3_id196;
}
float Luminance_id41(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id108(inout CS_STREAMS streams)
{
    return streams.Default_1_id227;
}
float3 Compute_id165(inout CS_STREAMS streams)
{
    return Compute_id160(streams) + Compute_id162(streams);
}
float3 Compute_id158()
{
    return InputValue_id155;
}
float3 Compute_id157(inout CS_STREAMS streams)
{
    return Compute_id152(streams) * Compute_id154(streams);
}
float3 Compute_id150()
{
    return InputValue_id148;
}
float3 Compute_id149(inout CS_STREAMS streams)
{
    return float3(Compute_id142(streams), Compute_id144(streams), Compute_id146(streams));
}
float Compute_id140()
{
    return InputValue_id140;
}
float3 Compute_id84(inout CS_STREAMS streams)
{
    return Compute_id79(streams) * Compute_id81(streams);
}
float3 Compute_id77()
{
    return InputValue_id130;
}
float3 Compute_id76(inout CS_STREAMS streams)
{
    return Compute_id71(streams) + Compute_id73(streams);
}
float3 Compute_id70(inout CS_STREAMS streams)
{
    return Compute_id65(streams) * Compute_id67(streams);
}
float3 Compute_id63()
{
    return InputValue_id119;
}
float3 Compute_id62(inout CS_STREAMS streams)
{
    return float3(Compute_id55(streams), Compute_id57(streams), Compute_id59(streams));
}
float Compute_id53()
{
    return InputValue_id111;
}
float3 Compute_id51()
{
    return InputValue_id108;
}
float3 Compute_id216(inout CS_STREAMS streams)
{
    return Compute_id211(streams) + Compute_id213(streams);
}
float3 Compute_id209()
{
    return InputValue_id187;
}
float3 Compute_id208(inout CS_STREAMS streams)
{
    return Compute_id203(streams) + Compute_id205(streams);
}
float3 Compute_id201()
{
    return InputValue_id180;
}
float3 Compute_id200(inout CS_STREAMS streams)
{
    return Compute_id195(streams) * Compute_id197(streams);
}
float3 Compute_id193()
{
    return InputValue_id173;
}
float3 Compute_id192(inout CS_STREAMS streams)
{
    return float3(Compute_id185(streams), Compute_id187(streams), Compute_id189(streams));
}
float Compute_id183()
{
    return InputValue_id165;
}
float3 Compute_id263(inout CS_STREAMS streams)
{
    return Compute_id258(streams) + Compute_id260(streams);
}
float3 Compute_id256()
{
    return InputValue_id212;
}
float3 Compute_id255(inout CS_STREAMS streams)
{
    return Compute_id250(streams) * Compute_id252(streams);
}
float3 Compute_id248()
{
    return InputValue_id205;
}
float3 Compute_id247(inout CS_STREAMS streams)
{
    return float3(Compute_id240(streams), Compute_id242(streams), Compute_id244(streams));
}
float Compute_id238()
{
    return InputValue_id197;
}
float Compute_id130(inout CS_STREAMS streams)
{
    float4 color = Compute_id108(streams);
    return Luminance_id41(color.rgb);
}
float4 Compute_id106()
{
    return InputValue_id228;
}
float4 Compute_id42()
{
    return InputValue_id222;
}
void Compute_id177(inout CS_STREAMS streams)
{
    streams.Plus_30_id157 = Compute_id165(streams);
}
void Compute_id175(inout CS_STREAMS streams)
{
    streams.Input_29_id154 = Compute_id158();
}
void Compute_id173(inout CS_STREAMS streams)
{
    streams.Multiply_28_id150 = Compute_id157(streams);
}
void Compute_id171(inout CS_STREAMS streams)
{
    streams.Input_27_id147 = Compute_id150();
}
void Compute_id169(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_26_id142 = Compute_id149(streams);
}
void Compute_id167(inout CS_STREAMS streams)
{
    streams.Input_25_id139 = Compute_id140();
}
void Compute_id100(inout CS_STREAMS streams)
{
    streams.Multiply_24_id132 = Compute_id84(streams);
}
void Compute_id98(inout CS_STREAMS streams)
{
    streams.Input_23_id129 = Compute_id77();
}
void Compute_id96(inout CS_STREAMS streams)
{
    streams.Plus_22_id125 = Compute_id76(streams);
}
void Compute_id94(inout CS_STREAMS streams)
{
    streams.Multiply_21_id121 = Compute_id70(streams);
}
void Compute_id92(inout CS_STREAMS streams)
{
    streams.Input_20_id118 = Compute_id63();
}
void Compute_id90(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_19_id113 = Compute_id62(streams);
}
void Compute_id88(inout CS_STREAMS streams)
{
    streams.Input_18_id110 = Compute_id53();
}
void Compute_id86(inout CS_STREAMS streams)
{
    streams.Input_17_id107 = Compute_id51();
}
void Compute_id232(inout CS_STREAMS streams)
{
    streams.Plus_16_id189 = Compute_id216(streams);
}
void Compute_id230(inout CS_STREAMS streams)
{
    streams.Input_15_id186 = Compute_id209();
}
void Compute_id228(inout CS_STREAMS streams)
{
    streams.Plus_14_id182 = Compute_id208(streams);
}
void Compute_id226(inout CS_STREAMS streams)
{
    streams.Input_13_id179 = Compute_id201();
}
void Compute_id224(inout CS_STREAMS streams)
{
    streams.Multiply_12_id175 = Compute_id200(streams);
}
void Compute_id222(inout CS_STREAMS streams)
{
    streams.Input_11_id172 = Compute_id193();
}
void Compute_id220(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_10_id167 = Compute_id192(streams);
}
void Compute_id218(inout CS_STREAMS streams)
{
    streams.Input_9_id164 = Compute_id183();
}
void Compute_id275(inout CS_STREAMS streams)
{
    streams.Plus_8_id214 = Compute_id263(streams);
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.Input_7_id211 = Compute_id256();
}
void Compute_id271(inout CS_STREAMS streams)
{
    streams.Multiply_6_id207 = Compute_id255(streams);
}
void Compute_id269(inout CS_STREAMS streams)
{
    streams.Input_5_id204 = Compute_id248();
}
void Compute_id267(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_4_id199 = Compute_id247(streams);
}
void Compute_id265(inout CS_STREAMS streams)
{
    streams.Input_3_id196 = Compute_id238();
}
void Compute_id134(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id230 = Compute_id130(streams);
}
void Compute_id132(inout CS_STREAMS streams)
{
    streams.Default_1_id227 = Compute_id106();
}
void Compute_id45(inout CS_STREAMS streams)
{
    streams.Default_0_id221 = Compute_id42();
}
float3 Compute_id180(inout CS_STREAMS streams)
{
    return streams.Plus_30_id157;
}
void Compute_id179(inout CS_STREAMS streams)
{

    {
        Compute_id167(streams);
    }

    {
        Compute_id169(streams);
    }

    {
        Compute_id171(streams);
    }

    {
        Compute_id173(streams);
    }

    {
        Compute_id175(streams);
    }

    {
        Compute_id177(streams);
    }
}
float3 Compute_id103(inout CS_STREAMS streams)
{
    return streams.Multiply_24_id132;
}
void Compute_id102(inout CS_STREAMS streams)
{

    {
        Compute_id86(streams);
    }

    {
        Compute_id88(streams);
    }

    {
        Compute_id90(streams);
    }

    {
        Compute_id92(streams);
    }

    {
        Compute_id94(streams);
    }

    {
        Compute_id96(streams);
    }

    {
        Compute_id98(streams);
    }

    {
        Compute_id100(streams);
    }
}
float3 Compute_id235(inout CS_STREAMS streams)
{
    return streams.Plus_16_id189;
}
void Compute_id234(inout CS_STREAMS streams)
{

    {
        Compute_id218(streams);
    }

    {
        Compute_id220(streams);
    }

    {
        Compute_id222(streams);
    }

    {
        Compute_id224(streams);
    }

    {
        Compute_id226(streams);
    }

    {
        Compute_id228(streams);
    }

    {
        Compute_id230(streams);
    }

    {
        Compute_id232(streams);
    }
}
float3 Compute_id278(inout CS_STREAMS streams)
{
    return streams.Plus_8_id214;
}
void Compute_id277(inout CS_STREAMS streams)
{

    {
        Compute_id265(streams);
    }

    {
        Compute_id267(streams);
    }

    {
        Compute_id269(streams);
    }

    {
        Compute_id271(streams);
    }

    {
        Compute_id273(streams);
    }

    {
        Compute_id275(streams);
    }
}
float Compute_id137(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id230;
}
void Compute_id136(inout CS_STREAMS streams)
{

    {
        Compute_id132(streams);
    }

    {
        Compute_id134(streams);
    }
}
float3 rCY_id30(float3 p, float a, float3 ce)
{
    float c, s;
    float3 q = p - ce;
    c = cos(a);
    s = sin(a);
    p.x = c * q.x + s * q.z;
    p.z = -s * q.x + c * q.z;
    return p + ce;
}
float3 rCX_id29(float3 p, float a, float3 ce)
{
    float c, s;
    float3 q = p - ce;
    c = cos(a);
    s = sin(a);
    p.y = c * q.y - s * q.z;
    p.z = s * q.y + c * q.z;
    return p + ce;
}
float3 rCZ_id28(float3 p, float a, float3 ce)
{
    float c, s;
    float3 q = p - ce;
    c = cos(a);
    s = sin(a);
    p.x = c * q.x - s * q.y;
    p.y = s * q.x + c * q.y;
    return p + ce;
}
float4 Compute_id48(inout CS_STREAMS streams)
{
    return streams.Default_0_id221;
}
void Compute_id47(inout CS_STREAMS streams)
{

    {
        Compute_id45(streams);
    }
}
float3 Compute_id35(inout CS_STREAMS streams)
{
    Compute_id179(streams);
    return Compute_id180(streams);
}
float3 Compute_id34(inout CS_STREAMS streams)
{
    Compute_id102(streams);
    return Compute_id103(streams);
}
float3 Compute_id33(inout CS_STREAMS streams)
{
    Compute_id234(streams);
    return Compute_id235(streams);
}
float3 Compute_id32(inout CS_STREAMS streams)
{
    Compute_id277(streams);
    return Compute_id278(streams);
}
float Compute_id37(inout CS_STREAMS streams)
{
    Compute_id136(streams);
    return Compute_id137(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id47(streams);
    return Compute_id48(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id32(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id33(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id34(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id35(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id36(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id37(streams);
    return p;
}
void Compute_id31(inout CS_STREAMS streams)
{
    uint id = streams.DispatchThreadId_id1.x;
    if (id >= ParticlesCount_id98)
        return;
    SMGridParticle POut = ParticlesBuffer_id103[id];
    PlacementVertex p = PlacementVertices_id104[id];
    streams.TexCoord_id59 = p.UVW.xy;
    streams.TexCoord1_id60 = p.UVW.zy;
    streams.TexCoord2_id61 = p.UVW.xz;
    streams.InstanceID_id90 = id;
    float3 oldPos = POut.Pos.xyz;
    float3 oldRot = POut.Rot.xyz;
    float3 oldSize = POut.Size.xyz;
    float3 oldCol = POut.Col.xyz;
    POut.Pos.xyz = p.Pos;
    POut.Rot.xyz = p.Rot;
    if (Reset_id95)
    {
        POut.Vel = 0;
        POut.Size = 0.01;
        POut.Col = 1;
        POut.Mesh = 0;
        oldPos = POut.Pos.xyz;
        oldRot = POut.Rot.xyz;
        oldSize = POut.Size.xyz;
        oldCol = POut.Col.xyz;
    }
    POut = Modify_id27(streams, POut);
    POut.Pos.xyz = lerp(POut.Pos.xyz, oldPos, GlobalDamping_id101);
    POut.Rot.xyz = lerp(POut.Rot.xyz, oldRot, GlobalDamping_id101);
    POut.Size.xyz = lerp(POut.Size.xyz, oldSize, GlobalDamping_id101);
    POut.Col.xyz = lerp(POut.Col.xyz, oldCol, ColorDamping_id102);
    POut.Mesh = clamp(POut.Mesh * MeshCount_id100, 0, MeshCount_id100 - 1);
    if (Fake_id99)
    {
        POut.Vel = streams.TexCoord_id59.xxx;
    }
    ParticlesBuffer_id103[id] = POut;
}
[numthreads(64, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 64;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 64 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id31(streams);
}

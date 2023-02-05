/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat<Input_28> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_29> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_28>}, {Y = GetVarFloat<Input_28>}, {Z = GetVarFloat<Input_28>}]}], mixin AssignVarFloat3<Input_30> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_31> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_29>}, {Right = GetVarFloat3<Input_30>}]}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_27>}, {Right = GetVarFloat3<Multiply_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_34> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_32>}, {Right = GetVarFloat3<Input_33>}]}]]}]}, {Value = GetVarFloat3<Multiply_34>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt.i2,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}]]}]}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_35> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_36> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_35>}, {Y = GetVarFloat<Input_35>}, {Z = GetVarFloat<Input_35>}]}], mixin AssignVarFloat3<Input_37> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_38> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_36>}, {Right = GetVarFloat3<Input_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_40> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_38>}, {Right = GetVarFloat3<Input_39>}]}]]}]}, {Value = GetVarFloat3<Plus_40>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_19> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_20> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_19>}, {Y = GetVarFloat<Input_19>}, {Z = GetVarFloat<Input_19>}]}], mixin AssignVarFloat3<Input_21> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_22> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_20>}, {Right = GetVarFloat3<Input_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_24> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_24>}, {Right = GetVarFloat3<Input_25>}]}]]}]}, {Value = GetVarFloat3<Plus_26>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt.i2,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}]]}]}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_19> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_20> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_19>}, {Y = GetVarFloat<Input_19>}, {Z = GetVarFloat<Input_19>}]}], mixin AssignVarFloat3<Input_21> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_22> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_20>}, {Right = GetVarFloat3<Input_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_24> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_24>}, {Right = GetVarFloat3<Input_25>}]}]]}]}, {Value = GetVarFloat3<Plus_26>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat<Input_28> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_29> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_28>}, {Y = GetVarFloat<Input_28>}, {Z = GetVarFloat<Input_28>}]}], mixin AssignVarFloat3<Input_30> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_31> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_29>}, {Right = GetVarFloat3<Input_30>}]}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_27>}, {Right = GetVarFloat3<Multiply_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_34> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_32>}, {Right = GetVarFloat3<Input_33>}]}]]}]}, {Value = GetVarFloat3<Multiply_34>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_35> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_36> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_35>}, {Y = GetVarFloat<Input_35>}, {Z = GetVarFloat<Input_35>}]}], mixin AssignVarFloat3<Input_37> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_38> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_36>}, {Right = GetVarFloat3<Input_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_40> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_38>}, {Right = GetVarFloat3<Input_39>}]}]]}]}, {Value = GetVarFloat3<Plus_40>}]
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
cbuffer PerUpdate [Size: 176]
@C    InputValue_id108 => ShaderFX.InputValueFloat3.i5
@C    InputValue_id111 => ShaderFX.InputValueFloat.i3
@C    InputValue_id119 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id130 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id140 => ShaderFX.InputValueFloat.i4
@C    InputValue_id148 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id155 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id165 => ShaderFX.InputValueFloat.i2
@C    InputValue_id173 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id180 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id187 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id197 => ShaderFX.InputValueFloat.i1
@C    InputValue_id205 => ShaderFX.InputValueFloat3
@C    InputValue_id212 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id222 => ShaderFX.InputValueUInt
@C    InputValue_id236 => ShaderFX.InputValueUInt.i1
@C    InputValue_id258 => ShaderFX.InputValueFloat
@C    InputValue_id268 => ShaderFX.InputValueUInt.i2
cbuffer Globals [Size: 144]
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
@C    VoxelCounts_id226 => SMMidiBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id227 => SMMidiBufferSelector_ShaderFX.PlacementCounts
@C    Channel_id228 => SMMidiBufferSelector_ShaderFX.Channel
@C    Blink_id229 => SMMidiBufferSelector_ShaderFX.Blink
@C    SamplerOffset_id230 => SMMidiBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id231 => SMMidiBufferSelector_ShaderFX.SamplerScale
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id251 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id225 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    DynamicBuffer_id243 => ObjectBuffer_fx0 [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id250 => ObjectTexture_fx7 [Stage: Compute, Slot: (4-4)]
@R    LastValues_id96 => GPUMappingDamper_ShaderFX.LastValues [Stage: Compute, Slot: (0-0)]
@R    ParticlesBuffer_id103 => SMGridSimulation_ComputeFX.ParticlesBuffer [Stage: Compute, Slot: (1-1)]
@R    PerFrame => PerFrame [Stage: Compute, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Compute, Slot: (1-1)]
@R    Globals => Globals [Stage: Compute, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    SMGridSimulation_ComputeFX => 7fce33b80824ee8ef28b9ce4bd4af0ef
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    SMPlacementVertexStruct => d7db2b1ae2bb867d6babd72d88045d05
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    GPUMappingDamper_ShaderFX => c33c3e7638c5f1d0d237d63f62958652
@S    SMMappingValuesStruct => 954c1a692dee3148d1e131c056afac72
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarUInt => 3b592bbebd12f5fd9b3efa21858134de
@S    ComputeUInt => 707f4166cd9f83784b42c78a0cc57287
@S    StreamVariableUInt => cf0b8cb7ff18f507a9334d36032dfc7f
@S    InputUInt => e8bcca0c5de594d673cd9669b7bdad68
@S    DeclUInt => a5c3b92d01d17f67ecdac3662ed6737d
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    SMMidiSelectValue_ShaderFX => c77373c891111f8b45fb62108518eee4
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    SMMidiBufferSelector_ShaderFX => 1df156fd3c684db39ea5b160a664f54a
@S    GetVarUInt => 1b3b1ca648adeb8fde60326c4ce3dfeb
@S    SMValueToIndex_ShaderFX => bff8b75f33c9fea1ad121d3a5b1b7c21
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    GetItemBufferFloat4 => 9bf7c2007a469c11ee910184a4d2a1f1
@S    DeclBufferFloat4 => 8dcc665e3f9511c793491800331f28fa
@S    SRgbToLinear_ShaderFX => 7759b71b405e7f58f63576d0c8fd2c64
@S    ColorUtilityTemp => d9aeaf420d094dcd420939cb18fd949f
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    SampleLevelTextureFloat4 => cf31c570ad1d5f365d5ea504cfd70990
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    DeclTexture => 446d0ef18094b3b6440125d6e9cb6306
@S    DeclSampler => 2b4d3075cdc21c655fee5c274c8566ed
@S    ConstantFloat => 460c24995a6db8c1f9344767cc7a01db
@S    GetSemanticFloat2 => 72d1b2113bce4aac1e03baaeaa9db138
@S    SemanticFloat2 => 7d018e6f29de96f6b830ab77f6b8985a
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    LerpFloat4 => a657f8a60f608eb8a6dbc0591d98e702
@S    DoFloat3 => a777cae10437d10548290d7d3a46cd99
@S    AssignVarFloat3 => 4040ea8570cd36802d25459fd79c8876
@S    StreamVariableFloat3 => f8eb882d1acd8b041f9a967c812a0d72
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
***************************
*****     Stages      *****
***************************
@G    Compute => 03addb084a62a5999a0f359453df4725
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
//   uint InputValue_id222;             // Offset:  156 Size:     4
//   uint InputValue_id236;             // Offset:  160 Size:     4
//   float InputValue_id258;            // Offset:  164 Size:     4
//   uint InputValue_id268;             // Offset:  168 Size:     4
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
//   int3 VoxelCounts_id226;            // Offset:   84 Size:    12
//   int3 PlacementCounts_id227;        // Offset:   96 Size:    12 [unused]
//   int Channel_id228;                 // Offset:  108 Size:     4 [unused]
//   float Blink_id229;                 // Offset:  112 Size:     4 [unused]
//   float2 SamplerOffset_id230;        // Offset:  116 Size:     8 [unused]
//   float2 SamplerScale_id231;         // Offset:  128 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
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
// Resource bind info for VoxelVolume_id225
// {
//
//   struct SMMidiNoteData
//   {
//       
//       float Empty;                   // Offset:    0
//       float StartTime;               // Offset:    4
//       float Note;                    // Offset:    8
//       float Velocity;                // Offset:   12
//       float Length;                  // Offset:   16
//       float Channel;                 // Offset:   20
//       float Constant;                // Offset:   24
//       float Id;                      // Offset:   28
//       float TrackId;                 // Offset:   32
//       float ModWheel;                // Offset:   36
//       float PitchBend;               // Offset:   40
//       float Random;                  // Offset:   44
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
// DynamicSampler_id251              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id225                 texture  struct         r/o             t2      1 
// DynamicBuffer_id243               texture  float4         buf             t3      1 
// DynamicTexture_id250              texture  float4          2d             t4      1 
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
dcl_constantbuffer CB1[11], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_structured t0, 12
dcl_resource_structured t1, 48
dcl_resource_structured t2, 48
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_uav_structured u0, 48
dcl_uav_structured u1, 64
dcl_input vThreadID.x
dcl_temps 18
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 1164 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_5f29ac7da29b9c63e4e0d84353bc663e.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1165
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1176
  if_nz cb2[5].x

#line 1186
    mov r7.xyz, l(0,0,0,0)  // r7.x <- POut.Vel.x; r7.y <- POut.Vel.y; r7.z <- POut.Vel.z
    mov r0.xyz, r4.xyzx  // r0.x <- oldPos.x; r0.y <- oldPos.y; r0.z <- oldPos.z
    mov r5.z, r4.w
    mov r1.xyz, r5.zxyz  // r1.x <- oldRot.x; r1.y <- oldRot.y; r1.z <- oldRot.z
    mov r2.xyz, l(0.010000,0.010000,0.010000,0)  // r2.x <- oldSize.x; r2.y <- oldSize.y; r2.z <- oldSize.z
    mov r3.xyz, l(1.000000,1.000000,1.000000,0)  // r3.x <- oldCol.x; r3.y <- oldCol.y; r3.z <- oldCol.z
  else   // Prior locations: r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x; r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z; r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z
    mov r7.x, r0.w  // r7.x <- POut.Vel.x
    mov r7.yz, r1.zzwz  // r7.y <- POut.Vel.y; r7.z <- POut.Vel.z
    mov r1.z, r2.w  // r0.x <- oldPos.x; r0.y <- oldPos.y; r0.z <- oldPos.z; r1.x <- oldRot.x; r1.y <- oldRot.y; r1.z <- oldRot.z; r2.x <- oldSize.x; r2.y <- oldSize.y; r2.z <- oldSize.z; r3.x <- oldCol.x; r3.y <- oldCol.y; r3.z <- oldCol.z
  endif 

#line 1137
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 607
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id319 return value>.x; r11.y <- <Compute_id319 return value>.y; r11.z <- <Compute_id319 return value>.z

#line 1140
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 583
  mad r12.xyz, cb1[4].wwww, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id264 return value>.x; r12.y <- <Compute_id264 return value>.y; r12.z <- <Compute_id264 return value>.z

#line 575
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id272 return value>.x; r12.y <- <Compute_id272 return value>.y; r12.z <- <Compute_id272 return value>.z

#line 1141
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 551
  mad r12.xyz, cb1[0].wwww, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id146 return value>.x; r12.y <- <Compute_id146 return value>.y; r12.z <- <Compute_id146 return value>.z

#line 543
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id154 return value>.x; r13.y <- <Compute_id154 return value>.y; r13.z <- <Compute_id154 return value>.z

#line 1142
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 519
  mad r12.xyz, cb1[2].wwww, cb1[3].xyzx, cb1[4].xyzx  // r12.x <- <Compute_id221 return value>.x; r12.y <- <Compute_id221 return value>.y; r12.z <- <Compute_id221 return value>.z

#line 1143
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1145
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 513
  itof r12.xyz, cb2[5].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 254
  imul null, r0.w, cb2[5].z, cb2[5].y
  imad r1.w, r12.y, cb2[5].y, r12.x
  imad r0.w, r12.z, r0.w, r1.w  // r0.w <- <CalculateVoxelVolumeIndex_id45 return value>

#line 258
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t2.xyzw  // r12.x <- <GetVoxel_id34 return value>.Empty; r12.y <- <GetVoxel_id34 return value>.StartTime; r12.z <- <GetVoxel_id34 return value>.Note; r12.w <- <GetVoxel_id34 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r13.xyzw, r0.w, l(16), t2.xyzw  // r13.x <- <GetVoxel_id34 return value>.Length; r13.y <- <GetVoxel_id34 return value>.Channel; r13.z <- <GetVoxel_id34 return value>.Constant; r13.w <- <GetVoxel_id34 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(32), t2.wxyz  // r14.y <- <GetVoxel_id34 return value>.TrackId; r14.z <- <GetVoxel_id34 return value>.ModWheel; r14.w <- <GetVoxel_id34 return value>.PitchBend; r14.x <- <GetVoxel_id34 return value>.Random

#line 475
  switch cb1[9].w

#line 478
    case l(0)

#line 479
    mov r0.w, r12.x  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 480
    case l(1)

#line 481
    mov r0.w, r12.y  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 482
    case l(2)

#line 483
    mov r0.w, r12.z  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 484
    case l(3)

#line 485
    mov r0.w, r12.w  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 486
    case l(4)

#line 487
    mov r0.w, r13.x  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 488
    case l(5)

#line 489
    mov r0.w, r13.y  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 490
    case l(6)

#line 491
    mov r0.w, r13.z  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 492
    case l(7)

#line 493
    mov r0.w, r13.w  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 494
    case l(8)

#line 495
    mov r0.w, r14.y  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 496
    case l(9)

#line 497
    mov r0.w, r14.z  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 498
    case l(10)

#line 499
    mov r0.w, r14.w  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 500
    case l(11)

#line 501
    mov r0.w, r14.x  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 502
    default 

#line 503
    mov r0.w, l(0)  // r0.w <- <SelectMidiValue_id46 return value>
    break 

#line 504
  endswitch   // r0.w <- <SelectMidiValue_id46 return value>

#line 662
  utof r1.w, cb1[10].x
  mul r0.w, r0.w, r1.w
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id68 return value>

#line 656
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r0.wwww, t3.xyzw  // r15.x <- <Compute_id72 return value>.x; r15.y <- <Compute_id72 return value>.y; r15.z <- <Compute_id72 return value>.z

#line 455
  mad r16.xyz, r15.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r16.xyz, r15.xyzx, r16.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r17.xyz, r15.xyzx, r16.xyzx  // r17.x <- <SRgbToLinear_id337 return value>.x; r17.y <- <SRgbToLinear_id337 return value>.y; r17.z <- <SRgbToLinear_id337 return value>.z

#line 648
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t4.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id82 return value>.x; r6.z <- <Compute_id82 return value>.y; r6.w <- <Compute_id82 return value>.z

#line 640
  mad r6.yzw, -r15.xxyz, r16.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].yyyy, r6.yyzw, r17.xxyz  // r6.y <- <Compute_id92 return value>.x; r6.z <- <Compute_id92 return value>.y; r6.w <- <Compute_id92 return value>.z

#line 1152
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1123
  mul r15.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r15.x <- angle.x; r15.y <- angle.y; r15.z <- angle.z

#line 1027
  sincos r10.x, r16.x, r15.z  // r16.x <- c; r10.x <- s

#line 1030
  mul r15.zw, r10.zzzy, r10.xxxx

#line 1029
  mad r0.w, r16.x, r10.y, -r15.z  // r0.w <- p.x

#line 1030
  mad r1.w, r16.x, r10.z, r15.w  // r1.w <- p.y

#line 1017
  sincos r10.x, r15.x, r15.x  // r15.x <- c; r10.x <- s

#line 1019
  mul r2.w, r10.w, r10.x
  mad r16.y, r15.x, r1.w, -r2.w  // r16.y <- p.y

#line 1020
  mul r2.w, r10.w, r15.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1007
  sincos r10.x, r15.x, r15.y  // r15.x <- c; r10.x <- s

#line 1009
  mul r2.w, r1.w, r10.x
  mad r16.x, r15.x, r0.w, r2.w  // r16.x <- p.x

#line 1010
  mul r1.w, r1.w, r15.x
  mad r16.z, -r10.x, r0.w, r1.w  // r16.z <- p.z

#line 1123
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1027
  sincos r10.x, r15.x, r5.z  // r15.x <- c; r10.x <- s

#line 1030
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1029
  mad r0.w, r15.x, r11.x, -r5.z

#line 1030
  mad r1.w, r15.x, r11.y, r5.w  // r1.w <- p.y

#line 1017
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1019
  mul r2.w, r11.z, r5.x
  mad r15.y, r10.x, r1.w, -r2.w  // r15.y <- p.y

#line 1020
  mul r2.w, r11.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1007
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1009
  mul r2.w, r1.w, r5.x
  mad r15.x, r10.x, r0.w, r2.w  // r15.x <- p.x

#line 1010
  mul r1.w, r1.w, r10.x
  mad r15.z, -r5.x, r0.w, r1.w  // r15.z <- p.z

#line 1153
  add r5.xyz, r16.xyzx, r15.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 390
  switch cb1[10].z

#line 393
    case l(0)

#line 394
    mov r14.x, r12.x  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 395
    case l(1)

#line 396
    mov r14.x, r12.y  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 397
    case l(2)

#line 398
    mov r14.x, r12.z  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 399
    case l(3)

#line 400
    mov r14.x, r12.w  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 401
    case l(4)

#line 402
    mov r14.x, r13.x  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 403
    case l(5)

#line 404
    mov r14.x, r13.y  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 405
    case l(6)

#line 406
    mov r14.x, r13.z  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 407
    case l(7)

#line 408
    mov r14.x, r13.w  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 409
    case l(8)

#line 410
    mov r14.x, r14.y  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 411
    case l(9)

#line 412
    mov r14.x, r14.z  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 413
    case l(10)

#line 414
    mov r14.x, r14.w  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 415
    case l(11)

#line 416
    break 

#line 417
    default 

#line 418
    mov r14.x, l(0)  // r14.x <- <SelectMidiValue_id49 return value>
    break 

#line 419
  endswitch   // r14.x <- <SelectMidiValue_id49 return value>

#line 1188
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z

#line 1189
  add r1.xyz, r1.xyzx, -r8.xyzx
  mad r1.xyz, cb0[0].wwww, r1.xyzx, r8.xyzx  // r1.x <- POut.Rot.x; r1.y <- POut.Rot.y; r1.z <- POut.Rot.z

#line 1190
  add r2.xyz, r2.xyzx, -r9.xyzx
  mad r2.yzw, cb0[0].wwww, r2.xxyz, r9.xxyz  // r2.y <- POut.Size.x; r2.z <- POut.Size.y; r2.w <- POut.Size.z

#line 1191
  add r3.xyz, r3.xyzx, -r6.yzwy
  mad r3.xyz, cb0[1].xxxx, r3.xyzx, r6.yzwy  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1192
  utof r1.w, cb0[0].z
  mul r1.w, r1.w, r14.x
  iadd r4.x, cb0[0].z, l(-1)
  utof r4.x, r4.x
  max r1.w, r1.w, l(0.000000)
  min r3.w, r4.x, r1.w  // r3.w <- POut.Mesh

#line 1196
  movc r4.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r4.x <- POut.Vel.y; r4.y <- POut.Vel.z; r4.z <- POut.Vel.x

#line 1197
  mov r0.w, r4.z
  store_structured u1.xyzw, vThreadID.x, l(0), r0.xyzw
  mov r4.zw, r1.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r4.xyzw
  mov r2.x, r1.z
  store_structured u1.xyzw, vThreadID.x, l(32), r2.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r3.xyzw
endif 

#line 1212
ret 
// Approximately 210 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id252 = 0;
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
    float Input_13_id196;
    float3 SMVector3Join_ShaderFXResult_14_id199;
    float3 Input_15_id204;
    float3 Multiply_16_id207;
    float3 Input_17_id211;
    float3 Plus_18_id214;
    float Input_19_id164;
    float3 SMVector3Join_ShaderFXResult_20_id167;
    float3 Input_21_id172;
    float3 Multiply_22_id175;
    float3 Input_23_id179;
    float3 Plus_24_id182;
    float3 Input_25_id186;
    float3 Plus_26_id189;
    float3 Input_27_id107;
    float Input_28_id110;
    float3 SMVector3Join_ShaderFXResult_29_id113;
    float3 Input_30_id118;
    float3 Multiply_31_id121;
    float3 Plus_32_id125;
    float3 Input_33_id129;
    float3 Multiply_34_id132;
    float Input_35_id139;
    float3 SMVector3Join_ShaderFXResult_36_id142;
    float3 Input_37_id147;
    float3 Multiply_38_id150;
    float3 Input_39_id154;
    float3 Plus_40_id157;
    uint Input_1_id221;
    float SMMidiSelectValue_ShaderFXResult_2_id224;
    uint Input_3_id235;
    uint SMValueToIndex_ShaderFXResult_4_id238;
    float4 BufferItem_5_id242;
    float4 SRgbToLinear_ShaderFXResult_6_id246;
    float4 TextureValue_9_id249;
    float Input_11_id257;
    float4 Lerp_12_id260;
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
struct SMMidiNoteData 
{
    float Empty;
    float StartTime;
    float Note;
    float Velocity;
    float Length;
    float Channel;
    float Constant;
    float Id;
    float TrackId;
    float ModWheel;
    float PitchBend;
    float Random;
};
struct SMMidiNoteDataFloat 
{
    float Empty;
    float StartTime;
    float Note;
    float Velocity;
    float Length;
    float Channel;
    float Constant;
    float Id;
    float TrackId;
    float ModWheel;
    float PitchBend;
    float Random;
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
    uint InputValue_id222;
    uint InputValue_id236;
    float InputValue_id258;
    uint InputValue_id268;
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
    int3 VoxelCounts_id226;
    int3 PlacementCounts_id227;
    int Channel_id228;
    float Blink_id229;
    float2 SamplerOffset_id230;
    float2 SamplerScale_id231 = float2(1, 1);
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
StructuredBuffer<SMMidiNoteData> VoxelVolume_id225;
Buffer<float4> DynamicBuffer_id243;
Texture2D DynamicTexture_id250;
SamplerState DynamicSampler_id251;
uint CalculateVoxelVolumeIndex_id45(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id226.x, VoxelCounts_id226.x * VoxelCounts_id226.y));
}
SMMidiNoteData GetVoxel_id34(uint3 coordinate)
{
    return VoxelVolume_id225[CalculateVoxelVolumeIndex_id45(coordinate)];
}
float3 Compute_id218(inout CS_STREAMS streams)
{
    return streams.Input_39_id154;
}
float3 Compute_id216(inout CS_STREAMS streams)
{
    return streams.Multiply_38_id150;
}
float3 Compute_id210(inout CS_STREAMS streams)
{
    return streams.Input_37_id147;
}
float3 Compute_id208(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_36_id142;
}
float Compute_id202(inout CS_STREAMS streams)
{
    return streams.Input_35_id139;
}
float Compute_id200(inout CS_STREAMS streams)
{
    return streams.Input_35_id139;
}
float Compute_id198(inout CS_STREAMS streams)
{
    return streams.Input_35_id139;
}
float3 Compute_id151(inout CS_STREAMS streams)
{
    return streams.Input_33_id129;
}
float3 Compute_id149(inout CS_STREAMS streams)
{
    return streams.Plus_32_id125;
}
float3 Compute_id143(inout CS_STREAMS streams)
{
    return streams.Multiply_31_id121;
}
float3 Compute_id141(inout CS_STREAMS streams)
{
    return streams.Input_27_id107;
}
float3 Compute_id137(inout CS_STREAMS streams)
{
    return streams.Input_30_id118;
}
float3 Compute_id135(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_29_id113;
}
float Compute_id129(inout CS_STREAMS streams)
{
    return streams.Input_28_id110;
}
float Compute_id127(inout CS_STREAMS streams)
{
    return streams.Input_28_id110;
}
float Compute_id125(inout CS_STREAMS streams)
{
    return streams.Input_28_id110;
}
float3 Compute_id269(inout CS_STREAMS streams)
{
    return streams.Input_25_id186;
}
float3 Compute_id267(inout CS_STREAMS streams)
{
    return streams.Plus_24_id182;
}
float3 Compute_id261(inout CS_STREAMS streams)
{
    return streams.Input_23_id179;
}
float3 Compute_id259(inout CS_STREAMS streams)
{
    return streams.Multiply_22_id175;
}
float3 Compute_id253(inout CS_STREAMS streams)
{
    return streams.Input_21_id172;
}
float3 Compute_id251(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_20_id167;
}
float Compute_id245(inout CS_STREAMS streams)
{
    return streams.Input_19_id164;
}
float Compute_id243(inout CS_STREAMS streams)
{
    return streams.Input_19_id164;
}
float Compute_id241(inout CS_STREAMS streams)
{
    return streams.Input_19_id164;
}
float3 Compute_id316(inout CS_STREAMS streams)
{
    return streams.Input_17_id211;
}
float3 Compute_id314(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id207;
}
float3 Compute_id308(inout CS_STREAMS streams)
{
    return streams.Input_15_id204;
}
float3 Compute_id306(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id199;
}
float Compute_id300(inout CS_STREAMS streams)
{
    return streams.Input_13_id196;
}
float Compute_id298(inout CS_STREAMS streams)
{
    return streams.Input_13_id196;
}
float Compute_id296(inout CS_STREAMS streams)
{
    return streams.Input_13_id196;
}
float SelectMidiValue_id49(SMMidiNoteData x, uint i)
{
    switch (i)

    {
        case 0:
            return x.Empty;
        case 1:
            return x.StartTime;
        case 2:
            return x.Note;
        case 3:
            return x.Velocity;
        case 4:
            return x.Length;
        case 5:
            return x.Channel;
        case 6:
            return x.Constant;
        case 7:
            return x.Id;
        case 8:
            return x.TrackId;
        case 9:
            return x.ModWheel;
        case 10:
            return x.PitchBend;
        case 11:
            return x.Random;
        default:
            return 0;
    }
}
uint Compute_id183(inout CS_STREAMS streams)
{
    return streams.Input_1_id221;
}
SMMidiNoteData Compute_id47(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id226;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float Compute_id89(inout CS_STREAMS streams)
{
    return streams.Input_11_id257;
}
float4 Compute_id87(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id249;
}
float4 Compute_id85(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id246;
}
float Compute_id77()
{
    return Value_id252;
}
float2 Compute_id79(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id337(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id73(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id242;
}
uint Compute_id69(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id238;
}
uint Compute_id63(inout CS_STREAMS streams)
{
    return streams.Input_3_id235;
}
float Compute_id65(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_2_id224;
}
float SelectMidiValue_id46(SMMidiNoteData x, uint i)
{
    switch (i)

    {
        case 0:
            return x.Empty;
        case 1:
            return x.StartTime;
        case 2:
            return x.Note;
        case 3:
            return x.Velocity;
        case 4:
            return x.Length;
        case 5:
            return x.Channel;
        case 6:
            return x.Constant;
        case 7:
            return x.Id;
        case 8:
            return x.TrackId;
        case 9:
            return x.ModWheel;
        case 10:
            return x.PitchBend;
        case 11:
            return x.Random;
        default:
            return 0;
    }
}
uint Compute_id57(inout CS_STREAMS streams)
{
    return streams.Input_1_id221;
}
SMMidiNoteData Compute_id44(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id226;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float3 Compute_id221(inout CS_STREAMS streams)
{
    return Compute_id216(streams) + Compute_id218(streams);
}
float3 Compute_id214()
{
    return InputValue_id155;
}
float3 Compute_id213(inout CS_STREAMS streams)
{
    return Compute_id208(streams) * Compute_id210(streams);
}
float3 Compute_id206()
{
    return InputValue_id148;
}
float3 Compute_id205(inout CS_STREAMS streams)
{
    return float3(Compute_id198(streams), Compute_id200(streams), Compute_id202(streams));
}
float Compute_id196()
{
    return InputValue_id140;
}
float3 Compute_id154(inout CS_STREAMS streams)
{
    return Compute_id149(streams) * Compute_id151(streams);
}
float3 Compute_id147()
{
    return InputValue_id130;
}
float3 Compute_id146(inout CS_STREAMS streams)
{
    return Compute_id141(streams) + Compute_id143(streams);
}
float3 Compute_id140(inout CS_STREAMS streams)
{
    return Compute_id135(streams) * Compute_id137(streams);
}
float3 Compute_id133()
{
    return InputValue_id119;
}
float3 Compute_id132(inout CS_STREAMS streams)
{
    return float3(Compute_id125(streams), Compute_id127(streams), Compute_id129(streams));
}
float Compute_id123()
{
    return InputValue_id111;
}
float3 Compute_id121()
{
    return InputValue_id108;
}
float3 Compute_id272(inout CS_STREAMS streams)
{
    return Compute_id267(streams) + Compute_id269(streams);
}
float3 Compute_id265()
{
    return InputValue_id187;
}
float3 Compute_id264(inout CS_STREAMS streams)
{
    return Compute_id259(streams) + Compute_id261(streams);
}
float3 Compute_id257()
{
    return InputValue_id180;
}
float3 Compute_id256(inout CS_STREAMS streams)
{
    return Compute_id251(streams) * Compute_id253(streams);
}
float3 Compute_id249()
{
    return InputValue_id173;
}
float3 Compute_id248(inout CS_STREAMS streams)
{
    return float3(Compute_id241(streams), Compute_id243(streams), Compute_id245(streams));
}
float Compute_id239()
{
    return InputValue_id165;
}
float3 Compute_id319(inout CS_STREAMS streams)
{
    return Compute_id314(streams) + Compute_id316(streams);
}
float3 Compute_id312()
{
    return InputValue_id212;
}
float3 Compute_id311(inout CS_STREAMS streams)
{
    return Compute_id306(streams) * Compute_id308(streams);
}
float3 Compute_id304()
{
    return InputValue_id205;
}
float3 Compute_id303(inout CS_STREAMS streams)
{
    return float3(Compute_id296(streams), Compute_id298(streams), Compute_id300(streams));
}
float Compute_id294()
{
    return InputValue_id197;
}
float Compute_id186(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id47(streams);
    return SelectMidiValue_id49(m, Compute_id183(streams));
}
uint Compute_id176()
{
    return InputValue_id268;
}
float4 Compute_id92(inout CS_STREAMS streams)
{
    return lerp(Compute_id85(streams), Compute_id87(streams), Compute_id89(streams));
}
float Compute_id83()
{
    return InputValue_id258;
}
float4 Compute_id82(inout CS_STREAMS streams)
{
    return DynamicTexture_id250.SampleLevel(DynamicSampler_id251, Compute_id79(streams), Compute_id77());
}
float4 Compute_id76(inout CS_STREAMS streams)
{
    return SRgbToLinear_id337(Compute_id73(streams));
}
float4 Compute_id72(inout CS_STREAMS streams)
{
    return DynamicBuffer_id243[Compute_id69(streams)];
}
uint Compute_id68(inout CS_STREAMS streams)
{
    float v = Compute_id65(streams);
    uint c = Compute_id63(streams);
    return round(v * c);
}
uint Compute_id61()
{
    return InputValue_id236;
}
float Compute_id60(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id44(streams);
    return SelectMidiValue_id46(m, Compute_id57(streams));
}
uint Compute_id50()
{
    return InputValue_id222;
}
void Compute_id233(inout CS_STREAMS streams)
{
    streams.Plus_40_id157 = Compute_id221(streams);
}
void Compute_id231(inout CS_STREAMS streams)
{
    streams.Input_39_id154 = Compute_id214();
}
void Compute_id229(inout CS_STREAMS streams)
{
    streams.Multiply_38_id150 = Compute_id213(streams);
}
void Compute_id227(inout CS_STREAMS streams)
{
    streams.Input_37_id147 = Compute_id206();
}
void Compute_id225(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_36_id142 = Compute_id205(streams);
}
void Compute_id223(inout CS_STREAMS streams)
{
    streams.Input_35_id139 = Compute_id196();
}
void Compute_id170(inout CS_STREAMS streams)
{
    streams.Multiply_34_id132 = Compute_id154(streams);
}
void Compute_id168(inout CS_STREAMS streams)
{
    streams.Input_33_id129 = Compute_id147();
}
void Compute_id166(inout CS_STREAMS streams)
{
    streams.Plus_32_id125 = Compute_id146(streams);
}
void Compute_id164(inout CS_STREAMS streams)
{
    streams.Multiply_31_id121 = Compute_id140(streams);
}
void Compute_id162(inout CS_STREAMS streams)
{
    streams.Input_30_id118 = Compute_id133();
}
void Compute_id160(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_29_id113 = Compute_id132(streams);
}
void Compute_id158(inout CS_STREAMS streams)
{
    streams.Input_28_id110 = Compute_id123();
}
void Compute_id156(inout CS_STREAMS streams)
{
    streams.Input_27_id107 = Compute_id121();
}
void Compute_id288(inout CS_STREAMS streams)
{
    streams.Plus_26_id189 = Compute_id272(streams);
}
void Compute_id286(inout CS_STREAMS streams)
{
    streams.Input_25_id186 = Compute_id265();
}
void Compute_id284(inout CS_STREAMS streams)
{
    streams.Plus_24_id182 = Compute_id264(streams);
}
void Compute_id282(inout CS_STREAMS streams)
{
    streams.Input_23_id179 = Compute_id257();
}
void Compute_id280(inout CS_STREAMS streams)
{
    streams.Multiply_22_id175 = Compute_id256(streams);
}
void Compute_id278(inout CS_STREAMS streams)
{
    streams.Input_21_id172 = Compute_id249();
}
void Compute_id276(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_20_id167 = Compute_id248(streams);
}
void Compute_id274(inout CS_STREAMS streams)
{
    streams.Input_19_id164 = Compute_id239();
}
void Compute_id331(inout CS_STREAMS streams)
{
    streams.Plus_18_id214 = Compute_id319(streams);
}
void Compute_id329(inout CS_STREAMS streams)
{
    streams.Input_17_id211 = Compute_id312();
}
void Compute_id327(inout CS_STREAMS streams)
{
    streams.Multiply_16_id207 = Compute_id311(streams);
}
void Compute_id325(inout CS_STREAMS streams)
{
    streams.Input_15_id204 = Compute_id304();
}
void Compute_id323(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id199 = Compute_id303(streams);
}
void Compute_id321(inout CS_STREAMS streams)
{
    streams.Input_13_id196 = Compute_id294();
}
void Compute_id190(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_2_id224 = Compute_id186(streams);
}
void Compute_id188(inout CS_STREAMS streams)
{
    streams.Input_1_id221 = Compute_id176();
}
void Compute_id115(inout CS_STREAMS streams)
{
    streams.Lerp_12_id260 = Compute_id92(streams);
}
void Compute_id113(inout CS_STREAMS streams)
{
    streams.Input_11_id257 = Compute_id83();
}
void Compute_id111(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id249 = Compute_id82(streams);
}
void Compute_id109()
{
}
void Compute_id108()
{
}
void Compute_id107()
{
}
void Compute_id106()
{
}
void Compute_id105(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id246 = Compute_id76(streams);
}
void Compute_id103(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id242 = Compute_id72(streams);
}
void Compute_id101(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id238 = Compute_id68(streams);
}
void Compute_id99(inout CS_STREAMS streams)
{
    streams.Input_3_id235 = Compute_id61();
}
void Compute_id97(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_2_id224 = Compute_id60(streams);
}
void Compute_id95(inout CS_STREAMS streams)
{
    streams.Input_1_id221 = Compute_id50();
}
void Compute_id93()
{
}
float3 Compute_id236(inout CS_STREAMS streams)
{
    return streams.Plus_40_id157;
}
void Compute_id235(inout CS_STREAMS streams)
{

    {
        Compute_id223(streams);
    }

    {
        Compute_id225(streams);
    }

    {
        Compute_id227(streams);
    }

    {
        Compute_id229(streams);
    }

    {
        Compute_id231(streams);
    }

    {
        Compute_id233(streams);
    }
}
float3 Compute_id173(inout CS_STREAMS streams)
{
    return streams.Multiply_34_id132;
}
void Compute_id172(inout CS_STREAMS streams)
{

    {
        Compute_id156(streams);
    }

    {
        Compute_id158(streams);
    }

    {
        Compute_id160(streams);
    }

    {
        Compute_id162(streams);
    }

    {
        Compute_id164(streams);
    }

    {
        Compute_id166(streams);
    }

    {
        Compute_id168(streams);
    }

    {
        Compute_id170(streams);
    }
}
float3 Compute_id291(inout CS_STREAMS streams)
{
    return streams.Plus_26_id189;
}
void Compute_id290(inout CS_STREAMS streams)
{

    {
        Compute_id274(streams);
    }

    {
        Compute_id276(streams);
    }

    {
        Compute_id278(streams);
    }

    {
        Compute_id280(streams);
    }

    {
        Compute_id282(streams);
    }

    {
        Compute_id284(streams);
    }

    {
        Compute_id286(streams);
    }

    {
        Compute_id288(streams);
    }
}
float3 Compute_id334(inout CS_STREAMS streams)
{
    return streams.Plus_18_id214;
}
void Compute_id333(inout CS_STREAMS streams)
{

    {
        Compute_id321(streams);
    }

    {
        Compute_id323(streams);
    }

    {
        Compute_id325(streams);
    }

    {
        Compute_id327(streams);
    }

    {
        Compute_id329(streams);
    }

    {
        Compute_id331(streams);
    }
}
float Compute_id193(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_2_id224;
}
void Compute_id192(inout CS_STREAMS streams)
{

    {
        Compute_id188(streams);
    }

    {
        Compute_id190(streams);
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
float4 Compute_id118(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id260;
}
void Compute_id117(inout CS_STREAMS streams)
{

    {
        Compute_id93();
    }

    {
        Compute_id95(streams);
    }

    {
        Compute_id97(streams);
    }

    {
        Compute_id99(streams);
    }

    {
        Compute_id101(streams);
    }

    {
        Compute_id103(streams);
    }

    {
        Compute_id105(streams);
    }

    {
        Compute_id106();
    }

    {
        Compute_id107();
    }

    {
        Compute_id108();
    }

    {
        Compute_id109();
    }

    {
        Compute_id111(streams);
    }

    {
        Compute_id113(streams);
    }

    {
        Compute_id115(streams);
    }
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id235(streams);
    return Compute_id236(streams);
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id172(streams);
    return Compute_id173(streams);
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id290(streams);
    return Compute_id291(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id333(streams);
    return Compute_id334(streams);
}
float Compute_id43(inout CS_STREAMS streams)
{
    Compute_id192(streams);
    return Compute_id193(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id42(inout CS_STREAMS streams)
{
    Compute_id117(streams);
    return Compute_id118(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id38(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id39(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id40(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id41(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id42(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id43(streams);
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

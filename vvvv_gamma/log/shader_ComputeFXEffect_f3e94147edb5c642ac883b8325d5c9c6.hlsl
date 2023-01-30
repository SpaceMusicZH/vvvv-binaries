/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_27> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_28> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_27>}, {Y = GetVarFloat<Input_27>}, {Z = GetVarFloat<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<Multiply_30> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_28>}, {Right = GetVarFloat3<Input_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_30>}, {Right = GetVarFloat3<Input_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Plus_34> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_32>}, {Right = GetVarFloat3<Input_33>}]}], mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_36> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_34>}, {Right = GetVarFloat3<Input_35>}]}]]}]}, {Value = GetVarFloat3<Multiply_36>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_37> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_38> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_37>}, {Y = GetVarFloat<Input_37>}, {Z = GetVarFloat<Input_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Multiply_40> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_38>}, {Right = GetVarFloat3<Input_39>}]}], mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Plus_42> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_40>}, {Right = GetVarFloat3<Input_41>}]}]]}]}, {Value = GetVarFloat3<Plus_42>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_19> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_20> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_19>}, {Y = GetVarFloat<Input_19>}, {Z = GetVarFloat<Input_19>}]}], mixin AssignVarFloat3<Input_21> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_22> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_20>}, {Right = GetVarFloat3<Input_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_24> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_24>}, {Right = GetVarFloat3<Input_25>}]}]]}]}, {Value = GetVarFloat3<Plus_26>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_19> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_20> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_19>}, {Y = GetVarFloat<Input_19>}, {Z = GetVarFloat<Input_19>}]}], mixin AssignVarFloat3<Input_21> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_22> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_20>}, {Right = GetVarFloat3<Input_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_24> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_24>}, {Right = GetVarFloat3<Input_25>}]}]]}]}, {Value = GetVarFloat3<Plus_26>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_27> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_28> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_27>}, {Y = GetVarFloat<Input_27>}, {Z = GetVarFloat<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<Multiply_30> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_28>}, {Right = GetVarFloat3<Input_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_30>}, {Right = GetVarFloat3<Input_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Plus_34> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_32>}, {Right = GetVarFloat3<Input_33>}]}], mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_36> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_34>}, {Right = GetVarFloat3<Input_35>}]}]]}]}, {Value = GetVarFloat3<Multiply_36>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_37> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_38> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_37>}, {Y = GetVarFloat<Input_37>}, {Z = GetVarFloat<Input_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Multiply_40> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_38>}, {Right = GetVarFloat3<Input_39>}]}], mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Plus_42> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_40>}, {Right = GetVarFloat3<Input_41>}]}]]}]}, {Value = GetVarFloat3<Plus_42>}]
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
@C    InputValue_id108 => ShaderFX.InputValueFloat.i3
@C    InputValue_id116 => ShaderFX.InputValueFloat3.i5
@C    InputValue_id123 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id130 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id137 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id147 => ShaderFX.InputValueFloat.i4
@C    InputValue_id155 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id162 => ShaderFX.InputValueFloat3.i10
@C    InputValue_id172 => ShaderFX.InputValueFloat.i2
@C    InputValue_id180 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id187 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id194 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id204 => ShaderFX.InputValueFloat.i1
@C    InputValue_id212 => ShaderFX.InputValueFloat3
@C    InputValue_id219 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id248 => ShaderFX.InputValueUInt
@C    InputValue_id270 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id230 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id231 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id232 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id233 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id234 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id263 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id229 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    DynamicBuffer_id255 => ObjectBuffer_fx0 [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id262 => ObjectTexture_fx7 [Stage: Compute, Slot: (4-4)]
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
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    SMVideoBufferSelector_ShaderFX => de3fce0c1f79f845dd6952c0e7643ad2
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    SMCalcLuminance_ShaderFX => 11106821d0f843c804b28a35bba98d51
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    AssignVarUInt => 3b592bbebd12f5fd9b3efa21858134de
@S    ComputeUInt => 707f4166cd9f83784b42c78a0cc57287
@S    StreamVariableUInt => cf0b8cb7ff18f507a9334d36032dfc7f
@S    InputUInt => e8bcca0c5de594d673cd9669b7bdad68
@S    DeclUInt => a5c3b92d01d17f67ecdac3662ed6737d
@S    SMValueToIndex_ShaderFX => bff8b75f33c9fea1ad121d3a5b1b7c21
@S    GetVarUInt => 1b3b1ca648adeb8fde60326c4ce3dfeb
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    GetItemBufferFloat4 => 9bf7c2007a469c11ee910184a4d2a1f1
@S    DeclBufferFloat4 => 8dcc665e3f9511c793491800331f28fa
@S    SRgbToLinear_ShaderFX => 7759b71b405e7f58f63576d0c8fd2c64
@S    ColorUtilityTemp => d9aeaf420d094dcd420939cb18fd949f
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
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
***************************
*****     Stages      *****
***************************
@G    Compute => 8e65d5a3d6f49ce9444644e3b2c5830d
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
//   float InputValue_id108;            // Offset:    0 Size:     4
//   float3 InputValue_id116;           // Offset:    4 Size:    12
//   float3 InputValue_id123;           // Offset:   16 Size:    12
//   float3 InputValue_id130;           // Offset:   32 Size:    12
//   float3 InputValue_id137;           // Offset:   48 Size:    12
//   float InputValue_id147;            // Offset:   60 Size:     4
//   float3 InputValue_id155;           // Offset:   64 Size:    12
//   float3 InputValue_id162;           // Offset:   80 Size:    12
//   float InputValue_id172;            // Offset:   92 Size:     4
//   float3 InputValue_id180;           // Offset:   96 Size:    12
//   float3 InputValue_id187;           // Offset:  112 Size:    12
//   float3 InputValue_id194;           // Offset:  128 Size:    12
//   float InputValue_id204;            // Offset:  140 Size:     4
//   float3 InputValue_id212;           // Offset:  144 Size:    12
//   float3 InputValue_id219;           // Offset:  160 Size:    12
//   uint InputValue_id248;             // Offset:  172 Size:     4
//   float InputValue_id270;            // Offset:  176 Size:     4
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
//   int3 VoxelCounts_id230;            // Offset:   84 Size:    12 [unused]
//   int3 PlacementCounts_id231;        // Offset:   96 Size:    12 [unused]
//   float2 SamplerOffset_id232;        // Offset:  112 Size:     8 [unused]
//   float2 SamplerScale_id233;         // Offset:  120 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id234;    // Offset:  128 Size:     4 [unused]
//      = 0x00100000 
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
// Resource bind info for VoxelVolume_id229
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
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
// DynamicSampler_id263              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id229                 texture  struct         r/o             t2      1 
// DynamicBuffer_id255               texture  float4         buf             t3      1 
// DynamicTexture_id262              texture  float4          2d             t4      1 
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
dcl_sampler s0, mode_default
dcl_resource_structured t0, 12
dcl_resource_structured t1, 48
dcl_resource_structured t2, 16
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_uav_structured u0, 48
dcl_uav_structured u1, 64
dcl_input vThreadID.x
dcl_temps 15
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 1092 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_f3e94147edb5c642ac883b8325d5c9c6.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1093
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xy, vThreadID.x, l(28), t1.xyxx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y

#line 1104
  if_nz cb2[5].x

#line 1114
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

#line 1065
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 513
  mad r11.xyz, cb1[8].wwww, cb1[9].xyzx, cb1[10].xyzx  // r11.x <- <Compute_id365 return value>.x; r11.y <- <Compute_id365 return value>.y; r11.z <- <Compute_id365 return value>.z

#line 1068
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 489
  mad r12.xyz, cb1[5].wwww, cb1[6].xyzx, cb1[7].xyzx  // r12.x <- <Compute_id310 return value>.x; r12.y <- <Compute_id310 return value>.y; r12.z <- <Compute_id310 return value>.z

#line 481
  add r12.xyz, r12.xyzx, cb1[8].xyzx  // r12.x <- <Compute_id318 return value>.x; r12.y <- <Compute_id318 return value>.y; r12.z <- <Compute_id318 return value>.z

#line 1069
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 457
  mad r12.xyz, cb1[0].xxxx, cb1[0].yzwy, cb1[1].xyzx  // r12.x <- <Compute_id164 return value>.x; r12.y <- <Compute_id164 return value>.y; r12.z <- <Compute_id164 return value>.z

#line 449
  add r12.xyz, r12.xyzx, cb1[2].xyzx  // r12.x <- <Compute_id172 return value>.x; r12.y <- <Compute_id172 return value>.y; r12.z <- <Compute_id172 return value>.z

#line 441
  mul r13.xyz, r12.xyzx, cb1[3].xyzx  // r13.x <- <Compute_id180 return value>.x; r13.y <- <Compute_id180 return value>.y; r13.z <- <Compute_id180 return value>.z

#line 1070
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[3].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 417
  mad r12.xyz, cb1[3].wwww, cb1[4].xyzx, cb1[5].xyzx  // r12.x <- <Compute_id267 return value>.x; r12.y <- <Compute_id267 return value>.y; r12.z <- <Compute_id267 return value>.z

#line 1071
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1073
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 586
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t2.xyzx  // r12.x <- m.x; r12.y <- m.y; r12.z <- m.z

#line 409
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id45 return value>

#line 571
  utof r1.w, cb1[10].w
  mul r1.w, r0.w, r1.w
  round_ne r1.w, r1.w
  ftou r1.w, r1.w  // r1.w <- <Compute_id86 return value>

#line 565
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r1.wwww, t3.xyzw  // r12.x <- <Compute_id90 return value>.x; r12.y <- <Compute_id90 return value>.y; r12.z <- <Compute_id90 return value>.z

#line 389
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id383 return value>.x; r14.y <- <SRgbToLinear_id383 return value>.y; r14.z <- <SRgbToLinear_id383 return value>.z

#line 557
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t4.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id100 return value>.x; r6.z <- <Compute_id100 return value>.y; r6.w <- <Compute_id100 return value>.z

#line 549
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[11].xxxx, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id110 return value>.x; r6.z <- <Compute_id110 return value>.y; r6.w <- <Compute_id110 return value>.z

#line 1080
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1051
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 955
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 958
  mul r12.zw, r10.zzzy, r10.xxxx

#line 957
  mad r1.w, r13.x, r10.y, -r12.z  // r1.w <- p.x

#line 958
  mad r2.w, r13.x, r10.z, r12.w  // r2.w <- p.y

#line 945
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 947
  mul r3.w, r10.w, r10.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 948
  mul r3.w, r10.w, r12.x
  mad r2.w, r10.x, r2.w, r3.w  // r2.w <- p.z

#line 935
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 937
  mul r3.w, r2.w, r10.x
  mad r13.x, r12.x, r1.w, r3.w  // r13.x <- p.x

#line 938
  mul r2.w, r2.w, r12.x
  mad r13.z, -r10.x, r1.w, r2.w  // r13.z <- p.z

#line 1051
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 955
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 958
  mul r5.zw, r11.yyyx, r10.xxxx

#line 957
  mad r1.w, r12.x, r11.x, -r5.z

#line 958
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 945
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 947
  mul r3.w, r11.z, r5.x
  mad r12.y, r10.x, r2.w, -r3.w  // r12.y <- p.y

#line 948
  mul r3.w, r11.z, r10.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 935
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 937
  mul r3.w, r2.w, r5.x
  mad r12.x, r10.x, r1.w, r3.w  // r12.x <- p.x

#line 938
  mul r2.w, r2.w, r10.x
  mad r12.z, -r5.x, r1.w, r2.w  // r12.z <- p.z

#line 1081
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1116
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1117
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1118
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1119
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1120
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1124
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1125
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1140
ret 
// Approximately 123 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id264 = 0;
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
    float Input_13_id203;
    float3 SMVector3Join_ShaderFXResult_14_id206;
    float3 Input_15_id211;
    float3 Multiply_16_id214;
    float3 Input_17_id218;
    float3 Plus_18_id221;
    float Input_19_id171;
    float3 SMVector3Join_ShaderFXResult_20_id174;
    float3 Input_21_id179;
    float3 Multiply_22_id182;
    float3 Input_23_id186;
    float3 Plus_24_id189;
    float3 Input_25_id193;
    float3 Plus_26_id196;
    float Input_27_id107;
    float3 SMVector3Join_ShaderFXResult_28_id110;
    float3 Input_29_id115;
    float3 Multiply_30_id118;
    float3 Input_31_id122;
    float3 Plus_32_id125;
    float3 Input_33_id129;
    float3 Plus_34_id132;
    float3 Input_35_id136;
    float3 Multiply_36_id139;
    float Input_37_id146;
    float3 SMVector3Join_ShaderFXResult_38_id149;
    float3 Input_39_id154;
    float3 Multiply_40_id157;
    float3 Input_41_id161;
    float3 Plus_42_id164;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id228;
    float SMCalcLuminance_ShaderFXResult_2_id236;
    uint Input_3_id247;
    uint SMValueToIndex_ShaderFXResult_4_id250;
    float4 BufferItem_5_id254;
    float4 SRgbToLinear_ShaderFXResult_6_id258;
    float4 TextureValue_9_id261;
    float Input_11_id269;
    float4 Lerp_12_id272;
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
    float InputValue_id108;
    float3 InputValue_id116;
    float3 InputValue_id123;
    float3 InputValue_id130;
    float3 InputValue_id137;
    float InputValue_id147;
    float3 InputValue_id155;
    float3 InputValue_id162;
    float InputValue_id172;
    float3 InputValue_id180;
    float3 InputValue_id187;
    float3 InputValue_id194;
    float InputValue_id204;
    float3 InputValue_id212;
    float3 InputValue_id219;
    uint InputValue_id248;
    float InputValue_id270;
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
    int3 VoxelCounts_id230;
    int3 PlacementCounts_id231;
    float2 SamplerOffset_id232;
    float2 SamplerScale_id233 = float2(1, 1);
    uint PlacementLevelCount_id234 = 1048576;
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
StructuredBuffer<float4> VoxelVolume_id229;
Buffer<float4> DynamicBuffer_id255;
Texture2D DynamicTexture_id262;
SamplerState DynamicSampler_id263;
float3 Compute_id264(inout CS_STREAMS streams)
{
    return streams.Input_41_id161;
}
float3 Compute_id262(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id157;
}
float3 Compute_id256(inout CS_STREAMS streams)
{
    return streams.Input_39_id154;
}
float3 Compute_id254(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_38_id149;
}
float Compute_id248(inout CS_STREAMS streams)
{
    return streams.Input_37_id146;
}
float Compute_id246(inout CS_STREAMS streams)
{
    return streams.Input_37_id146;
}
float Compute_id244(inout CS_STREAMS streams)
{
    return streams.Input_37_id146;
}
float3 Compute_id177(inout CS_STREAMS streams)
{
    return streams.Input_35_id136;
}
float3 Compute_id175(inout CS_STREAMS streams)
{
    return streams.Plus_34_id132;
}
float3 Compute_id169(inout CS_STREAMS streams)
{
    return streams.Input_33_id129;
}
float3 Compute_id167(inout CS_STREAMS streams)
{
    return streams.Plus_32_id125;
}
float3 Compute_id161(inout CS_STREAMS streams)
{
    return streams.Input_31_id122;
}
float3 Compute_id159(inout CS_STREAMS streams)
{
    return streams.Multiply_30_id118;
}
float3 Compute_id153(inout CS_STREAMS streams)
{
    return streams.Input_29_id115;
}
float3 Compute_id151(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_28_id110;
}
float Compute_id145(inout CS_STREAMS streams)
{
    return streams.Input_27_id107;
}
float Compute_id143(inout CS_STREAMS streams)
{
    return streams.Input_27_id107;
}
float Compute_id141(inout CS_STREAMS streams)
{
    return streams.Input_27_id107;
}
float3 Compute_id315(inout CS_STREAMS streams)
{
    return streams.Input_25_id193;
}
float3 Compute_id313(inout CS_STREAMS streams)
{
    return streams.Plus_24_id189;
}
float3 Compute_id307(inout CS_STREAMS streams)
{
    return streams.Input_23_id186;
}
float3 Compute_id305(inout CS_STREAMS streams)
{
    return streams.Multiply_22_id182;
}
float3 Compute_id299(inout CS_STREAMS streams)
{
    return streams.Input_21_id179;
}
float3 Compute_id297(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_20_id174;
}
float Compute_id291(inout CS_STREAMS streams)
{
    return streams.Input_19_id171;
}
float Compute_id289(inout CS_STREAMS streams)
{
    return streams.Input_19_id171;
}
float Compute_id287(inout CS_STREAMS streams)
{
    return streams.Input_19_id171;
}
float3 Compute_id362(inout CS_STREAMS streams)
{
    return streams.Input_17_id218;
}
float3 Compute_id360(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id214;
}
float3 Compute_id354(inout CS_STREAMS streams)
{
    return streams.Input_15_id211;
}
float3 Compute_id352(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id206;
}
float Compute_id346(inout CS_STREAMS streams)
{
    return streams.Input_13_id203;
}
float Compute_id344(inout CS_STREAMS streams)
{
    return streams.Input_13_id203;
}
float Compute_id342(inout CS_STREAMS streams)
{
    return streams.Input_13_id203;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id210(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id228;
}
float Compute_id107(inout CS_STREAMS streams)
{
    return streams.Input_11_id269;
}
float4 Compute_id105(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id261;
}
float4 Compute_id103(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id258;
}
float Compute_id95()
{
    return Value_id264;
}
float2 Compute_id97(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id383(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id91(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id254;
}
uint Compute_id87(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id250;
}
uint Compute_id81(inout CS_STREAMS streams)
{
    return streams.Input_3_id247;
}
float Compute_id83(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id236;
}
float Luminance_id45(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id56(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id228;
}
float3 Compute_id267(inout CS_STREAMS streams)
{
    return Compute_id262(streams) + Compute_id264(streams);
}
float3 Compute_id260()
{
    return InputValue_id162;
}
float3 Compute_id259(inout CS_STREAMS streams)
{
    return Compute_id254(streams) * Compute_id256(streams);
}
float3 Compute_id252()
{
    return InputValue_id155;
}
float3 Compute_id251(inout CS_STREAMS streams)
{
    return float3(Compute_id244(streams), Compute_id246(streams), Compute_id248(streams));
}
float Compute_id242()
{
    return InputValue_id147;
}
float3 Compute_id180(inout CS_STREAMS streams)
{
    return Compute_id175(streams) * Compute_id177(streams);
}
float3 Compute_id173()
{
    return InputValue_id137;
}
float3 Compute_id172(inout CS_STREAMS streams)
{
    return Compute_id167(streams) + Compute_id169(streams);
}
float3 Compute_id165()
{
    return InputValue_id130;
}
float3 Compute_id164(inout CS_STREAMS streams)
{
    return Compute_id159(streams) + Compute_id161(streams);
}
float3 Compute_id157()
{
    return InputValue_id123;
}
float3 Compute_id156(inout CS_STREAMS streams)
{
    return Compute_id151(streams) * Compute_id153(streams);
}
float3 Compute_id149()
{
    return InputValue_id116;
}
float3 Compute_id148(inout CS_STREAMS streams)
{
    return float3(Compute_id141(streams), Compute_id143(streams), Compute_id145(streams));
}
float Compute_id139()
{
    return InputValue_id108;
}
float3 Compute_id318(inout CS_STREAMS streams)
{
    return Compute_id313(streams) + Compute_id315(streams);
}
float3 Compute_id311()
{
    return InputValue_id194;
}
float3 Compute_id310(inout CS_STREAMS streams)
{
    return Compute_id305(streams) + Compute_id307(streams);
}
float3 Compute_id303()
{
    return InputValue_id187;
}
float3 Compute_id302(inout CS_STREAMS streams)
{
    return Compute_id297(streams) * Compute_id299(streams);
}
float3 Compute_id295()
{
    return InputValue_id180;
}
float3 Compute_id294(inout CS_STREAMS streams)
{
    return float3(Compute_id287(streams), Compute_id289(streams), Compute_id291(streams));
}
float Compute_id285()
{
    return InputValue_id172;
}
float3 Compute_id365(inout CS_STREAMS streams)
{
    return Compute_id360(streams) + Compute_id362(streams);
}
float3 Compute_id358()
{
    return InputValue_id219;
}
float3 Compute_id357(inout CS_STREAMS streams)
{
    return Compute_id352(streams) * Compute_id354(streams);
}
float3 Compute_id350()
{
    return InputValue_id212;
}
float3 Compute_id349(inout CS_STREAMS streams)
{
    return float3(Compute_id342(streams), Compute_id344(streams), Compute_id346(streams));
}
float Compute_id340()
{
    return InputValue_id204;
}
float Compute_id232(inout CS_STREAMS streams)
{
    float4 color = Compute_id210(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id46(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id230;
    float4 m = VoxelVolume_id229[i];
    return m;
}
float4 Compute_id110(inout CS_STREAMS streams)
{
    return lerp(Compute_id103(streams), Compute_id105(streams), Compute_id107(streams));
}
float Compute_id101()
{
    return InputValue_id270;
}
float4 Compute_id100(inout CS_STREAMS streams)
{
    return DynamicTexture_id262.SampleLevel(DynamicSampler_id263, Compute_id97(streams), Compute_id95());
}
float4 Compute_id94(inout CS_STREAMS streams)
{
    return SRgbToLinear_id383(Compute_id91(streams));
}
float4 Compute_id90(inout CS_STREAMS streams)
{
    return DynamicBuffer_id255[Compute_id87(streams)];
}
uint Compute_id86(inout CS_STREAMS streams)
{
    float v = Compute_id83(streams);
    uint c = Compute_id81(streams);
    return round(v * c);
}
uint Compute_id79()
{
    return InputValue_id248;
}
float Compute_id78(inout CS_STREAMS streams)
{
    float4 color = Compute_id56(streams);
    return Luminance_id45(color.rgb);
}
float4 Compute_id40(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id230;
    float4 m = VoxelVolume_id229[i];
    return m;
}
void Compute_id279(inout CS_STREAMS streams)
{
    streams.Plus_42_id164 = Compute_id267(streams);
}
void Compute_id277(inout CS_STREAMS streams)
{
    streams.Input_41_id161 = Compute_id260();
}
void Compute_id275(inout CS_STREAMS streams)
{
    streams.Multiply_40_id157 = Compute_id259(streams);
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.Input_39_id154 = Compute_id252();
}
void Compute_id271(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_38_id149 = Compute_id251(streams);
}
void Compute_id269(inout CS_STREAMS streams)
{
    streams.Input_37_id146 = Compute_id242();
}
void Compute_id200(inout CS_STREAMS streams)
{
    streams.Multiply_36_id139 = Compute_id180(streams);
}
void Compute_id198(inout CS_STREAMS streams)
{
    streams.Input_35_id136 = Compute_id173();
}
void Compute_id196(inout CS_STREAMS streams)
{
    streams.Plus_34_id132 = Compute_id172(streams);
}
void Compute_id194(inout CS_STREAMS streams)
{
    streams.Input_33_id129 = Compute_id165();
}
void Compute_id192(inout CS_STREAMS streams)
{
    streams.Plus_32_id125 = Compute_id164(streams);
}
void Compute_id190(inout CS_STREAMS streams)
{
    streams.Input_31_id122 = Compute_id157();
}
void Compute_id188(inout CS_STREAMS streams)
{
    streams.Multiply_30_id118 = Compute_id156(streams);
}
void Compute_id186(inout CS_STREAMS streams)
{
    streams.Input_29_id115 = Compute_id149();
}
void Compute_id184(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_28_id110 = Compute_id148(streams);
}
void Compute_id182(inout CS_STREAMS streams)
{
    streams.Input_27_id107 = Compute_id139();
}
void Compute_id334(inout CS_STREAMS streams)
{
    streams.Plus_26_id196 = Compute_id318(streams);
}
void Compute_id332(inout CS_STREAMS streams)
{
    streams.Input_25_id193 = Compute_id311();
}
void Compute_id330(inout CS_STREAMS streams)
{
    streams.Plus_24_id189 = Compute_id310(streams);
}
void Compute_id328(inout CS_STREAMS streams)
{
    streams.Input_23_id186 = Compute_id303();
}
void Compute_id326(inout CS_STREAMS streams)
{
    streams.Multiply_22_id182 = Compute_id302(streams);
}
void Compute_id324(inout CS_STREAMS streams)
{
    streams.Input_21_id179 = Compute_id295();
}
void Compute_id322(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_20_id174 = Compute_id294(streams);
}
void Compute_id320(inout CS_STREAMS streams)
{
    streams.Input_19_id171 = Compute_id285();
}
void Compute_id377(inout CS_STREAMS streams)
{
    streams.Plus_18_id221 = Compute_id365(streams);
}
void Compute_id375(inout CS_STREAMS streams)
{
    streams.Input_17_id218 = Compute_id358();
}
void Compute_id373(inout CS_STREAMS streams)
{
    streams.Multiply_16_id214 = Compute_id357(streams);
}
void Compute_id371(inout CS_STREAMS streams)
{
    streams.Input_15_id211 = Compute_id350();
}
void Compute_id369(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id206 = Compute_id349(streams);
}
void Compute_id367(inout CS_STREAMS streams)
{
    streams.Input_13_id203 = Compute_id340();
}
void Compute_id236(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id236 = Compute_id232(streams);
}
void Compute_id234(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id228 = Compute_id46(streams);
}
void Compute_id133(inout CS_STREAMS streams)
{
    streams.Lerp_12_id272 = Compute_id110(streams);
}
void Compute_id131(inout CS_STREAMS streams)
{
    streams.Input_11_id269 = Compute_id101();
}
void Compute_id129(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id261 = Compute_id100(streams);
}
void Compute_id127()
{
}
void Compute_id126()
{
}
void Compute_id125()
{
}
void Compute_id124()
{
}
void Compute_id123(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id258 = Compute_id94(streams);
}
void Compute_id121(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id254 = Compute_id90(streams);
}
void Compute_id119(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id250 = Compute_id86(streams);
}
void Compute_id117(inout CS_STREAMS streams)
{
    streams.Input_3_id247 = Compute_id79();
}
void Compute_id115(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id236 = Compute_id78(streams);
}
void Compute_id113(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id228 = Compute_id40(streams);
}
void Compute_id111()
{
}
float3 Compute_id282(inout CS_STREAMS streams)
{
    return streams.Plus_42_id164;
}
void Compute_id281(inout CS_STREAMS streams)
{

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

    {
        Compute_id277(streams);
    }

    {
        Compute_id279(streams);
    }
}
float3 Compute_id203(inout CS_STREAMS streams)
{
    return streams.Multiply_36_id139;
}
void Compute_id202(inout CS_STREAMS streams)
{

    {
        Compute_id182(streams);
    }

    {
        Compute_id184(streams);
    }

    {
        Compute_id186(streams);
    }

    {
        Compute_id188(streams);
    }

    {
        Compute_id190(streams);
    }

    {
        Compute_id192(streams);
    }

    {
        Compute_id194(streams);
    }

    {
        Compute_id196(streams);
    }

    {
        Compute_id198(streams);
    }

    {
        Compute_id200(streams);
    }
}
float3 Compute_id337(inout CS_STREAMS streams)
{
    return streams.Plus_26_id196;
}
void Compute_id336(inout CS_STREAMS streams)
{

    {
        Compute_id320(streams);
    }

    {
        Compute_id322(streams);
    }

    {
        Compute_id324(streams);
    }

    {
        Compute_id326(streams);
    }

    {
        Compute_id328(streams);
    }

    {
        Compute_id330(streams);
    }

    {
        Compute_id332(streams);
    }

    {
        Compute_id334(streams);
    }
}
float3 Compute_id380(inout CS_STREAMS streams)
{
    return streams.Plus_18_id221;
}
void Compute_id379(inout CS_STREAMS streams)
{

    {
        Compute_id367(streams);
    }

    {
        Compute_id369(streams);
    }

    {
        Compute_id371(streams);
    }

    {
        Compute_id373(streams);
    }

    {
        Compute_id375(streams);
    }

    {
        Compute_id377(streams);
    }
}
float Compute_id239(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id236;
}
void Compute_id238(inout CS_STREAMS streams)
{

    {
        Compute_id234(streams);
    }

    {
        Compute_id236(streams);
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
float4 Compute_id136(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id272;
}
void Compute_id135(inout CS_STREAMS streams)
{

    {
        Compute_id111();
    }

    {
        Compute_id113(streams);
    }

    {
        Compute_id115(streams);
    }

    {
        Compute_id117(streams);
    }

    {
        Compute_id119(streams);
    }

    {
        Compute_id121(streams);
    }

    {
        Compute_id123(streams);
    }

    {
        Compute_id124();
    }

    {
        Compute_id125();
    }

    {
        Compute_id126();
    }

    {
        Compute_id127();
    }

    {
        Compute_id129(streams);
    }

    {
        Compute_id131(streams);
    }

    {
        Compute_id133(streams);
    }
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id281(streams);
    return Compute_id282(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id202(streams);
    return Compute_id203(streams);
}
float3 Compute_id35(inout CS_STREAMS streams)
{
    Compute_id336(streams);
    return Compute_id337(streams);
}
float3 Compute_id34(inout CS_STREAMS streams)
{
    Compute_id379(streams);
    return Compute_id380(streams);
}
float Compute_id39(inout CS_STREAMS streams)
{
    Compute_id238(streams);
    return Compute_id239(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id135(streams);
    return Compute_id136(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id34(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id35(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id36(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id37(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id38(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id39(streams);
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

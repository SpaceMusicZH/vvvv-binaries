/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_34> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_36> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx35,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_37,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_38> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_36>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_38>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_38>}]}], mixin AssignVarFloat<Input_41> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_42> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_39>}, {Y = GetVarFloat<Multiply_40>}, {Z = GetVarFloat<Input_41>}]}], mixin AssignVarFloat3<Input_43> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_44> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_42>}, {Right = GetVarFloat3<Input_43>}]}], mixin AssignVarFloat3<Plus_45> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_34>}, {Right = GetVarFloat3<Multiply_44>}]}], mixin AssignVarFloat3<Input_46> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_47> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_45>}, {Right = GetVarFloat3<Input_46>}]}]]}]}, {Value = GetVarFloat3<Multiply_47>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_48> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_48>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<g_51> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_54> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Multiply_52>}, {Z = GetVarFloat<Multiply_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_56> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_54>}, {Right = GetVarFloat3<Input_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_58> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_56>}, {Right = GetVarFloat3<Input_57>}]}]]}]}, {Value = GetVarFloat3<Plus_58>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_24> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx23,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_25,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_26> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_24>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_27> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Z = GetVarFloat<SMCalcLuminance_ShaderFXResult_26>}]}], mixin AssignVarFloat3<Input_28> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_29> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_27>}, {Right = GetVarFloat3<Input_28>}]}], mixin AssignVarFloat3<Input_30> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_31> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_29>}, {Right = GetVarFloat3<Input_30>}]}], mixin AssignVarFloat3<Input_32> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_33> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_31>}, {Right = GetVarFloat3<Input_32>}]}]]}]}, {Value = GetVarFloat3<Plus_33>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_24> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx23,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_25,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_26> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_24>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_27> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Z = GetVarFloat<SMCalcLuminance_ShaderFXResult_26>}]}], mixin AssignVarFloat3<Input_28> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_29> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_27>}, {Right = GetVarFloat3<Input_28>}]}], mixin AssignVarFloat3<Input_30> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_31> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_29>}, {Right = GetVarFloat3<Input_30>}]}], mixin AssignVarFloat3<Input_32> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_33> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_31>}, {Right = GetVarFloat3<Input_32>}]}]]}]}, {Value = GetVarFloat3<Plus_33>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_34> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_36> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx35,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_37,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_38> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_36>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_38>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_38>}]}], mixin AssignVarFloat<Input_41> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_42> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_39>}, {Y = GetVarFloat<Multiply_40>}, {Z = GetVarFloat<Input_41>}]}], mixin AssignVarFloat3<Input_43> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_44> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_42>}, {Right = GetVarFloat3<Input_43>}]}], mixin AssignVarFloat3<Plus_45> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_34>}, {Right = GetVarFloat3<Multiply_44>}]}], mixin AssignVarFloat3<Input_46> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_47> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_45>}, {Right = GetVarFloat3<Input_46>}]}]]}]}, {Value = GetVarFloat3<Multiply_47>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_48> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_48>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<g_51> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_54> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Multiply_52>}, {Z = GetVarFloat<Multiply_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_56> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_54>}, {Right = GetVarFloat3<Input_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_58> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_56>}, {Right = GetVarFloat3<Input_57>}]}]]}]}, {Value = GetVarFloat3<Plus_58>}]
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
@C    InputValue_id157 => ShaderFX.InputValueFloat.i2
@C    InputValue_id165 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id176 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id190 => ShaderFX.InputValueFloat.i3
@C    InputValue_id213 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id220 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id271 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id278 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id285 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id295 => ShaderFX.InputValueFloat.i1
@C    InputValue_id303 => ShaderFX.InputValueFloat3
@C    InputValue_id310 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id331 => ShaderFX.InputValueUInt
@C    InputValue_id352 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id112 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id113 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id114 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id115 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id116 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id131 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id111 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    DynamicTexture_id130 => ObjectTexture_fx35 [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id230 => ObjectTexture_fx19 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id248 => ObjectTexture_fx23 [Stage: Compute, Slot: (5-5)]
@R    DynamicBuffer_id338 => ObjectBuffer_fx0 [Stage: Compute, Slot: (6-6)]
@R    DynamicTexture_id345 => ObjectTexture_fx7 [Stage: Compute, Slot: (7-7)]
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
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    MultiplyFloat => 3c410b17a1d4349d5f1f2557ce58f158
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    GetMemberFloat4Float => d4b15ec8b75d7bebcaf3454b6f9ce66b
***************************
*****     Stages      *****
***************************
@G    Compute => 07d28ff9fc8bb2f482ab360c47436653
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
//   float InputValue_id157;            // Offset:   12 Size:     4
//   float3 InputValue_id165;           // Offset:   16 Size:    12
//   float3 InputValue_id176;           // Offset:   32 Size:    12
//   float InputValue_id190;            // Offset:   44 Size:     4
//   float3 InputValue_id213;           // Offset:   48 Size:    12
//   float3 InputValue_id220;           // Offset:   64 Size:    12
//   float3 InputValue_id271;           // Offset:   80 Size:    12
//   float3 InputValue_id278;           // Offset:   96 Size:    12
//   float3 InputValue_id285;           // Offset:  112 Size:    12
//   float InputValue_id295;            // Offset:  124 Size:     4
//   float3 InputValue_id303;           // Offset:  128 Size:    12
//   float3 InputValue_id310;           // Offset:  144 Size:    12
//   uint InputValue_id331;             // Offset:  156 Size:     4
//   float InputValue_id352;            // Offset:  160 Size:     4
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
//   int3 VoxelCounts_id112;            // Offset:   84 Size:    12 [unused]
//   int3 PlacementCounts_id113;        // Offset:   96 Size:    12 [unused]
//   float2 SamplerOffset_id114;        // Offset:  112 Size:     8 [unused]
//   float2 SamplerScale_id115;         // Offset:  120 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id116;    // Offset:  128 Size:     4 [unused]
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
// Resource bind info for VoxelVolume_id111
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
// DynamicSampler_id131              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id111                 texture  struct         r/o             t2      1 
// DynamicTexture_id130              texture  float4          2d             t3      1 
// DynamicTexture_id230              texture  float4          2d             t4      1 
// DynamicTexture_id248              texture  float4          2d             t5      1 
// DynamicBuffer_id338               texture  float4         buf             t6      1 
// DynamicTexture_id345              texture  float4          2d             t7      1 
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
dcl_resource_structured t2, 16
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
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
#line 1442 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_2296f5b6ea61dd447e33ec4f962da454.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1443
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1454
  if_nz cb2[5].x

#line 1464
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

#line 1415
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 682
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id570 return value>.x; r11.y <- <Compute_id570 return value>.y; r11.z <- <Compute_id570 return value>.z

#line 1418
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 678
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id426 return value>.x; r12.y <- <Compute_id426 return value>.y; r12.z <- <Compute_id426 return value>.z

#line 423
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id57 return value>

#line 669
  sample_l_indexable(texture2d)(float,float,float,float) r13.xyz, r6.xyxx, t5.xyzw, s0, l(0.000000)  // r13.x <- <Compute_id455 return value>.x; r13.y <- <Compute_id455 return value>.y; r13.z <- <Compute_id455 return value>.z

#line 407
  dp3 r12.y, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.y <- <Luminance_id61 return value>

#line 644
  mad r12.xyz, r12.xxyx, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id502 return value>.x; r12.y <- <Compute_id502 return value>.y; r12.z <- <Compute_id502 return value>.z

#line 636
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id510 return value>.x; r12.y <- <Compute_id510 return value>.y; r12.z <- <Compute_id510 return value>.z

#line 1419
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 627
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t2.xyzx  // r12.x <- m.x; r12.y <- m.y; r12.z <- m.z

#line 363
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id47 return value>

#line 616
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xzxx, t3.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id195 return value>.x; r12.y <- <Compute_id195 return value>.y; r12.z <- <Compute_id195 return value>.z

#line 347
  dp3 r1.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id51 return value>

#line 607
  mul r1.w, r0.w, r1.w  // r1.w <- <Compute_id224 return value>

#line 587
  mul r12.yz, r1.wwww, cb1[1].xxyx  // r12.y <- <Compute_id248 return value>.x; r12.z <- <Compute_id248 return value>.y
  mul r12.w, cb1[0].w, cb1[1].z  // r12.w <- <Compute_id248 return value>.z

#line 583
  add r12.xyz, r12.yzwy, cb1[0].xyzx  // r12.x <- <Compute_id254 return value>.x; r12.y <- <Compute_id254 return value>.y; r12.z <- <Compute_id254 return value>.z

#line 575
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id262 return value>.x; r13.y <- <Compute_id262 return value>.y; r13.z <- <Compute_id262 return value>.z

#line 1420
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 570
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r6.zw, vThreadID.x, l(0), t2.xxxy  // r6.z <- m.x; r6.w <- m.y

#line 548
  mul r12.xyz, r6.zwwz, cb1[2].wwww  // r12.z <- <Compute_id361 return value>

#line 524
  mad r12.xyz, r12.xyzx, cb1[3].xyzx, cb1[4].xyzx  // r12.x <- <Compute_id391 return value>.x; r12.y <- <Compute_id391 return value>.y; r12.z <- <Compute_id391 return value>.z

#line 1421
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1423
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 740
  utof r1.w, cb1[9].w
  mul r1.w, r0.w, r1.w
  round_ne r1.w, r1.w
  ftou r1.w, r1.w  // r1.w <- <Compute_id108 return value>

#line 734
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r1.wwww, t6.xyzw  // r12.x <- <Compute_id112 return value>.x; r12.y <- <Compute_id112 return value>.y; r12.z <- <Compute_id112 return value>.z

#line 496
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id588 return value>.x; r14.y <- <SRgbToLinear_id588 return value>.y; r14.z <- <SRgbToLinear_id588 return value>.z

#line 726
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t7.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id122 return value>.x; r6.z <- <Compute_id122 return value>.y; r6.w <- <Compute_id122 return value>.z

#line 718
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id132 return value>.x; r6.z <- <Compute_id132 return value>.y; r6.w <- <Compute_id132 return value>.z

#line 1430
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1401
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1305
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 1308
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1307
  mad r1.w, r13.x, r10.y, -r12.z  // r1.w <- p.x

#line 1308
  mad r2.w, r13.x, r10.z, r12.w  // r2.w <- p.y

#line 1295
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1297
  mul r3.w, r10.w, r10.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 1298
  mul r3.w, r10.w, r12.x
  mad r2.w, r10.x, r2.w, r3.w  // r2.w <- p.z

#line 1285
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1287
  mul r3.w, r2.w, r10.x
  mad r13.x, r12.x, r1.w, r3.w  // r13.x <- p.x

#line 1288
  mul r2.w, r2.w, r12.x
  mad r13.z, -r10.x, r1.w, r2.w  // r13.z <- p.z

#line 1401
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1305
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1308
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1307
  mad r1.w, r12.x, r11.x, -r5.z

#line 1308
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 1295
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1297
  mul r3.w, r11.z, r5.x
  mad r12.y, r10.x, r2.w, -r3.w  // r12.y <- p.y

#line 1298
  mul r3.w, r11.z, r10.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 1285
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1287
  mul r3.w, r2.w, r5.x
  mad r12.x, r10.x, r1.w, r3.w  // r12.x <- p.x

#line 1288
  mul r2.w, r2.w, r10.x
  mad r12.z, -r5.x, r1.w, r2.w  // r12.z <- p.z

#line 1431
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1466
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1467
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1468
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1469
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1470
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1474
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1475
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1490
ret 
// Approximately 133 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id346 = 0;
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
    float Input_13_id294;
    float3 SMVector3Join_ShaderFXResult_14_id297;
    float3 Input_15_id302;
    float3 Multiply_16_id305;
    float3 Input_17_id309;
    float3 Plus_18_id312;
    float4 TextureValue_20_id229;
    float SMCalcLuminance_ShaderFXResult_22_id236;
    float4 TextureValue_24_id247;
    float SMCalcLuminance_ShaderFXResult_26_id254;
    float3 SMVector3Join_ShaderFXResult_27_id265;
    float3 Input_28_id270;
    float3 Multiply_29_id273;
    float3 Input_30_id277;
    float3 Plus_31_id280;
    float3 Input_32_id284;
    float3 Plus_33_id287;
    float3 Input_34_id107;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id110;
    float SMCalcLuminance_ShaderFXResult_2_id118;
    float4 TextureValue_36_id129;
    float SMCalcLuminance_ShaderFXResult_38_id137;
    float Multiply_39_id148;
    float Multiply_40_id152;
    float Input_41_id156;
    float3 SMVector3Join_ShaderFXResult_42_id159;
    float3 Input_43_id164;
    float3 Multiply_44_id167;
    float3 Plus_45_id171;
    float3 Input_46_id175;
    float3 Multiply_47_id178;
    float r_48_id186;
    float Input_49_id189;
    float Multiply_50_id192;
    float g_51_id196;
    float Multiply_52_id199;
    float Multiply_53_id203;
    float3 SMVector3Join_ShaderFXResult_54_id207;
    float3 Input_55_id212;
    float3 Multiply_56_id215;
    float3 Input_57_id219;
    float3 Plus_58_id222;
    uint Input_3_id330;
    uint SMValueToIndex_ShaderFXResult_4_id333;
    float4 BufferItem_5_id337;
    float4 SRgbToLinear_ShaderFXResult_6_id341;
    float4 TextureValue_9_id344;
    float Input_11_id351;
    float4 Lerp_12_id354;
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
    float InputValue_id157;
    float3 InputValue_id165;
    float3 InputValue_id176;
    float InputValue_id190;
    float3 InputValue_id213;
    float3 InputValue_id220;
    float3 InputValue_id271;
    float3 InputValue_id278;
    float3 InputValue_id285;
    float InputValue_id295;
    float3 InputValue_id303;
    float3 InputValue_id310;
    uint InputValue_id331;
    float InputValue_id352;
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
    int3 VoxelCounts_id112;
    int3 PlacementCounts_id113;
    float2 SamplerOffset_id114;
    float2 SamplerScale_id115 = float2(1, 1);
    uint PlacementLevelCount_id116 = 1048576;
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
StructuredBuffer<float4> VoxelVolume_id111;
Texture2D DynamicTexture_id130;
SamplerState DynamicSampler_id131;
Texture2D DynamicTexture_id230;
Texture2D DynamicTexture_id248;
Buffer<float4> DynamicBuffer_id338;
Texture2D DynamicTexture_id345;
float3 Compute_id388(inout CS_STREAMS streams)
{
    return streams.Input_57_id219;
}
float3 Compute_id386(inout CS_STREAMS streams)
{
    return streams.Multiply_56_id215;
}
float3 Compute_id380(inout CS_STREAMS streams)
{
    return streams.Input_55_id212;
}
float3 Compute_id378(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_54_id207;
}
float Compute_id372(inout CS_STREAMS streams)
{
    return streams.Multiply_53_id203;
}
float Compute_id370(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id199;
}
float Compute_id368(inout CS_STREAMS streams)
{
    return streams.Multiply_50_id192;
}
float Compute_id364(inout CS_STREAMS streams)
{
    return streams.Input_49_id189;
}
float Compute_id362(inout CS_STREAMS streams)
{
    return streams.g_51_id196;
}
float Compute_id358(inout CS_STREAMS streams)
{
    return streams.Input_49_id189;
}
float Compute_id356(inout CS_STREAMS streams)
{
    return streams.g_51_id196;
}
float4 Compute_id352(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id348(inout CS_STREAMS streams)
{
    return streams.Input_49_id189;
}
float Compute_id346(inout CS_STREAMS streams)
{
    return streams.r_48_id186;
}
float4 Compute_id340(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id259(inout CS_STREAMS streams)
{
    return streams.Input_46_id175;
}
float3 Compute_id257(inout CS_STREAMS streams)
{
    return streams.Plus_45_id171;
}
float3 Compute_id251(inout CS_STREAMS streams)
{
    return streams.Multiply_44_id167;
}
float3 Compute_id249(inout CS_STREAMS streams)
{
    return streams.Input_34_id107;
}
float3 Compute_id245(inout CS_STREAMS streams)
{
    return streams.Input_43_id164;
}
float3 Compute_id243(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_42_id159;
}
float Compute_id237(inout CS_STREAMS streams)
{
    return streams.Input_41_id156;
}
float Compute_id235(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id152;
}
float Compute_id233(inout CS_STREAMS streams)
{
    return streams.Multiply_39_id148;
}
float Compute_id227(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_38_id137;
}
float Compute_id225(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id118;
}
float Compute_id221(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_38_id137;
}
float Compute_id219(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id118;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id196(inout CS_STREAMS streams)
{
    return streams.TextureValue_36_id129;
}
float Compute_id190()
{
    return Value_id346;
}
float2 Compute_id192(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Luminance_id47(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id167(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id507(inout CS_STREAMS streams)
{
    return streams.Input_32_id284;
}
float3 Compute_id505(inout CS_STREAMS streams)
{
    return streams.Plus_31_id280;
}
float3 Compute_id499(inout CS_STREAMS streams)
{
    return streams.Input_30_id277;
}
float3 Compute_id497(inout CS_STREAMS streams)
{
    return streams.Multiply_29_id273;
}
float3 Compute_id491(inout CS_STREAMS streams)
{
    return streams.Input_28_id270;
}
float3 Compute_id489(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_27_id265;
}
float Compute_id483(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_26_id254;
}
float Compute_id481(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id236;
}
float Compute_id479(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id236;
}
float Luminance_id61(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id456(inout CS_STREAMS streams)
{
    return streams.TextureValue_24_id247;
}
float Compute_id450()
{
    return Value_id346;
}
float2 Compute_id452(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float Luminance_id57(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id427(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id229;
}
float Compute_id421()
{
    return Value_id346;
}
float2 Compute_id423(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id567(inout CS_STREAMS streams)
{
    return streams.Input_17_id309;
}
float3 Compute_id565(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id305;
}
float3 Compute_id559(inout CS_STREAMS streams)
{
    return streams.Input_15_id302;
}
float3 Compute_id557(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id297;
}
float Compute_id551(inout CS_STREAMS streams)
{
    return streams.Input_13_id294;
}
float Compute_id549(inout CS_STREAMS streams)
{
    return streams.Input_13_id294;
}
float Compute_id547(inout CS_STREAMS streams)
{
    return streams.Input_13_id294;
}
float Luminance_id73(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id304(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id129(inout CS_STREAMS streams)
{
    return streams.Input_11_id351;
}
float4 Compute_id127(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id344;
}
float4 Compute_id125(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id341;
}
float Compute_id117()
{
    return Value_id346;
}
float2 Compute_id119(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id588(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id113(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id337;
}
uint Compute_id109(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id333;
}
uint Compute_id103(inout CS_STREAMS streams)
{
    return streams.Input_3_id330;
}
float Compute_id105(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id118;
}
float Luminance_id67(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id78(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id391(inout CS_STREAMS streams)
{
    return Compute_id386(streams) + Compute_id388(streams);
}
float3 Compute_id384()
{
    return InputValue_id220;
}
float3 Compute_id383(inout CS_STREAMS streams)
{
    return Compute_id378(streams) * Compute_id380(streams);
}
float3 Compute_id376()
{
    return InputValue_id213;
}
float3 Compute_id375(inout CS_STREAMS streams)
{
    return float3(Compute_id368(streams), Compute_id370(streams), Compute_id372(streams));
}
float Compute_id367(inout CS_STREAMS streams)
{
    return Compute_id362(streams) * Compute_id364(streams);
}
float Compute_id361(inout CS_STREAMS streams)
{
    return Compute_id356(streams) * Compute_id358(streams);
}
float Compute_id355(inout CS_STREAMS streams)
{
    return Compute_id352(streams).g;
}
float Compute_id351(inout CS_STREAMS streams)
{
    return Compute_id346(streams) * Compute_id348(streams);
}
float Compute_id344()
{
    return InputValue_id190;
}
float Compute_id343(inout CS_STREAMS streams)
{
    return Compute_id340(streams).r;
}
float4 Compute_id52(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id262(inout CS_STREAMS streams)
{
    return Compute_id257(streams) * Compute_id259(streams);
}
float3 Compute_id255()
{
    return InputValue_id176;
}
float3 Compute_id254(inout CS_STREAMS streams)
{
    return Compute_id249(streams) + Compute_id251(streams);
}
float3 Compute_id248(inout CS_STREAMS streams)
{
    return Compute_id243(streams) * Compute_id245(streams);
}
float3 Compute_id241()
{
    return InputValue_id165;
}
float3 Compute_id240(inout CS_STREAMS streams)
{
    return float3(Compute_id233(streams), Compute_id235(streams), Compute_id237(streams));
}
float Compute_id231()
{
    return InputValue_id157;
}
float Compute_id230(inout CS_STREAMS streams)
{
    return Compute_id225(streams) * Compute_id227(streams);
}
float Compute_id224(inout CS_STREAMS streams)
{
    return Compute_id219(streams) * Compute_id221(streams);
}
float Compute_id218(inout CS_STREAMS streams)
{
    float4 color = Compute_id196(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id195(inout CS_STREAMS streams)
{
    return DynamicTexture_id130.SampleLevel(DynamicSampler_id131, Compute_id192(streams), Compute_id190());
}
float Compute_id189(inout CS_STREAMS streams)
{
    float4 color = Compute_id167(streams);
    return Luminance_id47(color.rgb);
}
float4 Compute_id42(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id161()
{
    return InputValue_id108;
}
float3 Compute_id510(inout CS_STREAMS streams)
{
    return Compute_id505(streams) + Compute_id507(streams);
}
float3 Compute_id503()
{
    return InputValue_id285;
}
float3 Compute_id502(inout CS_STREAMS streams)
{
    return Compute_id497(streams) + Compute_id499(streams);
}
float3 Compute_id495()
{
    return InputValue_id278;
}
float3 Compute_id494(inout CS_STREAMS streams)
{
    return Compute_id489(streams) * Compute_id491(streams);
}
float3 Compute_id487()
{
    return InputValue_id271;
}
float3 Compute_id486(inout CS_STREAMS streams)
{
    return float3(Compute_id479(streams), Compute_id481(streams), Compute_id483(streams));
}
float Compute_id478(inout CS_STREAMS streams)
{
    float4 color = Compute_id456(streams);
    return Luminance_id61(color.rgb);
}
float4 Compute_id455(inout CS_STREAMS streams)
{
    return DynamicTexture_id248.SampleLevel(DynamicSampler_id131, Compute_id452(streams), Compute_id450());
}
float Compute_id449(inout CS_STREAMS streams)
{
    float4 color = Compute_id427(streams);
    return Luminance_id57(color.rgb);
}
float4 Compute_id426(inout CS_STREAMS streams)
{
    return DynamicTexture_id230.SampleLevel(DynamicSampler_id131, Compute_id423(streams), Compute_id421());
}
float3 Compute_id570(inout CS_STREAMS streams)
{
    return Compute_id565(streams) + Compute_id567(streams);
}
float3 Compute_id563()
{
    return InputValue_id310;
}
float3 Compute_id562(inout CS_STREAMS streams)
{
    return Compute_id557(streams) * Compute_id559(streams);
}
float3 Compute_id555()
{
    return InputValue_id303;
}
float3 Compute_id554(inout CS_STREAMS streams)
{
    return float3(Compute_id547(streams), Compute_id549(streams), Compute_id551(streams));
}
float Compute_id545()
{
    return InputValue_id295;
}
float Compute_id326(inout CS_STREAMS streams)
{
    float4 color = Compute_id304(streams);
    return Luminance_id73(color.rgb);
}
float4 Compute_id68(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float4 Compute_id132(inout CS_STREAMS streams)
{
    return lerp(Compute_id125(streams), Compute_id127(streams), Compute_id129(streams));
}
float Compute_id123()
{
    return InputValue_id352;
}
float4 Compute_id122(inout CS_STREAMS streams)
{
    return DynamicTexture_id345.SampleLevel(DynamicSampler_id131, Compute_id119(streams), Compute_id117());
}
float4 Compute_id116(inout CS_STREAMS streams)
{
    return SRgbToLinear_id588(Compute_id113(streams));
}
float4 Compute_id112(inout CS_STREAMS streams)
{
    return DynamicBuffer_id338[Compute_id109(streams)];
}
uint Compute_id108(inout CS_STREAMS streams)
{
    float v = Compute_id105(streams);
    uint c = Compute_id103(streams);
    return round(v * c);
}
uint Compute_id101()
{
    return InputValue_id331;
}
float Compute_id100(inout CS_STREAMS streams)
{
    float4 color = Compute_id78(streams);
    return Luminance_id67(color.rgb);
}
float4 Compute_id62(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
void Compute_id415(inout CS_STREAMS streams)
{
    streams.Plus_58_id222 = Compute_id391(streams);
}
void Compute_id413(inout CS_STREAMS streams)
{
    streams.Input_57_id219 = Compute_id384();
}
void Compute_id411(inout CS_STREAMS streams)
{
    streams.Multiply_56_id215 = Compute_id383(streams);
}
void Compute_id409(inout CS_STREAMS streams)
{
    streams.Input_55_id212 = Compute_id376();
}
void Compute_id407(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_54_id207 = Compute_id375(streams);
}
void Compute_id405(inout CS_STREAMS streams)
{
    streams.Multiply_53_id203 = Compute_id367(streams);
}
void Compute_id403(inout CS_STREAMS streams)
{
    streams.Multiply_52_id199 = Compute_id361(streams);
}
void Compute_id401(inout CS_STREAMS streams)
{
    streams.g_51_id196 = Compute_id355(streams);
}
void Compute_id399(inout CS_STREAMS streams)
{
    streams.Multiply_50_id192 = Compute_id351(streams);
}
void Compute_id397(inout CS_STREAMS streams)
{
    streams.Input_49_id189 = Compute_id344();
}
void Compute_id395(inout CS_STREAMS streams)
{
    streams.r_48_id186 = Compute_id343(streams);
}
void Compute_id393(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id52(streams);
}
void Compute_id294(inout CS_STREAMS streams)
{
    streams.Multiply_47_id178 = Compute_id262(streams);
}
void Compute_id292(inout CS_STREAMS streams)
{
    streams.Input_46_id175 = Compute_id255();
}
void Compute_id290(inout CS_STREAMS streams)
{
    streams.Plus_45_id171 = Compute_id254(streams);
}
void Compute_id288(inout CS_STREAMS streams)
{
    streams.Multiply_44_id167 = Compute_id248(streams);
}
void Compute_id286(inout CS_STREAMS streams)
{
    streams.Input_43_id164 = Compute_id241();
}
void Compute_id284(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_42_id159 = Compute_id240(streams);
}
void Compute_id282(inout CS_STREAMS streams)
{
    streams.Input_41_id156 = Compute_id231();
}
void Compute_id280(inout CS_STREAMS streams)
{
    streams.Multiply_40_id152 = Compute_id230(streams);
}
void Compute_id278(inout CS_STREAMS streams)
{
    streams.Multiply_39_id148 = Compute_id224(streams);
}
void Compute_id276(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_38_id137 = Compute_id218(streams);
}
void Compute_id274(inout CS_STREAMS streams)
{
    streams.TextureValue_36_id129 = Compute_id195(streams);
}
void Compute_id272()
{
}
void Compute_id271()
{
}
void Compute_id270()
{
}
void Compute_id269()
{
}
void Compute_id268(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id118 = Compute_id189(streams);
}
void Compute_id266(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id42(streams);
}
void Compute_id264(inout CS_STREAMS streams)
{
    streams.Input_34_id107 = Compute_id161();
}
void Compute_id539(inout CS_STREAMS streams)
{
    streams.Plus_33_id287 = Compute_id510(streams);
}
void Compute_id537(inout CS_STREAMS streams)
{
    streams.Input_32_id284 = Compute_id503();
}
void Compute_id535(inout CS_STREAMS streams)
{
    streams.Plus_31_id280 = Compute_id502(streams);
}
void Compute_id533(inout CS_STREAMS streams)
{
    streams.Input_30_id277 = Compute_id495();
}
void Compute_id531(inout CS_STREAMS streams)
{
    streams.Multiply_29_id273 = Compute_id494(streams);
}
void Compute_id529(inout CS_STREAMS streams)
{
    streams.Input_28_id270 = Compute_id487();
}
void Compute_id527(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_27_id265 = Compute_id486(streams);
}
void Compute_id525(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_26_id254 = Compute_id478(streams);
}
void Compute_id523(inout CS_STREAMS streams)
{
    streams.TextureValue_24_id247 = Compute_id455(streams);
}
void Compute_id521()
{
}
void Compute_id520()
{
}
void Compute_id519()
{
}
void Compute_id518(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id236 = Compute_id449(streams);
}
void Compute_id516(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id229 = Compute_id426(streams);
}
void Compute_id514()
{
}
void Compute_id513()
{
}
void Compute_id512()
{
}
void Compute_id511()
{
}
void Compute_id582(inout CS_STREAMS streams)
{
    streams.Plus_18_id312 = Compute_id570(streams);
}
void Compute_id580(inout CS_STREAMS streams)
{
    streams.Input_17_id309 = Compute_id563();
}
void Compute_id578(inout CS_STREAMS streams)
{
    streams.Multiply_16_id305 = Compute_id562(streams);
}
void Compute_id576(inout CS_STREAMS streams)
{
    streams.Input_15_id302 = Compute_id555();
}
void Compute_id574(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id297 = Compute_id554(streams);
}
void Compute_id572(inout CS_STREAMS streams)
{
    streams.Input_13_id294 = Compute_id545();
}
void Compute_id330(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id118 = Compute_id326(streams);
}
void Compute_id328(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id68(streams);
}
void Compute_id155(inout CS_STREAMS streams)
{
    streams.Lerp_12_id354 = Compute_id132(streams);
}
void Compute_id153(inout CS_STREAMS streams)
{
    streams.Input_11_id351 = Compute_id123();
}
void Compute_id151(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id344 = Compute_id122(streams);
}
void Compute_id149()
{
}
void Compute_id148()
{
}
void Compute_id147()
{
}
void Compute_id146()
{
}
void Compute_id145(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id341 = Compute_id116(streams);
}
void Compute_id143(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id337 = Compute_id112(streams);
}
void Compute_id141(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id333 = Compute_id108(streams);
}
void Compute_id139(inout CS_STREAMS streams)
{
    streams.Input_3_id330 = Compute_id101();
}
void Compute_id137(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id118 = Compute_id100(streams);
}
void Compute_id135(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id62(streams);
}
void Compute_id133()
{
}
float3 Compute_id418(inout CS_STREAMS streams)
{
    return streams.Plus_58_id222;
}
void Compute_id417(inout CS_STREAMS streams)
{

    {
        Compute_id393(streams);
    }

    {
        Compute_id395(streams);
    }

    {
        Compute_id397(streams);
    }

    {
        Compute_id399(streams);
    }

    {
        Compute_id401(streams);
    }

    {
        Compute_id403(streams);
    }

    {
        Compute_id405(streams);
    }

    {
        Compute_id407(streams);
    }

    {
        Compute_id409(streams);
    }

    {
        Compute_id411(streams);
    }

    {
        Compute_id413(streams);
    }

    {
        Compute_id415(streams);
    }
}
float3 Compute_id297(inout CS_STREAMS streams)
{
    return streams.Multiply_47_id178;
}
void Compute_id296(inout CS_STREAMS streams)
{

    {
        Compute_id264(streams);
    }

    {
        Compute_id266(streams);
    }

    {
        Compute_id268(streams);
    }

    {
        Compute_id269();
    }

    {
        Compute_id270();
    }

    {
        Compute_id271();
    }

    {
        Compute_id272();
    }

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

    {
        Compute_id290(streams);
    }

    {
        Compute_id292(streams);
    }

    {
        Compute_id294(streams);
    }
}
float3 Compute_id542(inout CS_STREAMS streams)
{
    return streams.Plus_33_id287;
}
void Compute_id541(inout CS_STREAMS streams)
{

    {
        Compute_id511();
    }

    {
        Compute_id512();
    }

    {
        Compute_id513();
    }

    {
        Compute_id514();
    }

    {
        Compute_id516(streams);
    }

    {
        Compute_id518(streams);
    }

    {
        Compute_id519();
    }

    {
        Compute_id520();
    }

    {
        Compute_id521();
    }

    {
        Compute_id523(streams);
    }

    {
        Compute_id525(streams);
    }

    {
        Compute_id527(streams);
    }

    {
        Compute_id529(streams);
    }

    {
        Compute_id531(streams);
    }

    {
        Compute_id533(streams);
    }

    {
        Compute_id535(streams);
    }

    {
        Compute_id537(streams);
    }

    {
        Compute_id539(streams);
    }
}
float3 Compute_id585(inout CS_STREAMS streams)
{
    return streams.Plus_18_id312;
}
void Compute_id584(inout CS_STREAMS streams)
{

    {
        Compute_id572(streams);
    }

    {
        Compute_id574(streams);
    }

    {
        Compute_id576(streams);
    }

    {
        Compute_id578(streams);
    }

    {
        Compute_id580(streams);
    }

    {
        Compute_id582(streams);
    }
}
float Compute_id333(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id118;
}
void Compute_id332(inout CS_STREAMS streams)
{

    {
        Compute_id328(streams);
    }

    {
        Compute_id330(streams);
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
float4 Compute_id158(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id354;
}
void Compute_id157(inout CS_STREAMS streams)
{

    {
        Compute_id133();
    }

    {
        Compute_id135(streams);
    }

    {
        Compute_id137(streams);
    }

    {
        Compute_id139(streams);
    }

    {
        Compute_id141(streams);
    }

    {
        Compute_id143(streams);
    }

    {
        Compute_id145(streams);
    }

    {
        Compute_id146();
    }

    {
        Compute_id147();
    }

    {
        Compute_id148();
    }

    {
        Compute_id149();
    }

    {
        Compute_id151(streams);
    }

    {
        Compute_id153(streams);
    }

    {
        Compute_id155(streams);
    }
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id417(streams);
    return Compute_id418(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id296(streams);
    return Compute_id297(streams);
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id541(streams);
    return Compute_id542(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id584(streams);
    return Compute_id585(streams);
}
float Compute_id41(inout CS_STREAMS streams)
{
    Compute_id332(streams);
    return Compute_id333(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id157(streams);
    return Compute_id158(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id36(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id37(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id38(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id39(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id40(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id41(streams);
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

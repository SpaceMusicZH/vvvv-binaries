/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<g_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_37> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx36,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_38,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_39> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat<Multiply_41> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat<Multiply_42> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_43> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_40>}, {Y = GetVarFloat<Multiply_41>}, {Z = GetVarFloat<Multiply_42>}]}], mixin AssignVarFloat3<Input_44> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_45> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_43>}, {Right = GetVarFloat3<Input_44>}]}], mixin AssignVarFloat3<Plus_46> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_35>}, {Right = GetVarFloat3<Multiply_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Multiply_48>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_49> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_50> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_49>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_2>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_2>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_54> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_51>}, {Y = GetVarFloat<Multiply_52>}, {Z = GetVarFloat<Multiply_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_56> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_54>}, {Right = GetVarFloat3<Input_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_58> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_56>}, {Right = GetVarFloat3<Input_57>}]}]]}]}, {Value = GetVarFloat3<Plus_58>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_21> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx20,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_22,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_23> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_21>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_25> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx24,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_26,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_27> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_25>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_28> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_23>}, {Y = GetVarFloat<SMCalcLuminance_ShaderFXResult_23>}, {Z = GetVarFloat<SMCalcLuminance_ShaderFXResult_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_30> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_28>}, {Right = GetVarFloat3<Input_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_30>}, {Right = GetVarFloat3<Input_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_34> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_32>}, {Right = GetVarFloat3<Input_33>}]}]]}]}, {Value = GetVarFloat3<Plus_34>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_15> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_14>}, {Y = GetVarFloat<Input_14>}, {Z = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<Input_16> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_17> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_15>}, {Right = GetVarFloat3<Input_16>}]}], mixin AssignVarFloat3<Input_18> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_19> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_17>}, {Right = GetVarFloat3<Input_18>}]}]]}]}, {Value = GetVarFloat3<Plus_19>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<g_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_15> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_14>}, {Y = GetVarFloat<Input_14>}, {Z = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<Input_16> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_17> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_15>}, {Right = GetVarFloat3<Input_16>}]}], mixin AssignVarFloat3<Input_18> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_19> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_17>}, {Right = GetVarFloat3<Input_18>}]}]]}]}, {Value = GetVarFloat3<Plus_19>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_21> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx20,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_22,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_23> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_21>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_25> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx24,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_26,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_27> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_25>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_28> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_23>}, {Y = GetVarFloat<SMCalcLuminance_ShaderFXResult_23>}, {Z = GetVarFloat<SMCalcLuminance_ShaderFXResult_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_30> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_28>}, {Right = GetVarFloat3<Input_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_30>}, {Right = GetVarFloat3<Input_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_34> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_32>}, {Right = GetVarFloat3<Input_33>}]}]]}]}, {Value = GetVarFloat3<Plus_34>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_37> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx36,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_38,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_39> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat<Multiply_41> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat<Multiply_42> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_43> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_40>}, {Y = GetVarFloat<Multiply_41>}, {Z = GetVarFloat<Multiply_42>}]}], mixin AssignVarFloat3<Input_44> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_45> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_43>}, {Right = GetVarFloat3<Input_44>}]}], mixin AssignVarFloat3<Plus_46> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_35>}, {Right = GetVarFloat3<Multiply_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Multiply_48>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_49> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_50> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_49>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_2>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_2>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_54> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_51>}, {Y = GetVarFloat<Multiply_52>}, {Z = GetVarFloat<Multiply_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_56> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_54>}, {Right = GetVarFloat3<Input_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_58> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_56>}, {Right = GetVarFloat3<Input_57>}]}]]}]}, {Value = GetVarFloat3<Plus_58>}]
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
@C    InputValue_id166 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id177 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id191 => ShaderFX.InputValueFloat.i2
@C    InputValue_id214 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id221 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id272 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id279 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id286 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id296 => ShaderFX.InputValueFloat.i1
@C    InputValue_id304 => ShaderFX.InputValueFloat3
@C    InputValue_id311 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id324 => ShaderFX.InputValueUInt
@C    InputValue_id345 => ShaderFX.InputValueFloat
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
@R    DynamicTexture_id130 => ObjectTexture_fx36 [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id231 => ObjectTexture_fx20 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id249 => ObjectTexture_fx24 [Stage: Compute, Slot: (5-5)]
@R    DynamicBuffer_id331 => ObjectBuffer_fx0 [Stage: Compute, Slot: (6-6)]
@R    DynamicTexture_id338 => ObjectTexture_fx7 [Stage: Compute, Slot: (7-7)]
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
@S    GetMemberFloat4Float => d4b15ec8b75d7bebcaf3454b6f9ce66b
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
@S    SMCalcLuminance_ShaderFX => 11106821d0f843c804b28a35bba98d51
@S    MultiplyFloat => 3c410b17a1d4349d5f1f2557ce58f158
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
***************************
*****     Stages      *****
***************************
@G    Compute => d2c60a202bce696d70ce24dddb7a8f6b
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
//   float3 InputValue_id166;           // Offset:   16 Size:    12
//   float3 InputValue_id177;           // Offset:   32 Size:    12
//   float InputValue_id191;            // Offset:   44 Size:     4
//   float3 InputValue_id214;           // Offset:   48 Size:    12
//   float3 InputValue_id221;           // Offset:   64 Size:    12
//   float3 InputValue_id272;           // Offset:   80 Size:    12
//   float3 InputValue_id279;           // Offset:   96 Size:    12
//   float3 InputValue_id286;           // Offset:  112 Size:    12
//   float InputValue_id296;            // Offset:  124 Size:     4
//   float3 InputValue_id304;           // Offset:  128 Size:    12
//   float3 InputValue_id311;           // Offset:  144 Size:    12
//   uint InputValue_id324;             // Offset:  156 Size:     4
//   float InputValue_id345;            // Offset:  160 Size:     4
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
// DynamicTexture_id231              texture  float4          2d             t4      1 
// DynamicTexture_id249              texture  float4          2d             t5      1 
// DynamicBuffer_id331               texture  float4         buf             t6      1 
// DynamicTexture_id338              texture  float4          2d             t7      1 
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
dcl_temps 16
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 1444 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_0bf5f4132ef8552542e5f1804588a16d.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1445
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1456
  if_nz cb2[5].x

#line 1466
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

#line 1417
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 685
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id551 return value>.x; r11.y <- <Compute_id551 return value>.y; r11.z <- <Compute_id551 return value>.z

#line 1420
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 681
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id407 return value>.x; r12.y <- <Compute_id407 return value>.y; r12.z <- <Compute_id407 return value>.z

#line 430
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id57 return value>

#line 672
  sample_l_indexable(texture2d)(float,float,float,float) r13.xyz, r6.xyxx, t5.xyzw, s0, l(0.000000)  // r13.x <- <Compute_id436 return value>.x; r13.y <- <Compute_id436 return value>.y; r13.z <- <Compute_id436 return value>.z

#line 414
  dp3 r12.y, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.y <- <Luminance_id61 return value>

#line 647
  mad r12.xyz, r12.xxyx, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id483 return value>.x; r12.y <- <Compute_id483 return value>.y; r12.z <- <Compute_id483 return value>.z

#line 639
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id491 return value>.x; r12.y <- <Compute_id491 return value>.y; r12.z <- <Compute_id491 return value>.z

#line 1421
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 630
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t2.xyzx  // r12.x <- m.x; r12.y <- m.y; r12.z <- m.z

#line 370
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id47 return value>

#line 619
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xzxx, t3.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id172 return value>.x; r12.y <- <Compute_id172 return value>.y; r12.z <- <Compute_id172 return value>.z

#line 354
  dp3 r1.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id51 return value>

#line 610
  mul r0.w, r0.w, r1.w  // r0.w <- <Compute_id201 return value>

#line 586
  mad r12.xyz, r0.wwww, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id235 return value>.x; r12.y <- <Compute_id235 return value>.y; r12.z <- <Compute_id235 return value>.z

#line 578
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id243 return value>.x; r13.y <- <Compute_id243 return value>.y; r13.z <- <Compute_id243 return value>.z

#line 1422
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 573
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xy, vThreadID.x, l(0), t2.xyxx  // r12.x <- m.x; r12.y <- m.y

#line 551
  mul r13.xyz, r12.xyyx, cb1[2].wwww  // r13.z <- <Compute_id342 return value>

#line 527
  mad r13.xyz, r13.xyzx, cb1[3].xyzx, cb1[4].xyzx  // r13.x <- <Compute_id372 return value>.x; r13.y <- <Compute_id372 return value>.y; r13.z <- <Compute_id372 return value>.z

#line 1423
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r13.xyzx
  mad r10.yzw, r14.xxyz, r10.xxyz, r13.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1425
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r13.xy, r8.yzyy
  mov r13.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r13.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 743
  utof r0.w, cb1[9].w
  mul r0.w, r0.w, r12.y
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id85 return value>

#line 737
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r0.wwww, t6.xyzw  // r13.x <- <Compute_id89 return value>.x; r13.y <- <Compute_id89 return value>.y; r13.z <- <Compute_id89 return value>.z

#line 503
  mad r14.xyz, r13.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r14.xyz, r13.xyzx, r14.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r15.xyz, r13.xyzx, r14.xyzx  // r15.x <- <SRgbToLinear_id569 return value>.x; r15.y <- <SRgbToLinear_id569 return value>.y; r15.z <- <SRgbToLinear_id569 return value>.z

#line 729
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t7.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id99 return value>.x; r6.z <- <Compute_id99 return value>.y; r6.w <- <Compute_id99 return value>.z

#line 721
  mad r6.yzw, -r13.xxyz, r14.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r15.xxyz  // r6.y <- <Compute_id109 return value>.x; r6.z <- <Compute_id109 return value>.y; r6.w <- <Compute_id109 return value>.z

#line 1432
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1403
  mul r13.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r13.x <- angle.x; r13.y <- angle.y; r13.z <- angle.z

#line 1307
  sincos r10.x, r14.x, r13.z  // r14.x <- c; r10.x <- s

#line 1310
  mul r13.zw, r10.zzzy, r10.xxxx

#line 1309
  mad r0.w, r14.x, r10.y, -r13.z  // r0.w <- p.x

#line 1310
  mad r1.w, r14.x, r10.z, r13.w  // r1.w <- p.y

#line 1297
  sincos r10.x, r13.x, r13.x  // r13.x <- c; r10.x <- s

#line 1299
  mul r2.w, r10.w, r10.x
  mad r14.y, r13.x, r1.w, -r2.w  // r14.y <- p.y

#line 1300
  mul r2.w, r10.w, r13.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1287
  sincos r10.x, r13.x, r13.y  // r13.x <- c; r10.x <- s

#line 1289
  mul r2.w, r1.w, r10.x
  mad r14.x, r13.x, r0.w, r2.w  // r14.x <- p.x

#line 1290
  mul r1.w, r1.w, r13.x
  mad r14.z, -r10.x, r0.w, r1.w  // r14.z <- p.z

#line 1403
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1307
  sincos r10.x, r13.x, r5.z  // r13.x <- c; r10.x <- s

#line 1310
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1309
  mad r0.w, r13.x, r11.x, -r5.z

#line 1310
  mad r1.w, r13.x, r11.y, r5.w  // r1.w <- p.y

#line 1297
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1299
  mul r2.w, r11.z, r5.x
  mad r13.y, r10.x, r1.w, -r2.w  // r13.y <- p.y

#line 1300
  mul r2.w, r11.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1287
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1289
  mul r2.w, r1.w, r5.x
  mad r13.x, r10.x, r0.w, r2.w  // r13.x <- p.x

#line 1290
  mul r1.w, r1.w, r10.x
  mad r13.z, -r5.x, r0.w, r1.w  // r13.z <- p.z

#line 1433
  add r5.xyz, r14.xyzx, r13.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 716
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.zw, vThreadID.x, l(4), t2.xxxy  // r12.z <- m.y; r12.w <- m.z

#line 474
  dp3 r0.w, r12.xzwx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id69 return value>

#line 1468
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1469
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1470
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1471
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1472
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1476
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1477
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1492
ret 
// Approximately 133 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id339 = 0;
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
    float Input_14_id295;
    float3 SMVector3Join_ShaderFXResult_15_id298;
    float3 Input_16_id303;
    float3 Multiply_17_id306;
    float3 Input_18_id310;
    float3 Plus_19_id313;
    float4 TextureValue_21_id230;
    float SMCalcLuminance_ShaderFXResult_23_id237;
    float4 TextureValue_25_id248;
    float SMCalcLuminance_ShaderFXResult_27_id255;
    float3 SMVector3Join_ShaderFXResult_28_id266;
    float3 Input_29_id271;
    float3 Multiply_30_id274;
    float3 Input_31_id278;
    float3 Plus_32_id281;
    float3 Input_33_id285;
    float3 Plus_34_id288;
    float3 Input_35_id107;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id110;
    float SMCalcLuminance_ShaderFXResult_13_id118;
    float4 TextureValue_37_id129;
    float SMCalcLuminance_ShaderFXResult_39_id137;
    float Multiply_40_id148;
    float Multiply_41_id152;
    float Multiply_42_id156;
    float3 SMVector3Join_ShaderFXResult_43_id160;
    float3 Input_44_id165;
    float3 Multiply_45_id168;
    float3 Plus_46_id172;
    float3 Input_47_id176;
    float3 Multiply_48_id179;
    float r_49_id187;
    float Input_50_id190;
    float Multiply_51_id193;
    float g_2_id197;
    float Multiply_52_id200;
    float Multiply_53_id204;
    float3 SMVector3Join_ShaderFXResult_54_id208;
    float3 Input_55_id213;
    float3 Multiply_56_id216;
    float3 Input_57_id220;
    float3 Plus_58_id223;
    uint Input_3_id323;
    uint SMValueToIndex_ShaderFXResult_4_id326;
    float4 BufferItem_5_id330;
    float4 SRgbToLinear_ShaderFXResult_6_id334;
    float4 TextureValue_9_id337;
    float Input_11_id344;
    float4 Lerp_12_id347;
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
    float3 InputValue_id166;
    float3 InputValue_id177;
    float InputValue_id191;
    float3 InputValue_id214;
    float3 InputValue_id221;
    float3 InputValue_id272;
    float3 InputValue_id279;
    float3 InputValue_id286;
    float InputValue_id296;
    float3 InputValue_id304;
    float3 InputValue_id311;
    uint InputValue_id324;
    float InputValue_id345;
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
Texture2D DynamicTexture_id231;
Texture2D DynamicTexture_id249;
Buffer<float4> DynamicBuffer_id331;
Texture2D DynamicTexture_id338;
float3 Compute_id369(inout CS_STREAMS streams)
{
    return streams.Input_57_id220;
}
float3 Compute_id367(inout CS_STREAMS streams)
{
    return streams.Multiply_56_id216;
}
float3 Compute_id361(inout CS_STREAMS streams)
{
    return streams.Input_55_id213;
}
float3 Compute_id359(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_54_id208;
}
float Compute_id353(inout CS_STREAMS streams)
{
    return streams.Multiply_53_id204;
}
float Compute_id351(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id200;
}
float Compute_id349(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id193;
}
float Compute_id345(inout CS_STREAMS streams)
{
    return streams.Input_50_id190;
}
float Compute_id343(inout CS_STREAMS streams)
{
    return streams.g_2_id197;
}
float Compute_id339(inout CS_STREAMS streams)
{
    return streams.Input_50_id190;
}
float Compute_id337(inout CS_STREAMS streams)
{
    return streams.g_2_id197;
}
float4 Compute_id333(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id329(inout CS_STREAMS streams)
{
    return streams.Input_50_id190;
}
float Compute_id327(inout CS_STREAMS streams)
{
    return streams.r_49_id187;
}
float4 Compute_id321(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id240(inout CS_STREAMS streams)
{
    return streams.Input_47_id176;
}
float3 Compute_id238(inout CS_STREAMS streams)
{
    return streams.Plus_46_id172;
}
float3 Compute_id232(inout CS_STREAMS streams)
{
    return streams.Multiply_45_id168;
}
float3 Compute_id230(inout CS_STREAMS streams)
{
    return streams.Input_35_id107;
}
float3 Compute_id226(inout CS_STREAMS streams)
{
    return streams.Input_44_id165;
}
float3 Compute_id224(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_43_id160;
}
float Compute_id218(inout CS_STREAMS streams)
{
    return streams.Multiply_42_id156;
}
float Compute_id216(inout CS_STREAMS streams)
{
    return streams.Multiply_41_id152;
}
float Compute_id214(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id148;
}
float Compute_id210(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_39_id137;
}
float Compute_id208(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id204(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_39_id137;
}
float Compute_id202(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id198(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_39_id137;
}
float Compute_id196(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id173(inout CS_STREAMS streams)
{
    return streams.TextureValue_37_id129;
}
float Compute_id167()
{
    return Value_id339;
}
float2 Compute_id169(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Luminance_id47(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id144(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id488(inout CS_STREAMS streams)
{
    return streams.Input_33_id285;
}
float3 Compute_id486(inout CS_STREAMS streams)
{
    return streams.Plus_32_id281;
}
float3 Compute_id480(inout CS_STREAMS streams)
{
    return streams.Input_31_id278;
}
float3 Compute_id478(inout CS_STREAMS streams)
{
    return streams.Multiply_30_id274;
}
float3 Compute_id472(inout CS_STREAMS streams)
{
    return streams.Input_29_id271;
}
float3 Compute_id470(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_28_id266;
}
float Compute_id464(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_27_id255;
}
float Compute_id462(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_23_id237;
}
float Compute_id460(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_23_id237;
}
float Luminance_id61(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id437(inout CS_STREAMS streams)
{
    return streams.TextureValue_25_id248;
}
float Compute_id431()
{
    return Value_id339;
}
float2 Compute_id433(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float Luminance_id57(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id408(inout CS_STREAMS streams)
{
    return streams.TextureValue_21_id230;
}
float Compute_id402()
{
    return Value_id339;
}
float2 Compute_id404(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id548(inout CS_STREAMS streams)
{
    return streams.Input_18_id310;
}
float3 Compute_id546(inout CS_STREAMS streams)
{
    return streams.Multiply_17_id306;
}
float3 Compute_id540(inout CS_STREAMS streams)
{
    return streams.Input_16_id303;
}
float3 Compute_id538(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_15_id298;
}
float Compute_id532(inout CS_STREAMS streams)
{
    return streams.Input_14_id295;
}
float Compute_id530(inout CS_STREAMS streams)
{
    return streams.Input_14_id295;
}
float Compute_id528(inout CS_STREAMS streams)
{
    return streams.Input_14_id295;
}
float Luminance_id69(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id285(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id106(inout CS_STREAMS streams)
{
    return streams.Input_11_id344;
}
float4 Compute_id104(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id337;
}
float4 Compute_id102(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id334;
}
float Compute_id94()
{
    return Value_id339;
}
float2 Compute_id96(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id569(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id90(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id330;
}
uint Compute_id86(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id326;
}
uint Compute_id80(inout CS_STREAMS streams)
{
    return streams.Input_3_id323;
}
float Compute_id82(inout CS_STREAMS streams)
{
    return streams.g_2_id197;
}
float4 Compute_id74(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id372(inout CS_STREAMS streams)
{
    return Compute_id367(streams) + Compute_id369(streams);
}
float3 Compute_id365()
{
    return InputValue_id221;
}
float3 Compute_id364(inout CS_STREAMS streams)
{
    return Compute_id359(streams) * Compute_id361(streams);
}
float3 Compute_id357()
{
    return InputValue_id214;
}
float3 Compute_id356(inout CS_STREAMS streams)
{
    return float3(Compute_id349(streams), Compute_id351(streams), Compute_id353(streams));
}
float Compute_id348(inout CS_STREAMS streams)
{
    return Compute_id343(streams) * Compute_id345(streams);
}
float Compute_id342(inout CS_STREAMS streams)
{
    return Compute_id337(streams) * Compute_id339(streams);
}
float Compute_id336(inout CS_STREAMS streams)
{
    return Compute_id333(streams).g;
}
float Compute_id332(inout CS_STREAMS streams)
{
    return Compute_id327(streams) * Compute_id329(streams);
}
float Compute_id325()
{
    return InputValue_id191;
}
float Compute_id324(inout CS_STREAMS streams)
{
    return Compute_id321(streams).r;
}
float4 Compute_id52(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id243(inout CS_STREAMS streams)
{
    return Compute_id238(streams) * Compute_id240(streams);
}
float3 Compute_id236()
{
    return InputValue_id177;
}
float3 Compute_id235(inout CS_STREAMS streams)
{
    return Compute_id230(streams) + Compute_id232(streams);
}
float3 Compute_id229(inout CS_STREAMS streams)
{
    return Compute_id224(streams) * Compute_id226(streams);
}
float3 Compute_id222()
{
    return InputValue_id166;
}
float3 Compute_id221(inout CS_STREAMS streams)
{
    return float3(Compute_id214(streams), Compute_id216(streams), Compute_id218(streams));
}
float Compute_id213(inout CS_STREAMS streams)
{
    return Compute_id208(streams) * Compute_id210(streams);
}
float Compute_id207(inout CS_STREAMS streams)
{
    return Compute_id202(streams) * Compute_id204(streams);
}
float Compute_id201(inout CS_STREAMS streams)
{
    return Compute_id196(streams) * Compute_id198(streams);
}
float Compute_id195(inout CS_STREAMS streams)
{
    float4 color = Compute_id173(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id172(inout CS_STREAMS streams)
{
    return DynamicTexture_id130.SampleLevel(DynamicSampler_id131, Compute_id169(streams), Compute_id167());
}
float Compute_id166(inout CS_STREAMS streams)
{
    float4 color = Compute_id144(streams);
    return Luminance_id47(color.rgb);
}
float4 Compute_id42(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id138()
{
    return InputValue_id108;
}
float3 Compute_id491(inout CS_STREAMS streams)
{
    return Compute_id486(streams) + Compute_id488(streams);
}
float3 Compute_id484()
{
    return InputValue_id286;
}
float3 Compute_id483(inout CS_STREAMS streams)
{
    return Compute_id478(streams) + Compute_id480(streams);
}
float3 Compute_id476()
{
    return InputValue_id279;
}
float3 Compute_id475(inout CS_STREAMS streams)
{
    return Compute_id470(streams) * Compute_id472(streams);
}
float3 Compute_id468()
{
    return InputValue_id272;
}
float3 Compute_id467(inout CS_STREAMS streams)
{
    return float3(Compute_id460(streams), Compute_id462(streams), Compute_id464(streams));
}
float Compute_id459(inout CS_STREAMS streams)
{
    float4 color = Compute_id437(streams);
    return Luminance_id61(color.rgb);
}
float4 Compute_id436(inout CS_STREAMS streams)
{
    return DynamicTexture_id249.SampleLevel(DynamicSampler_id131, Compute_id433(streams), Compute_id431());
}
float Compute_id430(inout CS_STREAMS streams)
{
    float4 color = Compute_id408(streams);
    return Luminance_id57(color.rgb);
}
float4 Compute_id407(inout CS_STREAMS streams)
{
    return DynamicTexture_id231.SampleLevel(DynamicSampler_id131, Compute_id404(streams), Compute_id402());
}
float3 Compute_id551(inout CS_STREAMS streams)
{
    return Compute_id546(streams) + Compute_id548(streams);
}
float3 Compute_id544()
{
    return InputValue_id311;
}
float3 Compute_id543(inout CS_STREAMS streams)
{
    return Compute_id538(streams) * Compute_id540(streams);
}
float3 Compute_id536()
{
    return InputValue_id304;
}
float3 Compute_id535(inout CS_STREAMS streams)
{
    return float3(Compute_id528(streams), Compute_id530(streams), Compute_id532(streams));
}
float Compute_id526()
{
    return InputValue_id296;
}
float Compute_id307(inout CS_STREAMS streams)
{
    float4 color = Compute_id285(streams);
    return Luminance_id69(color.rgb);
}
float4 Compute_id64(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float4 Compute_id109(inout CS_STREAMS streams)
{
    return lerp(Compute_id102(streams), Compute_id104(streams), Compute_id106(streams));
}
float Compute_id100()
{
    return InputValue_id345;
}
float4 Compute_id99(inout CS_STREAMS streams)
{
    return DynamicTexture_id338.SampleLevel(DynamicSampler_id131, Compute_id96(streams), Compute_id94());
}
float4 Compute_id93(inout CS_STREAMS streams)
{
    return SRgbToLinear_id569(Compute_id90(streams));
}
float4 Compute_id89(inout CS_STREAMS streams)
{
    return DynamicBuffer_id331[Compute_id86(streams)];
}
uint Compute_id85(inout CS_STREAMS streams)
{
    float v = Compute_id82(streams);
    uint c = Compute_id80(streams);
    return round(v * c);
}
uint Compute_id78()
{
    return InputValue_id324;
}
float Compute_id77(inout CS_STREAMS streams)
{
    return Compute_id74(streams).g;
}
float4 Compute_id62(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
void Compute_id396(inout CS_STREAMS streams)
{
    streams.Plus_58_id223 = Compute_id372(streams);
}
void Compute_id394(inout CS_STREAMS streams)
{
    streams.Input_57_id220 = Compute_id365();
}
void Compute_id392(inout CS_STREAMS streams)
{
    streams.Multiply_56_id216 = Compute_id364(streams);
}
void Compute_id390(inout CS_STREAMS streams)
{
    streams.Input_55_id213 = Compute_id357();
}
void Compute_id388(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_54_id208 = Compute_id356(streams);
}
void Compute_id386(inout CS_STREAMS streams)
{
    streams.Multiply_53_id204 = Compute_id348(streams);
}
void Compute_id384(inout CS_STREAMS streams)
{
    streams.Multiply_52_id200 = Compute_id342(streams);
}
void Compute_id382(inout CS_STREAMS streams)
{
    streams.g_2_id197 = Compute_id336(streams);
}
void Compute_id380(inout CS_STREAMS streams)
{
    streams.Multiply_51_id193 = Compute_id332(streams);
}
void Compute_id378(inout CS_STREAMS streams)
{
    streams.Input_50_id190 = Compute_id325();
}
void Compute_id376(inout CS_STREAMS streams)
{
    streams.r_49_id187 = Compute_id324(streams);
}
void Compute_id374(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id52(streams);
}
void Compute_id275(inout CS_STREAMS streams)
{
    streams.Multiply_48_id179 = Compute_id243(streams);
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.Input_47_id176 = Compute_id236();
}
void Compute_id271(inout CS_STREAMS streams)
{
    streams.Plus_46_id172 = Compute_id235(streams);
}
void Compute_id269(inout CS_STREAMS streams)
{
    streams.Multiply_45_id168 = Compute_id229(streams);
}
void Compute_id267(inout CS_STREAMS streams)
{
    streams.Input_44_id165 = Compute_id222();
}
void Compute_id265(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_43_id160 = Compute_id221(streams);
}
void Compute_id263(inout CS_STREAMS streams)
{
    streams.Multiply_42_id156 = Compute_id213(streams);
}
void Compute_id261(inout CS_STREAMS streams)
{
    streams.Multiply_41_id152 = Compute_id207(streams);
}
void Compute_id259(inout CS_STREAMS streams)
{
    streams.Multiply_40_id148 = Compute_id201(streams);
}
void Compute_id257(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_39_id137 = Compute_id195(streams);
}
void Compute_id255(inout CS_STREAMS streams)
{
    streams.TextureValue_37_id129 = Compute_id172(streams);
}
void Compute_id253()
{
}
void Compute_id252()
{
}
void Compute_id251()
{
}
void Compute_id250()
{
}
void Compute_id249(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id166(streams);
}
void Compute_id247(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id42(streams);
}
void Compute_id245(inout CS_STREAMS streams)
{
    streams.Input_35_id107 = Compute_id138();
}
void Compute_id520(inout CS_STREAMS streams)
{
    streams.Plus_34_id288 = Compute_id491(streams);
}
void Compute_id518(inout CS_STREAMS streams)
{
    streams.Input_33_id285 = Compute_id484();
}
void Compute_id516(inout CS_STREAMS streams)
{
    streams.Plus_32_id281 = Compute_id483(streams);
}
void Compute_id514(inout CS_STREAMS streams)
{
    streams.Input_31_id278 = Compute_id476();
}
void Compute_id512(inout CS_STREAMS streams)
{
    streams.Multiply_30_id274 = Compute_id475(streams);
}
void Compute_id510(inout CS_STREAMS streams)
{
    streams.Input_29_id271 = Compute_id468();
}
void Compute_id508(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_28_id266 = Compute_id467(streams);
}
void Compute_id506(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_27_id255 = Compute_id459(streams);
}
void Compute_id504(inout CS_STREAMS streams)
{
    streams.TextureValue_25_id248 = Compute_id436(streams);
}
void Compute_id502()
{
}
void Compute_id501()
{
}
void Compute_id500()
{
}
void Compute_id499(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_23_id237 = Compute_id430(streams);
}
void Compute_id497(inout CS_STREAMS streams)
{
    streams.TextureValue_21_id230 = Compute_id407(streams);
}
void Compute_id495()
{
}
void Compute_id494()
{
}
void Compute_id493()
{
}
void Compute_id492()
{
}
void Compute_id563(inout CS_STREAMS streams)
{
    streams.Plus_19_id313 = Compute_id551(streams);
}
void Compute_id561(inout CS_STREAMS streams)
{
    streams.Input_18_id310 = Compute_id544();
}
void Compute_id559(inout CS_STREAMS streams)
{
    streams.Multiply_17_id306 = Compute_id543(streams);
}
void Compute_id557(inout CS_STREAMS streams)
{
    streams.Input_16_id303 = Compute_id536();
}
void Compute_id555(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_15_id298 = Compute_id535(streams);
}
void Compute_id553(inout CS_STREAMS streams)
{
    streams.Input_14_id295 = Compute_id526();
}
void Compute_id311(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id307(streams);
}
void Compute_id309(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id64(streams);
}
void Compute_id132(inout CS_STREAMS streams)
{
    streams.Lerp_12_id347 = Compute_id109(streams);
}
void Compute_id130(inout CS_STREAMS streams)
{
    streams.Input_11_id344 = Compute_id100();
}
void Compute_id128(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id337 = Compute_id99(streams);
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
void Compute_id123()
{
}
void Compute_id122(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id334 = Compute_id93(streams);
}
void Compute_id120(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id330 = Compute_id89(streams);
}
void Compute_id118(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id326 = Compute_id85(streams);
}
void Compute_id116(inout CS_STREAMS streams)
{
    streams.Input_3_id323 = Compute_id78();
}
void Compute_id114(inout CS_STREAMS streams)
{
    streams.g_2_id197 = Compute_id77(streams);
}
void Compute_id112(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id62(streams);
}
void Compute_id110()
{
}
float3 Compute_id399(inout CS_STREAMS streams)
{
    return streams.Plus_58_id223;
}
void Compute_id398(inout CS_STREAMS streams)
{

    {
        Compute_id374(streams);
    }

    {
        Compute_id376(streams);
    }

    {
        Compute_id378(streams);
    }

    {
        Compute_id380(streams);
    }

    {
        Compute_id382(streams);
    }

    {
        Compute_id384(streams);
    }

    {
        Compute_id386(streams);
    }

    {
        Compute_id388(streams);
    }

    {
        Compute_id390(streams);
    }

    {
        Compute_id392(streams);
    }

    {
        Compute_id394(streams);
    }

    {
        Compute_id396(streams);
    }
}
float3 Compute_id278(inout CS_STREAMS streams)
{
    return streams.Multiply_48_id179;
}
void Compute_id277(inout CS_STREAMS streams)
{

    {
        Compute_id245(streams);
    }

    {
        Compute_id247(streams);
    }

    {
        Compute_id249(streams);
    }

    {
        Compute_id250();
    }

    {
        Compute_id251();
    }

    {
        Compute_id252();
    }

    {
        Compute_id253();
    }

    {
        Compute_id255(streams);
    }

    {
        Compute_id257(streams);
    }

    {
        Compute_id259(streams);
    }

    {
        Compute_id261(streams);
    }

    {
        Compute_id263(streams);
    }

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
float3 Compute_id523(inout CS_STREAMS streams)
{
    return streams.Plus_34_id288;
}
void Compute_id522(inout CS_STREAMS streams)
{

    {
        Compute_id492();
    }

    {
        Compute_id493();
    }

    {
        Compute_id494();
    }

    {
        Compute_id495();
    }

    {
        Compute_id497(streams);
    }

    {
        Compute_id499(streams);
    }

    {
        Compute_id500();
    }

    {
        Compute_id501();
    }

    {
        Compute_id502();
    }

    {
        Compute_id504(streams);
    }

    {
        Compute_id506(streams);
    }

    {
        Compute_id508(streams);
    }

    {
        Compute_id510(streams);
    }

    {
        Compute_id512(streams);
    }

    {
        Compute_id514(streams);
    }

    {
        Compute_id516(streams);
    }

    {
        Compute_id518(streams);
    }

    {
        Compute_id520(streams);
    }
}
float3 Compute_id566(inout CS_STREAMS streams)
{
    return streams.Plus_19_id313;
}
void Compute_id565(inout CS_STREAMS streams)
{

    {
        Compute_id553(streams);
    }

    {
        Compute_id555(streams);
    }

    {
        Compute_id557(streams);
    }

    {
        Compute_id559(streams);
    }

    {
        Compute_id561(streams);
    }

    {
        Compute_id563(streams);
    }
}
float Compute_id314(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
void Compute_id313(inout CS_STREAMS streams)
{

    {
        Compute_id309(streams);
    }

    {
        Compute_id311(streams);
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
float4 Compute_id135(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id347;
}
void Compute_id134(inout CS_STREAMS streams)
{

    {
        Compute_id110();
    }

    {
        Compute_id112(streams);
    }

    {
        Compute_id114(streams);
    }

    {
        Compute_id116(streams);
    }

    {
        Compute_id118(streams);
    }

    {
        Compute_id120(streams);
    }

    {
        Compute_id122(streams);
    }

    {
        Compute_id123();
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
        Compute_id128(streams);
    }

    {
        Compute_id130(streams);
    }

    {
        Compute_id132(streams);
    }
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id398(streams);
    return Compute_id399(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id277(streams);
    return Compute_id278(streams);
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id522(streams);
    return Compute_id523(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id565(streams);
    return Compute_id566(streams);
}
float Compute_id41(inout CS_STREAMS streams)
{
    Compute_id313(streams);
    return Compute_id314(streams);
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
    Compute_id134(streams);
    return Compute_id135(streams);
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

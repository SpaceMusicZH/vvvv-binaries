/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_32> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_33,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_34> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Multiply_35> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_37> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx36,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_38,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_39> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<Multiply_35>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_40>}, {Y = GetVarFloat<Multiply_40>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_47> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_48> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_49> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_47>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<g_50> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_53> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_49>}, {Y = GetVarFloat<Multiply_51>}, {Z = GetVarFloat<Multiply_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_55> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_53>}, {Right = GetVarFloat3<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_57> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_55>}, {Right = GetVarFloat3<Input_56>}]}]]}]}, {Value = GetVarFloat3<Plus_57>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_32> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_33,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_34> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Multiply_35> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_37> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx36,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_38,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_39> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<Multiply_35>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_39>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_40>}, {Y = GetVarFloat<Multiply_40>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_47> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_48> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_49> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_47>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<g_50> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_53> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_49>}, {Y = GetVarFloat<Multiply_51>}, {Z = GetVarFloat<Multiply_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_55> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_53>}, {Right = GetVarFloat3<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_57> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_55>}, {Right = GetVarFloat3<Input_56>}]}]]}]}, {Value = GetVarFloat3<Plus_57>}]
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
@C    InputValue_id179 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id190 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id211 => ShaderFX.InputValueFloat.i3
@C    InputValue_id234 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id241 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id265 => ShaderFX.InputValueFloat.i2
@C    InputValue_id273 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id280 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id287 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id297 => ShaderFX.InputValueFloat.i1
@C    InputValue_id305 => ShaderFX.InputValueFloat3
@C    InputValue_id312 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id334 => ShaderFX.InputValueUInt
@C    InputValue_id354 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id201 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id202 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id203 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id204 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id205 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id112 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id200 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    DynamicTexture_id111 => ObjectTexture_fx7 [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id130 => ObjectTexture_fx19 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id152 => ObjectTexture_fx36 [Stage: Compute, Slot: (5-5)]
@R    DynamicBuffer_id341 => ObjectBuffer_fx0 [Stage: Compute, Slot: (6-6)]
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
@G    Compute => 03e73ae69a6401aa7c4fef19e944aac4
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
//   float3 InputValue_id179;           // Offset:   16 Size:    12
//   float3 InputValue_id190;           // Offset:   32 Size:    12
//   float InputValue_id211;            // Offset:   44 Size:     4
//   float3 InputValue_id234;           // Offset:   48 Size:    12
//   float3 InputValue_id241;           // Offset:   64 Size:    12
//   float InputValue_id265;            // Offset:   76 Size:     4
//   float3 InputValue_id273;           // Offset:   80 Size:    12
//   float3 InputValue_id280;           // Offset:   96 Size:    12
//   float3 InputValue_id287;           // Offset:  112 Size:    12
//   float InputValue_id297;            // Offset:  124 Size:     4
//   float3 InputValue_id305;           // Offset:  128 Size:    12
//   float3 InputValue_id312;           // Offset:  144 Size:    12
//   uint InputValue_id334;             // Offset:  156 Size:     4
//   float InputValue_id354;            // Offset:  160 Size:     4
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
//   int3 VoxelCounts_id201;            // Offset:   84 Size:    12 [unused]
//   int3 PlacementCounts_id202;        // Offset:   96 Size:    12 [unused]
//   float2 SamplerOffset_id203;        // Offset:  112 Size:     8 [unused]
//   float2 SamplerScale_id204;         // Offset:  120 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id205;    // Offset:  128 Size:     4 [unused]
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
// Resource bind info for VoxelVolume_id200
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
// DynamicSampler_id112              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id200                 texture  struct         r/o             t2      1 
// DynamicTexture_id111              texture  float4          2d             t3      1 
// DynamicTexture_id130              texture  float4          2d             t4      1 
// DynamicTexture_id152              texture  float4          2d             t5      1 
// DynamicBuffer_id341               texture  float4         buf             t6      1 
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
#line 1467 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_a86dded2755e378a933db28c06b87ef3.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1468
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1479
  if_nz cb2[5].x

#line 1489
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

#line 1440
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 686
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id572 return value>.x; r11.y <- <Compute_id572 return value>.y; r11.z <- <Compute_id572 return value>.z

#line 1443
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 682
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id460 return value>.x; r12.y <- <Compute_id460 return value>.y; r12.z <- <Compute_id460 return value>.z

#line 430
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id58 return value>

#line 661
  mov r12.yz, cb1[4].wwww

#line 653
  mad r12.yzw, r12.xxyz, cb1[5].xxyz, cb1[6].xxyz  // r12.y <- <Compute_id509 return value>.x; r12.z <- <Compute_id509 return value>.y; r12.w <- <Compute_id509 return value>.z

#line 645
  add r12.yzw, r12.yyzw, cb1[7].xxyz  // r12.y <- <Compute_id517 return value>.x; r12.z <- <Compute_id517 return value>.y; r12.w <- <Compute_id517 return value>.z

#line 1444
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.yzwy, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.yzwy  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 637
  sample_l_indexable(texture2d)(float,float,float,float) r12.yzw, r6.xyxx, t3.wxyz, s0, l(0.000000)  // r12.y <- <Compute_id165 return value>.x; r12.z <- <Compute_id165 return value>.y; r12.w <- <Compute_id165 return value>.z

#line 378
  dp3 r0.w, r12.yzwy, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id44 return value>

#line 619
  mul r0.w, r12.x, r0.w  // r0.w <- <Compute_id223 return value>

#line 615
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xzxx, t5.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id229 return value>.x; r6.z <- <Compute_id229 return value>.y; r6.w <- <Compute_id229 return value>.z

#line 338
  dp3 r1.w, r6.yzwy, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id52 return value>

#line 606
  mul r0.w, r0.w, r1.w  // r0.w <- <Compute_id258 return value>

#line 590
  mad r6.yzw, r0.wwww, cb1[1].xxyz, cb1[0].xxyz  // r6.y <- <Compute_id280 return value>.x; r6.z <- <Compute_id280 return value>.y; r6.w <- <Compute_id280 return value>.z

#line 582
  mul r13.xyz, r6.yzwy, cb1[2].xyzx  // r13.x <- <Compute_id288 return value>.x; r13.y <- <Compute_id288 return value>.y; r13.z <- <Compute_id288 return value>.z

#line 1445
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r6.yzw, -r6.yyzw, cb1[2].xxyz, r9.yyzw
  mad r6.yzw, r14.xxyz, r6.yyzw, r13.xxyz  // r6.y <- m.Dim.x; r6.z <- m.Dim.y; r6.w <- m.Dim.z

#line 577
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r9.xy, vThreadID.x, l(0), t2.xyxx  // r9.x <- m.x; r9.y <- m.y

#line 555
  mul r9.xyz, r9.xyyx, cb1[2].wwww  // r9.z <- <Compute_id395 return value>

#line 531
  mad r9.xyz, r9.xyzx, cb1[3].xyzx, cb1[4].xyzx  // r9.x <- <Compute_id425 return value>.x; r9.y <- <Compute_id425 return value>.y; r9.z <- <Compute_id425 return value>.z

#line 1446
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, -r9.xyzx, r10.yzwy
  mad r9.yzw, r13.xxyz, r10.xxyz, r9.xxyz  // r9.y <- m.Piv.x; r9.z <- m.Piv.y; r9.w <- m.Piv.z

#line 1448
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r10.xy, r8.yzyy
  mov r10.zw, r6.yyyz
  store_structured u0.xyzw, vThreadID.x, l(16), r10.xyzw
  mov r9.x, r6.w
  store_structured u0.xyzw, vThreadID.x, l(32), r9.xyzw

#line 759
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r10.xyz, vThreadID.x, l(0), t2.xyzx  // r10.x <- m.x; r10.y <- m.y; r10.z <- m.z

#line 523
  dp3 r0.w, r10.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id64 return value>

#line 744
  utof r1.w, cb1[9].w
  mul r1.w, r0.w, r1.w
  round_ne r1.w, r1.w
  ftou r1.w, r1.w  // r1.w <- <Compute_id105 return value>

#line 738
  ld_indexable(buffer)(float,float,float,float) r10.xyz, r1.wwww, t6.xyzw  // r10.x <- <Compute_id109 return value>.x; r10.y <- <Compute_id109 return value>.y; r10.z <- <Compute_id109 return value>.z

#line 503
  mad r13.xyz, r10.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r10.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r10.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id590 return value>.x; r14.y <- <SRgbToLinear_id590 return value>.y; r14.z <- <SRgbToLinear_id590 return value>.z

#line 722
  mad r10.xyz, -r10.xyzx, r13.xyzx, r12.yzwy
  mad r10.xyz, cb1[10].xxxx, r10.xyzx, r14.xyzx  // r10.x <- <Compute_id129 return value>.x; r10.y <- <Compute_id129 return value>.y; r10.z <- <Compute_id129 return value>.z

#line 1455
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1426
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1330
  sincos r9.x, r13.x, r12.z  // r13.x <- c; r9.x <- s

#line 1333
  mul r12.zw, r9.zzzy, r9.xxxx

#line 1332
  mad r1.w, r13.x, r9.y, -r12.z  // r1.w <- p.x

#line 1333
  mad r2.w, r13.x, r9.z, r12.w  // r2.w <- p.y

#line 1320
  sincos r9.x, r12.x, r12.x  // r12.x <- c; r9.x <- s

#line 1322
  mul r3.w, r9.w, r9.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 1323
  mul r3.w, r9.w, r12.x
  mad r2.w, r9.x, r2.w, r3.w  // r2.w <- p.z

#line 1310
  sincos r9.x, r12.x, r12.y  // r12.x <- c; r9.x <- s

#line 1312
  mul r3.w, r2.w, r9.x
  mad r13.x, r12.x, r1.w, r3.w  // r13.x <- p.x

#line 1313
  mul r2.w, r2.w, r12.x
  mad r13.z, -r9.x, r1.w, r2.w  // r13.z <- p.z

#line 1426
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1330
  sincos r9.x, r12.x, r5.z  // r12.x <- c; r9.x <- s

#line 1333
  mul r5.zw, r11.yyyx, r9.xxxx

#line 1332
  mad r1.w, r12.x, r11.x, -r5.z

#line 1333
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 1320
  sincos r5.x, r9.x, r5.x  // r9.x <- c; r5.x <- s

#line 1322
  mul r3.w, r11.z, r5.x
  mad r12.y, r9.x, r2.w, -r3.w  // r12.y <- p.y

#line 1323
  mul r3.w, r11.z, r9.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 1310
  sincos r5.x, r9.x, r5.y  // r9.x <- c; r5.x <- s

#line 1312
  mul r3.w, r2.w, r5.x
  mad r12.x, r9.x, r1.w, r3.w  // r12.x <- p.x

#line 1313
  mul r2.w, r2.w, r9.x
  mad r12.z, -r5.x, r1.w, r2.w  // r12.z <- p.z

#line 1456
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1491
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1492
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1493
  add r1.xyz, r2.xyzx, -r6.yzwy
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r6.yyzw  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1494
  add r2.xyz, r3.xyzx, -r10.xyzx
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r10.xyzx  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1495
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1499
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1500
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1515
ret 
// Approximately 132 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id348 = 0;
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
    float Input_13_id296;
    float3 SMVector3Join_ShaderFXResult_14_id299;
    float3 Input_15_id304;
    float3 Multiply_16_id307;
    float3 Input_17_id311;
    float3 Plus_18_id314;
    float4 TextureValue_20_id129;
    float SMCalcLuminance_ShaderFXResult_22_id136;
    float Input_23_id264;
    float3 SMVector3Join_ShaderFXResult_24_id267;
    float3 Input_25_id272;
    float3 Multiply_26_id275;
    float3 Input_27_id279;
    float3 Plus_28_id282;
    float3 Input_29_id286;
    float3 Plus_30_id289;
    float3 Input_31_id107;
    float4 TextureValue_32_id110;
    float SMCalcLuminance_ShaderFXResult_34_id118;
    float Multiply_35_id147;
    float4 TextureValue_37_id151;
    float SMCalcLuminance_ShaderFXResult_39_id158;
    float Multiply_40_id169;
    float3 SMVector3Join_ShaderFXResult_41_id173;
    float3 Input_42_id178;
    float3 Multiply_43_id181;
    float3 Plus_44_id185;
    float3 Input_45_id189;
    float3 Multiply_46_id192;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id199;
    float r_47_id207;
    float Input_48_id210;
    float Multiply_49_id213;
    float g_50_id217;
    float Multiply_51_id220;
    float Multiply_52_id224;
    float3 SMVector3Join_ShaderFXResult_53_id228;
    float3 Input_54_id233;
    float3 Multiply_55_id236;
    float3 Input_56_id240;
    float3 Plus_57_id243;
    float SMCalcLuminance_ShaderFXResult_2_id322;
    uint Input_3_id333;
    uint SMValueToIndex_ShaderFXResult_4_id336;
    float4 BufferItem_5_id340;
    float4 SRgbToLinear_ShaderFXResult_6_id344;
    float4 TextureValue_9_id347;
    float Input_11_id353;
    float4 Lerp_12_id356;
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
    float3 InputValue_id179;
    float3 InputValue_id190;
    float InputValue_id211;
    float3 InputValue_id234;
    float3 InputValue_id241;
    float InputValue_id265;
    float3 InputValue_id273;
    float3 InputValue_id280;
    float3 InputValue_id287;
    float InputValue_id297;
    float3 InputValue_id305;
    float3 InputValue_id312;
    uint InputValue_id334;
    float InputValue_id354;
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
    int3 VoxelCounts_id201;
    int3 PlacementCounts_id202;
    float2 SamplerOffset_id203;
    float2 SamplerScale_id204 = float2(1, 1);
    uint PlacementLevelCount_id205 = 1048576;
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
StructuredBuffer<float4> VoxelVolume_id200;
Texture2D DynamicTexture_id111;
SamplerState DynamicSampler_id112;
Texture2D DynamicTexture_id130;
Texture2D DynamicTexture_id152;
Buffer<float4> DynamicBuffer_id341;
float3 Compute_id422(inout CS_STREAMS streams)
{
    return streams.Input_56_id240;
}
float3 Compute_id420(inout CS_STREAMS streams)
{
    return streams.Multiply_55_id236;
}
float3 Compute_id414(inout CS_STREAMS streams)
{
    return streams.Input_54_id233;
}
float3 Compute_id412(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_53_id228;
}
float Compute_id406(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id224;
}
float Compute_id404(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id220;
}
float Compute_id402(inout CS_STREAMS streams)
{
    return streams.Multiply_49_id213;
}
float Compute_id398(inout CS_STREAMS streams)
{
    return streams.Input_48_id210;
}
float Compute_id396(inout CS_STREAMS streams)
{
    return streams.g_50_id217;
}
float Compute_id392(inout CS_STREAMS streams)
{
    return streams.Input_48_id210;
}
float Compute_id390(inout CS_STREAMS streams)
{
    return streams.g_50_id217;
}
float4 Compute_id386(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id199;
}
float Compute_id382(inout CS_STREAMS streams)
{
    return streams.Input_48_id210;
}
float Compute_id380(inout CS_STREAMS streams)
{
    return streams.r_47_id207;
}
float4 Compute_id374(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id199;
}
float3 Compute_id285(inout CS_STREAMS streams)
{
    return streams.Input_45_id189;
}
float3 Compute_id283(inout CS_STREAMS streams)
{
    return streams.Plus_44_id185;
}
float3 Compute_id277(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id181;
}
float3 Compute_id275(inout CS_STREAMS streams)
{
    return streams.Input_31_id107;
}
float3 Compute_id271(inout CS_STREAMS streams)
{
    return streams.Input_42_id178;
}
float3 Compute_id269(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_41_id173;
}
float Compute_id263(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id169;
}
float Compute_id261(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id169;
}
float Compute_id259(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id169;
}
float Compute_id255(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_39_id158;
}
float Compute_id253(inout CS_STREAMS streams)
{
    return streams.Multiply_35_id147;
}
float Luminance_id52(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id230(inout CS_STREAMS streams)
{
    return streams.TextureValue_37_id151;
}
float Compute_id224()
{
    return Value_id348;
}
float2 Compute_id226(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Compute_id220(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id136;
}
float Compute_id218(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_34_id118;
}
float Luminance_id48(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id195(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id129;
}
float Compute_id189()
{
    return Value_id348;
}
float2 Compute_id191(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float Luminance_id44(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id166(inout CS_STREAMS streams)
{
    return streams.TextureValue_32_id110;
}
float Compute_id160()
{
    return Value_id348;
}
float2 Compute_id162(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float3 Compute_id514(inout CS_STREAMS streams)
{
    return streams.Input_29_id286;
}
float3 Compute_id512(inout CS_STREAMS streams)
{
    return streams.Plus_28_id282;
}
float3 Compute_id506(inout CS_STREAMS streams)
{
    return streams.Input_27_id279;
}
float3 Compute_id504(inout CS_STREAMS streams)
{
    return streams.Multiply_26_id275;
}
float3 Compute_id498(inout CS_STREAMS streams)
{
    return streams.Input_25_id272;
}
float3 Compute_id496(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_24_id267;
}
float Compute_id490(inout CS_STREAMS streams)
{
    return streams.Input_23_id264;
}
float Compute_id488(inout CS_STREAMS streams)
{
    return streams.Input_23_id264;
}
float Compute_id486(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id136;
}
float Luminance_id58(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id461(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id129;
}
float Compute_id455()
{
    return Value_id348;
}
float2 Compute_id457(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id569(inout CS_STREAMS streams)
{
    return streams.Input_17_id311;
}
float3 Compute_id567(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id307;
}
float3 Compute_id561(inout CS_STREAMS streams)
{
    return streams.Input_15_id304;
}
float3 Compute_id559(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id299;
}
float Compute_id553(inout CS_STREAMS streams)
{
    return streams.Input_13_id296;
}
float Compute_id551(inout CS_STREAMS streams)
{
    return streams.Input_13_id296;
}
float Compute_id549(inout CS_STREAMS streams)
{
    return streams.Input_13_id296;
}
float Luminance_id70(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id338(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id199;
}
float Compute_id126(inout CS_STREAMS streams)
{
    return streams.Input_11_id353;
}
float4 Compute_id124(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id347;
}
float4 Compute_id122(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id344;
}
float Compute_id114()
{
    return Value_id348;
}
float2 Compute_id116(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id590(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id110(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id340;
}
uint Compute_id106(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id336;
}
uint Compute_id100(inout CS_STREAMS streams)
{
    return streams.Input_3_id333;
}
float Compute_id102(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id322;
}
float Luminance_id64(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id75(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id199;
}
float3 Compute_id425(inout CS_STREAMS streams)
{
    return Compute_id420(streams) + Compute_id422(streams);
}
float3 Compute_id418()
{
    return InputValue_id241;
}
float3 Compute_id417(inout CS_STREAMS streams)
{
    return Compute_id412(streams) * Compute_id414(streams);
}
float3 Compute_id410()
{
    return InputValue_id234;
}
float3 Compute_id409(inout CS_STREAMS streams)
{
    return float3(Compute_id402(streams), Compute_id404(streams), Compute_id406(streams));
}
float Compute_id401(inout CS_STREAMS streams)
{
    return Compute_id396(streams) * Compute_id398(streams);
}
float Compute_id395(inout CS_STREAMS streams)
{
    return Compute_id390(streams) * Compute_id392(streams);
}
float Compute_id389(inout CS_STREAMS streams)
{
    return Compute_id386(streams).g;
}
float Compute_id385(inout CS_STREAMS streams)
{
    return Compute_id380(streams) * Compute_id382(streams);
}
float Compute_id378()
{
    return InputValue_id211;
}
float Compute_id377(inout CS_STREAMS streams)
{
    return Compute_id374(streams).r;
}
float4 Compute_id53(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id201;
    float4 m = VoxelVolume_id200[i];
    return m;
}
float3 Compute_id288(inout CS_STREAMS streams)
{
    return Compute_id283(streams) * Compute_id285(streams);
}
float3 Compute_id281()
{
    return InputValue_id190;
}
float3 Compute_id280(inout CS_STREAMS streams)
{
    return Compute_id275(streams) + Compute_id277(streams);
}
float3 Compute_id274(inout CS_STREAMS streams)
{
    return Compute_id269(streams) * Compute_id271(streams);
}
float3 Compute_id267()
{
    return InputValue_id179;
}
float3 Compute_id266(inout CS_STREAMS streams)
{
    return float3(Compute_id259(streams), Compute_id261(streams), Compute_id263(streams));
}
float Compute_id258(inout CS_STREAMS streams)
{
    return Compute_id253(streams) * Compute_id255(streams);
}
float Compute_id252(inout CS_STREAMS streams)
{
    float4 color = Compute_id230(streams);
    return Luminance_id52(color.rgb);
}
float4 Compute_id229(inout CS_STREAMS streams)
{
    return DynamicTexture_id152.SampleLevel(DynamicSampler_id112, Compute_id226(streams), Compute_id224());
}
float Compute_id223(inout CS_STREAMS streams)
{
    return Compute_id218(streams) * Compute_id220(streams);
}
float Compute_id217(inout CS_STREAMS streams)
{
    float4 color = Compute_id195(streams);
    return Luminance_id48(color.rgb);
}
float4 Compute_id194(inout CS_STREAMS streams)
{
    return DynamicTexture_id130.SampleLevel(DynamicSampler_id112, Compute_id191(streams), Compute_id189());
}
float Compute_id188(inout CS_STREAMS streams)
{
    float4 color = Compute_id166(streams);
    return Luminance_id44(color.rgb);
}
float4 Compute_id165(inout CS_STREAMS streams)
{
    return DynamicTexture_id111.SampleLevel(DynamicSampler_id112, Compute_id162(streams), Compute_id160());
}
float3 Compute_id158()
{
    return InputValue_id108;
}
float3 Compute_id517(inout CS_STREAMS streams)
{
    return Compute_id512(streams) + Compute_id514(streams);
}
float3 Compute_id510()
{
    return InputValue_id287;
}
float3 Compute_id509(inout CS_STREAMS streams)
{
    return Compute_id504(streams) + Compute_id506(streams);
}
float3 Compute_id502()
{
    return InputValue_id280;
}
float3 Compute_id501(inout CS_STREAMS streams)
{
    return Compute_id496(streams) * Compute_id498(streams);
}
float3 Compute_id494()
{
    return InputValue_id273;
}
float3 Compute_id493(inout CS_STREAMS streams)
{
    return float3(Compute_id486(streams), Compute_id488(streams), Compute_id490(streams));
}
float Compute_id484()
{
    return InputValue_id265;
}
float Compute_id483(inout CS_STREAMS streams)
{
    float4 color = Compute_id461(streams);
    return Luminance_id58(color.rgb);
}
float4 Compute_id460(inout CS_STREAMS streams)
{
    return DynamicTexture_id130.SampleLevel(DynamicSampler_id112, Compute_id457(streams), Compute_id455());
}
float3 Compute_id572(inout CS_STREAMS streams)
{
    return Compute_id567(streams) + Compute_id569(streams);
}
float3 Compute_id565()
{
    return InputValue_id312;
}
float3 Compute_id564(inout CS_STREAMS streams)
{
    return Compute_id559(streams) * Compute_id561(streams);
}
float3 Compute_id557()
{
    return InputValue_id305;
}
float3 Compute_id556(inout CS_STREAMS streams)
{
    return float3(Compute_id549(streams), Compute_id551(streams), Compute_id553(streams));
}
float Compute_id547()
{
    return InputValue_id297;
}
float Compute_id360(inout CS_STREAMS streams)
{
    float4 color = Compute_id338(streams);
    return Luminance_id70(color.rgb);
}
float4 Compute_id65(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id201;
    float4 m = VoxelVolume_id200[i];
    return m;
}
float4 Compute_id129(inout CS_STREAMS streams)
{
    return lerp(Compute_id122(streams), Compute_id124(streams), Compute_id126(streams));
}
float Compute_id120()
{
    return InputValue_id354;
}
float4 Compute_id119(inout CS_STREAMS streams)
{
    return DynamicTexture_id111.SampleLevel(DynamicSampler_id112, Compute_id116(streams), Compute_id114());
}
float4 Compute_id113(inout CS_STREAMS streams)
{
    return SRgbToLinear_id590(Compute_id110(streams));
}
float4 Compute_id109(inout CS_STREAMS streams)
{
    return DynamicBuffer_id341[Compute_id106(streams)];
}
uint Compute_id105(inout CS_STREAMS streams)
{
    float v = Compute_id102(streams);
    uint c = Compute_id100(streams);
    return round(v * c);
}
uint Compute_id98()
{
    return InputValue_id334;
}
float Compute_id97(inout CS_STREAMS streams)
{
    float4 color = Compute_id75(streams);
    return Luminance_id64(color.rgb);
}
float4 Compute_id59(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id201;
    float4 m = VoxelVolume_id200[i];
    return m;
}
void Compute_id449(inout CS_STREAMS streams)
{
    streams.Plus_57_id243 = Compute_id425(streams);
}
void Compute_id447(inout CS_STREAMS streams)
{
    streams.Input_56_id240 = Compute_id418();
}
void Compute_id445(inout CS_STREAMS streams)
{
    streams.Multiply_55_id236 = Compute_id417(streams);
}
void Compute_id443(inout CS_STREAMS streams)
{
    streams.Input_54_id233 = Compute_id410();
}
void Compute_id441(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_53_id228 = Compute_id409(streams);
}
void Compute_id439(inout CS_STREAMS streams)
{
    streams.Multiply_52_id224 = Compute_id401(streams);
}
void Compute_id437(inout CS_STREAMS streams)
{
    streams.Multiply_51_id220 = Compute_id395(streams);
}
void Compute_id435(inout CS_STREAMS streams)
{
    streams.g_50_id217 = Compute_id389(streams);
}
void Compute_id433(inout CS_STREAMS streams)
{
    streams.Multiply_49_id213 = Compute_id385(streams);
}
void Compute_id431(inout CS_STREAMS streams)
{
    streams.Input_48_id210 = Compute_id378();
}
void Compute_id429(inout CS_STREAMS streams)
{
    streams.r_47_id207 = Compute_id377(streams);
}
void Compute_id427(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id199 = Compute_id53(streams);
}
void Compute_id328(inout CS_STREAMS streams)
{
    streams.Multiply_46_id192 = Compute_id288(streams);
}
void Compute_id326(inout CS_STREAMS streams)
{
    streams.Input_45_id189 = Compute_id281();
}
void Compute_id324(inout CS_STREAMS streams)
{
    streams.Plus_44_id185 = Compute_id280(streams);
}
void Compute_id322(inout CS_STREAMS streams)
{
    streams.Multiply_43_id181 = Compute_id274(streams);
}
void Compute_id320(inout CS_STREAMS streams)
{
    streams.Input_42_id178 = Compute_id267();
}
void Compute_id318(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_41_id173 = Compute_id266(streams);
}
void Compute_id316(inout CS_STREAMS streams)
{
    streams.Multiply_40_id169 = Compute_id258(streams);
}
void Compute_id314(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_39_id158 = Compute_id252(streams);
}
void Compute_id312(inout CS_STREAMS streams)
{
    streams.TextureValue_37_id151 = Compute_id229(streams);
}
void Compute_id310()
{
}
void Compute_id309()
{
}
void Compute_id308()
{
}
void Compute_id307(inout CS_STREAMS streams)
{
    streams.Multiply_35_id147 = Compute_id223(streams);
}
void Compute_id305(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id136 = Compute_id217(streams);
}
void Compute_id303(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id129 = Compute_id194(streams);
}
void Compute_id301()
{
}
void Compute_id300()
{
}
void Compute_id299()
{
}
void Compute_id298(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_34_id118 = Compute_id188(streams);
}
void Compute_id296(inout CS_STREAMS streams)
{
    streams.TextureValue_32_id110 = Compute_id165(streams);
}
void Compute_id294()
{
}
void Compute_id293()
{
}
void Compute_id292()
{
}
void Compute_id291()
{
}
void Compute_id290(inout CS_STREAMS streams)
{
    streams.Input_31_id107 = Compute_id158();
}
void Compute_id541(inout CS_STREAMS streams)
{
    streams.Plus_30_id289 = Compute_id517(streams);
}
void Compute_id539(inout CS_STREAMS streams)
{
    streams.Input_29_id286 = Compute_id510();
}
void Compute_id537(inout CS_STREAMS streams)
{
    streams.Plus_28_id282 = Compute_id509(streams);
}
void Compute_id535(inout CS_STREAMS streams)
{
    streams.Input_27_id279 = Compute_id502();
}
void Compute_id533(inout CS_STREAMS streams)
{
    streams.Multiply_26_id275 = Compute_id501(streams);
}
void Compute_id531(inout CS_STREAMS streams)
{
    streams.Input_25_id272 = Compute_id494();
}
void Compute_id529(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_24_id267 = Compute_id493(streams);
}
void Compute_id527(inout CS_STREAMS streams)
{
    streams.Input_23_id264 = Compute_id484();
}
void Compute_id525(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id136 = Compute_id483(streams);
}
void Compute_id523(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id129 = Compute_id460(streams);
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
void Compute_id518()
{
}
void Compute_id584(inout CS_STREAMS streams)
{
    streams.Plus_18_id314 = Compute_id572(streams);
}
void Compute_id582(inout CS_STREAMS streams)
{
    streams.Input_17_id311 = Compute_id565();
}
void Compute_id580(inout CS_STREAMS streams)
{
    streams.Multiply_16_id307 = Compute_id564(streams);
}
void Compute_id578(inout CS_STREAMS streams)
{
    streams.Input_15_id304 = Compute_id557();
}
void Compute_id576(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id299 = Compute_id556(streams);
}
void Compute_id574(inout CS_STREAMS streams)
{
    streams.Input_13_id296 = Compute_id547();
}
void Compute_id364(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id322 = Compute_id360(streams);
}
void Compute_id362(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id199 = Compute_id65(streams);
}
void Compute_id152(inout CS_STREAMS streams)
{
    streams.Lerp_12_id356 = Compute_id129(streams);
}
void Compute_id150(inout CS_STREAMS streams)
{
    streams.Input_11_id353 = Compute_id120();
}
void Compute_id148(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id347 = Compute_id119(streams);
}
void Compute_id146()
{
}
void Compute_id145()
{
}
void Compute_id144()
{
}
void Compute_id143()
{
}
void Compute_id142(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id344 = Compute_id113(streams);
}
void Compute_id140(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id340 = Compute_id109(streams);
}
void Compute_id138(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id336 = Compute_id105(streams);
}
void Compute_id136(inout CS_STREAMS streams)
{
    streams.Input_3_id333 = Compute_id98();
}
void Compute_id134(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id322 = Compute_id97(streams);
}
void Compute_id132(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id199 = Compute_id59(streams);
}
void Compute_id130()
{
}
float3 Compute_id452(inout CS_STREAMS streams)
{
    return streams.Plus_57_id243;
}
void Compute_id451(inout CS_STREAMS streams)
{

    {
        Compute_id427(streams);
    }

    {
        Compute_id429(streams);
    }

    {
        Compute_id431(streams);
    }

    {
        Compute_id433(streams);
    }

    {
        Compute_id435(streams);
    }

    {
        Compute_id437(streams);
    }

    {
        Compute_id439(streams);
    }

    {
        Compute_id441(streams);
    }

    {
        Compute_id443(streams);
    }

    {
        Compute_id445(streams);
    }

    {
        Compute_id447(streams);
    }

    {
        Compute_id449(streams);
    }
}
float3 Compute_id331(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id192;
}
void Compute_id330(inout CS_STREAMS streams)
{

    {
        Compute_id290(streams);
    }

    {
        Compute_id291();
    }

    {
        Compute_id292();
    }

    {
        Compute_id293();
    }

    {
        Compute_id294();
    }

    {
        Compute_id296(streams);
    }

    {
        Compute_id298(streams);
    }

    {
        Compute_id299();
    }

    {
        Compute_id300();
    }

    {
        Compute_id301();
    }

    {
        Compute_id303(streams);
    }

    {
        Compute_id305(streams);
    }

    {
        Compute_id307(streams);
    }

    {
        Compute_id308();
    }

    {
        Compute_id309();
    }

    {
        Compute_id310();
    }

    {
        Compute_id312(streams);
    }

    {
        Compute_id314(streams);
    }

    {
        Compute_id316(streams);
    }

    {
        Compute_id318(streams);
    }

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
}
float3 Compute_id544(inout CS_STREAMS streams)
{
    return streams.Plus_30_id289;
}
void Compute_id543(inout CS_STREAMS streams)
{

    {
        Compute_id518();
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

    {
        Compute_id541(streams);
    }
}
float3 Compute_id587(inout CS_STREAMS streams)
{
    return streams.Plus_18_id314;
}
void Compute_id586(inout CS_STREAMS streams)
{

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

    {
        Compute_id584(streams);
    }
}
float Compute_id367(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id322;
}
void Compute_id366(inout CS_STREAMS streams)
{

    {
        Compute_id362(streams);
    }

    {
        Compute_id364(streams);
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
float4 Compute_id155(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id356;
}
void Compute_id154(inout CS_STREAMS streams)
{

    {
        Compute_id130();
    }

    {
        Compute_id132(streams);
    }

    {
        Compute_id134(streams);
    }

    {
        Compute_id136(streams);
    }

    {
        Compute_id138(streams);
    }

    {
        Compute_id140(streams);
    }

    {
        Compute_id142(streams);
    }

    {
        Compute_id143();
    }

    {
        Compute_id144();
    }

    {
        Compute_id145();
    }

    {
        Compute_id146();
    }

    {
        Compute_id148(streams);
    }

    {
        Compute_id150(streams);
    }

    {
        Compute_id152(streams);
    }
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id451(streams);
    return Compute_id452(streams);
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id330(streams);
    return Compute_id331(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id543(streams);
    return Compute_id544(streams);
}
float3 Compute_id35(inout CS_STREAMS streams)
{
    Compute_id586(streams);
    return Compute_id587(streams);
}
float Compute_id40(inout CS_STREAMS streams)
{
    Compute_id366(streams);
    return Compute_id367(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id154(streams);
    return Compute_id155(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id35(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id36(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id37(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id38(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id39(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id40(streams);
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

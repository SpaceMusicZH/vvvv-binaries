/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_32> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_33> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_38>}, {Y = GetVarFloat<Multiply_39>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_47> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_48> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_49> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_47>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<g_50> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_53> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_49>}, {Y = GetVarFloat<Multiply_51>}, {Z = GetVarFloat<Multiply_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_55> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_53>}, {Right = GetVarFloat3<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_57> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_55>}, {Right = GetVarFloat3<Input_56>}]}]]}]}, {Value = GetVarFloat3<Plus_57>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_32> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_33> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_38>}, {Y = GetVarFloat<Multiply_39>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]
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
@C    InputValue_id111 => ShaderFX.InputValueUInt.i1
@C    InputValue_id161 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id172 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id193 => ShaderFX.InputValueFloat.i3
@C    InputValue_id216 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id223 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id251 => ShaderFX.InputValueFloat.i2
@C    InputValue_id259 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id266 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id273 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id283 => ShaderFX.InputValueFloat.i1
@C    InputValue_id291 => ShaderFX.InputValueFloat3
@C    InputValue_id298 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id320 => ShaderFX.InputValueUInt
@C    InputValue_id341 => ShaderFX.InputValueFloat
cbuffer Globals [Size: 208]
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
@C    VoxelCounts_id115 => SMMidiBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id116 => SMMidiBufferSelector_ShaderFX.PlacementCounts
@C    Channel_id117 => SMMidiBufferSelector_ShaderFX.Channel
@C    Blink_id118 => SMMidiBufferSelector_ShaderFX.Blink
@C    SamplerOffset_id119 => SMMidiBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id120 => SMMidiBufferSelector_ShaderFX.SamplerScale
@C    VoxelCounts_id183 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id184 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id185 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id186 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id187 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id126 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id114 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    VoxelVolume_id182 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id125 => ObjectTexture_fx34 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id233 => ObjectTexture_fx19 [Stage: Compute, Slot: (5-5)]
@R    DynamicBuffer_id327 => ObjectBuffer_fx0 [Stage: Compute, Slot: (6-6)]
@R    DynamicTexture_id334 => ObjectTexture_fx7 [Stage: Compute, Slot: (7-7)]
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
@S    SMMidiSelectValue_ShaderFX => c77373c891111f8b45fb62108518eee4
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    SMMidiBufferSelector_ShaderFX => 1df156fd3c684db39ea5b160a664f54a
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
@G    Compute => 4e20130e55567263bdfb83acb034a15b
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
//   uint InputValue_id111;             // Offset:   12 Size:     4
//   float3 InputValue_id161;           // Offset:   16 Size:    12
//   float3 InputValue_id172;           // Offset:   32 Size:    12
//   float InputValue_id193;            // Offset:   44 Size:     4
//   float3 InputValue_id216;           // Offset:   48 Size:    12
//   float3 InputValue_id223;           // Offset:   64 Size:    12
//   float InputValue_id251;            // Offset:   76 Size:     4
//   float3 InputValue_id259;           // Offset:   80 Size:    12
//   float3 InputValue_id266;           // Offset:   96 Size:    12
//   float3 InputValue_id273;           // Offset:  112 Size:    12
//   float InputValue_id283;            // Offset:  124 Size:     4
//   float3 InputValue_id291;           // Offset:  128 Size:    12
//   float3 InputValue_id298;           // Offset:  144 Size:    12
//   uint InputValue_id320;             // Offset:  156 Size:     4
//   float InputValue_id341;            // Offset:  160 Size:     4
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
//   int3 VoxelCounts_id115;            // Offset:   84 Size:    12
//   int3 PlacementCounts_id116;        // Offset:   96 Size:    12 [unused]
//   int Channel_id117;                 // Offset:  108 Size:     4 [unused]
//   float Blink_id118;                 // Offset:  112 Size:     4 [unused]
//   float2 SamplerOffset_id119;        // Offset:  116 Size:     8 [unused]
//   float2 SamplerScale_id120;         // Offset:  128 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   int3 VoxelCounts_id183;            // Offset:  144 Size:    12 [unused]
//   int3 PlacementCounts_id184;        // Offset:  160 Size:    12 [unused]
//   float2 SamplerOffset_id185;        // Offset:  176 Size:     8 [unused]
//   float2 SamplerScale_id186;         // Offset:  184 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id187;    // Offset:  192 Size:     4 [unused]
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
// Resource bind info for VoxelVolume_id114
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
// Resource bind info for VoxelVolume_id182
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
// DynamicSampler_id126              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id114                 texture  struct         r/o             t2      1 
// VoxelVolume_id182                 texture  struct         r/o             t3      1 
// DynamicTexture_id125              texture  float4          2d             t4      1 
// DynamicTexture_id233              texture  float4          2d             t5      1 
// DynamicBuffer_id327               texture  float4         buf             t6      1 
// DynamicTexture_id334              texture  float4          2d             t7      1 
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
dcl_resource_structured t3, 16
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
#line 1479 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_2e3d6d42635f7fc6938e653b957638ce.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1480
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1491
  if_nz cb2[5].x

#line 1501
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

#line 1452
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 748
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id521 return value>.x; r11.y <- <Compute_id521 return value>.y; r11.z <- <Compute_id521 return value>.z

#line 1455
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 744
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t5.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id409 return value>.x; r12.y <- <Compute_id409 return value>.y; r12.z <- <Compute_id409 return value>.z

#line 497
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id56 return value>

#line 723
  mov r12.yz, cb1[4].wwww

#line 715
  mad r12.xyz, r12.xyzx, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id458 return value>.x; r12.y <- <Compute_id458 return value>.y; r12.z <- <Compute_id458 return value>.z

#line 707
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id466 return value>.x; r12.y <- <Compute_id466 return value>.y; r12.z <- <Compute_id466 return value>.z

#line 1456
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 455
  itof r12.xyz, cb2[5].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 273
  imul null, r0.w, cb2[5].z, cb2[5].y
  imad r1.w, r12.y, cb2[5].y, r12.x
  imad r0.w, r12.z, r0.w, r1.w  // r0.w <- <CalculateVoxelVolumeIndex_id45 return value>

#line 277
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t2.xyzw  // r12.x <- <GetVoxel_id34 return value>.Empty; r12.y <- <GetVoxel_id34 return value>.StartTime; r12.z <- <GetVoxel_id34 return value>.Note; r12.w <- <GetVoxel_id34 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r13.xyzw, r0.w, l(16), t2.xyzw  // r13.x <- <GetVoxel_id34 return value>.Length; r13.y <- <GetVoxel_id34 return value>.Channel; r13.z <- <GetVoxel_id34 return value>.Constant; r13.w <- <GetVoxel_id34 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(32), t2.wxyz  // r14.y <- <GetVoxel_id34 return value>.TrackId; r14.z <- <GetVoxel_id34 return value>.ModWheel; r14.w <- <GetVoxel_id34 return value>.PitchBend; r14.x <- <GetVoxel_id34 return value>.Random

#line 417
  switch cb1[0].w

#line 420
    case l(0)

#line 421
    mov r14.x, r12.x  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 422
    case l(1)

#line 423
    mov r14.x, r12.y  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 424
    case l(2)

#line 425
    mov r14.x, r12.z  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 426
    case l(3)

#line 427
    mov r14.x, r12.w  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 428
    case l(4)

#line 429
    mov r14.x, r13.x  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 430
    case l(5)

#line 431
    mov r14.x, r13.y  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 432
    case l(6)

#line 433
    mov r14.x, r13.z  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 434
    case l(7)

#line 435
    mov r14.x, r13.w  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 436
    case l(8)

#line 437
    mov r14.x, r14.y  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 438
    case l(9)

#line 439
    mov r14.x, r14.z  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 440
    case l(10)

#line 441
    mov r14.x, r14.w  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 442
    case l(11)

#line 443
    break 

#line 444
    default 

#line 445
    mov r14.x, l(0)  // r14.x <- <SelectMidiValue_id46 return value>
    break 

#line 446
  endswitch   // r14.x <- <SelectMidiValue_id46 return value>

#line 690
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xzxx, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id174 return value>.x; r12.y <- <Compute_id174 return value>.y; r12.z <- <Compute_id174 return value>.z

#line 401
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id50 return value>

#line 681
  mul r0.w, r0.w, r14.x  // r0.w <- <Compute_id203 return value>

#line 657
  mad r12.xyz, r0.wwww, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id237 return value>.x; r12.y <- <Compute_id237 return value>.y; r12.z <- <Compute_id237 return value>.z

#line 649
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id245 return value>.x; r13.y <- <Compute_id245 return value>.y; r13.z <- <Compute_id245 return value>.z

#line 1457
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 644
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r6.zw, vThreadID.x, l(0), t3.xxxy  // r6.z <- m.x; r6.w <- m.y

#line 622
  mul r12.xyz, r6.zwwz, cb1[2].wwww  // r12.z <- <Compute_id344 return value>

#line 598
  mad r12.xyz, r12.xyzx, cb1[3].xyzx, cb1[4].xyzx  // r12.x <- <Compute_id374 return value>.x; r12.y <- <Compute_id374 return value>.y; r12.z <- <Compute_id374 return value>.z

#line 1458
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1460
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 821
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t3.xyzx  // r12.x <- m.x; r12.y <- m.y; r12.z <- m.z

#line 590
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id62 return value>

#line 806
  utof r1.w, cb1[9].w
  mul r1.w, r0.w, r1.w
  round_ne r1.w, r1.w
  ftou r1.w, r1.w  // r1.w <- <Compute_id103 return value>

#line 800
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r1.wwww, t6.xyzw  // r12.x <- <Compute_id107 return value>.x; r12.y <- <Compute_id107 return value>.y; r12.z <- <Compute_id107 return value>.z

#line 570
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id539 return value>.x; r14.y <- <SRgbToLinear_id539 return value>.y; r14.z <- <SRgbToLinear_id539 return value>.z

#line 792
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t7.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id117 return value>.x; r6.z <- <Compute_id117 return value>.y; r6.w <- <Compute_id117 return value>.z

#line 784
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id127 return value>.x; r6.z <- <Compute_id127 return value>.y; r6.w <- <Compute_id127 return value>.z

#line 1467
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1438
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1342
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 1345
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1344
  mad r1.w, r13.x, r10.y, -r12.z  // r1.w <- p.x

#line 1345
  mad r2.w, r13.x, r10.z, r12.w  // r2.w <- p.y

#line 1332
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1334
  mul r3.w, r10.w, r10.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 1335
  mul r3.w, r10.w, r12.x
  mad r2.w, r10.x, r2.w, r3.w  // r2.w <- p.z

#line 1322
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1324
  mul r3.w, r2.w, r10.x
  mad r13.x, r12.x, r1.w, r3.w  // r13.x <- p.x

#line 1325
  mul r2.w, r2.w, r12.x
  mad r13.z, -r10.x, r1.w, r2.w  // r13.z <- p.z

#line 1438
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1342
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1345
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1344
  mad r1.w, r12.x, r11.x, -r5.z

#line 1345
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 1332
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1334
  mul r3.w, r11.z, r5.x
  mad r12.y, r10.x, r2.w, -r3.w  // r12.y <- p.y

#line 1335
  mul r3.w, r11.z, r10.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 1322
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1324
  mul r3.w, r2.w, r5.x
  mad r12.x, r10.x, r1.w, r3.w  // r12.x <- p.x

#line 1325
  mul r2.w, r2.w, r10.x
  mad r12.z, -r5.x, r1.w, r2.w  // r12.z <- p.z

#line 1468
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1503
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1504
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1505
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1506
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1507
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1511
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1512
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1527
ret 
// Approximately 179 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id335 = 0;
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
    float Input_13_id282;
    float3 SMVector3Join_ShaderFXResult_14_id285;
    float3 Input_15_id290;
    float3 Multiply_16_id293;
    float3 Input_17_id297;
    float3 Plus_18_id300;
    float4 TextureValue_20_id232;
    float SMCalcLuminance_ShaderFXResult_22_id239;
    float Input_23_id250;
    float3 SMVector3Join_ShaderFXResult_24_id253;
    float3 Input_25_id258;
    float3 Multiply_26_id261;
    float3 Input_27_id265;
    float3 Plus_28_id268;
    float3 Input_29_id272;
    float3 Plus_30_id275;
    float3 Input_31_id107;
    uint Input_32_id110;
    float SMMidiSelectValue_ShaderFXResult_33_id113;
    float4 TextureValue_35_id124;
    float SMCalcLuminance_ShaderFXResult_37_id132;
    float Multiply_38_id143;
    float Multiply_39_id147;
    float Multiply_40_id151;
    float3 SMVector3Join_ShaderFXResult_41_id155;
    float3 Input_42_id160;
    float3 Multiply_43_id163;
    float3 Plus_44_id167;
    float3 Input_45_id171;
    float3 Multiply_46_id174;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id181;
    float r_47_id189;
    float Input_48_id192;
    float Multiply_49_id195;
    float g_50_id199;
    float Multiply_51_id202;
    float Multiply_52_id206;
    float3 SMVector3Join_ShaderFXResult_53_id210;
    float3 Input_54_id215;
    float3 Multiply_55_id218;
    float3 Input_56_id222;
    float3 Plus_57_id225;
    float SMCalcLuminance_ShaderFXResult_2_id308;
    uint Input_3_id319;
    uint SMValueToIndex_ShaderFXResult_4_id322;
    float4 BufferItem_5_id326;
    float4 SRgbToLinear_ShaderFXResult_6_id330;
    float4 TextureValue_9_id333;
    float Input_11_id340;
    float4 Lerp_12_id343;
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
    uint InputValue_id111;
    float3 InputValue_id161;
    float3 InputValue_id172;
    float InputValue_id193;
    float3 InputValue_id216;
    float3 InputValue_id223;
    float InputValue_id251;
    float3 InputValue_id259;
    float3 InputValue_id266;
    float3 InputValue_id273;
    float InputValue_id283;
    float3 InputValue_id291;
    float3 InputValue_id298;
    uint InputValue_id320;
    float InputValue_id341;
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
    int3 VoxelCounts_id115;
    int3 PlacementCounts_id116;
    int Channel_id117;
    float Blink_id118;
    float2 SamplerOffset_id119;
    float2 SamplerScale_id120 = float2(1, 1);
    int3 VoxelCounts_id183;
    int3 PlacementCounts_id184;
    float2 SamplerOffset_id185;
    float2 SamplerScale_id186 = float2(1, 1);
    uint PlacementLevelCount_id187 = 1048576;
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
StructuredBuffer<SMMidiNoteData> VoxelVolume_id114;
StructuredBuffer<float4> VoxelVolume_id182;
Texture2D DynamicTexture_id125;
SamplerState DynamicSampler_id126;
Texture2D DynamicTexture_id233;
Buffer<float4> DynamicBuffer_id327;
Texture2D DynamicTexture_id334;
uint CalculateVoxelVolumeIndex_id45(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id115.x, VoxelCounts_id115.x * VoxelCounts_id115.y));
}
SMMidiNoteData GetVoxel_id34(uint3 coordinate)
{
    return VoxelVolume_id114[CalculateVoxelVolumeIndex_id45(coordinate)];
}
float3 Compute_id371(inout CS_STREAMS streams)
{
    return streams.Input_56_id222;
}
float3 Compute_id369(inout CS_STREAMS streams)
{
    return streams.Multiply_55_id218;
}
float3 Compute_id363(inout CS_STREAMS streams)
{
    return streams.Input_54_id215;
}
float3 Compute_id361(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_53_id210;
}
float Compute_id355(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id206;
}
float Compute_id353(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id202;
}
float Compute_id351(inout CS_STREAMS streams)
{
    return streams.Multiply_49_id195;
}
float Compute_id347(inout CS_STREAMS streams)
{
    return streams.Input_48_id192;
}
float Compute_id345(inout CS_STREAMS streams)
{
    return streams.g_50_id199;
}
float Compute_id341(inout CS_STREAMS streams)
{
    return streams.Input_48_id192;
}
float Compute_id339(inout CS_STREAMS streams)
{
    return streams.g_50_id199;
}
float4 Compute_id335(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id181;
}
float Compute_id331(inout CS_STREAMS streams)
{
    return streams.Input_48_id192;
}
float Compute_id329(inout CS_STREAMS streams)
{
    return streams.r_47_id189;
}
float4 Compute_id323(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id181;
}
float3 Compute_id242(inout CS_STREAMS streams)
{
    return streams.Input_45_id171;
}
float3 Compute_id240(inout CS_STREAMS streams)
{
    return streams.Plus_44_id167;
}
float3 Compute_id234(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id163;
}
float3 Compute_id232(inout CS_STREAMS streams)
{
    return streams.Input_31_id107;
}
float3 Compute_id228(inout CS_STREAMS streams)
{
    return streams.Input_42_id160;
}
float3 Compute_id226(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_41_id155;
}
float Compute_id220(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id151;
}
float Compute_id218(inout CS_STREAMS streams)
{
    return streams.Multiply_39_id147;
}
float Compute_id216(inout CS_STREAMS streams)
{
    return streams.Multiply_38_id143;
}
float Compute_id212(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id210(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_33_id113;
}
float Compute_id206(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id204(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_33_id113;
}
float Compute_id200(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id198(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_33_id113;
}
float Luminance_id50(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id175(inout CS_STREAMS streams)
{
    return streams.TextureValue_35_id124;
}
float Compute_id169()
{
    return Value_id335;
}
float2 Compute_id171(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
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
uint Compute_id165(inout CS_STREAMS streams)
{
    return streams.Input_32_id110;
}
SMMidiNoteData Compute_id44(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id115;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float3 Compute_id463(inout CS_STREAMS streams)
{
    return streams.Input_29_id272;
}
float3 Compute_id461(inout CS_STREAMS streams)
{
    return streams.Plus_28_id268;
}
float3 Compute_id455(inout CS_STREAMS streams)
{
    return streams.Input_27_id265;
}
float3 Compute_id453(inout CS_STREAMS streams)
{
    return streams.Multiply_26_id261;
}
float3 Compute_id447(inout CS_STREAMS streams)
{
    return streams.Input_25_id258;
}
float3 Compute_id445(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_24_id253;
}
float Compute_id439(inout CS_STREAMS streams)
{
    return streams.Input_23_id250;
}
float Compute_id437(inout CS_STREAMS streams)
{
    return streams.Input_23_id250;
}
float Compute_id435(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id239;
}
float Luminance_id56(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id410(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id232;
}
float Compute_id404()
{
    return Value_id335;
}
float2 Compute_id406(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id518(inout CS_STREAMS streams)
{
    return streams.Input_17_id297;
}
float3 Compute_id516(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id293;
}
float3 Compute_id510(inout CS_STREAMS streams)
{
    return streams.Input_15_id290;
}
float3 Compute_id508(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id285;
}
float Compute_id502(inout CS_STREAMS streams)
{
    return streams.Input_13_id282;
}
float Compute_id500(inout CS_STREAMS streams)
{
    return streams.Input_13_id282;
}
float Compute_id498(inout CS_STREAMS streams)
{
    return streams.Input_13_id282;
}
float Luminance_id68(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id287(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id181;
}
float Compute_id124(inout CS_STREAMS streams)
{
    return streams.Input_11_id340;
}
float4 Compute_id122(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id333;
}
float4 Compute_id120(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id330;
}
float Compute_id112()
{
    return Value_id335;
}
float2 Compute_id114(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id539(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id108(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id326;
}
uint Compute_id104(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id322;
}
uint Compute_id98(inout CS_STREAMS streams)
{
    return streams.Input_3_id319;
}
float Compute_id100(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id308;
}
float Luminance_id62(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id73(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id181;
}
float3 Compute_id374(inout CS_STREAMS streams)
{
    return Compute_id369(streams) + Compute_id371(streams);
}
float3 Compute_id367()
{
    return InputValue_id223;
}
float3 Compute_id366(inout CS_STREAMS streams)
{
    return Compute_id361(streams) * Compute_id363(streams);
}
float3 Compute_id359()
{
    return InputValue_id216;
}
float3 Compute_id358(inout CS_STREAMS streams)
{
    return float3(Compute_id351(streams), Compute_id353(streams), Compute_id355(streams));
}
float Compute_id350(inout CS_STREAMS streams)
{
    return Compute_id345(streams) * Compute_id347(streams);
}
float Compute_id344(inout CS_STREAMS streams)
{
    return Compute_id339(streams) * Compute_id341(streams);
}
float Compute_id338(inout CS_STREAMS streams)
{
    return Compute_id335(streams).g;
}
float Compute_id334(inout CS_STREAMS streams)
{
    return Compute_id329(streams) * Compute_id331(streams);
}
float Compute_id327()
{
    return InputValue_id193;
}
float Compute_id326(inout CS_STREAMS streams)
{
    return Compute_id323(streams).r;
}
float4 Compute_id51(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id183;
    float4 m = VoxelVolume_id182[i];
    return m;
}
float3 Compute_id245(inout CS_STREAMS streams)
{
    return Compute_id240(streams) * Compute_id242(streams);
}
float3 Compute_id238()
{
    return InputValue_id172;
}
float3 Compute_id237(inout CS_STREAMS streams)
{
    return Compute_id232(streams) + Compute_id234(streams);
}
float3 Compute_id231(inout CS_STREAMS streams)
{
    return Compute_id226(streams) * Compute_id228(streams);
}
float3 Compute_id224()
{
    return InputValue_id161;
}
float3 Compute_id223(inout CS_STREAMS streams)
{
    return float3(Compute_id216(streams), Compute_id218(streams), Compute_id220(streams));
}
float Compute_id215(inout CS_STREAMS streams)
{
    return Compute_id210(streams) * Compute_id212(streams);
}
float Compute_id209(inout CS_STREAMS streams)
{
    return Compute_id204(streams) * Compute_id206(streams);
}
float Compute_id203(inout CS_STREAMS streams)
{
    return Compute_id198(streams) * Compute_id200(streams);
}
float Compute_id197(inout CS_STREAMS streams)
{
    float4 color = Compute_id175(streams);
    return Luminance_id50(color.rgb);
}
float4 Compute_id174(inout CS_STREAMS streams)
{
    return DynamicTexture_id125.SampleLevel(DynamicSampler_id126, Compute_id171(streams), Compute_id169());
}
float Compute_id168(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id44(streams);
    return SelectMidiValue_id46(m, Compute_id165(streams));
}
uint Compute_id158()
{
    return InputValue_id111;
}
float3 Compute_id156()
{
    return InputValue_id108;
}
float3 Compute_id466(inout CS_STREAMS streams)
{
    return Compute_id461(streams) + Compute_id463(streams);
}
float3 Compute_id459()
{
    return InputValue_id273;
}
float3 Compute_id458(inout CS_STREAMS streams)
{
    return Compute_id453(streams) + Compute_id455(streams);
}
float3 Compute_id451()
{
    return InputValue_id266;
}
float3 Compute_id450(inout CS_STREAMS streams)
{
    return Compute_id445(streams) * Compute_id447(streams);
}
float3 Compute_id443()
{
    return InputValue_id259;
}
float3 Compute_id442(inout CS_STREAMS streams)
{
    return float3(Compute_id435(streams), Compute_id437(streams), Compute_id439(streams));
}
float Compute_id433()
{
    return InputValue_id251;
}
float Compute_id432(inout CS_STREAMS streams)
{
    float4 color = Compute_id410(streams);
    return Luminance_id56(color.rgb);
}
float4 Compute_id409(inout CS_STREAMS streams)
{
    return DynamicTexture_id233.SampleLevel(DynamicSampler_id126, Compute_id406(streams), Compute_id404());
}
float3 Compute_id521(inout CS_STREAMS streams)
{
    return Compute_id516(streams) + Compute_id518(streams);
}
float3 Compute_id514()
{
    return InputValue_id298;
}
float3 Compute_id513(inout CS_STREAMS streams)
{
    return Compute_id508(streams) * Compute_id510(streams);
}
float3 Compute_id506()
{
    return InputValue_id291;
}
float3 Compute_id505(inout CS_STREAMS streams)
{
    return float3(Compute_id498(streams), Compute_id500(streams), Compute_id502(streams));
}
float Compute_id496()
{
    return InputValue_id283;
}
float Compute_id309(inout CS_STREAMS streams)
{
    float4 color = Compute_id287(streams);
    return Luminance_id68(color.rgb);
}
float4 Compute_id63(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id183;
    float4 m = VoxelVolume_id182[i];
    return m;
}
float4 Compute_id127(inout CS_STREAMS streams)
{
    return lerp(Compute_id120(streams), Compute_id122(streams), Compute_id124(streams));
}
float Compute_id118()
{
    return InputValue_id341;
}
float4 Compute_id117(inout CS_STREAMS streams)
{
    return DynamicTexture_id334.SampleLevel(DynamicSampler_id126, Compute_id114(streams), Compute_id112());
}
float4 Compute_id111(inout CS_STREAMS streams)
{
    return SRgbToLinear_id539(Compute_id108(streams));
}
float4 Compute_id107(inout CS_STREAMS streams)
{
    return DynamicBuffer_id327[Compute_id104(streams)];
}
uint Compute_id103(inout CS_STREAMS streams)
{
    float v = Compute_id100(streams);
    uint c = Compute_id98(streams);
    return round(v * c);
}
uint Compute_id96()
{
    return InputValue_id320;
}
float Compute_id95(inout CS_STREAMS streams)
{
    float4 color = Compute_id73(streams);
    return Luminance_id62(color.rgb);
}
float4 Compute_id57(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id183;
    float4 m = VoxelVolume_id182[i];
    return m;
}
void Compute_id398(inout CS_STREAMS streams)
{
    streams.Plus_57_id225 = Compute_id374(streams);
}
void Compute_id396(inout CS_STREAMS streams)
{
    streams.Input_56_id222 = Compute_id367();
}
void Compute_id394(inout CS_STREAMS streams)
{
    streams.Multiply_55_id218 = Compute_id366(streams);
}
void Compute_id392(inout CS_STREAMS streams)
{
    streams.Input_54_id215 = Compute_id359();
}
void Compute_id390(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_53_id210 = Compute_id358(streams);
}
void Compute_id388(inout CS_STREAMS streams)
{
    streams.Multiply_52_id206 = Compute_id350(streams);
}
void Compute_id386(inout CS_STREAMS streams)
{
    streams.Multiply_51_id202 = Compute_id344(streams);
}
void Compute_id384(inout CS_STREAMS streams)
{
    streams.g_50_id199 = Compute_id338(streams);
}
void Compute_id382(inout CS_STREAMS streams)
{
    streams.Multiply_49_id195 = Compute_id334(streams);
}
void Compute_id380(inout CS_STREAMS streams)
{
    streams.Input_48_id192 = Compute_id327();
}
void Compute_id378(inout CS_STREAMS streams)
{
    streams.r_47_id189 = Compute_id326(streams);
}
void Compute_id376(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id181 = Compute_id51(streams);
}
void Compute_id277(inout CS_STREAMS streams)
{
    streams.Multiply_46_id174 = Compute_id245(streams);
}
void Compute_id275(inout CS_STREAMS streams)
{
    streams.Input_45_id171 = Compute_id238();
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.Plus_44_id167 = Compute_id237(streams);
}
void Compute_id271(inout CS_STREAMS streams)
{
    streams.Multiply_43_id163 = Compute_id231(streams);
}
void Compute_id269(inout CS_STREAMS streams)
{
    streams.Input_42_id160 = Compute_id224();
}
void Compute_id267(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_41_id155 = Compute_id223(streams);
}
void Compute_id265(inout CS_STREAMS streams)
{
    streams.Multiply_40_id151 = Compute_id215(streams);
}
void Compute_id263(inout CS_STREAMS streams)
{
    streams.Multiply_39_id147 = Compute_id209(streams);
}
void Compute_id261(inout CS_STREAMS streams)
{
    streams.Multiply_38_id143 = Compute_id203(streams);
}
void Compute_id259(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_37_id132 = Compute_id197(streams);
}
void Compute_id257(inout CS_STREAMS streams)
{
    streams.TextureValue_35_id124 = Compute_id174(streams);
}
void Compute_id255()
{
}
void Compute_id254()
{
}
void Compute_id253()
{
}
void Compute_id252()
{
}
void Compute_id251(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_33_id113 = Compute_id168(streams);
}
void Compute_id249(inout CS_STREAMS streams)
{
    streams.Input_32_id110 = Compute_id158();
}
void Compute_id247(inout CS_STREAMS streams)
{
    streams.Input_31_id107 = Compute_id156();
}
void Compute_id490(inout CS_STREAMS streams)
{
    streams.Plus_30_id275 = Compute_id466(streams);
}
void Compute_id488(inout CS_STREAMS streams)
{
    streams.Input_29_id272 = Compute_id459();
}
void Compute_id486(inout CS_STREAMS streams)
{
    streams.Plus_28_id268 = Compute_id458(streams);
}
void Compute_id484(inout CS_STREAMS streams)
{
    streams.Input_27_id265 = Compute_id451();
}
void Compute_id482(inout CS_STREAMS streams)
{
    streams.Multiply_26_id261 = Compute_id450(streams);
}
void Compute_id480(inout CS_STREAMS streams)
{
    streams.Input_25_id258 = Compute_id443();
}
void Compute_id478(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_24_id253 = Compute_id442(streams);
}
void Compute_id476(inout CS_STREAMS streams)
{
    streams.Input_23_id250 = Compute_id433();
}
void Compute_id474(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id239 = Compute_id432(streams);
}
void Compute_id472(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id232 = Compute_id409(streams);
}
void Compute_id470()
{
}
void Compute_id469()
{
}
void Compute_id468()
{
}
void Compute_id467()
{
}
void Compute_id533(inout CS_STREAMS streams)
{
    streams.Plus_18_id300 = Compute_id521(streams);
}
void Compute_id531(inout CS_STREAMS streams)
{
    streams.Input_17_id297 = Compute_id514();
}
void Compute_id529(inout CS_STREAMS streams)
{
    streams.Multiply_16_id293 = Compute_id513(streams);
}
void Compute_id527(inout CS_STREAMS streams)
{
    streams.Input_15_id290 = Compute_id506();
}
void Compute_id525(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id285 = Compute_id505(streams);
}
void Compute_id523(inout CS_STREAMS streams)
{
    streams.Input_13_id282 = Compute_id496();
}
void Compute_id313(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id308 = Compute_id309(streams);
}
void Compute_id311(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id181 = Compute_id63(streams);
}
void Compute_id150(inout CS_STREAMS streams)
{
    streams.Lerp_12_id343 = Compute_id127(streams);
}
void Compute_id148(inout CS_STREAMS streams)
{
    streams.Input_11_id340 = Compute_id118();
}
void Compute_id146(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id333 = Compute_id117(streams);
}
void Compute_id144()
{
}
void Compute_id143()
{
}
void Compute_id142()
{
}
void Compute_id141()
{
}
void Compute_id140(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id330 = Compute_id111(streams);
}
void Compute_id138(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id326 = Compute_id107(streams);
}
void Compute_id136(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id322 = Compute_id103(streams);
}
void Compute_id134(inout CS_STREAMS streams)
{
    streams.Input_3_id319 = Compute_id96();
}
void Compute_id132(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id308 = Compute_id95(streams);
}
void Compute_id130(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id181 = Compute_id57(streams);
}
void Compute_id128()
{
}
float3 Compute_id401(inout CS_STREAMS streams)
{
    return streams.Plus_57_id225;
}
void Compute_id400(inout CS_STREAMS streams)
{

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

    {
        Compute_id398(streams);
    }
}
float3 Compute_id280(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id174;
}
void Compute_id279(inout CS_STREAMS streams)
{

    {
        Compute_id247(streams);
    }

    {
        Compute_id249(streams);
    }

    {
        Compute_id251(streams);
    }

    {
        Compute_id252();
    }

    {
        Compute_id253();
    }

    {
        Compute_id254();
    }

    {
        Compute_id255();
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

    {
        Compute_id277(streams);
    }
}
float3 Compute_id493(inout CS_STREAMS streams)
{
    return streams.Plus_30_id275;
}
void Compute_id492(inout CS_STREAMS streams)
{

    {
        Compute_id467();
    }

    {
        Compute_id468();
    }

    {
        Compute_id469();
    }

    {
        Compute_id470();
    }

    {
        Compute_id472(streams);
    }

    {
        Compute_id474(streams);
    }

    {
        Compute_id476(streams);
    }

    {
        Compute_id478(streams);
    }

    {
        Compute_id480(streams);
    }

    {
        Compute_id482(streams);
    }

    {
        Compute_id484(streams);
    }

    {
        Compute_id486(streams);
    }

    {
        Compute_id488(streams);
    }

    {
        Compute_id490(streams);
    }
}
float3 Compute_id536(inout CS_STREAMS streams)
{
    return streams.Plus_18_id300;
}
void Compute_id535(inout CS_STREAMS streams)
{

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
}
float Compute_id316(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id308;
}
void Compute_id315(inout CS_STREAMS streams)
{

    {
        Compute_id311(streams);
    }

    {
        Compute_id313(streams);
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
float4 Compute_id153(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id343;
}
void Compute_id152(inout CS_STREAMS streams)
{

    {
        Compute_id128();
    }

    {
        Compute_id130(streams);
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
        Compute_id141();
    }

    {
        Compute_id142();
    }

    {
        Compute_id143();
    }

    {
        Compute_id144();
    }

    {
        Compute_id146(streams);
    }

    {
        Compute_id148(streams);
    }

    {
        Compute_id150(streams);
    }
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id400(streams);
    return Compute_id401(streams);
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id279(streams);
    return Compute_id280(streams);
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id492(streams);
    return Compute_id493(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id535(streams);
    return Compute_id536(streams);
}
float Compute_id43(inout CS_STREAMS streams)
{
    Compute_id315(streams);
    return Compute_id316(streams);
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
    Compute_id152(streams);
    return Compute_id153(streams);
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

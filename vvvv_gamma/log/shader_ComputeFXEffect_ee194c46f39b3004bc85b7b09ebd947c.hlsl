/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_32> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_33> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_38>}, {Y = GetVarFloat<Multiply_39>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_47> [{Value = InputUInt<ShaderFX.InputValueUInt.i2,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_48> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_47>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_48>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_51> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_54> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Multiply_52>}, {Z = GetVarFloat<Multiply_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_56> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_54>}, {Right = GetVarFloat3<Input_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_58> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_56>}, {Right = GetVarFloat3<Input_57>}]}]]}]}, {Value = GetVarFloat3<Plus_58>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_32> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_33> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_38>}, {Y = GetVarFloat<Multiply_39>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_47> [{Value = InputUInt<ShaderFX.InputValueUInt.i2,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_48> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_47>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_48>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_51> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_51>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_54> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Multiply_52>}, {Z = GetVarFloat<Multiply_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_56> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_54>}, {Right = GetVarFloat3<Input_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_58> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_56>}, {Right = GetVarFloat3<Input_57>}]}]]}]}, {Value = GetVarFloat3<Plus_58>}]
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
@C    InputValue_id182 => ShaderFX.InputValueUInt.i2
@C    InputValue_id189 => ShaderFX.InputValueFloat.i3
@C    InputValue_id220 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id227 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id255 => ShaderFX.InputValueFloat.i2
@C    InputValue_id263 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id270 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id277 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id287 => ShaderFX.InputValueFloat.i1
@C    InputValue_id295 => ShaderFX.InputValueFloat3
@C    InputValue_id302 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id324 => ShaderFX.InputValueUInt
@C    InputValue_id345 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id197 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id198 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id199 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id200 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id201 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id126 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id114 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    VoxelVolume_id196 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id125 => ObjectTexture_fx34 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id237 => ObjectTexture_fx19 [Stage: Compute, Slot: (5-5)]
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
@G    Compute => 55752a0d3ee35f18c04b5e075ee27c82
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
//   uint InputValue_id182;             // Offset:   44 Size:     4
//   float InputValue_id189;            // Offset:   48 Size:     4
//   float3 InputValue_id220;           // Offset:   52 Size:    12
//   float3 InputValue_id227;           // Offset:   64 Size:    12
//   float InputValue_id255;            // Offset:   76 Size:     4
//   float3 InputValue_id263;           // Offset:   80 Size:    12
//   float3 InputValue_id270;           // Offset:   96 Size:    12
//   float3 InputValue_id277;           // Offset:  112 Size:    12
//   float InputValue_id287;            // Offset:  124 Size:     4
//   float3 InputValue_id295;           // Offset:  128 Size:    12
//   float3 InputValue_id302;           // Offset:  144 Size:    12
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
//   int3 VoxelCounts_id115;            // Offset:   84 Size:    12
//   int3 PlacementCounts_id116;        // Offset:   96 Size:    12 [unused]
//   int Channel_id117;                 // Offset:  108 Size:     4 [unused]
//   float Blink_id118;                 // Offset:  112 Size:     4 [unused]
//   float2 SamplerOffset_id119;        // Offset:  116 Size:     8 [unused]
//   float2 SamplerScale_id120;         // Offset:  128 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   int3 VoxelCounts_id197;            // Offset:  144 Size:    12 [unused]
//   int3 PlacementCounts_id198;        // Offset:  160 Size:    12 [unused]
//   float2 SamplerOffset_id199;        // Offset:  176 Size:     8 [unused]
//   float2 SamplerScale_id200;         // Offset:  184 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id201;    // Offset:  192 Size:     4 [unused]
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
// Resource bind info for VoxelVolume_id196
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
// VoxelVolume_id196                 texture  struct         r/o             t3      1 
// DynamicTexture_id125              texture  float4          2d             t4      1 
// DynamicTexture_id237              texture  float4          2d             t5      1 
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
dcl_resource_structured t2, 48
dcl_resource_structured t3, 16
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
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
#line 1534 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_ee194c46f39b3004bc85b7b09ebd947c.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1535
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1546
  if_nz cb2[5].x

#line 1556
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

#line 1507
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 795
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id536 return value>.x; r11.y <- <Compute_id536 return value>.y; r11.z <- <Compute_id536 return value>.z

#line 1510
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 791
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t5.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id424 return value>.x; r12.y <- <Compute_id424 return value>.y; r12.z <- <Compute_id424 return value>.z

#line 539
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id62 return value>

#line 770
  mov r12.yz, cb1[4].wwww

#line 762
  mad r12.xyz, r12.xyzx, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id473 return value>.x; r12.y <- <Compute_id473 return value>.y; r12.z <- <Compute_id473 return value>.z

#line 754
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id481 return value>.x; r12.y <- <Compute_id481 return value>.y; r12.z <- <Compute_id481 return value>.z

#line 1511
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 497
  itof r12.xyz, cb2[5].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 275
  imul null, r0.w, cb2[5].z, cb2[5].y
  imad r1.w, r12.y, cb2[5].y, r12.x
  imad r0.w, r12.z, r0.w, r1.w  // r0.w <- <CalculateVoxelVolumeIndex_id48 return value>

#line 279
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t2.xyzw  // r12.x <- <GetVoxel_id34 return value>.Empty; r12.y <- <GetVoxel_id34 return value>.StartTime; r12.z <- <GetVoxel_id34 return value>.Note; r12.w <- <GetVoxel_id34 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r13.xyzw, r0.w, l(16), t2.xyzw  // r13.x <- <GetVoxel_id34 return value>.Length; r13.y <- <GetVoxel_id34 return value>.Channel; r13.z <- <GetVoxel_id34 return value>.Constant; r13.w <- <GetVoxel_id34 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(32), t2.wxyz  // r14.y <- <GetVoxel_id34 return value>.TrackId; r14.z <- <GetVoxel_id34 return value>.ModWheel; r14.w <- <GetVoxel_id34 return value>.PitchBend; r14.x <- <GetVoxel_id34 return value>.Random

#line 459
  switch cb1[0].w

#line 462
    case l(0)

#line 463
    mov r0.w, r12.x  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 464
    case l(1)

#line 465
    mov r0.w, r12.y  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 466
    case l(2)

#line 467
    mov r0.w, r12.z  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 468
    case l(3)

#line 469
    mov r0.w, r12.w  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 470
    case l(4)

#line 471
    mov r0.w, r13.x  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 472
    case l(5)

#line 473
    mov r0.w, r13.y  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 474
    case l(6)

#line 475
    mov r0.w, r13.z  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 476
    case l(7)

#line 477
    mov r0.w, r13.w  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 478
    case l(8)

#line 479
    mov r0.w, r14.y  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 480
    case l(9)

#line 481
    mov r0.w, r14.z  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 482
    case l(10)

#line 483
    mov r0.w, r14.w  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 484
    case l(11)

#line 485
    mov r0.w, r14.x  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 486
    default 

#line 487
    mov r0.w, l(0)  // r0.w <- <SelectMidiValue_id49 return value>
    break 

#line 488
  endswitch   // r0.w <- <SelectMidiValue_id49 return value>

#line 737
  sample_l_indexable(texture2d)(float,float,float,float) r15.xyz, r6.xzxx, t4.xyzw, s0, l(0.000000)  // r15.x <- <Compute_id180 return value>.x; r15.y <- <Compute_id180 return value>.y; r15.z <- <Compute_id180 return value>.z

#line 443
  dp3 r1.w, r15.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id53 return value>

#line 728
  mul r0.w, r0.w, r1.w  // r0.w <- <Compute_id209 return value>

#line 704
  mad r15.xyz, r0.wwww, cb1[1].xyzx, cb1[0].xyzx  // r15.x <- <Compute_id243 return value>.x; r15.y <- <Compute_id243 return value>.y; r15.z <- <Compute_id243 return value>.z

#line 696
  mul r16.xyz, r15.xyzx, cb1[2].xyzx  // r16.x <- <Compute_id251 return value>.x; r16.y <- <Compute_id251 return value>.y; r16.z <- <Compute_id251 return value>.z

#line 1512
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r17.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r15.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r17.xyzx, r9.xyzx, r16.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 339
  switch cb1[2].w

#line 342
    case l(0)

#line 343
    mov r14.x, r12.x  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 344
    case l(1)

#line 345
    mov r14.x, r12.y  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 346
    case l(2)

#line 347
    mov r14.x, r12.z  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 348
    case l(3)

#line 349
    mov r14.x, r12.w  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 350
    case l(4)

#line 351
    mov r14.x, r13.x  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 352
    case l(5)

#line 353
    mov r14.x, r13.y  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 354
    case l(6)

#line 355
    mov r14.x, r13.z  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 356
    case l(7)

#line 357
    mov r14.x, r13.w  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 358
    case l(8)

#line 359
    mov r14.x, r14.y  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 360
    case l(9)

#line 361
    mov r14.x, r14.z  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 362
    case l(10)

#line 363
    mov r14.x, r14.w  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 364
    case l(11)

#line 365
    break 

#line 366
    default 

#line 367
    mov r14.x, l(0)  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 368
  endswitch   // r14.x <- <SelectMidiValue_id56 return value>

#line 679
  mul r12.y, r14.x, cb1[3].x  // r12.y <- <Compute_id343 return value>

#line 868
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r13.xy, vThreadID.x, l(0), t3.xyxx  // r13.x <- m.x

#line 664
  mul r12.zw, r13.yyyy, cb1[3].xxxx  // r12.w <- <Compute_id357 return value>

#line 640
  mad r12.xyz, r12.yzwy, cb1[3].yzwy, cb1[4].xyzx  // r12.x <- <Compute_id387 return value>.x; r12.y <- <Compute_id387 return value>.y; r12.z <- <Compute_id387 return value>.z

#line 1513
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r14.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1515
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 826
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t3.yzxx  // r12.z <- m.x

#line 632
  mov r13.zw, r12.xxxy
  dp3 r0.w, r13.xzwx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id68 return value>

#line 853
  utof r1.w, cb1[9].w
  mul r0.w, r0.w, r1.w
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id109 return value>

#line 847
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r0.wwww, t6.xyzw  // r13.x <- <Compute_id113 return value>.x; r13.y <- <Compute_id113 return value>.y; r13.z <- <Compute_id113 return value>.z

#line 612
  mad r14.xyz, r13.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r14.xyz, r13.xyzx, r14.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r15.xyz, r13.xyzx, r14.xyzx  // r15.x <- <SRgbToLinear_id554 return value>.x; r15.y <- <SRgbToLinear_id554 return value>.y; r15.z <- <SRgbToLinear_id554 return value>.z

#line 839
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t7.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id123 return value>.x; r6.z <- <Compute_id123 return value>.y; r6.w <- <Compute_id123 return value>.z

#line 831
  mad r6.yzw, -r13.xxyz, r14.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r15.xxyz  // r6.y <- <Compute_id133 return value>.x; r6.z <- <Compute_id133 return value>.y; r6.w <- <Compute_id133 return value>.z

#line 1522
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1493
  mul r13.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r13.x <- angle.x; r13.y <- angle.y; r13.z <- angle.z

#line 1397
  sincos r10.x, r14.x, r13.z  // r14.x <- c; r10.x <- s

#line 1400
  mul r13.zw, r10.zzzy, r10.xxxx

#line 1399
  mad r0.w, r14.x, r10.y, -r13.z  // r0.w <- p.x

#line 1400
  mad r1.w, r14.x, r10.z, r13.w  // r1.w <- p.y

#line 1387
  sincos r10.x, r13.x, r13.x  // r13.x <- c; r10.x <- s

#line 1389
  mul r2.w, r10.w, r10.x
  mad r14.y, r13.x, r1.w, -r2.w  // r14.y <- p.y

#line 1390
  mul r2.w, r10.w, r13.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1377
  sincos r10.x, r13.x, r13.y  // r13.x <- c; r10.x <- s

#line 1379
  mul r2.w, r1.w, r10.x
  mad r14.x, r13.x, r0.w, r2.w  // r14.x <- p.x

#line 1380
  mul r1.w, r1.w, r13.x
  mad r14.z, -r10.x, r0.w, r1.w  // r14.z <- p.z

#line 1493
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1397
  sincos r10.x, r13.x, r5.z  // r13.x <- c; r10.x <- s

#line 1400
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1399
  mad r0.w, r13.x, r11.x, -r5.z

#line 1400
  mad r1.w, r13.x, r11.y, r5.w  // r1.w <- p.y

#line 1387
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1389
  mul r2.w, r11.z, r5.x
  mad r13.y, r10.x, r1.w, -r2.w  // r13.y <- p.y

#line 1390
  mul r2.w, r11.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1377
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1379
  mul r2.w, r1.w, r5.x
  mad r13.x, r10.x, r0.w, r2.w  // r13.x <- p.x

#line 1380
  mul r1.w, r1.w, r10.x
  mad r13.z, -r5.x, r0.w, r1.w  // r13.z <- p.z

#line 1523
  add r5.xyz, r14.xyzx, r13.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 826
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xy, vThreadID.x, l(4), t3.xyxx  // r12.x <- m.y; r12.y <- m.z

#line 583
  dp3 r0.w, r12.zxyz, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id74 return value>

#line 1558
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1559
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1560
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1561
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1562
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1566
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1567
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1582
ret 
// Approximately 224 instruction slots used
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
    float Input_13_id286;
    float3 SMVector3Join_ShaderFXResult_14_id289;
    float3 Input_15_id294;
    float3 Multiply_16_id297;
    float3 Input_17_id301;
    float3 Plus_18_id304;
    float4 TextureValue_20_id236;
    float SMCalcLuminance_ShaderFXResult_22_id243;
    float Input_23_id254;
    float3 SMVector3Join_ShaderFXResult_24_id257;
    float3 Input_25_id262;
    float3 Multiply_26_id265;
    float3 Input_27_id269;
    float3 Plus_28_id272;
    float3 Input_29_id276;
    float3 Plus_30_id279;
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
    uint Input_47_id181;
    float SMMidiSelectValue_ShaderFXResult_48_id184;
    float Input_49_id188;
    float Multiply_50_id191;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id195;
    float g_51_id203;
    float Multiply_52_id206;
    float Multiply_53_id210;
    float3 SMVector3Join_ShaderFXResult_54_id214;
    float3 Input_55_id219;
    float3 Multiply_56_id222;
    float3 Input_57_id226;
    float3 Plus_58_id229;
    float SMCalcLuminance_ShaderFXResult_2_id312;
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
    uint InputValue_id182;
    float InputValue_id189;
    float3 InputValue_id220;
    float3 InputValue_id227;
    float InputValue_id255;
    float3 InputValue_id263;
    float3 InputValue_id270;
    float3 InputValue_id277;
    float InputValue_id287;
    float3 InputValue_id295;
    float3 InputValue_id302;
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
    int3 VoxelCounts_id115;
    int3 PlacementCounts_id116;
    int Channel_id117;
    float Blink_id118;
    float2 SamplerOffset_id119;
    float2 SamplerScale_id120 = float2(1, 1);
    int3 VoxelCounts_id197;
    int3 PlacementCounts_id198;
    float2 SamplerOffset_id199;
    float2 SamplerScale_id200 = float2(1, 1);
    uint PlacementLevelCount_id201 = 1048576;
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
StructuredBuffer<float4> VoxelVolume_id196;
Texture2D DynamicTexture_id125;
SamplerState DynamicSampler_id126;
Texture2D DynamicTexture_id237;
Buffer<float4> DynamicBuffer_id331;
Texture2D DynamicTexture_id338;
uint CalculateVoxelVolumeIndex_id48(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id115.x, VoxelCounts_id115.x * VoxelCounts_id115.y));
}
SMMidiNoteData GetVoxel_id34(uint3 coordinate)
{
    return VoxelVolume_id114[CalculateVoxelVolumeIndex_id48(coordinate)];
}
float3 Compute_id384(inout CS_STREAMS streams)
{
    return streams.Input_57_id226;
}
float3 Compute_id382(inout CS_STREAMS streams)
{
    return streams.Multiply_56_id222;
}
float3 Compute_id376(inout CS_STREAMS streams)
{
    return streams.Input_55_id219;
}
float3 Compute_id374(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_54_id214;
}
float Compute_id368(inout CS_STREAMS streams)
{
    return streams.Multiply_53_id210;
}
float Compute_id366(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id206;
}
float Compute_id364(inout CS_STREAMS streams)
{
    return streams.Multiply_50_id191;
}
float Compute_id360(inout CS_STREAMS streams)
{
    return streams.Input_49_id188;
}
float Compute_id358(inout CS_STREAMS streams)
{
    return streams.g_51_id203;
}
float Compute_id354(inout CS_STREAMS streams)
{
    return streams.Input_49_id188;
}
float Compute_id352(inout CS_STREAMS streams)
{
    return streams.g_51_id203;
}
float4 Compute_id348(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id195;
}
float Compute_id340(inout CS_STREAMS streams)
{
    return streams.Input_49_id188;
}
float Compute_id338(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_48_id184;
}
float SelectMidiValue_id56(SMMidiNoteData x, uint i)
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
uint Compute_id332(inout CS_STREAMS streams)
{
    return streams.Input_47_id181;
}
SMMidiNoteData Compute_id54(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id115;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float3 Compute_id248(inout CS_STREAMS streams)
{
    return streams.Input_45_id171;
}
float3 Compute_id246(inout CS_STREAMS streams)
{
    return streams.Plus_44_id167;
}
float3 Compute_id240(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id163;
}
float3 Compute_id238(inout CS_STREAMS streams)
{
    return streams.Input_31_id107;
}
float3 Compute_id234(inout CS_STREAMS streams)
{
    return streams.Input_42_id160;
}
float3 Compute_id232(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_41_id155;
}
float Compute_id226(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id151;
}
float Compute_id224(inout CS_STREAMS streams)
{
    return streams.Multiply_39_id147;
}
float Compute_id222(inout CS_STREAMS streams)
{
    return streams.Multiply_38_id143;
}
float Compute_id218(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id216(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_33_id113;
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
float Luminance_id53(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id181(inout CS_STREAMS streams)
{
    return streams.TextureValue_35_id124;
}
float Compute_id175()
{
    return Value_id339;
}
float2 Compute_id177(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
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
uint Compute_id171(inout CS_STREAMS streams)
{
    return streams.Input_32_id110;
}
SMMidiNoteData Compute_id47(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id115;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float3 Compute_id478(inout CS_STREAMS streams)
{
    return streams.Input_29_id276;
}
float3 Compute_id476(inout CS_STREAMS streams)
{
    return streams.Plus_28_id272;
}
float3 Compute_id470(inout CS_STREAMS streams)
{
    return streams.Input_27_id269;
}
float3 Compute_id468(inout CS_STREAMS streams)
{
    return streams.Multiply_26_id265;
}
float3 Compute_id462(inout CS_STREAMS streams)
{
    return streams.Input_25_id262;
}
float3 Compute_id460(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_24_id257;
}
float Compute_id454(inout CS_STREAMS streams)
{
    return streams.Input_23_id254;
}
float Compute_id452(inout CS_STREAMS streams)
{
    return streams.Input_23_id254;
}
float Compute_id450(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id243;
}
float Luminance_id62(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id425(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id236;
}
float Compute_id419()
{
    return Value_id339;
}
float2 Compute_id421(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id533(inout CS_STREAMS streams)
{
    return streams.Input_17_id301;
}
float3 Compute_id531(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id297;
}
float3 Compute_id525(inout CS_STREAMS streams)
{
    return streams.Input_15_id294;
}
float3 Compute_id523(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id289;
}
float Compute_id517(inout CS_STREAMS streams)
{
    return streams.Input_13_id286;
}
float Compute_id515(inout CS_STREAMS streams)
{
    return streams.Input_13_id286;
}
float Compute_id513(inout CS_STREAMS streams)
{
    return streams.Input_13_id286;
}
float Luminance_id74(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id293(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id195;
}
float Compute_id130(inout CS_STREAMS streams)
{
    return streams.Input_11_id344;
}
float4 Compute_id128(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id337;
}
float4 Compute_id126(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id334;
}
float Compute_id118()
{
    return Value_id339;
}
float2 Compute_id120(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id554(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id114(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id330;
}
uint Compute_id110(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id326;
}
uint Compute_id104(inout CS_STREAMS streams)
{
    return streams.Input_3_id323;
}
float Compute_id106(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id312;
}
float Luminance_id68(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id79(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id195;
}
float3 Compute_id387(inout CS_STREAMS streams)
{
    return Compute_id382(streams) + Compute_id384(streams);
}
float3 Compute_id380()
{
    return InputValue_id227;
}
float3 Compute_id379(inout CS_STREAMS streams)
{
    return Compute_id374(streams) * Compute_id376(streams);
}
float3 Compute_id372()
{
    return InputValue_id220;
}
float3 Compute_id371(inout CS_STREAMS streams)
{
    return float3(Compute_id364(streams), Compute_id366(streams), Compute_id368(streams));
}
float Compute_id363(inout CS_STREAMS streams)
{
    return Compute_id358(streams) * Compute_id360(streams);
}
float Compute_id357(inout CS_STREAMS streams)
{
    return Compute_id352(streams) * Compute_id354(streams);
}
float Compute_id351(inout CS_STREAMS streams)
{
    return Compute_id348(streams).g;
}
float4 Compute_id57(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id197;
    float4 m = VoxelVolume_id196[i];
    return m;
}
float Compute_id343(inout CS_STREAMS streams)
{
    return Compute_id338(streams) * Compute_id340(streams);
}
float Compute_id336()
{
    return InputValue_id189;
}
float Compute_id335(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id54(streams);
    return SelectMidiValue_id56(m, Compute_id332(streams));
}
uint Compute_id325()
{
    return InputValue_id182;
}
float3 Compute_id251(inout CS_STREAMS streams)
{
    return Compute_id246(streams) * Compute_id248(streams);
}
float3 Compute_id244()
{
    return InputValue_id172;
}
float3 Compute_id243(inout CS_STREAMS streams)
{
    return Compute_id238(streams) + Compute_id240(streams);
}
float3 Compute_id237(inout CS_STREAMS streams)
{
    return Compute_id232(streams) * Compute_id234(streams);
}
float3 Compute_id230()
{
    return InputValue_id161;
}
float3 Compute_id229(inout CS_STREAMS streams)
{
    return float3(Compute_id222(streams), Compute_id224(streams), Compute_id226(streams));
}
float Compute_id221(inout CS_STREAMS streams)
{
    return Compute_id216(streams) * Compute_id218(streams);
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
    float4 color = Compute_id181(streams);
    return Luminance_id53(color.rgb);
}
float4 Compute_id180(inout CS_STREAMS streams)
{
    return DynamicTexture_id125.SampleLevel(DynamicSampler_id126, Compute_id177(streams), Compute_id175());
}
float Compute_id174(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id47(streams);
    return SelectMidiValue_id49(m, Compute_id171(streams));
}
uint Compute_id164()
{
    return InputValue_id111;
}
float3 Compute_id162()
{
    return InputValue_id108;
}
float3 Compute_id481(inout CS_STREAMS streams)
{
    return Compute_id476(streams) + Compute_id478(streams);
}
float3 Compute_id474()
{
    return InputValue_id277;
}
float3 Compute_id473(inout CS_STREAMS streams)
{
    return Compute_id468(streams) + Compute_id470(streams);
}
float3 Compute_id466()
{
    return InputValue_id270;
}
float3 Compute_id465(inout CS_STREAMS streams)
{
    return Compute_id460(streams) * Compute_id462(streams);
}
float3 Compute_id458()
{
    return InputValue_id263;
}
float3 Compute_id457(inout CS_STREAMS streams)
{
    return float3(Compute_id450(streams), Compute_id452(streams), Compute_id454(streams));
}
float Compute_id448()
{
    return InputValue_id255;
}
float Compute_id447(inout CS_STREAMS streams)
{
    float4 color = Compute_id425(streams);
    return Luminance_id62(color.rgb);
}
float4 Compute_id424(inout CS_STREAMS streams)
{
    return DynamicTexture_id237.SampleLevel(DynamicSampler_id126, Compute_id421(streams), Compute_id419());
}
float3 Compute_id536(inout CS_STREAMS streams)
{
    return Compute_id531(streams) + Compute_id533(streams);
}
float3 Compute_id529()
{
    return InputValue_id302;
}
float3 Compute_id528(inout CS_STREAMS streams)
{
    return Compute_id523(streams) * Compute_id525(streams);
}
float3 Compute_id521()
{
    return InputValue_id295;
}
float3 Compute_id520(inout CS_STREAMS streams)
{
    return float3(Compute_id513(streams), Compute_id515(streams), Compute_id517(streams));
}
float Compute_id511()
{
    return InputValue_id287;
}
float Compute_id315(inout CS_STREAMS streams)
{
    float4 color = Compute_id293(streams);
    return Luminance_id74(color.rgb);
}
float4 Compute_id69(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id197;
    float4 m = VoxelVolume_id196[i];
    return m;
}
float4 Compute_id133(inout CS_STREAMS streams)
{
    return lerp(Compute_id126(streams), Compute_id128(streams), Compute_id130(streams));
}
float Compute_id124()
{
    return InputValue_id345;
}
float4 Compute_id123(inout CS_STREAMS streams)
{
    return DynamicTexture_id338.SampleLevel(DynamicSampler_id126, Compute_id120(streams), Compute_id118());
}
float4 Compute_id117(inout CS_STREAMS streams)
{
    return SRgbToLinear_id554(Compute_id114(streams));
}
float4 Compute_id113(inout CS_STREAMS streams)
{
    return DynamicBuffer_id331[Compute_id110(streams)];
}
uint Compute_id109(inout CS_STREAMS streams)
{
    float v = Compute_id106(streams);
    uint c = Compute_id104(streams);
    return round(v * c);
}
uint Compute_id102()
{
    return InputValue_id324;
}
float Compute_id101(inout CS_STREAMS streams)
{
    float4 color = Compute_id79(streams);
    return Luminance_id68(color.rgb);
}
float4 Compute_id63(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id197;
    float4 m = VoxelVolume_id196[i];
    return m;
}
void Compute_id413(inout CS_STREAMS streams)
{
    streams.Plus_58_id229 = Compute_id387(streams);
}
void Compute_id411(inout CS_STREAMS streams)
{
    streams.Input_57_id226 = Compute_id380();
}
void Compute_id409(inout CS_STREAMS streams)
{
    streams.Multiply_56_id222 = Compute_id379(streams);
}
void Compute_id407(inout CS_STREAMS streams)
{
    streams.Input_55_id219 = Compute_id372();
}
void Compute_id405(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_54_id214 = Compute_id371(streams);
}
void Compute_id403(inout CS_STREAMS streams)
{
    streams.Multiply_53_id210 = Compute_id363(streams);
}
void Compute_id401(inout CS_STREAMS streams)
{
    streams.Multiply_52_id206 = Compute_id357(streams);
}
void Compute_id399(inout CS_STREAMS streams)
{
    streams.g_51_id203 = Compute_id351(streams);
}
void Compute_id397(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id195 = Compute_id57(streams);
}
void Compute_id395(inout CS_STREAMS streams)
{
    streams.Multiply_50_id191 = Compute_id343(streams);
}
void Compute_id393(inout CS_STREAMS streams)
{
    streams.Input_49_id188 = Compute_id336();
}
void Compute_id391(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_48_id184 = Compute_id335(streams);
}
void Compute_id389(inout CS_STREAMS streams)
{
    streams.Input_47_id181 = Compute_id325();
}
void Compute_id283(inout CS_STREAMS streams)
{
    streams.Multiply_46_id174 = Compute_id251(streams);
}
void Compute_id281(inout CS_STREAMS streams)
{
    streams.Input_45_id171 = Compute_id244();
}
void Compute_id279(inout CS_STREAMS streams)
{
    streams.Plus_44_id167 = Compute_id243(streams);
}
void Compute_id277(inout CS_STREAMS streams)
{
    streams.Multiply_43_id163 = Compute_id237(streams);
}
void Compute_id275(inout CS_STREAMS streams)
{
    streams.Input_42_id160 = Compute_id230();
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_41_id155 = Compute_id229(streams);
}
void Compute_id271(inout CS_STREAMS streams)
{
    streams.Multiply_40_id151 = Compute_id221(streams);
}
void Compute_id269(inout CS_STREAMS streams)
{
    streams.Multiply_39_id147 = Compute_id215(streams);
}
void Compute_id267(inout CS_STREAMS streams)
{
    streams.Multiply_38_id143 = Compute_id209(streams);
}
void Compute_id265(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_37_id132 = Compute_id203(streams);
}
void Compute_id263(inout CS_STREAMS streams)
{
    streams.TextureValue_35_id124 = Compute_id180(streams);
}
void Compute_id261()
{
}
void Compute_id260()
{
}
void Compute_id259()
{
}
void Compute_id258()
{
}
void Compute_id257(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_33_id113 = Compute_id174(streams);
}
void Compute_id255(inout CS_STREAMS streams)
{
    streams.Input_32_id110 = Compute_id164();
}
void Compute_id253(inout CS_STREAMS streams)
{
    streams.Input_31_id107 = Compute_id162();
}
void Compute_id505(inout CS_STREAMS streams)
{
    streams.Plus_30_id279 = Compute_id481(streams);
}
void Compute_id503(inout CS_STREAMS streams)
{
    streams.Input_29_id276 = Compute_id474();
}
void Compute_id501(inout CS_STREAMS streams)
{
    streams.Plus_28_id272 = Compute_id473(streams);
}
void Compute_id499(inout CS_STREAMS streams)
{
    streams.Input_27_id269 = Compute_id466();
}
void Compute_id497(inout CS_STREAMS streams)
{
    streams.Multiply_26_id265 = Compute_id465(streams);
}
void Compute_id495(inout CS_STREAMS streams)
{
    streams.Input_25_id262 = Compute_id458();
}
void Compute_id493(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_24_id257 = Compute_id457(streams);
}
void Compute_id491(inout CS_STREAMS streams)
{
    streams.Input_23_id254 = Compute_id448();
}
void Compute_id489(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id243 = Compute_id447(streams);
}
void Compute_id487(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id236 = Compute_id424(streams);
}
void Compute_id485()
{
}
void Compute_id484()
{
}
void Compute_id483()
{
}
void Compute_id482()
{
}
void Compute_id548(inout CS_STREAMS streams)
{
    streams.Plus_18_id304 = Compute_id536(streams);
}
void Compute_id546(inout CS_STREAMS streams)
{
    streams.Input_17_id301 = Compute_id529();
}
void Compute_id544(inout CS_STREAMS streams)
{
    streams.Multiply_16_id297 = Compute_id528(streams);
}
void Compute_id542(inout CS_STREAMS streams)
{
    streams.Input_15_id294 = Compute_id521();
}
void Compute_id540(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id289 = Compute_id520(streams);
}
void Compute_id538(inout CS_STREAMS streams)
{
    streams.Input_13_id286 = Compute_id511();
}
void Compute_id319(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id312 = Compute_id315(streams);
}
void Compute_id317(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id195 = Compute_id69(streams);
}
void Compute_id156(inout CS_STREAMS streams)
{
    streams.Lerp_12_id347 = Compute_id133(streams);
}
void Compute_id154(inout CS_STREAMS streams)
{
    streams.Input_11_id344 = Compute_id124();
}
void Compute_id152(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id337 = Compute_id123(streams);
}
void Compute_id150()
{
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
void Compute_id146(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id334 = Compute_id117(streams);
}
void Compute_id144(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id330 = Compute_id113(streams);
}
void Compute_id142(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id326 = Compute_id109(streams);
}
void Compute_id140(inout CS_STREAMS streams)
{
    streams.Input_3_id323 = Compute_id102();
}
void Compute_id138(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id312 = Compute_id101(streams);
}
void Compute_id136(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id195 = Compute_id63(streams);
}
void Compute_id134()
{
}
float3 Compute_id416(inout CS_STREAMS streams)
{
    return streams.Plus_58_id229;
}
void Compute_id415(inout CS_STREAMS streams)
{

    {
        Compute_id389(streams);
    }

    {
        Compute_id391(streams);
    }

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
}
float3 Compute_id286(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id174;
}
void Compute_id285(inout CS_STREAMS streams)
{

    {
        Compute_id253(streams);
    }

    {
        Compute_id255(streams);
    }

    {
        Compute_id257(streams);
    }

    {
        Compute_id258();
    }

    {
        Compute_id259();
    }

    {
        Compute_id260();
    }

    {
        Compute_id261();
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

    {
        Compute_id279(streams);
    }

    {
        Compute_id281(streams);
    }

    {
        Compute_id283(streams);
    }
}
float3 Compute_id508(inout CS_STREAMS streams)
{
    return streams.Plus_30_id279;
}
void Compute_id507(inout CS_STREAMS streams)
{

    {
        Compute_id482();
    }

    {
        Compute_id483();
    }

    {
        Compute_id484();
    }

    {
        Compute_id485();
    }

    {
        Compute_id487(streams);
    }

    {
        Compute_id489(streams);
    }

    {
        Compute_id491(streams);
    }

    {
        Compute_id493(streams);
    }

    {
        Compute_id495(streams);
    }

    {
        Compute_id497(streams);
    }

    {
        Compute_id499(streams);
    }

    {
        Compute_id501(streams);
    }

    {
        Compute_id503(streams);
    }

    {
        Compute_id505(streams);
    }
}
float3 Compute_id551(inout CS_STREAMS streams)
{
    return streams.Plus_18_id304;
}
void Compute_id550(inout CS_STREAMS streams)
{

    {
        Compute_id538(streams);
    }

    {
        Compute_id540(streams);
    }

    {
        Compute_id542(streams);
    }

    {
        Compute_id544(streams);
    }

    {
        Compute_id546(streams);
    }

    {
        Compute_id548(streams);
    }
}
float Compute_id322(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id312;
}
void Compute_id321(inout CS_STREAMS streams)
{

    {
        Compute_id317(streams);
    }

    {
        Compute_id319(streams);
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
float4 Compute_id159(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id347;
}
void Compute_id158(inout CS_STREAMS streams)
{

    {
        Compute_id134();
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
        Compute_id144(streams);
    }

    {
        Compute_id146(streams);
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
        Compute_id150();
    }

    {
        Compute_id152(streams);
    }

    {
        Compute_id154(streams);
    }

    {
        Compute_id156(streams);
    }
}
float3 Compute_id44(inout CS_STREAMS streams)
{
    Compute_id415(streams);
    return Compute_id416(streams);
}
float3 Compute_id43(inout CS_STREAMS streams)
{
    Compute_id285(streams);
    return Compute_id286(streams);
}
float3 Compute_id42(inout CS_STREAMS streams)
{
    Compute_id507(streams);
    return Compute_id508(streams);
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id550(streams);
    return Compute_id551(streams);
}
float Compute_id46(inout CS_STREAMS streams)
{
    Compute_id321(streams);
    return Compute_id322(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id45(inout CS_STREAMS streams)
{
    Compute_id158(streams);
    return Compute_id159(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id41(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id42(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id43(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id44(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id45(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id46(streams);
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

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_32> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_33> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_38>}, {Y = GetVarFloat<Multiply_39>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_47> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_48> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_49> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_47>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<g_50> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_50>}, {Right = GetVarFloat<Input_48>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_53> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_49>}, {Y = GetVarFloat<Multiply_51>}, {Z = GetVarFloat<Multiply_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_55> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_53>}, {Right = GetVarFloat3<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_57> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_55>}, {Right = GetVarFloat3<Input_56>}]}]]}]}, {Value = GetVarFloat3<Plus_57>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_32> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_33> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_32>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_33>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_41> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_38>}, {Y = GetVarFloat<Multiply_39>}, {Z = GetVarFloat<Multiply_40>}]}], mixin AssignVarFloat3<Input_42> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_43> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_41>}, {Right = GetVarFloat3<Input_42>}]}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]
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
@C    InputValue_id180 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id191 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id205 => ShaderFX.InputValueFloat.i3
@C    InputValue_id228 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id235 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id263 => ShaderFX.InputValueFloat.i2
@C    InputValue_id271 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id278 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id285 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id295 => ShaderFX.InputValueFloat.i1
@C    InputValue_id303 => ShaderFX.InputValueFloat3
@C    InputValue_id310 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id331 => ShaderFX.InputValueUInt
@C    InputValue_id352 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id149 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id150 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id151 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id152 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id153 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id126 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id114 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    VoxelVolume_id148 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id125 => ObjectTexture_fx34 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id245 => ObjectTexture_fx19 [Stage: Compute, Slot: (5-5)]
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
@G    Compute => e1676302c7016ea11958408f76d1e969
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
//   float3 InputValue_id180;           // Offset:   16 Size:    12
//   float3 InputValue_id191;           // Offset:   32 Size:    12
//   float InputValue_id205;            // Offset:   44 Size:     4
//   float3 InputValue_id228;           // Offset:   48 Size:    12
//   float3 InputValue_id235;           // Offset:   64 Size:    12
//   float InputValue_id263;            // Offset:   76 Size:     4
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
//   int3 VoxelCounts_id115;            // Offset:   84 Size:    12
//   int3 PlacementCounts_id116;        // Offset:   96 Size:    12 [unused]
//   int Channel_id117;                 // Offset:  108 Size:     4 [unused]
//   float Blink_id118;                 // Offset:  112 Size:     4 [unused]
//   float2 SamplerOffset_id119;        // Offset:  116 Size:     8 [unused]
//   float2 SamplerScale_id120;         // Offset:  128 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   int3 VoxelCounts_id149;            // Offset:  144 Size:    12 [unused]
//   int3 PlacementCounts_id150;        // Offset:  160 Size:    12 [unused]
//   float2 SamplerOffset_id151;        // Offset:  176 Size:     8 [unused]
//   float2 SamplerScale_id152;         // Offset:  184 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id153;    // Offset:  192 Size:     4 [unused]
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
// Resource bind info for VoxelVolume_id148
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
// VoxelVolume_id148                 texture  struct         r/o             t3      1 
// DynamicTexture_id125              texture  float4          2d             t4      1 
// DynamicTexture_id245              texture  float4          2d             t5      1 
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
#line 1515 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_b11270079d2e4c9f69cdc0ae3ea6e60a.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1516
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1527
  if_nz cb2[5].x

#line 1537
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

#line 1488
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 768
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id559 return value>.x; r11.y <- <Compute_id559 return value>.y; r11.z <- <Compute_id559 return value>.z

#line 1491
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 764
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t5.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id447 return value>.x; r12.y <- <Compute_id447 return value>.y; r12.z <- <Compute_id447 return value>.z

#line 505
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id63 return value>

#line 743
  mov r12.yz, cb1[4].wwww

#line 735
  mad r12.xyz, r12.xyzx, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id496 return value>.x; r12.y <- <Compute_id496 return value>.y; r12.z <- <Compute_id496 return value>.z

#line 727
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id504 return value>.x; r12.y <- <Compute_id504 return value>.y; r12.z <- <Compute_id504 return value>.z

#line 1492
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 463
  itof r12.xyz, cb2[5].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 273
  imul null, r0.w, cb2[5].z, cb2[5].y
  imad r1.w, r12.y, cb2[5].y, r12.x
  imad r0.w, r12.z, r0.w, r1.w  // r0.w <- <CalculateVoxelVolumeIndex_id46 return value>

#line 277
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t2.xyzw  // r12.x <- <GetVoxel_id34 return value>.Empty; r12.y <- <GetVoxel_id34 return value>.StartTime; r12.z <- <GetVoxel_id34 return value>.Note; r12.w <- <GetVoxel_id34 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r13.xyzw, r0.w, l(16), t2.xyzw  // r13.x <- <GetVoxel_id34 return value>.Length; r13.y <- <GetVoxel_id34 return value>.Channel; r13.z <- <GetVoxel_id34 return value>.Constant; r13.w <- <GetVoxel_id34 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(32), t2.wxyz  // r14.y <- <GetVoxel_id34 return value>.TrackId; r14.z <- <GetVoxel_id34 return value>.ModWheel; r14.w <- <GetVoxel_id34 return value>.PitchBend; r14.x <- <GetVoxel_id34 return value>.Random

#line 425
  switch cb1[0].w

#line 428
    case l(0)

#line 429
    mov r14.x, r12.x  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 430
    case l(1)

#line 431
    mov r14.x, r12.y  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 432
    case l(2)

#line 433
    mov r14.x, r12.z  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 434
    case l(3)

#line 435
    mov r14.x, r12.w  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 436
    case l(4)

#line 437
    mov r14.x, r13.x  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 438
    case l(5)

#line 439
    mov r14.x, r13.y  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 440
    case l(6)

#line 441
    mov r14.x, r13.z  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 442
    case l(7)

#line 443
    mov r14.x, r13.w  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 444
    case l(8)

#line 445
    mov r14.x, r14.y  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 446
    case l(9)

#line 447
    mov r14.x, r14.z  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 448
    case l(10)

#line 449
    mov r14.x, r14.w  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 450
    case l(11)

#line 451
    break 

#line 452
    default 

#line 453
    mov r14.x, l(0)  // r14.x <- <SelectMidiValue_id47 return value>
    break 

#line 454
  endswitch   // r14.x <- <SelectMidiValue_id47 return value>

#line 710
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xzxx, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id181 return value>.x; r12.y <- <Compute_id181 return value>.y; r12.z <- <Compute_id181 return value>.z

#line 409
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id51 return value>

#line 701
  mul r12.y, r0.w, r14.x  // r12.y <- <Compute_id210 return value>

#line 696
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r13.xyz, vThreadID.x, l(0), t3.xyzx  // r13.x <- m.x; r13.y <- m.y; r13.z <- m.z

#line 393
  dp3 r1.w, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id57 return value>

#line 685
  mul r12.zw, r0.wwww, r1.wwww  // r12.w <- <Compute_id243 return value>

#line 665
  mad r12.xyz, r12.yzwy, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id271 return value>.x; r12.y <- <Compute_id271 return value>.y; r12.z <- <Compute_id271 return value>.z

#line 657
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id279 return value>.x; r13.y <- <Compute_id279 return value>.y; r13.z <- <Compute_id279 return value>.z

#line 1493
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 652
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r6.zw, vThreadID.x, l(0), t3.xxxy  // r6.z <- m.x; r6.w <- m.y

#line 630
  mul r12.xyz, r6.zwwz, cb1[2].wwww  // r12.z <- <Compute_id382 return value>

#line 606
  mad r12.xyz, r12.xyzx, cb1[3].xyzx, cb1[4].xyzx  // r12.x <- <Compute_id412 return value>.x; r12.y <- <Compute_id412 return value>.y; r12.z <- <Compute_id412 return value>.z

#line 1494
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1496
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 826
  utof r0.w, cb1[9].w
  mul r0.w, r0.w, r1.w
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id110 return value>

#line 820
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r0.wwww, t6.xyzw  // r12.x <- <Compute_id114 return value>.x; r12.y <- <Compute_id114 return value>.y; r12.z <- <Compute_id114 return value>.z

#line 578
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id577 return value>.x; r14.y <- <SRgbToLinear_id577 return value>.y; r14.z <- <SRgbToLinear_id577 return value>.z

#line 812
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t7.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id124 return value>.x; r6.z <- <Compute_id124 return value>.y; r6.w <- <Compute_id124 return value>.z

#line 804
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id134 return value>.x; r6.z <- <Compute_id134 return value>.y; r6.w <- <Compute_id134 return value>.z

#line 1503
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1474
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1378
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 1381
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1380
  mad r0.w, r13.x, r10.y, -r12.z  // r0.w <- p.x

#line 1381
  mad r2.w, r13.x, r10.z, r12.w  // r2.w <- p.y

#line 1368
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1370
  mul r3.w, r10.w, r10.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 1371
  mul r3.w, r10.w, r12.x
  mad r2.w, r10.x, r2.w, r3.w  // r2.w <- p.z

#line 1358
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1360
  mul r3.w, r2.w, r10.x
  mad r13.x, r12.x, r0.w, r3.w  // r13.x <- p.x

#line 1361
  mul r2.w, r2.w, r12.x
  mad r13.z, -r10.x, r0.w, r2.w  // r13.z <- p.z

#line 1474
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1378
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1381
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1380
  mad r0.w, r12.x, r11.x, -r5.z

#line 1381
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 1368
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1370
  mul r3.w, r11.z, r5.x
  mad r12.y, r10.x, r2.w, -r3.w  // r12.y <- p.y

#line 1371
  mul r3.w, r11.z, r10.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 1358
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1360
  mul r3.w, r2.w, r5.x
  mad r12.x, r10.x, r0.w, r3.w  // r12.x <- p.x

#line 1361
  mul r2.w, r2.w, r10.x
  mad r12.z, -r5.x, r0.w, r2.w  // r12.z <- p.z

#line 1504
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1539
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z

#line 1540
  add r1.xyz, r1.xyzx, -r8.xyzx
  mad r1.xyz, cb0[0].wwww, r1.xyzx, r8.xyzx  // r1.x <- POut.Rot.x; r1.y <- POut.Rot.y; r1.z <- POut.Rot.z

#line 1541
  add r2.xyz, r2.xyzx, -r9.xyzx
  mad r2.yzw, cb0[0].wwww, r2.xxyz, r9.xxyz  // r2.y <- POut.Size.x; r2.z <- POut.Size.y; r2.w <- POut.Size.z

#line 1542
  add r3.xyz, r3.xyzx, -r6.yzwy
  mad r3.xyz, cb0[1].xxxx, r3.xyzx, r6.yzwy  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1543
  utof r4.x, cb0[0].z
  mul r1.w, r1.w, r4.x
  iadd r4.x, cb0[0].z, l(-1)
  utof r4.x, r4.x
  max r1.w, r1.w, l(0.000000)
  min r3.w, r4.x, r1.w  // r3.w <- POut.Mesh

#line 1547
  movc r4.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r4.x <- POut.Vel.y; r4.y <- POut.Vel.z; r4.z <- POut.Vel.x

#line 1548
  mov r0.w, r4.z
  store_structured u1.xyzw, vThreadID.x, l(0), r0.xyzw
  mov r4.zw, r1.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r4.xyzw
  mov r2.x, r1.z
  store_structured u1.xyzw, vThreadID.x, l(32), r2.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r3.xyzw
endif 

#line 1563
ret 
// Approximately 180 instruction slots used
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
    float4 TextureValue_20_id244;
    float SMCalcLuminance_ShaderFXResult_22_id251;
    float Input_23_id262;
    float3 SMVector3Join_ShaderFXResult_24_id265;
    float3 Input_25_id270;
    float3 Multiply_26_id273;
    float3 Input_27_id277;
    float3 Plus_28_id280;
    float3 Input_29_id284;
    float3 Plus_30_id287;
    float3 Input_31_id107;
    uint Input_32_id110;
    float SMMidiSelectValue_ShaderFXResult_33_id113;
    float4 TextureValue_35_id124;
    float SMCalcLuminance_ShaderFXResult_37_id132;
    float Multiply_38_id143;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id147;
    float SMCalcLuminance_ShaderFXResult_2_id155;
    float Multiply_39_id166;
    float Multiply_40_id170;
    float3 SMVector3Join_ShaderFXResult_41_id174;
    float3 Input_42_id179;
    float3 Multiply_43_id182;
    float3 Plus_44_id186;
    float3 Input_45_id190;
    float3 Multiply_46_id193;
    float r_47_id201;
    float Input_48_id204;
    float Multiply_49_id207;
    float g_50_id211;
    float Multiply_51_id214;
    float Multiply_52_id218;
    float3 SMVector3Join_ShaderFXResult_53_id222;
    float3 Input_54_id227;
    float3 Multiply_55_id230;
    float3 Input_56_id234;
    float3 Plus_57_id237;
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
    float3 InputValue_id180;
    float3 InputValue_id191;
    float InputValue_id205;
    float3 InputValue_id228;
    float3 InputValue_id235;
    float InputValue_id263;
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
    int3 VoxelCounts_id115;
    int3 PlacementCounts_id116;
    int Channel_id117;
    float Blink_id118;
    float2 SamplerOffset_id119;
    float2 SamplerScale_id120 = float2(1, 1);
    int3 VoxelCounts_id149;
    int3 PlacementCounts_id150;
    float2 SamplerOffset_id151;
    float2 SamplerScale_id152 = float2(1, 1);
    uint PlacementLevelCount_id153 = 1048576;
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
StructuredBuffer<float4> VoxelVolume_id148;
Texture2D DynamicTexture_id125;
SamplerState DynamicSampler_id126;
Texture2D DynamicTexture_id245;
Buffer<float4> DynamicBuffer_id338;
Texture2D DynamicTexture_id345;
uint CalculateVoxelVolumeIndex_id46(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id115.x, VoxelCounts_id115.x * VoxelCounts_id115.y));
}
SMMidiNoteData GetVoxel_id34(uint3 coordinate)
{
    return VoxelVolume_id114[CalculateVoxelVolumeIndex_id46(coordinate)];
}
float3 Compute_id409(inout CS_STREAMS streams)
{
    return streams.Input_56_id234;
}
float3 Compute_id407(inout CS_STREAMS streams)
{
    return streams.Multiply_55_id230;
}
float3 Compute_id401(inout CS_STREAMS streams)
{
    return streams.Input_54_id227;
}
float3 Compute_id399(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_53_id222;
}
float Compute_id393(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id218;
}
float Compute_id391(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id214;
}
float Compute_id389(inout CS_STREAMS streams)
{
    return streams.Multiply_49_id207;
}
float Compute_id385(inout CS_STREAMS streams)
{
    return streams.Input_48_id204;
}
float Compute_id383(inout CS_STREAMS streams)
{
    return streams.g_50_id211;
}
float Compute_id379(inout CS_STREAMS streams)
{
    return streams.Input_48_id204;
}
float Compute_id377(inout CS_STREAMS streams)
{
    return streams.g_50_id211;
}
float4 Compute_id373(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id147;
}
float Compute_id369(inout CS_STREAMS streams)
{
    return streams.Input_48_id204;
}
float Compute_id367(inout CS_STREAMS streams)
{
    return streams.r_47_id201;
}
float4 Compute_id361(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id147;
}
float3 Compute_id276(inout CS_STREAMS streams)
{
    return streams.Input_45_id190;
}
float3 Compute_id274(inout CS_STREAMS streams)
{
    return streams.Plus_44_id186;
}
float3 Compute_id268(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id182;
}
float3 Compute_id266(inout CS_STREAMS streams)
{
    return streams.Input_31_id107;
}
float3 Compute_id262(inout CS_STREAMS streams)
{
    return streams.Input_42_id179;
}
float3 Compute_id260(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_41_id174;
}
float Compute_id254(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id170;
}
float Compute_id252(inout CS_STREAMS streams)
{
    return streams.Multiply_39_id166;
}
float Compute_id250(inout CS_STREAMS streams)
{
    return streams.Multiply_38_id143;
}
float Compute_id246(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id244(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id155;
}
float Compute_id240(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id238(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id155;
}
float Luminance_id57(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id215(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id147;
}
float Compute_id207(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id132;
}
float Compute_id205(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_33_id113;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id182(inout CS_STREAMS streams)
{
    return streams.TextureValue_35_id124;
}
float Compute_id176()
{
    return Value_id346;
}
float2 Compute_id178(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float SelectMidiValue_id47(SMMidiNoteData x, uint i)
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
uint Compute_id172(inout CS_STREAMS streams)
{
    return streams.Input_32_id110;
}
SMMidiNoteData Compute_id45(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id115;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float3 Compute_id501(inout CS_STREAMS streams)
{
    return streams.Input_29_id284;
}
float3 Compute_id499(inout CS_STREAMS streams)
{
    return streams.Plus_28_id280;
}
float3 Compute_id493(inout CS_STREAMS streams)
{
    return streams.Input_27_id277;
}
float3 Compute_id491(inout CS_STREAMS streams)
{
    return streams.Multiply_26_id273;
}
float3 Compute_id485(inout CS_STREAMS streams)
{
    return streams.Input_25_id270;
}
float3 Compute_id483(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_24_id265;
}
float Compute_id477(inout CS_STREAMS streams)
{
    return streams.Input_23_id262;
}
float Compute_id475(inout CS_STREAMS streams)
{
    return streams.Input_23_id262;
}
float Compute_id473(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id251;
}
float Luminance_id63(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id448(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id244;
}
float Compute_id442()
{
    return Value_id346;
}
float2 Compute_id444(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id556(inout CS_STREAMS streams)
{
    return streams.Input_17_id309;
}
float3 Compute_id554(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id305;
}
float3 Compute_id548(inout CS_STREAMS streams)
{
    return streams.Input_15_id302;
}
float3 Compute_id546(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id297;
}
float Compute_id540(inout CS_STREAMS streams)
{
    return streams.Input_13_id294;
}
float Compute_id538(inout CS_STREAMS streams)
{
    return streams.Input_13_id294;
}
float Compute_id536(inout CS_STREAMS streams)
{
    return streams.Input_13_id294;
}
float Luminance_id75(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id325(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id147;
}
float Compute_id131(inout CS_STREAMS streams)
{
    return streams.Input_11_id351;
}
float4 Compute_id129(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id344;
}
float4 Compute_id127(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id341;
}
float Compute_id119()
{
    return Value_id346;
}
float2 Compute_id121(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id577(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id115(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id337;
}
uint Compute_id111(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id333;
}
uint Compute_id105(inout CS_STREAMS streams)
{
    return streams.Input_3_id330;
}
float Compute_id107(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id155;
}
float Luminance_id69(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id80(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id147;
}
float3 Compute_id412(inout CS_STREAMS streams)
{
    return Compute_id407(streams) + Compute_id409(streams);
}
float3 Compute_id405()
{
    return InputValue_id235;
}
float3 Compute_id404(inout CS_STREAMS streams)
{
    return Compute_id399(streams) * Compute_id401(streams);
}
float3 Compute_id397()
{
    return InputValue_id228;
}
float3 Compute_id396(inout CS_STREAMS streams)
{
    return float3(Compute_id389(streams), Compute_id391(streams), Compute_id393(streams));
}
float Compute_id388(inout CS_STREAMS streams)
{
    return Compute_id383(streams) * Compute_id385(streams);
}
float Compute_id382(inout CS_STREAMS streams)
{
    return Compute_id377(streams) * Compute_id379(streams);
}
float Compute_id376(inout CS_STREAMS streams)
{
    return Compute_id373(streams).g;
}
float Compute_id372(inout CS_STREAMS streams)
{
    return Compute_id367(streams) * Compute_id369(streams);
}
float Compute_id365()
{
    return InputValue_id205;
}
float Compute_id364(inout CS_STREAMS streams)
{
    return Compute_id361(streams).r;
}
float4 Compute_id58(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id149;
    float4 m = VoxelVolume_id148[i];
    return m;
}
float3 Compute_id279(inout CS_STREAMS streams)
{
    return Compute_id274(streams) * Compute_id276(streams);
}
float3 Compute_id272()
{
    return InputValue_id191;
}
float3 Compute_id271(inout CS_STREAMS streams)
{
    return Compute_id266(streams) + Compute_id268(streams);
}
float3 Compute_id265(inout CS_STREAMS streams)
{
    return Compute_id260(streams) * Compute_id262(streams);
}
float3 Compute_id258()
{
    return InputValue_id180;
}
float3 Compute_id257(inout CS_STREAMS streams)
{
    return float3(Compute_id250(streams), Compute_id252(streams), Compute_id254(streams));
}
float Compute_id249(inout CS_STREAMS streams)
{
    return Compute_id244(streams) * Compute_id246(streams);
}
float Compute_id243(inout CS_STREAMS streams)
{
    return Compute_id238(streams) * Compute_id240(streams);
}
float Compute_id237(inout CS_STREAMS streams)
{
    float4 color = Compute_id215(streams);
    return Luminance_id57(color.rgb);
}
float4 Compute_id52(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id149;
    float4 m = VoxelVolume_id148[i];
    return m;
}
float Compute_id210(inout CS_STREAMS streams)
{
    return Compute_id205(streams) * Compute_id207(streams);
}
float Compute_id204(inout CS_STREAMS streams)
{
    float4 color = Compute_id182(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id181(inout CS_STREAMS streams)
{
    return DynamicTexture_id125.SampleLevel(DynamicSampler_id126, Compute_id178(streams), Compute_id176());
}
float Compute_id175(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id45(streams);
    return SelectMidiValue_id47(m, Compute_id172(streams));
}
uint Compute_id165()
{
    return InputValue_id111;
}
float3 Compute_id163()
{
    return InputValue_id108;
}
float3 Compute_id504(inout CS_STREAMS streams)
{
    return Compute_id499(streams) + Compute_id501(streams);
}
float3 Compute_id497()
{
    return InputValue_id285;
}
float3 Compute_id496(inout CS_STREAMS streams)
{
    return Compute_id491(streams) + Compute_id493(streams);
}
float3 Compute_id489()
{
    return InputValue_id278;
}
float3 Compute_id488(inout CS_STREAMS streams)
{
    return Compute_id483(streams) * Compute_id485(streams);
}
float3 Compute_id481()
{
    return InputValue_id271;
}
float3 Compute_id480(inout CS_STREAMS streams)
{
    return float3(Compute_id473(streams), Compute_id475(streams), Compute_id477(streams));
}
float Compute_id471()
{
    return InputValue_id263;
}
float Compute_id470(inout CS_STREAMS streams)
{
    float4 color = Compute_id448(streams);
    return Luminance_id63(color.rgb);
}
float4 Compute_id447(inout CS_STREAMS streams)
{
    return DynamicTexture_id245.SampleLevel(DynamicSampler_id126, Compute_id444(streams), Compute_id442());
}
float3 Compute_id559(inout CS_STREAMS streams)
{
    return Compute_id554(streams) + Compute_id556(streams);
}
float3 Compute_id552()
{
    return InputValue_id310;
}
float3 Compute_id551(inout CS_STREAMS streams)
{
    return Compute_id546(streams) * Compute_id548(streams);
}
float3 Compute_id544()
{
    return InputValue_id303;
}
float3 Compute_id543(inout CS_STREAMS streams)
{
    return float3(Compute_id536(streams), Compute_id538(streams), Compute_id540(streams));
}
float Compute_id534()
{
    return InputValue_id295;
}
float Compute_id347(inout CS_STREAMS streams)
{
    float4 color = Compute_id325(streams);
    return Luminance_id75(color.rgb);
}
float4 Compute_id70(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id149;
    float4 m = VoxelVolume_id148[i];
    return m;
}
float4 Compute_id134(inout CS_STREAMS streams)
{
    return lerp(Compute_id127(streams), Compute_id129(streams), Compute_id131(streams));
}
float Compute_id125()
{
    return InputValue_id352;
}
float4 Compute_id124(inout CS_STREAMS streams)
{
    return DynamicTexture_id345.SampleLevel(DynamicSampler_id126, Compute_id121(streams), Compute_id119());
}
float4 Compute_id118(inout CS_STREAMS streams)
{
    return SRgbToLinear_id577(Compute_id115(streams));
}
float4 Compute_id114(inout CS_STREAMS streams)
{
    return DynamicBuffer_id338[Compute_id111(streams)];
}
uint Compute_id110(inout CS_STREAMS streams)
{
    float v = Compute_id107(streams);
    uint c = Compute_id105(streams);
    return round(v * c);
}
uint Compute_id103()
{
    return InputValue_id331;
}
float Compute_id102(inout CS_STREAMS streams)
{
    float4 color = Compute_id80(streams);
    return Luminance_id69(color.rgb);
}
float4 Compute_id64(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id149;
    float4 m = VoxelVolume_id148[i];
    return m;
}
void Compute_id436(inout CS_STREAMS streams)
{
    streams.Plus_57_id237 = Compute_id412(streams);
}
void Compute_id434(inout CS_STREAMS streams)
{
    streams.Input_56_id234 = Compute_id405();
}
void Compute_id432(inout CS_STREAMS streams)
{
    streams.Multiply_55_id230 = Compute_id404(streams);
}
void Compute_id430(inout CS_STREAMS streams)
{
    streams.Input_54_id227 = Compute_id397();
}
void Compute_id428(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_53_id222 = Compute_id396(streams);
}
void Compute_id426(inout CS_STREAMS streams)
{
    streams.Multiply_52_id218 = Compute_id388(streams);
}
void Compute_id424(inout CS_STREAMS streams)
{
    streams.Multiply_51_id214 = Compute_id382(streams);
}
void Compute_id422(inout CS_STREAMS streams)
{
    streams.g_50_id211 = Compute_id376(streams);
}
void Compute_id420(inout CS_STREAMS streams)
{
    streams.Multiply_49_id207 = Compute_id372(streams);
}
void Compute_id418(inout CS_STREAMS streams)
{
    streams.Input_48_id204 = Compute_id365();
}
void Compute_id416(inout CS_STREAMS streams)
{
    streams.r_47_id201 = Compute_id364(streams);
}
void Compute_id414(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id147 = Compute_id58(streams);
}
void Compute_id315(inout CS_STREAMS streams)
{
    streams.Multiply_46_id193 = Compute_id279(streams);
}
void Compute_id313(inout CS_STREAMS streams)
{
    streams.Input_45_id190 = Compute_id272();
}
void Compute_id311(inout CS_STREAMS streams)
{
    streams.Plus_44_id186 = Compute_id271(streams);
}
void Compute_id309(inout CS_STREAMS streams)
{
    streams.Multiply_43_id182 = Compute_id265(streams);
}
void Compute_id307(inout CS_STREAMS streams)
{
    streams.Input_42_id179 = Compute_id258();
}
void Compute_id305(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_41_id174 = Compute_id257(streams);
}
void Compute_id303(inout CS_STREAMS streams)
{
    streams.Multiply_40_id170 = Compute_id249(streams);
}
void Compute_id301(inout CS_STREAMS streams)
{
    streams.Multiply_39_id166 = Compute_id243(streams);
}
void Compute_id299(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id155 = Compute_id237(streams);
}
void Compute_id297(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id147 = Compute_id52(streams);
}
void Compute_id295(inout CS_STREAMS streams)
{
    streams.Multiply_38_id143 = Compute_id210(streams);
}
void Compute_id293(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_37_id132 = Compute_id204(streams);
}
void Compute_id291(inout CS_STREAMS streams)
{
    streams.TextureValue_35_id124 = Compute_id181(streams);
}
void Compute_id289()
{
}
void Compute_id288()
{
}
void Compute_id287()
{
}
void Compute_id286()
{
}
void Compute_id285(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_33_id113 = Compute_id175(streams);
}
void Compute_id283(inout CS_STREAMS streams)
{
    streams.Input_32_id110 = Compute_id165();
}
void Compute_id281(inout CS_STREAMS streams)
{
    streams.Input_31_id107 = Compute_id163();
}
void Compute_id528(inout CS_STREAMS streams)
{
    streams.Plus_30_id287 = Compute_id504(streams);
}
void Compute_id526(inout CS_STREAMS streams)
{
    streams.Input_29_id284 = Compute_id497();
}
void Compute_id524(inout CS_STREAMS streams)
{
    streams.Plus_28_id280 = Compute_id496(streams);
}
void Compute_id522(inout CS_STREAMS streams)
{
    streams.Input_27_id277 = Compute_id489();
}
void Compute_id520(inout CS_STREAMS streams)
{
    streams.Multiply_26_id273 = Compute_id488(streams);
}
void Compute_id518(inout CS_STREAMS streams)
{
    streams.Input_25_id270 = Compute_id481();
}
void Compute_id516(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_24_id265 = Compute_id480(streams);
}
void Compute_id514(inout CS_STREAMS streams)
{
    streams.Input_23_id262 = Compute_id471();
}
void Compute_id512(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id251 = Compute_id470(streams);
}
void Compute_id510(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id244 = Compute_id447(streams);
}
void Compute_id508()
{
}
void Compute_id507()
{
}
void Compute_id506()
{
}
void Compute_id505()
{
}
void Compute_id571(inout CS_STREAMS streams)
{
    streams.Plus_18_id312 = Compute_id559(streams);
}
void Compute_id569(inout CS_STREAMS streams)
{
    streams.Input_17_id309 = Compute_id552();
}
void Compute_id567(inout CS_STREAMS streams)
{
    streams.Multiply_16_id305 = Compute_id551(streams);
}
void Compute_id565(inout CS_STREAMS streams)
{
    streams.Input_15_id302 = Compute_id544();
}
void Compute_id563(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id297 = Compute_id543(streams);
}
void Compute_id561(inout CS_STREAMS streams)
{
    streams.Input_13_id294 = Compute_id534();
}
void Compute_id351(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id155 = Compute_id347(streams);
}
void Compute_id349(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id147 = Compute_id70(streams);
}
void Compute_id157(inout CS_STREAMS streams)
{
    streams.Lerp_12_id354 = Compute_id134(streams);
}
void Compute_id155(inout CS_STREAMS streams)
{
    streams.Input_11_id351 = Compute_id125();
}
void Compute_id153(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id344 = Compute_id124(streams);
}
void Compute_id151()
{
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
void Compute_id147(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id341 = Compute_id118(streams);
}
void Compute_id145(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id337 = Compute_id114(streams);
}
void Compute_id143(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id333 = Compute_id110(streams);
}
void Compute_id141(inout CS_STREAMS streams)
{
    streams.Input_3_id330 = Compute_id103();
}
void Compute_id139(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id155 = Compute_id102(streams);
}
void Compute_id137(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id147 = Compute_id64(streams);
}
void Compute_id135()
{
}
float3 Compute_id439(inout CS_STREAMS streams)
{
    return streams.Plus_57_id237;
}
void Compute_id438(inout CS_STREAMS streams)
{

    {
        Compute_id414(streams);
    }

    {
        Compute_id416(streams);
    }

    {
        Compute_id418(streams);
    }

    {
        Compute_id420(streams);
    }

    {
        Compute_id422(streams);
    }

    {
        Compute_id424(streams);
    }

    {
        Compute_id426(streams);
    }

    {
        Compute_id428(streams);
    }

    {
        Compute_id430(streams);
    }

    {
        Compute_id432(streams);
    }

    {
        Compute_id434(streams);
    }

    {
        Compute_id436(streams);
    }
}
float3 Compute_id318(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id193;
}
void Compute_id317(inout CS_STREAMS streams)
{

    {
        Compute_id281(streams);
    }

    {
        Compute_id283(streams);
    }

    {
        Compute_id285(streams);
    }

    {
        Compute_id286();
    }

    {
        Compute_id287();
    }

    {
        Compute_id288();
    }

    {
        Compute_id289();
    }

    {
        Compute_id291(streams);
    }

    {
        Compute_id293(streams);
    }

    {
        Compute_id295(streams);
    }

    {
        Compute_id297(streams);
    }

    {
        Compute_id299(streams);
    }

    {
        Compute_id301(streams);
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
        Compute_id309(streams);
    }

    {
        Compute_id311(streams);
    }

    {
        Compute_id313(streams);
    }

    {
        Compute_id315(streams);
    }
}
float3 Compute_id531(inout CS_STREAMS streams)
{
    return streams.Plus_30_id287;
}
void Compute_id530(inout CS_STREAMS streams)
{

    {
        Compute_id505();
    }

    {
        Compute_id506();
    }

    {
        Compute_id507();
    }

    {
        Compute_id508();
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

    {
        Compute_id522(streams);
    }

    {
        Compute_id524(streams);
    }

    {
        Compute_id526(streams);
    }

    {
        Compute_id528(streams);
    }
}
float3 Compute_id574(inout CS_STREAMS streams)
{
    return streams.Plus_18_id312;
}
void Compute_id573(inout CS_STREAMS streams)
{

    {
        Compute_id561(streams);
    }

    {
        Compute_id563(streams);
    }

    {
        Compute_id565(streams);
    }

    {
        Compute_id567(streams);
    }

    {
        Compute_id569(streams);
    }

    {
        Compute_id571(streams);
    }
}
float Compute_id354(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id155;
}
void Compute_id353(inout CS_STREAMS streams)
{

    {
        Compute_id349(streams);
    }

    {
        Compute_id351(streams);
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
float4 Compute_id160(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id354;
}
void Compute_id159(inout CS_STREAMS streams)
{

    {
        Compute_id135();
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
        Compute_id147(streams);
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
        Compute_id151();
    }

    {
        Compute_id153(streams);
    }

    {
        Compute_id155(streams);
    }

    {
        Compute_id157(streams);
    }
}
float3 Compute_id42(inout CS_STREAMS streams)
{
    Compute_id438(streams);
    return Compute_id439(streams);
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id317(streams);
    return Compute_id318(streams);
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id530(streams);
    return Compute_id531(streams);
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id573(streams);
    return Compute_id574(streams);
}
float Compute_id44(inout CS_STREAMS streams)
{
    Compute_id353(streams);
    return Compute_id354(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id43(inout CS_STREAMS streams)
{
    Compute_id159(streams);
    return Compute_id160(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id39(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id40(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id41(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id42(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id43(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id44(streams);
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

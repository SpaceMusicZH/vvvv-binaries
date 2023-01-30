/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_32> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx31,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_33,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_34> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_32>}]}], mixin AssignVarFloat<Multiply_35> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}]}], mixin AssignVarFloat<Multiply_36> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}]}], mixin AssignVarFloat<Multiply_37> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_38> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_35>}, {Y = GetVarFloat<Multiply_36>}, {Z = GetVarFloat<Multiply_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<Multiply_40> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_38>}, {Right = GetVarFloat3<Input_39>}]}], mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_42> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_40>}, {Right = GetVarFloat3<Input_41>}]}], mixin AssignVarFloat3<Input_43> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_42>}, {Right = GetVarFloat3<Input_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_47> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarUInt<Input_48> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_49> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_48>}]}], mixin AssignVarFloat<Input_50> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_49>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_52> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_47>}, {Y = GetVarFloat<Input_47>}, {Z = GetVarFloat<Multiply_51>}]}], mixin AssignVarFloat3<Input_53> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Multiply_54> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_52>}, {Right = GetVarFloat3<Input_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Plus_56> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_54>}, {Right = GetVarFloat3<Input_55>}]}]]}]}, {Value = GetVarFloat3<Plus_56>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], mixin AssignVarFloat<Input_23> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_24> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<Input_23>}, {Z = GetVarFloat<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_26> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_28> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_32> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx31,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_33,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_34> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_32>}]}], mixin AssignVarFloat<Multiply_35> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}]}], mixin AssignVarFloat<Multiply_36> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}]}], mixin AssignVarFloat<Multiply_37> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_34>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_38> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_35>}, {Y = GetVarFloat<Multiply_36>}, {Z = GetVarFloat<Multiply_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<Multiply_40> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_38>}, {Right = GetVarFloat3<Input_39>}]}], mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_42> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_40>}, {Right = GetVarFloat3<Input_41>}]}], mixin AssignVarFloat3<Input_43> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_42>}, {Right = GetVarFloat3<Input_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}]]}]}, {Value = GetVarFloat3<Multiply_46>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_47> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarUInt<Input_48> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_49> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_48>}]}], mixin AssignVarFloat<Input_50> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_49>}, {Right = GetVarFloat<Input_50>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_52> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_47>}, {Y = GetVarFloat<Input_47>}, {Z = GetVarFloat<Multiply_51>}]}], mixin AssignVarFloat3<Input_53> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Multiply_54> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_52>}, {Right = GetVarFloat3<Input_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Plus_56> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_54>}, {Right = GetVarFloat3<Input_55>}]}]]}]}, {Value = GetVarFloat3<Plus_56>}]
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
cbuffer PerUpdate [Size: 208]
@C    InputValue_id163 => ShaderFX.InputValueFloat3.i5
@C    InputValue_id170 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id177 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id184 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id194 => ShaderFX.InputValueFloat.i3
@C    InputValue_id197 => ShaderFX.InputValueUInt.i1
@C    InputValue_id211 => ShaderFX.InputValueFloat.i4
@C    InputValue_id223 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id230 => ShaderFX.InputValueFloat3.i10
@C    InputValue_id258 => ShaderFX.InputValueFloat.i2
@C    InputValue_id266 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id273 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id280 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id290 => ShaderFX.InputValueFloat.i1
@C    InputValue_id298 => ShaderFX.InputValueFloat3
@C    InputValue_id305 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id326 => ShaderFX.InputValueUInt
@C    InputValue_id347 => ShaderFX.InputValueFloat
cbuffer Globals [Size: 192]
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
@C    VoxelCounts_id109 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id110 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id111 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id112 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id113 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
@C    VoxelCounts_id201 => SMMidiBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id202 => SMMidiBufferSelector_ShaderFX.PlacementCounts
@C    Channel_id203 => SMMidiBufferSelector_ShaderFX.Channel
@C    Blink_id204 => SMMidiBufferSelector_ShaderFX.Blink
@C    SamplerOffset_id205 => SMMidiBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id206 => SMMidiBufferSelector_ShaderFX.SamplerScale
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id128 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id108 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    VoxelVolume_id200 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id127 => ObjectTexture_fx31 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id240 => ObjectTexture_fx19 [Stage: Compute, Slot: (5-5)]
@R    DynamicBuffer_id333 => ObjectBuffer_fx0 [Stage: Compute, Slot: (6-6)]
@R    DynamicTexture_id340 => ObjectTexture_fx7 [Stage: Compute, Slot: (7-7)]
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
@S    MultiplyFloat => 3c410b17a1d4349d5f1f2557ce58f158
@S    AssignVarFloat3 => 4040ea8570cd36802d25459fd79c8876
@S    StreamVariableFloat3 => f8eb882d1acd8b041f9a967c812a0d72
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    SMMidiSelectValue_ShaderFX => c77373c891111f8b45fb62108518eee4
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    SMMidiBufferSelector_ShaderFX => 1df156fd3c684db39ea5b160a664f54a
***************************
*****     Stages      *****
***************************
@G    Compute => 08b7fa1983f97bc75bb76abc42184047
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
//   float3 InputValue_id163;           // Offset:    0 Size:    12
//   float3 InputValue_id170;           // Offset:   16 Size:    12
//   float3 InputValue_id177;           // Offset:   32 Size:    12
//   float3 InputValue_id184;           // Offset:   48 Size:    12
//   float InputValue_id194;            // Offset:   60 Size:     4
//   uint InputValue_id197;             // Offset:   64 Size:     4
//   float InputValue_id211;            // Offset:   68 Size:     4
//   float3 InputValue_id223;           // Offset:   80 Size:    12
//   float3 InputValue_id230;           // Offset:   96 Size:    12
//   float InputValue_id258;            // Offset:  108 Size:     4
//   float3 InputValue_id266;           // Offset:  112 Size:    12
//   float3 InputValue_id273;           // Offset:  128 Size:    12
//   float3 InputValue_id280;           // Offset:  144 Size:    12
//   float InputValue_id290;            // Offset:  156 Size:     4
//   float3 InputValue_id298;           // Offset:  160 Size:    12
//   float3 InputValue_id305;           // Offset:  176 Size:    12
//   uint InputValue_id326;             // Offset:  188 Size:     4
//   float InputValue_id347;            // Offset:  192 Size:     4
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
//   int3 VoxelCounts_id109;            // Offset:   84 Size:    12 [unused]
//   int3 PlacementCounts_id110;        // Offset:   96 Size:    12 [unused]
//   float2 SamplerOffset_id111;        // Offset:  112 Size:     8 [unused]
//   float2 SamplerScale_id112;         // Offset:  120 Size:     8 [unused]
//      = 0x3f800000 0x3f800000 
//   uint PlacementLevelCount_id113;    // Offset:  128 Size:     4 [unused]
//      = 0x00100000 
//   int3 VoxelCounts_id201;            // Offset:  132 Size:    12
//   int3 PlacementCounts_id202;        // Offset:  144 Size:    12 [unused]
//   int Channel_id203;                 // Offset:  156 Size:     4 [unused]
//   float Blink_id204;                 // Offset:  160 Size:     4 [unused]
//   float2 SamplerOffset_id205;        // Offset:  164 Size:     8 [unused]
//   float2 SamplerScale_id206;         // Offset:  176 Size:     8 [unused]
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
// Resource bind info for VoxelVolume_id108
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for VoxelVolume_id200
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
// DynamicSampler_id128              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id108                 texture  struct         r/o             t2      1 
// VoxelVolume_id200                 texture  struct         r/o             t3      1 
// DynamicTexture_id127              texture  float4          2d             t4      1 
// DynamicTexture_id240              texture  float4          2d             t5      1 
// DynamicBuffer_id333               texture  float4         buf             t6      1 
// DynamicTexture_id340              texture  float4          2d             t7      1 
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
dcl_constantbuffer CB1[13], immediateIndexed
dcl_constantbuffer CB2[9], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_structured t0, 12
dcl_resource_structured t1, 48
dcl_resource_structured t2, 16
dcl_resource_structured t3, 48
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
#line 1473 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_7effaa695e5bc1a58c0b4453a6a23379.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1474
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1485
  if_nz cb2[5].x

#line 1495
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

#line 1446
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 742
  mad r11.xyz, cb1[9].wwww, cb1[10].xyzx, cb1[11].xyzx  // r11.x <- <Compute_id538 return value>.x; r11.y <- <Compute_id538 return value>.y; r11.z <- <Compute_id538 return value>.z

#line 1449
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 738
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t5.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id426 return value>.x; r12.y <- <Compute_id426 return value>.y; r12.z <- <Compute_id426 return value>.z

#line 490
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id60 return value>

#line 717
  mov r12.yz, cb1[6].wwww

#line 709
  mad r12.xyz, r12.xyzx, cb1[7].xyzx, cb1[8].xyzx  // r12.x <- <Compute_id475 return value>.x; r12.y <- <Compute_id475 return value>.y; r12.z <- <Compute_id475 return value>.z

#line 701
  add r12.xyz, r12.xyzx, cb1[9].xyzx  // r12.x <- <Compute_id483 return value>.x; r12.y <- <Compute_id483 return value>.y; r12.z <- <Compute_id483 return value>.z

#line 1450
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 696
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t2.xyzx  // r12.x <- m.x; r12.y <- m.y; r12.z <- m.z

#line 446
  dp3 r0.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id49 return value>

#line 685
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xzxx, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id192 return value>.x; r12.y <- <Compute_id192 return value>.y; r12.z <- <Compute_id192 return value>.z

#line 430
  dp3 r1.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id53 return value>

#line 676
  mul r1.w, r0.w, r1.w  // r1.w <- <Compute_id221 return value>

#line 648
  mad r12.xyz, r1.wwww, cb1[0].xyzx, cb1[1].xyzx  // r12.x <- <Compute_id257 return value>.x; r12.y <- <Compute_id257 return value>.y; r12.z <- <Compute_id257 return value>.z

#line 640
  add r12.xyz, r12.xyzx, cb1[2].xyzx  // r12.x <- <Compute_id265 return value>.x; r12.y <- <Compute_id265 return value>.y; r12.z <- <Compute_id265 return value>.z

#line 632
  mul r13.xyz, r12.xyzx, cb1[3].xyzx  // r13.x <- <Compute_id273 return value>.x; r13.y <- <Compute_id273 return value>.y; r13.z <- <Compute_id273 return value>.z

#line 1451
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[3].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 356
  itof r12.xyz, cb2[8].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 274
  imul null, r1.w, cb2[8].z, cb2[8].y
  imad r2.w, r12.y, cb2[8].y, r12.x
  imad r1.w, r12.z, r1.w, r2.w  // r1.w <- <CalculateVoxelVolumeIndex_id55 return value>

#line 278
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r1.w, l(0), t3.xyzw  // r12.x <- <GetVoxel_id35 return value>.Empty; r12.y <- <GetVoxel_id35 return value>.StartTime; r12.z <- <GetVoxel_id35 return value>.Note; r12.w <- <GetVoxel_id35 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r13.xyzw, r1.w, l(16), t3.xyzw  // r13.x <- <GetVoxel_id35 return value>.Length; r13.y <- <GetVoxel_id35 return value>.Channel; r13.z <- <GetVoxel_id35 return value>.Constant; r13.w <- <GetVoxel_id35 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r1.w, l(32), t3.wxyz  // r14.y <- <GetVoxel_id35 return value>.TrackId; r14.z <- <GetVoxel_id35 return value>.ModWheel; r14.w <- <GetVoxel_id35 return value>.PitchBend; r14.x <- <GetVoxel_id35 return value>.Random

#line 318
  switch cb1[4].x

#line 321
    case l(0)

#line 322
    mov r14.x, r12.x  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 323
    case l(1)

#line 324
    mov r14.x, r12.y  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 325
    case l(2)

#line 326
    mov r14.x, r12.z  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 327
    case l(3)

#line 328
    mov r14.x, r12.w  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 329
    case l(4)

#line 330
    mov r14.x, r13.x  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 331
    case l(5)

#line 332
    mov r14.x, r13.y  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 333
    case l(6)

#line 334
    mov r14.x, r13.z  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 335
    case l(7)

#line 336
    mov r14.x, r13.w  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 337
    case l(8)

#line 338
    mov r14.x, r14.y  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 339
    case l(9)

#line 340
    mov r14.x, r14.z  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 341
    case l(10)

#line 342
    mov r14.x, r14.w  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 343
    case l(11)

#line 344
    break 

#line 345
    default 

#line 346
    mov r14.x, l(0)  // r14.x <- <SelectMidiValue_id56 return value>
    break 

#line 347
  endswitch   // r14.x <- <SelectMidiValue_id56 return value>

#line 611
  mul r12.w, r14.x, cb1[4].y  // r12.w <- <Compute_id371 return value>

#line 599
  mov r12.yz, cb1[3].wwww

#line 591
  mad r12.xyz, r12.yzwy, cb1[5].xyzx, cb1[6].xyzx  // r12.x <- <Compute_id395 return value>.x; r12.y <- <Compute_id395 return value>.y; r12.z <- <Compute_id395 return value>.z

#line 1452
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1454
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 800
  utof r1.w, cb1[11].w
  mul r1.w, r0.w, r1.w
  round_ne r1.w, r1.w
  ftou r1.w, r1.w  // r1.w <- <Compute_id107 return value>

#line 794
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r1.wwww, t6.xyzw  // r12.x <- <Compute_id111 return value>.x; r12.y <- <Compute_id111 return value>.y; r12.z <- <Compute_id111 return value>.z

#line 563
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id556 return value>.x; r14.y <- <SRgbToLinear_id556 return value>.y; r14.z <- <SRgbToLinear_id556 return value>.z

#line 786
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t7.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id121 return value>.x; r6.z <- <Compute_id121 return value>.y; r6.w <- <Compute_id121 return value>.z

#line 778
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[12].xxxx, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id131 return value>.x; r6.z <- <Compute_id131 return value>.y; r6.w <- <Compute_id131 return value>.z

#line 1461
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1432
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1336
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 1339
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1338
  mad r1.w, r13.x, r10.y, -r12.z  // r1.w <- p.x

#line 1339
  mad r2.w, r13.x, r10.z, r12.w  // r2.w <- p.y

#line 1326
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1328
  mul r3.w, r10.w, r10.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 1329
  mul r3.w, r10.w, r12.x
  mad r2.w, r10.x, r2.w, r3.w  // r2.w <- p.z

#line 1316
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1318
  mul r3.w, r2.w, r10.x
  mad r13.x, r12.x, r1.w, r3.w  // r13.x <- p.x

#line 1319
  mul r2.w, r2.w, r12.x
  mad r13.z, -r10.x, r1.w, r2.w  // r13.z <- p.z

#line 1432
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1336
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1339
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1338
  mad r1.w, r12.x, r11.x, -r5.z

#line 1339
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 1326
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1328
  mul r3.w, r11.z, r5.x
  mad r12.y, r10.x, r2.w, -r3.w  // r12.y <- p.y

#line 1329
  mul r3.w, r11.z, r10.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 1316
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1318
  mul r3.w, r2.w, r5.x
  mad r12.x, r10.x, r1.w, r3.w  // r12.x <- p.x

#line 1319
  mul r2.w, r2.w, r10.x
  mad r12.z, -r5.x, r1.w, r2.w  // r12.z <- p.z

#line 1462
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1497
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1498
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1499
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1500
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1501
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1505
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1506
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1521
ret 
// Approximately 180 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id341 = 0;
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
    float Input_13_id289;
    float3 SMVector3Join_ShaderFXResult_14_id292;
    float3 Input_15_id297;
    float3 Multiply_16_id300;
    float3 Input_17_id304;
    float3 Plus_18_id307;
    float4 TextureValue_20_id239;
    float SMCalcLuminance_ShaderFXResult_22_id246;
    float Input_23_id257;
    float3 SMVector3Join_ShaderFXResult_24_id260;
    float3 Input_25_id265;
    float3 Multiply_26_id268;
    float3 Input_27_id272;
    float3 Plus_28_id275;
    float3 Input_29_id279;
    float3 Plus_30_id282;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id107;
    float SMCalcLuminance_ShaderFXResult_2_id115;
    float4 TextureValue_32_id126;
    float SMCalcLuminance_ShaderFXResult_34_id134;
    float Multiply_35_id145;
    float Multiply_36_id149;
    float Multiply_37_id153;
    float3 SMVector3Join_ShaderFXResult_38_id157;
    float3 Input_39_id162;
    float3 Multiply_40_id165;
    float3 Input_41_id169;
    float3 Plus_42_id172;
    float3 Input_43_id176;
    float3 Plus_44_id179;
    float3 Input_45_id183;
    float3 Multiply_46_id186;
    float Input_47_id193;
    uint Input_48_id196;
    float SMMidiSelectValue_ShaderFXResult_49_id199;
    float Input_50_id210;
    float Multiply_51_id213;
    float3 SMVector3Join_ShaderFXResult_52_id217;
    float3 Input_53_id222;
    float3 Multiply_54_id225;
    float3 Input_55_id229;
    float3 Plus_56_id232;
    uint Input_3_id325;
    uint SMValueToIndex_ShaderFXResult_4_id328;
    float4 BufferItem_5_id332;
    float4 SRgbToLinear_ShaderFXResult_6_id336;
    float4 TextureValue_9_id339;
    float Input_11_id346;
    float4 Lerp_12_id349;
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
    float3 InputValue_id163;
    float3 InputValue_id170;
    float3 InputValue_id177;
    float3 InputValue_id184;
    float InputValue_id194;
    uint InputValue_id197;
    float InputValue_id211;
    float3 InputValue_id223;
    float3 InputValue_id230;
    float InputValue_id258;
    float3 InputValue_id266;
    float3 InputValue_id273;
    float3 InputValue_id280;
    float InputValue_id290;
    float3 InputValue_id298;
    float3 InputValue_id305;
    uint InputValue_id326;
    float InputValue_id347;
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
    int3 VoxelCounts_id109;
    int3 PlacementCounts_id110;
    float2 SamplerOffset_id111;
    float2 SamplerScale_id112 = float2(1, 1);
    uint PlacementLevelCount_id113 = 1048576;
    int3 VoxelCounts_id201;
    int3 PlacementCounts_id202;
    int Channel_id203;
    float Blink_id204;
    float2 SamplerOffset_id205;
    float2 SamplerScale_id206 = float2(1, 1);
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
StructuredBuffer<float4> VoxelVolume_id108;
StructuredBuffer<SMMidiNoteData> VoxelVolume_id200;
Texture2D DynamicTexture_id127;
SamplerState DynamicSampler_id128;
Texture2D DynamicTexture_id240;
Buffer<float4> DynamicBuffer_id333;
Texture2D DynamicTexture_id340;
uint CalculateVoxelVolumeIndex_id55(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id201.x, VoxelCounts_id201.x * VoxelCounts_id201.y));
}
SMMidiNoteData GetVoxel_id35(uint3 coordinate)
{
    return VoxelVolume_id200[CalculateVoxelVolumeIndex_id55(coordinate)];
}
float3 Compute_id392(inout CS_STREAMS streams)
{
    return streams.Input_55_id229;
}
float3 Compute_id390(inout CS_STREAMS streams)
{
    return streams.Multiply_54_id225;
}
float3 Compute_id384(inout CS_STREAMS streams)
{
    return streams.Input_53_id222;
}
float3 Compute_id382(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_52_id217;
}
float Compute_id376(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id213;
}
float Compute_id374(inout CS_STREAMS streams)
{
    return streams.Input_47_id193;
}
float Compute_id372(inout CS_STREAMS streams)
{
    return streams.Input_47_id193;
}
float Compute_id368(inout CS_STREAMS streams)
{
    return streams.Input_50_id210;
}
float Compute_id366(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_49_id199;
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
uint Compute_id360(inout CS_STREAMS streams)
{
    return streams.Input_48_id196;
}
SMMidiNoteData Compute_id54(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id201;
    SMMidiNoteData m = GetVoxel_id35(uvw);
    return m;
}
float3 Compute_id270(inout CS_STREAMS streams)
{
    return streams.Input_45_id183;
}
float3 Compute_id268(inout CS_STREAMS streams)
{
    return streams.Plus_44_id179;
}
float3 Compute_id262(inout CS_STREAMS streams)
{
    return streams.Input_43_id176;
}
float3 Compute_id260(inout CS_STREAMS streams)
{
    return streams.Plus_42_id172;
}
float3 Compute_id254(inout CS_STREAMS streams)
{
    return streams.Input_41_id169;
}
float3 Compute_id252(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id165;
}
float3 Compute_id246(inout CS_STREAMS streams)
{
    return streams.Input_39_id162;
}
float3 Compute_id244(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_38_id157;
}
float Compute_id238(inout CS_STREAMS streams)
{
    return streams.Multiply_37_id153;
}
float Compute_id236(inout CS_STREAMS streams)
{
    return streams.Multiply_36_id149;
}
float Compute_id234(inout CS_STREAMS streams)
{
    return streams.Multiply_35_id145;
}
float Compute_id230(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_34_id134;
}
float Compute_id228(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Compute_id224(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_34_id134;
}
float Compute_id222(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Compute_id218(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_34_id134;
}
float Compute_id216(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Luminance_id53(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id193(inout CS_STREAMS streams)
{
    return streams.TextureValue_32_id126;
}
float Compute_id187()
{
    return Value_id341;
}
float2 Compute_id189(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Luminance_id49(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id164(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float3 Compute_id480(inout CS_STREAMS streams)
{
    return streams.Input_29_id279;
}
float3 Compute_id478(inout CS_STREAMS streams)
{
    return streams.Plus_28_id275;
}
float3 Compute_id472(inout CS_STREAMS streams)
{
    return streams.Input_27_id272;
}
float3 Compute_id470(inout CS_STREAMS streams)
{
    return streams.Multiply_26_id268;
}
float3 Compute_id464(inout CS_STREAMS streams)
{
    return streams.Input_25_id265;
}
float3 Compute_id462(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_24_id260;
}
float Compute_id456(inout CS_STREAMS streams)
{
    return streams.Input_23_id257;
}
float Compute_id454(inout CS_STREAMS streams)
{
    return streams.Input_23_id257;
}
float Compute_id452(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id246;
}
float Luminance_id60(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id427(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id239;
}
float Compute_id421()
{
    return Value_id341;
}
float2 Compute_id423(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id535(inout CS_STREAMS streams)
{
    return streams.Input_17_id304;
}
float3 Compute_id533(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id300;
}
float3 Compute_id527(inout CS_STREAMS streams)
{
    return streams.Input_15_id297;
}
float3 Compute_id525(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id292;
}
float Compute_id519(inout CS_STREAMS streams)
{
    return streams.Input_13_id289;
}
float Compute_id517(inout CS_STREAMS streams)
{
    return streams.Input_13_id289;
}
float Compute_id515(inout CS_STREAMS streams)
{
    return streams.Input_13_id289;
}
float Luminance_id72(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id319(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float Compute_id128(inout CS_STREAMS streams)
{
    return streams.Input_11_id346;
}
float4 Compute_id126(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id339;
}
float4 Compute_id124(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id336;
}
float Compute_id116()
{
    return Value_id341;
}
float2 Compute_id118(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id556(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id112(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id332;
}
uint Compute_id108(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id328;
}
uint Compute_id102(inout CS_STREAMS streams)
{
    return streams.Input_3_id325;
}
float Compute_id104(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Luminance_id66(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id77(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float3 Compute_id395(inout CS_STREAMS streams)
{
    return Compute_id390(streams) + Compute_id392(streams);
}
float3 Compute_id388()
{
    return InputValue_id230;
}
float3 Compute_id387(inout CS_STREAMS streams)
{
    return Compute_id382(streams) * Compute_id384(streams);
}
float3 Compute_id380()
{
    return InputValue_id223;
}
float3 Compute_id379(inout CS_STREAMS streams)
{
    return float3(Compute_id372(streams), Compute_id374(streams), Compute_id376(streams));
}
float Compute_id371(inout CS_STREAMS streams)
{
    return Compute_id366(streams) * Compute_id368(streams);
}
float Compute_id364()
{
    return InputValue_id211;
}
float Compute_id363(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id54(streams);
    return SelectMidiValue_id56(m, Compute_id360(streams));
}
uint Compute_id353()
{
    return InputValue_id197;
}
float Compute_id351()
{
    return InputValue_id194;
}
float3 Compute_id273(inout CS_STREAMS streams)
{
    return Compute_id268(streams) * Compute_id270(streams);
}
float3 Compute_id266()
{
    return InputValue_id184;
}
float3 Compute_id265(inout CS_STREAMS streams)
{
    return Compute_id260(streams) + Compute_id262(streams);
}
float3 Compute_id258()
{
    return InputValue_id177;
}
float3 Compute_id257(inout CS_STREAMS streams)
{
    return Compute_id252(streams) + Compute_id254(streams);
}
float3 Compute_id250()
{
    return InputValue_id170;
}
float3 Compute_id249(inout CS_STREAMS streams)
{
    return Compute_id244(streams) * Compute_id246(streams);
}
float3 Compute_id242()
{
    return InputValue_id163;
}
float3 Compute_id241(inout CS_STREAMS streams)
{
    return float3(Compute_id234(streams), Compute_id236(streams), Compute_id238(streams));
}
float Compute_id233(inout CS_STREAMS streams)
{
    return Compute_id228(streams) * Compute_id230(streams);
}
float Compute_id227(inout CS_STREAMS streams)
{
    return Compute_id222(streams) * Compute_id224(streams);
}
float Compute_id221(inout CS_STREAMS streams)
{
    return Compute_id216(streams) * Compute_id218(streams);
}
float Compute_id215(inout CS_STREAMS streams)
{
    float4 color = Compute_id193(streams);
    return Luminance_id53(color.rgb);
}
float4 Compute_id192(inout CS_STREAMS streams)
{
    return DynamicTexture_id127.SampleLevel(DynamicSampler_id128, Compute_id189(streams), Compute_id187());
}
float Compute_id186(inout CS_STREAMS streams)
{
    float4 color = Compute_id164(streams);
    return Luminance_id49(color.rgb);
}
float4 Compute_id44(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
float3 Compute_id483(inout CS_STREAMS streams)
{
    return Compute_id478(streams) + Compute_id480(streams);
}
float3 Compute_id476()
{
    return InputValue_id280;
}
float3 Compute_id475(inout CS_STREAMS streams)
{
    return Compute_id470(streams) + Compute_id472(streams);
}
float3 Compute_id468()
{
    return InputValue_id273;
}
float3 Compute_id467(inout CS_STREAMS streams)
{
    return Compute_id462(streams) * Compute_id464(streams);
}
float3 Compute_id460()
{
    return InputValue_id266;
}
float3 Compute_id459(inout CS_STREAMS streams)
{
    return float3(Compute_id452(streams), Compute_id454(streams), Compute_id456(streams));
}
float Compute_id450()
{
    return InputValue_id258;
}
float Compute_id449(inout CS_STREAMS streams)
{
    float4 color = Compute_id427(streams);
    return Luminance_id60(color.rgb);
}
float4 Compute_id426(inout CS_STREAMS streams)
{
    return DynamicTexture_id240.SampleLevel(DynamicSampler_id128, Compute_id423(streams), Compute_id421());
}
float3 Compute_id538(inout CS_STREAMS streams)
{
    return Compute_id533(streams) + Compute_id535(streams);
}
float3 Compute_id531()
{
    return InputValue_id305;
}
float3 Compute_id530(inout CS_STREAMS streams)
{
    return Compute_id525(streams) * Compute_id527(streams);
}
float3 Compute_id523()
{
    return InputValue_id298;
}
float3 Compute_id522(inout CS_STREAMS streams)
{
    return float3(Compute_id515(streams), Compute_id517(streams), Compute_id519(streams));
}
float Compute_id513()
{
    return InputValue_id290;
}
float Compute_id341(inout CS_STREAMS streams)
{
    float4 color = Compute_id319(streams);
    return Luminance_id72(color.rgb);
}
float4 Compute_id67(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
float4 Compute_id131(inout CS_STREAMS streams)
{
    return lerp(Compute_id124(streams), Compute_id126(streams), Compute_id128(streams));
}
float Compute_id122()
{
    return InputValue_id347;
}
float4 Compute_id121(inout CS_STREAMS streams)
{
    return DynamicTexture_id340.SampleLevel(DynamicSampler_id128, Compute_id118(streams), Compute_id116());
}
float4 Compute_id115(inout CS_STREAMS streams)
{
    return SRgbToLinear_id556(Compute_id112(streams));
}
float4 Compute_id111(inout CS_STREAMS streams)
{
    return DynamicBuffer_id333[Compute_id108(streams)];
}
uint Compute_id107(inout CS_STREAMS streams)
{
    float v = Compute_id104(streams);
    uint c = Compute_id102(streams);
    return round(v * c);
}
uint Compute_id100()
{
    return InputValue_id326;
}
float Compute_id99(inout CS_STREAMS streams)
{
    float4 color = Compute_id77(streams);
    return Luminance_id66(color.rgb);
}
float4 Compute_id61(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
void Compute_id415(inout CS_STREAMS streams)
{
    streams.Plus_56_id232 = Compute_id395(streams);
}
void Compute_id413(inout CS_STREAMS streams)
{
    streams.Input_55_id229 = Compute_id388();
}
void Compute_id411(inout CS_STREAMS streams)
{
    streams.Multiply_54_id225 = Compute_id387(streams);
}
void Compute_id409(inout CS_STREAMS streams)
{
    streams.Input_53_id222 = Compute_id380();
}
void Compute_id407(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_52_id217 = Compute_id379(streams);
}
void Compute_id405(inout CS_STREAMS streams)
{
    streams.Multiply_51_id213 = Compute_id371(streams);
}
void Compute_id403(inout CS_STREAMS streams)
{
    streams.Input_50_id210 = Compute_id364();
}
void Compute_id401(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_49_id199 = Compute_id363(streams);
}
void Compute_id399(inout CS_STREAMS streams)
{
    streams.Input_48_id196 = Compute_id353();
}
void Compute_id397(inout CS_STREAMS streams)
{
    streams.Input_47_id193 = Compute_id351();
}
void Compute_id309(inout CS_STREAMS streams)
{
    streams.Multiply_46_id186 = Compute_id273(streams);
}
void Compute_id307(inout CS_STREAMS streams)
{
    streams.Input_45_id183 = Compute_id266();
}
void Compute_id305(inout CS_STREAMS streams)
{
    streams.Plus_44_id179 = Compute_id265(streams);
}
void Compute_id303(inout CS_STREAMS streams)
{
    streams.Input_43_id176 = Compute_id258();
}
void Compute_id301(inout CS_STREAMS streams)
{
    streams.Plus_42_id172 = Compute_id257(streams);
}
void Compute_id299(inout CS_STREAMS streams)
{
    streams.Input_41_id169 = Compute_id250();
}
void Compute_id297(inout CS_STREAMS streams)
{
    streams.Multiply_40_id165 = Compute_id249(streams);
}
void Compute_id295(inout CS_STREAMS streams)
{
    streams.Input_39_id162 = Compute_id242();
}
void Compute_id293(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_38_id157 = Compute_id241(streams);
}
void Compute_id291(inout CS_STREAMS streams)
{
    streams.Multiply_37_id153 = Compute_id233(streams);
}
void Compute_id289(inout CS_STREAMS streams)
{
    streams.Multiply_36_id149 = Compute_id227(streams);
}
void Compute_id287(inout CS_STREAMS streams)
{
    streams.Multiply_35_id145 = Compute_id221(streams);
}
void Compute_id285(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_34_id134 = Compute_id215(streams);
}
void Compute_id283(inout CS_STREAMS streams)
{
    streams.TextureValue_32_id126 = Compute_id192(streams);
}
void Compute_id281()
{
}
void Compute_id280()
{
}
void Compute_id279()
{
}
void Compute_id278()
{
}
void Compute_id277(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id186(streams);
}
void Compute_id275(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id44(streams);
}
void Compute_id507(inout CS_STREAMS streams)
{
    streams.Plus_30_id282 = Compute_id483(streams);
}
void Compute_id505(inout CS_STREAMS streams)
{
    streams.Input_29_id279 = Compute_id476();
}
void Compute_id503(inout CS_STREAMS streams)
{
    streams.Plus_28_id275 = Compute_id475(streams);
}
void Compute_id501(inout CS_STREAMS streams)
{
    streams.Input_27_id272 = Compute_id468();
}
void Compute_id499(inout CS_STREAMS streams)
{
    streams.Multiply_26_id268 = Compute_id467(streams);
}
void Compute_id497(inout CS_STREAMS streams)
{
    streams.Input_25_id265 = Compute_id460();
}
void Compute_id495(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_24_id260 = Compute_id459(streams);
}
void Compute_id493(inout CS_STREAMS streams)
{
    streams.Input_23_id257 = Compute_id450();
}
void Compute_id491(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id246 = Compute_id449(streams);
}
void Compute_id489(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id239 = Compute_id426(streams);
}
void Compute_id487()
{
}
void Compute_id486()
{
}
void Compute_id485()
{
}
void Compute_id484()
{
}
void Compute_id550(inout CS_STREAMS streams)
{
    streams.Plus_18_id307 = Compute_id538(streams);
}
void Compute_id548(inout CS_STREAMS streams)
{
    streams.Input_17_id304 = Compute_id531();
}
void Compute_id546(inout CS_STREAMS streams)
{
    streams.Multiply_16_id300 = Compute_id530(streams);
}
void Compute_id544(inout CS_STREAMS streams)
{
    streams.Input_15_id297 = Compute_id523();
}
void Compute_id542(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id292 = Compute_id522(streams);
}
void Compute_id540(inout CS_STREAMS streams)
{
    streams.Input_13_id289 = Compute_id513();
}
void Compute_id345(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id341(streams);
}
void Compute_id343(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id67(streams);
}
void Compute_id154(inout CS_STREAMS streams)
{
    streams.Lerp_12_id349 = Compute_id131(streams);
}
void Compute_id152(inout CS_STREAMS streams)
{
    streams.Input_11_id346 = Compute_id122();
}
void Compute_id150(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id339 = Compute_id121(streams);
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
void Compute_id145()
{
}
void Compute_id144(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id336 = Compute_id115(streams);
}
void Compute_id142(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id332 = Compute_id111(streams);
}
void Compute_id140(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id328 = Compute_id107(streams);
}
void Compute_id138(inout CS_STREAMS streams)
{
    streams.Input_3_id325 = Compute_id100();
}
void Compute_id136(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id99(streams);
}
void Compute_id134(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id61(streams);
}
void Compute_id132()
{
}
float3 Compute_id418(inout CS_STREAMS streams)
{
    return streams.Plus_56_id232;
}
void Compute_id417(inout CS_STREAMS streams)
{

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
float3 Compute_id312(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id186;
}
void Compute_id311(inout CS_STREAMS streams)
{

    {
        Compute_id275(streams);
    }

    {
        Compute_id277(streams);
    }

    {
        Compute_id278();
    }

    {
        Compute_id279();
    }

    {
        Compute_id280();
    }

    {
        Compute_id281();
    }

    {
        Compute_id283(streams);
    }

    {
        Compute_id285(streams);
    }

    {
        Compute_id287(streams);
    }

    {
        Compute_id289(streams);
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
}
float3 Compute_id510(inout CS_STREAMS streams)
{
    return streams.Plus_30_id282;
}
void Compute_id509(inout CS_STREAMS streams)
{

    {
        Compute_id484();
    }

    {
        Compute_id485();
    }

    {
        Compute_id486();
    }

    {
        Compute_id487();
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

    {
        Compute_id507(streams);
    }
}
float3 Compute_id553(inout CS_STREAMS streams)
{
    return streams.Plus_18_id307;
}
void Compute_id552(inout CS_STREAMS streams)
{

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

    {
        Compute_id550(streams);
    }
}
float Compute_id348(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
void Compute_id347(inout CS_STREAMS streams)
{

    {
        Compute_id343(streams);
    }

    {
        Compute_id345(streams);
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
float4 Compute_id157(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id349;
}
void Compute_id156(inout CS_STREAMS streams)
{

    {
        Compute_id132();
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
        Compute_id144(streams);
    }

    {
        Compute_id145();
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
        Compute_id150(streams);
    }

    {
        Compute_id152(streams);
    }

    {
        Compute_id154(streams);
    }
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id417(streams);
    return Compute_id418(streams);
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id311(streams);
    return Compute_id312(streams);
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id509(streams);
    return Compute_id510(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id552(streams);
    return Compute_id553(streams);
}
float Compute_id43(inout CS_STREAMS streams)
{
    Compute_id347(streams);
    return Compute_id348(streams);
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
    Compute_id156(streams);
    return Compute_id157(streams);
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

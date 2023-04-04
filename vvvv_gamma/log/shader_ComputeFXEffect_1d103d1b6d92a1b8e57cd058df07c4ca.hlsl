/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat<Input_32> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_33> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_32>}, {Y = GetVarFloat<Input_32>}, {Z = GetVarFloat<Input_32>}]}], mixin AssignVarFloat3<Input_34> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_35> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_33>}, {Right = GetVarFloat3<Input_34>}]}], mixin AssignVarFloat3<Plus_36> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_35>}]}], mixin AssignVarFloat3<Input_37> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_38> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_37>}, {Value = GetVarFloat3<Plus_36>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Multiply_40> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMQuantize_ShaderFXResult_38>}, {Right = GetVarFloat3<Input_39>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_41> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_42,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_43> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_41>}]}], mixin AssignVarFloat<Input_44> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<SMThreshold_ShaderFXResult_45> [{Value = mixin SMThreshold_ShaderFX [{Threshold = GetVarFloat<Input_44>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_43>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_46> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMThreshold_ShaderFXResult_45>}, {Y = GetVarFloat<SMThreshold_ShaderFXResult_45>}, {Z = GetVarFloat<SMThreshold_ShaderFXResult_45>}]}], mixin AssignVarFloat3<Multiply_47> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Multiply_40>}, {Right = GetVarFloat3<SMVector3Join_ShaderFXResult_46>}]}]]}]}, {Value = GetVarFloat3<Multiply_47>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt.i2,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}]]}]}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_48> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_49> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_48>}, {Y = GetVarFloat<Input_48>}, {Z = GetVarFloat<Input_48>}]}], mixin AssignVarFloat3<Input_50> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i11,PerUpdate>}], mixin AssignVarFloat3<Multiply_51> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_49>}, {Right = GetVarFloat3<Input_50>}]}], mixin AssignVarFloat3<Input_52> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i12,PerUpdate>}], mixin AssignVarFloat3<Plus_53> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_51>}, {Right = GetVarFloat3<Input_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i13,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_55> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_54>}, {Value = GetVarFloat3<Plus_53>}]}]]}]}, {Value = GetVarFloat3<SMQuantize_ShaderFXResult_55>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_21> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_22> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_21>}, {Y = GetVarFloat<Input_21>}, {Z = GetVarFloat<Input_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_28> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_27>}, {Value = GetVarFloat3<Plus_26>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<SMQuantize_ShaderFXResult_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}], mixin AssignVarFloat3<Input_19> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_20> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_19>}, {Value = GetVarFloat3<Plus_18>}]}]]}]}, {Value = GetVarFloat3<SMQuantize_ShaderFXResult_20>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt.i2,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}]]}]}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}], mixin AssignVarFloat3<Input_19> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_20> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_19>}, {Value = GetVarFloat3<Plus_18>}]}]]}]}, {Value = GetVarFloat3<SMQuantize_ShaderFXResult_20>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_21> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_22> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_21>}, {Y = GetVarFloat<Input_21>}, {Z = GetVarFloat<Input_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_24>}, {Right = GetVarFloat3<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_28> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_27>}, {Value = GetVarFloat3<Plus_26>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<SMQuantize_ShaderFXResult_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat<Input_32> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_33> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_32>}, {Y = GetVarFloat<Input_32>}, {Z = GetVarFloat<Input_32>}]}], mixin AssignVarFloat3<Input_34> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_35> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_33>}, {Right = GetVarFloat3<Input_34>}]}], mixin AssignVarFloat3<Plus_36> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_31>}, {Right = GetVarFloat3<Multiply_35>}]}], mixin AssignVarFloat3<Input_37> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_38> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_37>}, {Value = GetVarFloat3<Plus_36>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Multiply_40> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMQuantize_ShaderFXResult_38>}, {Right = GetVarFloat3<Input_39>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_41> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_42,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_43> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_41>}]}], mixin AssignVarFloat<Input_44> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<SMThreshold_ShaderFXResult_45> [{Value = mixin SMThreshold_ShaderFX [{Threshold = GetVarFloat<Input_44>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_43>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_46> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMThreshold_ShaderFXResult_45>}, {Y = GetVarFloat<SMThreshold_ShaderFXResult_45>}, {Z = GetVarFloat<SMThreshold_ShaderFXResult_45>}]}], mixin AssignVarFloat3<Multiply_47> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Multiply_40>}, {Right = GetVarFloat3<SMVector3Join_ShaderFXResult_46>}]}]]}]}, {Value = GetVarFloat3<Multiply_47>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_48> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_49> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_48>}, {Y = GetVarFloat<Input_48>}, {Z = GetVarFloat<Input_48>}]}], mixin AssignVarFloat3<Input_50> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i11,PerUpdate>}], mixin AssignVarFloat3<Multiply_51> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_49>}, {Right = GetVarFloat3<Input_50>}]}], mixin AssignVarFloat3<Input_52> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i12,PerUpdate>}], mixin AssignVarFloat3<Plus_53> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_51>}, {Right = GetVarFloat3<Input_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i13,PerUpdate>}], mixin AssignVarFloat3<SMQuantize_ShaderFXResult_55> [{Value = mixin SMQuantize_ShaderFX [{Stepsize = GetVarFloat3<Input_54>}, {Value = GetVarFloat3<Plus_53>}]}]]}]}, {Value = GetVarFloat3<SMQuantize_ShaderFXResult_55>}]
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
cbuffer PerUpdate [Size: 240]
@C    InputValue_id108 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id111 => ShaderFX.InputValueFloat.i3
@C    InputValue_id119 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id130 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id137 => ShaderFX.InputValueFloat3.i10
@C    InputValue_id163 => ShaderFX.InputValueFloat.i4
@C    InputValue_id182 => ShaderFX.InputValueFloat.i5
@C    InputValue_id190 => ShaderFX.InputValueFloat3.i11
@C    InputValue_id197 => ShaderFX.InputValueFloat3.i12
@C    InputValue_id204 => ShaderFX.InputValueFloat3.i13
@C    InputValue_id214 => ShaderFX.InputValueFloat.i2
@C    InputValue_id222 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id229 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id236 => ShaderFX.InputValueFloat3.i5
@C    InputValue_id243 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id253 => ShaderFX.InputValueFloat.i1
@C    InputValue_id261 => ShaderFX.InputValueFloat3
@C    InputValue_id268 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id275 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id285 => ShaderFX.InputValueUInt
@C    InputValue_id299 => ShaderFX.InputValueUInt.i1
@C    InputValue_id319 => ShaderFX.InputValueFloat
@C    InputValue_id329 => ShaderFX.InputValueUInt.i2
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
@C    VoxelCounts_id289 => SMMidiBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id290 => SMMidiBufferSelector_ShaderFX.PlacementCounts
@C    Channel_id291 => SMMidiBufferSelector_ShaderFX.Channel
@C    Blink_id292 => SMMidiBufferSelector_ShaderFX.Blink
@C    SamplerOffset_id293 => SMMidiBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id294 => SMMidiBufferSelector_ShaderFX.SamplerScale
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id145 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id288 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    DynamicTexture_id144 => ObjectTexture_fx7 [Stage: Compute, Slot: (3-3)]
@R    DynamicBuffer_id306 => ObjectBuffer_fx0 [Stage: Compute, Slot: (4-4)]
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
@S    SMQuantize_ShaderFX => 6f802e18828f3bca92ce15a0906e3ec0
@S    SMCalcLuminance_ShaderFX => 11106821d0f843c804b28a35bba98d51
@S    SMThreshold_ShaderFX => ff72b4c4456d093fba78cdbf6646caac
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
***************************
*****     Stages      *****
***************************
@G    Compute => 7cac0d7b260f656ca70b5f392ef98115
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
//   float3 InputValue_id137;           // Offset:   48 Size:    12
//   float InputValue_id163;            // Offset:   60 Size:     4
//   float InputValue_id182;            // Offset:   64 Size:     4
//   float3 InputValue_id190;           // Offset:   68 Size:    12
//   float3 InputValue_id197;           // Offset:   80 Size:    12
//   float3 InputValue_id204;           // Offset:   96 Size:    12
//   float InputValue_id214;            // Offset:  108 Size:     4
//   float3 InputValue_id222;           // Offset:  112 Size:    12
//   float3 InputValue_id229;           // Offset:  128 Size:    12
//   float3 InputValue_id236;           // Offset:  144 Size:    12
//   float3 InputValue_id243;           // Offset:  160 Size:    12
//   float InputValue_id253;            // Offset:  172 Size:     4
//   float3 InputValue_id261;           // Offset:  176 Size:    12
//   float3 InputValue_id268;           // Offset:  192 Size:    12
//   float3 InputValue_id275;           // Offset:  208 Size:    12
//   uint InputValue_id285;             // Offset:  220 Size:     4
//   uint InputValue_id299;             // Offset:  224 Size:     4
//   float InputValue_id319;            // Offset:  228 Size:     4
//   uint InputValue_id329;             // Offset:  232 Size:     4
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
//   int3 VoxelCounts_id289;            // Offset:   84 Size:    12
//   int3 PlacementCounts_id290;        // Offset:   96 Size:    12 [unused]
//   int Channel_id291;                 // Offset:  108 Size:     4 [unused]
//   float Blink_id292;                 // Offset:  112 Size:     4 [unused]
//   float2 SamplerOffset_id293;        // Offset:  116 Size:     8 [unused]
//   float2 SamplerScale_id294;         // Offset:  128 Size:     8 [unused]
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
// Resource bind info for VoxelVolume_id288
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
// DynamicSampler_id145              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id288                 texture  struct         r/o             t2      1 
// DynamicTexture_id144              texture  float4          2d             t3      1 
// DynamicBuffer_id306               texture  float4         buf             t4      1 
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
dcl_constantbuffer CB1[15], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_structured t0, 12
dcl_resource_structured t1, 48
dcl_resource_structured t2, 48
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
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
#line 1466 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_1d103d1b6d92a1b8e57cd058df07c4ca.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1467
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1478
  if_nz cb2[5].x

#line 1488
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

#line 1439
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 769
  mad r11.xyz, cb1[10].wwww, cb1[11].xyzx, cb1[12].xyzx  // r11.x <- <Compute_id426 return value>.x; r11.y <- <Compute_id426 return value>.y; r11.z <- <Compute_id426 return value>.z

#line 761
  ne r12.xyz, cb1[13].xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  div r13.xyz, r11.xyzx, cb1[13].xyzx
  round_ne r13.xyz, r13.xyzx
  mul r13.xyz, r13.xyzx, cb1[13].xyzx
  movc r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- <Compute_id434 return value>.x; r11.y <- <Compute_id434 return value>.y; r11.z <- <Compute_id434 return value>.z

#line 1442
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 735
  mad r12.xyz, cb1[6].wwww, cb1[7].xyzx, cb1[8].xyzx  // r12.x <- <Compute_id359 return value>.x; r12.y <- <Compute_id359 return value>.y; r12.z <- <Compute_id359 return value>.z

#line 727
  ne r13.xyz, cb1[9].xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  div r14.xyz, r12.xyzx, cb1[9].xyzx
  round_ne r14.xyz, r14.xyzx
  mul r14.xyz, r14.xyzx, cb1[9].xyzx
  movc r12.xyz, r13.xyzx, r14.xyzx, r12.xyzx  // r12.x <- <Compute_id367 return value>.x; r12.y <- <Compute_id367 return value>.y; r12.z <- <Compute_id367 return value>.z

#line 717
  add r12.xyz, r12.xyzx, cb1[10].xyzx  // r12.x <- <Compute_id375 return value>.x; r12.y <- <Compute_id375 return value>.y; r12.z <- <Compute_id375 return value>.z

#line 1443
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 693
  mad r12.xyz, cb1[0].wwww, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id150 return value>.x; r12.y <- <Compute_id150 return value>.y; r12.z <- <Compute_id150 return value>.z

#line 685
  ne r13.xyz, cb1[2].xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  div r14.xyz, r12.xyzx, cb1[2].xyzx
  round_ne r14.xyz, r14.xyzx
  mul r14.xyz, r14.xyzx, cb1[2].xyzx
  movc r12.xyz, r13.xyzx, r14.xyzx, r12.xyzx  // r12.x <- <Compute_id158 return value>.x; r12.y <- <Compute_id158 return value>.y; r12.z <- <Compute_id158 return value>.z

#line 675
  mul r12.xyz, r12.xyzx, cb1[3].xyzx  // r12.x <- <Compute_id166 return value>.x; r12.y <- <Compute_id166 return value>.y; r12.z <- <Compute_id166 return value>.z

#line 671
  sample_l_indexable(texture2d)(float,float,float,float) r13.xyz, r6.xyxx, t3.xyzw, s0, l(0.000000)  // r13.x <- <Compute_id172 return value>.x; r13.y <- <Compute_id172 return value>.y; r13.z <- <Compute_id172 return value>.z

#line 345
  dp3 r0.w, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id47 return value>

#line 658
  ge r0.w, r0.w, cb1[3].w
  and r0.w, r0.w, l(0x3f800000)  // r0.w <- <Compute_id203 return value>

#line 648
  mul r14.xyz, r0.wwww, r12.xyzx  // r14.x <- <Compute_id217 return value>.x; r14.y <- <Compute_id217 return value>.y; r14.z <- <Compute_id217 return value>.z

#line 1444
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r15.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, r0.wwww, r9.yzwy
  mad r9.xyz, r15.xyzx, r9.xyzx, r14.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 624
  mad r12.xyz, cb1[4].xxxx, cb1[4].yzwy, cb1[5].xyzx  // r12.x <- <Compute_id304 return value>.x; r12.y <- <Compute_id304 return value>.y; r12.z <- <Compute_id304 return value>.z

#line 616
  ne r14.xyz, cb1[6].xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  div r15.xyz, r12.xyzx, cb1[6].xyzx
  round_ne r15.xyz, r15.xyzx
  mul r15.xyz, r15.xyzx, cb1[6].xyzx
  movc r12.xyz, r14.xyzx, r15.xyzx, r12.xyzx  // r12.x <- <Compute_id312 return value>.x; r12.y <- <Compute_id312 return value>.y; r12.z <- <Compute_id312 return value>.z

#line 1445
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r14.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1447
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 608
  itof r12.xyz, cb2[5].yzwy
  mul r6.yzw, r6.xxyz, r12.xxyz
  ftou r6.yzw, r6.yyzw  // r6.y <- uvw.x; r6.z <- uvw.y; r6.w <- uvw.z

#line 273
  imul null, r0.w, cb2[5].z, cb2[5].y
  imad r1.w, r6.z, cb2[5].y, r6.y
  imad r0.w, r6.w, r0.w, r1.w  // r0.w <- <CalculateVoxelVolumeIndex_id49 return value>

#line 277
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t2.xyzw  // r12.x <- <GetVoxel_id34 return value>.Empty; r12.y <- <GetVoxel_id34 return value>.StartTime; r12.z <- <GetVoxel_id34 return value>.Note; r12.w <- <GetVoxel_id34 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(16), t2.xyzw  // r14.x <- <GetVoxel_id34 return value>.Length; r14.y <- <GetVoxel_id34 return value>.Channel; r14.z <- <GetVoxel_id34 return value>.Constant; r14.w <- <GetVoxel_id34 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r15.xyzw, r0.w, l(32), t2.wxyz  // r15.y <- <GetVoxel_id34 return value>.TrackId; r15.z <- <GetVoxel_id34 return value>.ModWheel; r15.w <- <GetVoxel_id34 return value>.PitchBend; r15.x <- <GetVoxel_id34 return value>.Random

#line 570
  switch cb1[13].w

#line 573
    case l(0)

#line 574
    mov r0.w, r12.x  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 575
    case l(1)

#line 576
    mov r0.w, r12.y  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 577
    case l(2)

#line 578
    mov r0.w, r12.z  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 579
    case l(3)

#line 580
    mov r0.w, r12.w  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 581
    case l(4)

#line 582
    mov r0.w, r14.x  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 583
    case l(5)

#line 584
    mov r0.w, r14.y  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 585
    case l(6)

#line 586
    mov r0.w, r14.z  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 587
    case l(7)

#line 588
    mov r0.w, r14.w  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 589
    case l(8)

#line 590
    mov r0.w, r15.y  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 591
    case l(9)

#line 592
    mov r0.w, r15.z  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 593
    case l(10)

#line 594
    mov r0.w, r15.w  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 595
    case l(11)

#line 596
    mov r0.w, r15.x  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 597
    default 

#line 598
    mov r0.w, l(0)  // r0.w <- <SelectMidiValue_id50 return value>
    break 

#line 599
  endswitch   // r0.w <- <SelectMidiValue_id50 return value>

#line 824
  utof r1.w, cb1[14].x
  mul r0.w, r0.w, r1.w
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id72 return value>

#line 818
  ld_indexable(buffer)(float,float,float,float) r6.yzw, r0.wwww, t4.wxyz  // r6.y <- <Compute_id76 return value>.x; r6.z <- <Compute_id76 return value>.y; r6.w <- <Compute_id76 return value>.z

#line 550
  mad r16.xyz, r6.yzwy, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r16.xyz, r6.yzwy, r16.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r17.xyz, r6.yzwy, r16.xyzx  // r17.x <- <SRgbToLinear_id456 return value>.x; r17.y <- <SRgbToLinear_id456 return value>.y; r17.z <- <SRgbToLinear_id456 return value>.z

#line 802
  mad r6.yzw, -r6.yyzw, r16.xxyz, r13.xxyz
  mad r6.yzw, cb1[14].yyyy, r6.yyzw, r17.xxyz  // r6.y <- <Compute_id96 return value>.x; r6.z <- <Compute_id96 return value>.y; r6.w <- <Compute_id96 return value>.z

#line 1454
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1425
  mul r13.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r13.x <- angle.x; r13.y <- angle.y; r13.z <- angle.z

#line 1329
  sincos r10.x, r16.x, r13.z  // r16.x <- c; r10.x <- s

#line 1332
  mul r13.zw, r10.zzzy, r10.xxxx

#line 1331
  mad r0.w, r16.x, r10.y, -r13.z  // r0.w <- p.x

#line 1332
  mad r1.w, r16.x, r10.z, r13.w  // r1.w <- p.y

#line 1319
  sincos r10.x, r13.x, r13.x  // r13.x <- c; r10.x <- s

#line 1321
  mul r2.w, r10.w, r10.x
  mad r16.y, r13.x, r1.w, -r2.w  // r16.y <- p.y

#line 1322
  mul r2.w, r10.w, r13.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1309
  sincos r10.x, r13.x, r13.y  // r13.x <- c; r10.x <- s

#line 1311
  mul r2.w, r1.w, r10.x
  mad r16.x, r13.x, r0.w, r2.w  // r16.x <- p.x

#line 1312
  mul r1.w, r1.w, r13.x
  mad r16.z, -r10.x, r0.w, r1.w  // r16.z <- p.z

#line 1425
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1329
  sincos r10.x, r13.x, r5.z  // r13.x <- c; r10.x <- s

#line 1332
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1331
  mad r0.w, r13.x, r11.x, -r5.z

#line 1332
  mad r1.w, r13.x, r11.y, r5.w  // r1.w <- p.y

#line 1319
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1321
  mul r2.w, r11.z, r5.x
  mad r13.y, r10.x, r1.w, -r2.w  // r13.y <- p.y

#line 1322
  mul r2.w, r11.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1309
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1311
  mul r2.w, r1.w, r5.x
  mad r13.x, r10.x, r0.w, r2.w  // r13.x <- p.x

#line 1312
  mul r1.w, r1.w, r10.x
  mad r13.z, -r5.x, r0.w, r1.w  // r13.z <- p.z

#line 1455
  add r5.xyz, r16.xyzx, r13.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 485
  switch cb1[14].z

#line 488
    case l(0)

#line 489
    mov r15.x, r12.x  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 490
    case l(1)

#line 491
    mov r15.x, r12.y  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 492
    case l(2)

#line 493
    mov r15.x, r12.z  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 494
    case l(3)

#line 495
    mov r15.x, r12.w  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 496
    case l(4)

#line 497
    mov r15.x, r14.x  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 498
    case l(5)

#line 499
    mov r15.x, r14.y  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 500
    case l(6)

#line 501
    mov r15.x, r14.z  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 502
    case l(7)

#line 503
    mov r15.x, r14.w  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 504
    case l(8)

#line 505
    mov r15.x, r15.y  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 506
    case l(9)

#line 507
    mov r15.x, r15.z  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 508
    case l(10)

#line 509
    mov r15.x, r15.w  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 510
    case l(11)

#line 511
    break 

#line 512
    default 

#line 513
    mov r15.x, l(0)  // r15.x <- <SelectMidiValue_id53 return value>
    break 

#line 514
  endswitch   // r15.x <- <SelectMidiValue_id53 return value>

#line 1490
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z

#line 1491
  add r1.xyz, r1.xyzx, -r8.xyzx
  mad r1.xyz, cb0[0].wwww, r1.xyzx, r8.xyzx  // r1.x <- POut.Rot.x; r1.y <- POut.Rot.y; r1.z <- POut.Rot.z

#line 1492
  add r2.xyz, r2.xyzx, -r9.xyzx
  mad r2.yzw, cb0[0].wwww, r2.xxyz, r9.xxyz  // r2.y <- POut.Size.x; r2.z <- POut.Size.y; r2.w <- POut.Size.z

#line 1493
  add r3.xyz, r3.xyzx, -r6.yzwy
  mad r3.xyz, cb0[1].xxxx, r3.xyzx, r6.yzwy  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1494
  utof r1.w, cb0[0].z
  mul r1.w, r1.w, r15.x
  iadd r4.x, cb0[0].z, l(-1)
  utof r4.x, r4.x
  max r1.w, r1.w, l(0.000000)
  min r3.w, r4.x, r1.w  // r3.w <- POut.Mesh

#line 1498
  movc r4.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r4.x <- POut.Vel.y; r4.y <- POut.Vel.z; r4.z <- POut.Vel.x

#line 1499
  mov r0.w, r4.z
  store_structured u1.xyzw, vThreadID.x, l(0), r0.xyzw
  mov r4.zw, r1.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r4.xyzw
  mov r2.x, r1.z
  store_structured u1.xyzw, vThreadID.x, l(32), r2.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r3.xyzw
endif 

#line 1514
ret 
// Approximately 234 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id313 = 0;
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
    float Input_13_id252;
    float3 SMVector3Join_ShaderFXResult_14_id255;
    float3 Input_15_id260;
    float3 Multiply_16_id263;
    float3 Input_17_id267;
    float3 Plus_18_id270;
    float3 Input_19_id274;
    float3 SMQuantize_ShaderFXResult_20_id277;
    float Input_21_id213;
    float3 SMVector3Join_ShaderFXResult_22_id216;
    float3 Input_23_id221;
    float3 Multiply_24_id224;
    float3 Input_25_id228;
    float3 Plus_26_id231;
    float3 Input_27_id235;
    float3 SMQuantize_ShaderFXResult_28_id238;
    float3 Input_29_id242;
    float3 Plus_30_id245;
    float3 Input_31_id107;
    float Input_32_id110;
    float3 SMVector3Join_ShaderFXResult_33_id113;
    float3 Input_34_id118;
    float3 Multiply_35_id121;
    float3 Plus_36_id125;
    float3 Input_37_id129;
    float3 SMQuantize_ShaderFXResult_38_id132;
    float3 Input_39_id136;
    float3 Multiply_40_id139;
    float4 TextureValue_41_id143;
    float SMCalcLuminance_ShaderFXResult_43_id151;
    float Input_44_id162;
    float SMThreshold_ShaderFXResult_45_id165;
    float3 SMVector3Join_ShaderFXResult_46_id169;
    float3 Multiply_47_id174;
    float Input_48_id181;
    float3 SMVector3Join_ShaderFXResult_49_id184;
    float3 Input_50_id189;
    float3 Multiply_51_id192;
    float3 Input_52_id196;
    float3 Plus_53_id199;
    float3 Input_54_id203;
    float3 SMQuantize_ShaderFXResult_55_id206;
    uint Input_1_id284;
    float SMMidiSelectValue_ShaderFXResult_2_id287;
    uint Input_3_id298;
    uint SMValueToIndex_ShaderFXResult_4_id301;
    float4 BufferItem_5_id305;
    float4 SRgbToLinear_ShaderFXResult_6_id309;
    float4 TextureValue_9_id312;
    float Input_11_id318;
    float4 Lerp_12_id321;
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
    float3 InputValue_id137;
    float InputValue_id163;
    float InputValue_id182;
    float3 InputValue_id190;
    float3 InputValue_id197;
    float3 InputValue_id204;
    float InputValue_id214;
    float3 InputValue_id222;
    float3 InputValue_id229;
    float3 InputValue_id236;
    float3 InputValue_id243;
    float InputValue_id253;
    float3 InputValue_id261;
    float3 InputValue_id268;
    float3 InputValue_id275;
    uint InputValue_id285;
    uint InputValue_id299;
    float InputValue_id319;
    uint InputValue_id329;
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
    int3 VoxelCounts_id289;
    int3 PlacementCounts_id290;
    int Channel_id291;
    float Blink_id292;
    float2 SamplerOffset_id293;
    float2 SamplerScale_id294 = float2(1, 1);
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
StructuredBuffer<SMMidiNoteData> VoxelVolume_id288;
Texture2D DynamicTexture_id144;
SamplerState DynamicSampler_id145;
Buffer<float4> DynamicBuffer_id306;
uint CalculateVoxelVolumeIndex_id49(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id289.x, VoxelCounts_id289.x * VoxelCounts_id289.y));
}
SMMidiNoteData GetVoxel_id34(uint3 coordinate)
{
    return VoxelVolume_id288[CalculateVoxelVolumeIndex_id49(coordinate)];
}
float3 Compute_id307(inout CS_STREAMS streams)
{
    return streams.Input_54_id203;
}
float3 Compute_id309(inout CS_STREAMS streams)
{
    return streams.Plus_53_id199;
}
float3 Compute_id301(inout CS_STREAMS streams)
{
    return streams.Input_52_id196;
}
float3 Compute_id299(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id192;
}
float3 Compute_id293(inout CS_STREAMS streams)
{
    return streams.Input_50_id189;
}
float3 Compute_id291(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_49_id184;
}
float Compute_id285(inout CS_STREAMS streams)
{
    return streams.Input_48_id181;
}
float Compute_id283(inout CS_STREAMS streams)
{
    return streams.Input_48_id181;
}
float Compute_id281(inout CS_STREAMS streams)
{
    return streams.Input_48_id181;
}
float3 Compute_id214(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_46_id169;
}
float3 Compute_id212(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id139;
}
float Compute_id208(inout CS_STREAMS streams)
{
    return streams.SMThreshold_ShaderFXResult_45_id165;
}
float Compute_id206(inout CS_STREAMS streams)
{
    return streams.SMThreshold_ShaderFXResult_45_id165;
}
float Compute_id204(inout CS_STREAMS streams)
{
    return streams.SMThreshold_ShaderFXResult_45_id165;
}
float Compute_id198(inout CS_STREAMS streams)
{
    return streams.Input_44_id162;
}
float Compute_id200(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_43_id151;
}
float Luminance_id47(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id173(inout CS_STREAMS streams)
{
    return streams.TextureValue_41_id143;
}
float Compute_id167()
{
    return Value_id313;
}
float2 Compute_id169(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float3 Compute_id163(inout CS_STREAMS streams)
{
    return streams.Input_39_id136;
}
float3 Compute_id161(inout CS_STREAMS streams)
{
    return streams.SMQuantize_ShaderFXResult_38_id132;
}
float3 Compute_id153(inout CS_STREAMS streams)
{
    return streams.Input_37_id129;
}
float3 Compute_id155(inout CS_STREAMS streams)
{
    return streams.Plus_36_id125;
}
float3 Compute_id147(inout CS_STREAMS streams)
{
    return streams.Multiply_35_id121;
}
float3 Compute_id145(inout CS_STREAMS streams)
{
    return streams.Input_31_id107;
}
float3 Compute_id141(inout CS_STREAMS streams)
{
    return streams.Input_34_id118;
}
float3 Compute_id139(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_33_id113;
}
float Compute_id133(inout CS_STREAMS streams)
{
    return streams.Input_32_id110;
}
float Compute_id131(inout CS_STREAMS streams)
{
    return streams.Input_32_id110;
}
float Compute_id129(inout CS_STREAMS streams)
{
    return streams.Input_32_id110;
}
float3 Compute_id372(inout CS_STREAMS streams)
{
    return streams.Input_29_id242;
}
float3 Compute_id370(inout CS_STREAMS streams)
{
    return streams.SMQuantize_ShaderFXResult_28_id238;
}
float3 Compute_id362(inout CS_STREAMS streams)
{
    return streams.Input_27_id235;
}
float3 Compute_id364(inout CS_STREAMS streams)
{
    return streams.Plus_26_id231;
}
float3 Compute_id356(inout CS_STREAMS streams)
{
    return streams.Input_25_id228;
}
float3 Compute_id354(inout CS_STREAMS streams)
{
    return streams.Multiply_24_id224;
}
float3 Compute_id348(inout CS_STREAMS streams)
{
    return streams.Input_23_id221;
}
float3 Compute_id346(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_22_id216;
}
float Compute_id340(inout CS_STREAMS streams)
{
    return streams.Input_21_id213;
}
float Compute_id338(inout CS_STREAMS streams)
{
    return streams.Input_21_id213;
}
float Compute_id336(inout CS_STREAMS streams)
{
    return streams.Input_21_id213;
}
float3 Compute_id429(inout CS_STREAMS streams)
{
    return streams.Input_19_id274;
}
float3 Compute_id431(inout CS_STREAMS streams)
{
    return streams.Plus_18_id270;
}
float3 Compute_id423(inout CS_STREAMS streams)
{
    return streams.Input_17_id267;
}
float3 Compute_id421(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id263;
}
float3 Compute_id415(inout CS_STREAMS streams)
{
    return streams.Input_15_id260;
}
float3 Compute_id413(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id255;
}
float Compute_id407(inout CS_STREAMS streams)
{
    return streams.Input_13_id252;
}
float Compute_id405(inout CS_STREAMS streams)
{
    return streams.Input_13_id252;
}
float Compute_id403(inout CS_STREAMS streams)
{
    return streams.Input_13_id252;
}
float SelectMidiValue_id53(SMMidiNoteData x, uint i)
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
uint Compute_id266(inout CS_STREAMS streams)
{
    return streams.Input_1_id284;
}
SMMidiNoteData Compute_id51(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id289;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float Compute_id93(inout CS_STREAMS streams)
{
    return streams.Input_11_id318;
}
float4 Compute_id91(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id312;
}
float4 Compute_id89(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id309;
}
float Compute_id81()
{
    return Value_id313;
}
float2 Compute_id83(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id456(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id77(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id305;
}
uint Compute_id73(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id301;
}
uint Compute_id67(inout CS_STREAMS streams)
{
    return streams.Input_3_id298;
}
float Compute_id69(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_2_id287;
}
float SelectMidiValue_id50(SMMidiNoteData x, uint i)
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
uint Compute_id61(inout CS_STREAMS streams)
{
    return streams.Input_1_id284;
}
SMMidiNoteData Compute_id48(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id289;
    SMMidiNoteData m = GetVoxel_id34(uvw);
    return m;
}
float3 Compute_id312(inout CS_STREAMS streams)
{
    float3 v = Compute_id309(streams);
    float3 s = Compute_id307(streams);
    return s != 0 ? round(v / s) * s : v;
}
float3 Compute_id305()
{
    return InputValue_id204;
}
float3 Compute_id304(inout CS_STREAMS streams)
{
    return Compute_id299(streams) + Compute_id301(streams);
}
float3 Compute_id297()
{
    return InputValue_id197;
}
float3 Compute_id296(inout CS_STREAMS streams)
{
    return Compute_id291(streams) * Compute_id293(streams);
}
float3 Compute_id289()
{
    return InputValue_id190;
}
float3 Compute_id288(inout CS_STREAMS streams)
{
    return float3(Compute_id281(streams), Compute_id283(streams), Compute_id285(streams));
}
float Compute_id279()
{
    return InputValue_id182;
}
float3 Compute_id217(inout CS_STREAMS streams)
{
    return Compute_id212(streams) * Compute_id214(streams);
}
float3 Compute_id211(inout CS_STREAMS streams)
{
    return float3(Compute_id204(streams), Compute_id206(streams), Compute_id208(streams));
}
float Compute_id203(inout CS_STREAMS streams)
{
    float v = Compute_id200(streams);
    float t = Compute_id198(streams);
    return v >= t;
}
float Compute_id196()
{
    return InputValue_id163;
}
float Compute_id195(inout CS_STREAMS streams)
{
    float4 color = Compute_id173(streams);
    return Luminance_id47(color.rgb);
}
float4 Compute_id172(inout CS_STREAMS streams)
{
    return DynamicTexture_id144.SampleLevel(DynamicSampler_id145, Compute_id169(streams), Compute_id167());
}
float3 Compute_id166(inout CS_STREAMS streams)
{
    return Compute_id161(streams) * Compute_id163(streams);
}
float3 Compute_id159()
{
    return InputValue_id137;
}
float3 Compute_id158(inout CS_STREAMS streams)
{
    float3 v = Compute_id155(streams);
    float3 s = Compute_id153(streams);
    return s != 0 ? round(v / s) * s : v;
}
float3 Compute_id151()
{
    return InputValue_id130;
}
float3 Compute_id150(inout CS_STREAMS streams)
{
    return Compute_id145(streams) + Compute_id147(streams);
}
float3 Compute_id144(inout CS_STREAMS streams)
{
    return Compute_id139(streams) * Compute_id141(streams);
}
float3 Compute_id137()
{
    return InputValue_id119;
}
float3 Compute_id136(inout CS_STREAMS streams)
{
    return float3(Compute_id129(streams), Compute_id131(streams), Compute_id133(streams));
}
float Compute_id127()
{
    return InputValue_id111;
}
float3 Compute_id125()
{
    return InputValue_id108;
}
float3 Compute_id375(inout CS_STREAMS streams)
{
    return Compute_id370(streams) + Compute_id372(streams);
}
float3 Compute_id368()
{
    return InputValue_id243;
}
float3 Compute_id367(inout CS_STREAMS streams)
{
    float3 v = Compute_id364(streams);
    float3 s = Compute_id362(streams);
    return s != 0 ? round(v / s) * s : v;
}
float3 Compute_id360()
{
    return InputValue_id236;
}
float3 Compute_id359(inout CS_STREAMS streams)
{
    return Compute_id354(streams) + Compute_id356(streams);
}
float3 Compute_id352()
{
    return InputValue_id229;
}
float3 Compute_id351(inout CS_STREAMS streams)
{
    return Compute_id346(streams) * Compute_id348(streams);
}
float3 Compute_id344()
{
    return InputValue_id222;
}
float3 Compute_id343(inout CS_STREAMS streams)
{
    return float3(Compute_id336(streams), Compute_id338(streams), Compute_id340(streams));
}
float Compute_id334()
{
    return InputValue_id214;
}
float3 Compute_id434(inout CS_STREAMS streams)
{
    float3 v = Compute_id431(streams);
    float3 s = Compute_id429(streams);
    return s != 0 ? round(v / s) * s : v;
}
float3 Compute_id427()
{
    return InputValue_id275;
}
float3 Compute_id426(inout CS_STREAMS streams)
{
    return Compute_id421(streams) + Compute_id423(streams);
}
float3 Compute_id419()
{
    return InputValue_id268;
}
float3 Compute_id418(inout CS_STREAMS streams)
{
    return Compute_id413(streams) * Compute_id415(streams);
}
float3 Compute_id411()
{
    return InputValue_id261;
}
float3 Compute_id410(inout CS_STREAMS streams)
{
    return float3(Compute_id403(streams), Compute_id405(streams), Compute_id407(streams));
}
float Compute_id401()
{
    return InputValue_id253;
}
float Compute_id269(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id51(streams);
    return SelectMidiValue_id53(m, Compute_id266(streams));
}
uint Compute_id259()
{
    return InputValue_id329;
}
float4 Compute_id96(inout CS_STREAMS streams)
{
    return lerp(Compute_id89(streams), Compute_id91(streams), Compute_id93(streams));
}
float Compute_id87()
{
    return InputValue_id319;
}
float4 Compute_id86(inout CS_STREAMS streams)
{
    return DynamicTexture_id144.SampleLevel(DynamicSampler_id145, Compute_id83(streams), Compute_id81());
}
float4 Compute_id80(inout CS_STREAMS streams)
{
    return SRgbToLinear_id456(Compute_id77(streams));
}
float4 Compute_id76(inout CS_STREAMS streams)
{
    return DynamicBuffer_id306[Compute_id73(streams)];
}
uint Compute_id72(inout CS_STREAMS streams)
{
    float v = Compute_id69(streams);
    uint c = Compute_id67(streams);
    return round(v * c);
}
uint Compute_id65()
{
    return InputValue_id299;
}
float Compute_id64(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id48(streams);
    return SelectMidiValue_id50(m, Compute_id61(streams));
}
uint Compute_id54()
{
    return InputValue_id285;
}
void Compute_id328(inout CS_STREAMS streams)
{
    streams.SMQuantize_ShaderFXResult_55_id206 = Compute_id312(streams);
}
void Compute_id326(inout CS_STREAMS streams)
{
    streams.Input_54_id203 = Compute_id305();
}
void Compute_id324(inout CS_STREAMS streams)
{
    streams.Plus_53_id199 = Compute_id304(streams);
}
void Compute_id322(inout CS_STREAMS streams)
{
    streams.Input_52_id196 = Compute_id297();
}
void Compute_id320(inout CS_STREAMS streams)
{
    streams.Multiply_51_id192 = Compute_id296(streams);
}
void Compute_id318(inout CS_STREAMS streams)
{
    streams.Input_50_id189 = Compute_id289();
}
void Compute_id316(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_49_id184 = Compute_id288(streams);
}
void Compute_id314(inout CS_STREAMS streams)
{
    streams.Input_48_id181 = Compute_id279();
}
void Compute_id253(inout CS_STREAMS streams)
{
    streams.Multiply_47_id174 = Compute_id217(streams);
}
void Compute_id251(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_46_id169 = Compute_id211(streams);
}
void Compute_id249(inout CS_STREAMS streams)
{
    streams.SMThreshold_ShaderFXResult_45_id165 = Compute_id203(streams);
}
void Compute_id247(inout CS_STREAMS streams)
{
    streams.Input_44_id162 = Compute_id196();
}
void Compute_id245(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_43_id151 = Compute_id195(streams);
}
void Compute_id243(inout CS_STREAMS streams)
{
    streams.TextureValue_41_id143 = Compute_id172(streams);
}
void Compute_id241()
{
}
void Compute_id240()
{
}
void Compute_id239()
{
}
void Compute_id238()
{
}
void Compute_id237(inout CS_STREAMS streams)
{
    streams.Multiply_40_id139 = Compute_id166(streams);
}
void Compute_id235(inout CS_STREAMS streams)
{
    streams.Input_39_id136 = Compute_id159();
}
void Compute_id233(inout CS_STREAMS streams)
{
    streams.SMQuantize_ShaderFXResult_38_id132 = Compute_id158(streams);
}
void Compute_id231(inout CS_STREAMS streams)
{
    streams.Input_37_id129 = Compute_id151();
}
void Compute_id229(inout CS_STREAMS streams)
{
    streams.Plus_36_id125 = Compute_id150(streams);
}
void Compute_id227(inout CS_STREAMS streams)
{
    streams.Multiply_35_id121 = Compute_id144(streams);
}
void Compute_id225(inout CS_STREAMS streams)
{
    streams.Input_34_id118 = Compute_id137();
}
void Compute_id223(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_33_id113 = Compute_id136(streams);
}
void Compute_id221(inout CS_STREAMS streams)
{
    streams.Input_32_id110 = Compute_id127();
}
void Compute_id219(inout CS_STREAMS streams)
{
    streams.Input_31_id107 = Compute_id125();
}
void Compute_id395(inout CS_STREAMS streams)
{
    streams.Plus_30_id245 = Compute_id375(streams);
}
void Compute_id393(inout CS_STREAMS streams)
{
    streams.Input_29_id242 = Compute_id368();
}
void Compute_id391(inout CS_STREAMS streams)
{
    streams.SMQuantize_ShaderFXResult_28_id238 = Compute_id367(streams);
}
void Compute_id389(inout CS_STREAMS streams)
{
    streams.Input_27_id235 = Compute_id360();
}
void Compute_id387(inout CS_STREAMS streams)
{
    streams.Plus_26_id231 = Compute_id359(streams);
}
void Compute_id385(inout CS_STREAMS streams)
{
    streams.Input_25_id228 = Compute_id352();
}
void Compute_id383(inout CS_STREAMS streams)
{
    streams.Multiply_24_id224 = Compute_id351(streams);
}
void Compute_id381(inout CS_STREAMS streams)
{
    streams.Input_23_id221 = Compute_id344();
}
void Compute_id379(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_22_id216 = Compute_id343(streams);
}
void Compute_id377(inout CS_STREAMS streams)
{
    streams.Input_21_id213 = Compute_id334();
}
void Compute_id450(inout CS_STREAMS streams)
{
    streams.SMQuantize_ShaderFXResult_20_id277 = Compute_id434(streams);
}
void Compute_id448(inout CS_STREAMS streams)
{
    streams.Input_19_id274 = Compute_id427();
}
void Compute_id446(inout CS_STREAMS streams)
{
    streams.Plus_18_id270 = Compute_id426(streams);
}
void Compute_id444(inout CS_STREAMS streams)
{
    streams.Input_17_id267 = Compute_id419();
}
void Compute_id442(inout CS_STREAMS streams)
{
    streams.Multiply_16_id263 = Compute_id418(streams);
}
void Compute_id440(inout CS_STREAMS streams)
{
    streams.Input_15_id260 = Compute_id411();
}
void Compute_id438(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id255 = Compute_id410(streams);
}
void Compute_id436(inout CS_STREAMS streams)
{
    streams.Input_13_id252 = Compute_id401();
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_2_id287 = Compute_id269(streams);
}
void Compute_id271(inout CS_STREAMS streams)
{
    streams.Input_1_id284 = Compute_id259();
}
void Compute_id119(inout CS_STREAMS streams)
{
    streams.Lerp_12_id321 = Compute_id96(streams);
}
void Compute_id117(inout CS_STREAMS streams)
{
    streams.Input_11_id318 = Compute_id87();
}
void Compute_id115(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id312 = Compute_id86(streams);
}
void Compute_id113()
{
}
void Compute_id112()
{
}
void Compute_id111()
{
}
void Compute_id110()
{
}
void Compute_id109(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id309 = Compute_id80(streams);
}
void Compute_id107(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id305 = Compute_id76(streams);
}
void Compute_id105(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id301 = Compute_id72(streams);
}
void Compute_id103(inout CS_STREAMS streams)
{
    streams.Input_3_id298 = Compute_id65();
}
void Compute_id101(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_2_id287 = Compute_id64(streams);
}
void Compute_id99(inout CS_STREAMS streams)
{
    streams.Input_1_id284 = Compute_id54();
}
void Compute_id97()
{
}
float3 Compute_id331(inout CS_STREAMS streams)
{
    return streams.SMQuantize_ShaderFXResult_55_id206;
}
void Compute_id330(inout CS_STREAMS streams)
{

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
float3 Compute_id256(inout CS_STREAMS streams)
{
    return streams.Multiply_47_id174;
}
void Compute_id255(inout CS_STREAMS streams)
{

    {
        Compute_id219(streams);
    }

    {
        Compute_id221(streams);
    }

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

    {
        Compute_id235(streams);
    }

    {
        Compute_id237(streams);
    }

    {
        Compute_id238();
    }

    {
        Compute_id239();
    }

    {
        Compute_id240();
    }

    {
        Compute_id241();
    }

    {
        Compute_id243(streams);
    }

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
        Compute_id251(streams);
    }

    {
        Compute_id253(streams);
    }
}
float3 Compute_id398(inout CS_STREAMS streams)
{
    return streams.Plus_30_id245;
}
void Compute_id397(inout CS_STREAMS streams)
{

    {
        Compute_id377(streams);
    }

    {
        Compute_id379(streams);
    }

    {
        Compute_id381(streams);
    }

    {
        Compute_id383(streams);
    }

    {
        Compute_id385(streams);
    }

    {
        Compute_id387(streams);
    }

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
}
float3 Compute_id453(inout CS_STREAMS streams)
{
    return streams.SMQuantize_ShaderFXResult_20_id277;
}
void Compute_id452(inout CS_STREAMS streams)
{

    {
        Compute_id436(streams);
    }

    {
        Compute_id438(streams);
    }

    {
        Compute_id440(streams);
    }

    {
        Compute_id442(streams);
    }

    {
        Compute_id444(streams);
    }

    {
        Compute_id446(streams);
    }

    {
        Compute_id448(streams);
    }

    {
        Compute_id450(streams);
    }
}
float Compute_id276(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_2_id287;
}
void Compute_id275(inout CS_STREAMS streams)
{

    {
        Compute_id271(streams);
    }

    {
        Compute_id273(streams);
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
float4 Compute_id122(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id321;
}
void Compute_id121(inout CS_STREAMS streams)
{

    {
        Compute_id97();
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
        Compute_id107(streams);
    }

    {
        Compute_id109(streams);
    }

    {
        Compute_id110();
    }

    {
        Compute_id111();
    }

    {
        Compute_id112();
    }

    {
        Compute_id113();
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
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id330(streams);
    return Compute_id331(streams);
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id255(streams);
    return Compute_id256(streams);
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id397(streams);
    return Compute_id398(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id452(streams);
    return Compute_id453(streams);
}
float Compute_id43(inout CS_STREAMS streams)
{
    Compute_id275(streams);
    return Compute_id276(streams);
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
    Compute_id121(streams);
    return Compute_id122(streams);
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

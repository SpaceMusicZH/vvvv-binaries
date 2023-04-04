/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<g_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_38> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_39> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_39>}]}], mixin AssignVarFloat<Multiply_41> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_39>}]}], mixin AssignVarFloat<Multiply_42> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_39>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_43> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_40>}, {Y = GetVarFloat<Multiply_41>}, {Z = GetVarFloat<Multiply_42>}]}], mixin AssignVarFloat3<Input_44> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_45> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_43>}, {Right = GetVarFloat3<Input_44>}]}], mixin AssignVarFloat3<Plus_46> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_38>}, {Right = GetVarFloat3<Multiply_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Multiply_48>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Input_51> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_52> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Input_51>}, {Z = GetVarFloat<Input_51>}]}], mixin AssignVarFloat3<Input_53> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_54> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_52>}, {Right = GetVarFloat3<Input_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_56> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_54>}, {Right = GetVarFloat3<Input_55>}]}]]}]}, {Value = GetVarFloat3<Plus_56>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_20> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_22> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx21,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_23,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_24> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_22>}]}], mixin AssignVarFloat<Multiply_25> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_20>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_26> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}]}], mixin AssignVarUInt<Input_27> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_28> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_27>}]}], mixin AssignVarFloat<Input_29> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_30> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_28>}, {Right = GetVarFloat<Input_29>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_31> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_25>}, {Y = GetVarFloat<Multiply_26>}, {Z = GetVarFloat<Multiply_30>}]}], mixin AssignVarFloat3<Input_32> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_33> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_31>}, {Right = GetVarFloat3<Input_32>}]}], mixin AssignVarFloat3<Input_34> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_35> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_33>}, {Right = GetVarFloat3<Input_34>}]}], mixin AssignVarFloat3<Input_36> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_37> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_35>}, {Right = GetVarFloat3<Input_36>}]}]]}]}, {Value = GetVarFloat3<Plus_37>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_15> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_14>}, {Y = GetVarFloat<Input_14>}, {Z = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<Input_16> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_17> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_15>}, {Right = GetVarFloat3<Input_16>}]}], mixin AssignVarFloat3<Input_18> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_19> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_17>}, {Right = GetVarFloat3<Input_18>}]}]]}]}, {Value = GetVarFloat3<Plus_19>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<g_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_15> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_14>}, {Y = GetVarFloat<Input_14>}, {Z = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<Input_16> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_17> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_15>}, {Right = GetVarFloat3<Input_16>}]}], mixin AssignVarFloat3<Input_18> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_19> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_17>}, {Right = GetVarFloat3<Input_18>}]}]]}]}, {Value = GetVarFloat3<Plus_19>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_20> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_22> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx21,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_23,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_24> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_22>}]}], mixin AssignVarFloat<Multiply_25> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_20>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_26> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}]}], mixin AssignVarUInt<Input_27> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_28> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_27>}]}], mixin AssignVarFloat<Input_29> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_30> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_28>}, {Right = GetVarFloat<Input_29>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_31> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_25>}, {Y = GetVarFloat<Multiply_26>}, {Z = GetVarFloat<Multiply_30>}]}], mixin AssignVarFloat3<Input_32> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_33> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_31>}, {Right = GetVarFloat3<Input_32>}]}], mixin AssignVarFloat3<Input_34> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_35> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_33>}, {Right = GetVarFloat3<Input_34>}]}], mixin AssignVarFloat3<Input_36> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_37> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_35>}, {Right = GetVarFloat3<Input_36>}]}]]}]}, {Value = GetVarFloat3<Plus_37>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_38> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_39> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_40> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_39>}]}], mixin AssignVarFloat<Multiply_41> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_39>}]}], mixin AssignVarFloat<Multiply_42> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_39>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_43> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_40>}, {Y = GetVarFloat<Multiply_41>}, {Z = GetVarFloat<Multiply_42>}]}], mixin AssignVarFloat3<Input_44> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_45> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_43>}, {Right = GetVarFloat3<Input_44>}]}], mixin AssignVarFloat3<Plus_46> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_38>}, {Right = GetVarFloat3<Multiply_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Multiply_48>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Input_51> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_52> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Input_51>}, {Z = GetVarFloat<Input_51>}]}], mixin AssignVarFloat3<Input_53> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_54> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_52>}, {Right = GetVarFloat3<Input_53>}]}], mixin AssignVarFloat3<Input_55> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_56> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_54>}, {Right = GetVarFloat3<Input_55>}]}]]}]}, {Value = GetVarFloat3<Plus_56>}]
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
@C    InputValue_id130 => ShaderFX.InputValueFloat.i3
@C    InputValue_id150 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id161 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id182 => ShaderFX.InputValueFloat.i4
@C    InputValue_id189 => ShaderFX.InputValueFloat.i5
@C    InputValue_id197 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id204 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id255 => ShaderFX.InputValueUInt.i1
@C    InputValue_id269 => ShaderFX.InputValueFloat.i2
@C    InputValue_id281 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id288 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id295 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id305 => ShaderFX.InputValueFloat.i1
@C    InputValue_id313 => ShaderFX.InputValueFloat3
@C    InputValue_id320 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id334 => ShaderFX.InputValueUInt
@C    InputValue_id355 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id112 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id113 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id114 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id115 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id116 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
@C    VoxelCounts_id259 => SMMidiBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id260 => SMMidiBufferSelector_ShaderFX.PlacementCounts
@C    Channel_id261 => SMMidiBufferSelector_ShaderFX.Channel
@C    Blink_id262 => SMMidiBufferSelector_ShaderFX.Blink
@C    SamplerOffset_id263 => SMMidiBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id264 => SMMidiBufferSelector_ShaderFX.SamplerScale
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id219 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id111 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    VoxelVolume_id258 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id218 => ObjectTexture_fx21 [Stage: Compute, Slot: (4-4)]
@R    DynamicBuffer_id341 => ObjectBuffer_fx0 [Stage: Compute, Slot: (5-5)]
@R    DynamicTexture_id348 => ObjectTexture_fx7 [Stage: Compute, Slot: (6-6)]
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
@S    SMMidiSelectValue_ShaderFX => c77373c891111f8b45fb62108518eee4
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    SMMidiBufferSelector_ShaderFX => 1df156fd3c684db39ea5b160a664f54a
***************************
*****     Stages      *****
***************************
@G    Compute => 08a586fefc4ec69680e27f528abd7029
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
//   float InputValue_id130;            // Offset:   12 Size:     4
//   float3 InputValue_id150;           // Offset:   16 Size:    12
//   float3 InputValue_id161;           // Offset:   32 Size:    12
//   float InputValue_id182;            // Offset:   44 Size:     4
//   float InputValue_id189;            // Offset:   48 Size:     4
//   float3 InputValue_id197;           // Offset:   52 Size:    12
//   float3 InputValue_id204;           // Offset:   64 Size:    12
//   uint InputValue_id255;             // Offset:   76 Size:     4
//   float InputValue_id269;            // Offset:   80 Size:     4
//   float3 InputValue_id281;           // Offset:   84 Size:    12
//   float3 InputValue_id288;           // Offset:   96 Size:    12
//   float3 InputValue_id295;           // Offset:  112 Size:    12
//   float InputValue_id305;            // Offset:  124 Size:     4
//   float3 InputValue_id313;           // Offset:  128 Size:    12
//   float3 InputValue_id320;           // Offset:  144 Size:    12
//   uint InputValue_id334;             // Offset:  156 Size:     4
//   float InputValue_id355;            // Offset:  160 Size:     4
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
//   int3 VoxelCounts_id259;            // Offset:  132 Size:    12
//   int3 PlacementCounts_id260;        // Offset:  144 Size:    12 [unused]
//   int Channel_id261;                 // Offset:  156 Size:     4 [unused]
//   float Blink_id262;                 // Offset:  160 Size:     4 [unused]
//   float2 SamplerOffset_id263;        // Offset:  164 Size:     8 [unused]
//   float2 SamplerScale_id264;         // Offset:  176 Size:     8 [unused]
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
// Resource bind info for VoxelVolume_id111
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for VoxelVolume_id258
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
// DynamicSampler_id219              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id111                 texture  struct         r/o             t2      1 
// VoxelVolume_id258                 texture  struct         r/o             t3      1 
// DynamicTexture_id218              texture  float4          2d             t4      1 
// DynamicBuffer_id341               texture  float4         buf             t5      1 
// DynamicTexture_id348              texture  float4          2d             t6      1 
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
dcl_constantbuffer CB2[9], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_structured t0, 12
dcl_resource_structured t1, 48
dcl_resource_structured t2, 16
dcl_resource_structured t3, 48
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
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
#line 1528 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_1a0b66ce821dbdbe42e4a68f0f0de187.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1529
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1540
  if_nz cb2[5].x

#line 1550
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

#line 1501
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 786
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id572 return value>.x; r11.y <- <Compute_id572 return value>.y; r11.z <- <Compute_id572 return value>.z

#line 1504
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 781
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyz, vThreadID.x, l(0), t2.xyzx  // r12.x <- m.x; r12.y <- m.y; r12.z <- m.z

#line 771
  sample_l_indexable(texture2d)(float,float,float,float) r13.xyz, r6.xyxx, t4.xyzw, s0, l(0.000000)  // r13.x <- <Compute_id392 return value>.x; r13.y <- <Compute_id392 return value>.y; r13.z <- <Compute_id392 return value>.z

#line 507
  dp3 r0.w, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id63 return value>

#line 762
  mul r13.x, r0.w, r12.x  // r13.x <- <Compute_id421 return value>

#line 491
  dp3 r1.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id67 return value>

#line 753
  mul r13.y, r0.w, r1.w  // r13.y <- <Compute_id450 return value>

#line 477
  itof r12.xyz, cb2[8].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 275
  imul null, r0.w, cb2[8].z, cb2[8].y
  imad r2.w, r12.y, cb2[8].y, r12.x
  imad r0.w, r12.z, r0.w, r2.w  // r0.w <- <CalculateVoxelVolumeIndex_id69 return value>

#line 279
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t3.xyzw  // r12.x <- <GetVoxel_id37 return value>.Empty; r12.y <- <GetVoxel_id37 return value>.StartTime; r12.z <- <GetVoxel_id37 return value>.Note; r12.w <- <GetVoxel_id37 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(16), t3.xyzw  // r14.x <- <GetVoxel_id37 return value>.Length; r14.y <- <GetVoxel_id37 return value>.Channel; r14.z <- <GetVoxel_id37 return value>.Constant; r14.w <- <GetVoxel_id37 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r15.xyzw, r0.w, l(32), t3.wxyz  // r15.y <- <GetVoxel_id37 return value>.TrackId; r15.z <- <GetVoxel_id37 return value>.ModWheel; r15.w <- <GetVoxel_id37 return value>.PitchBend; r15.x <- <GetVoxel_id37 return value>.Random

#line 439
  switch cb1[4].w

#line 442
    case l(0)

#line 443
    mov r15.x, r12.x  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 444
    case l(1)

#line 445
    mov r15.x, r12.y  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 446
    case l(2)

#line 447
    mov r15.x, r12.z  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 448
    case l(3)

#line 449
    mov r15.x, r12.w  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 450
    case l(4)

#line 451
    mov r15.x, r14.x  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 452
    case l(5)

#line 453
    mov r15.x, r14.y  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 454
    case l(6)

#line 455
    mov r15.x, r14.z  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 456
    case l(7)

#line 457
    mov r15.x, r14.w  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 458
    case l(8)

#line 459
    mov r15.x, r15.y  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 460
    case l(9)

#line 461
    mov r15.x, r15.z  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 462
    case l(10)

#line 463
    mov r15.x, r15.w  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 464
    case l(11)

#line 465
    break 

#line 466
    default 

#line 467
    mov r15.x, l(0)  // r15.x <- <SelectMidiValue_id70 return value>
    break 

#line 468
  endswitch   // r15.x <- <SelectMidiValue_id70 return value>

#line 736
  mul r13.z, r15.x, cb1[5].x  // r13.z <- <Compute_id469 return value>

#line 716
  mad r12.xyz, r13.xyzx, cb1[5].yzwy, cb1[6].xyzx  // r12.x <- <Compute_id493 return value>.x; r12.y <- <Compute_id493 return value>.y; r12.z <- <Compute_id493 return value>.z

#line 708
  add r12.xyz, r12.xyzx, cb1[7].xyzx  // r12.x <- <Compute_id501 return value>.x; r12.y <- <Compute_id501 return value>.y; r12.z <- <Compute_id501 return value>.z

#line 1505
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xyzx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 684
  mul r0.w, r1.w, cb1[0].w  // r0.w <- <Compute_id183 return value>

#line 660
  mad r12.xyz, r0.wwww, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id217 return value>.x; r12.y <- <Compute_id217 return value>.y; r12.z <- <Compute_id217 return value>.z

#line 652
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id225 return value>.x; r13.y <- <Compute_id225 return value>.y; r13.z <- <Compute_id225 return value>.z

#line 1506
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 632
  mul r12.y, r1.w, cb1[2].w  // r12.y <- <Compute_id327 return value>

#line 616
  mov r12.zw, cb1[3].xxxx

#line 608
  mad r12.xyz, r12.yzwy, cb1[3].yzwy, cb1[4].xyzx  // r12.x <- <Compute_id353 return value>.x; r12.y <- <Compute_id353 return value>.y; r12.z <- <Compute_id353 return value>.z

#line 1507
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1509
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 817
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xy, vThreadID.x, l(0), t2.xyxx  // r12.x <- m.x

#line 844
  utof r0.w, cb1[9].w
  mul r0.w, r0.w, r12.y
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id94 return value>

#line 838
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r0.wwww, t5.xyzw  // r13.x <- <Compute_id98 return value>.x; r13.y <- <Compute_id98 return value>.y; r13.z <- <Compute_id98 return value>.z

#line 584
  mad r14.xyz, r13.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r14.xyz, r13.xyzx, r14.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r15.xyz, r13.xyzx, r14.xyzx  // r15.x <- <SRgbToLinear_id590 return value>.x; r15.y <- <SRgbToLinear_id590 return value>.y; r15.z <- <SRgbToLinear_id590 return value>.z

#line 830
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t6.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id108 return value>.x; r6.z <- <Compute_id108 return value>.y; r6.w <- <Compute_id108 return value>.z

#line 822
  mad r6.yzw, -r13.xxyz, r14.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r15.xxyz  // r6.y <- <Compute_id118 return value>.x; r6.z <- <Compute_id118 return value>.y; r6.w <- <Compute_id118 return value>.z

#line 1516
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1487
  mul r13.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r13.x <- angle.x; r13.y <- angle.y; r13.z <- angle.z

#line 1391
  sincos r10.x, r14.x, r13.z  // r14.x <- c; r10.x <- s

#line 1394
  mul r13.zw, r10.zzzy, r10.xxxx

#line 1393
  mad r0.w, r14.x, r10.y, -r13.z  // r0.w <- p.x

#line 1394
  mad r1.w, r14.x, r10.z, r13.w  // r1.w <- p.y

#line 1381
  sincos r10.x, r13.x, r13.x  // r13.x <- c; r10.x <- s

#line 1383
  mul r2.w, r10.w, r10.x
  mad r14.y, r13.x, r1.w, -r2.w  // r14.y <- p.y

#line 1384
  mul r2.w, r10.w, r13.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1371
  sincos r10.x, r13.x, r13.y  // r13.x <- c; r10.x <- s

#line 1373
  mul r2.w, r1.w, r10.x
  mad r14.x, r13.x, r0.w, r2.w  // r14.x <- p.x

#line 1374
  mul r1.w, r1.w, r13.x
  mad r14.z, -r10.x, r0.w, r1.w  // r14.z <- p.z

#line 1487
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1391
  sincos r10.x, r13.x, r5.z  // r13.x <- c; r10.x <- s

#line 1394
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1393
  mad r0.w, r13.x, r11.x, -r5.z

#line 1394
  mad r1.w, r13.x, r11.y, r5.w  // r1.w <- p.y

#line 1381
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1383
  mul r2.w, r11.z, r5.x
  mad r13.y, r10.x, r1.w, -r2.w  // r13.y <- p.y

#line 1384
  mul r2.w, r11.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1371
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1373
  mul r2.w, r1.w, r5.x
  mad r13.x, r10.x, r0.w, r2.w  // r13.x <- p.x

#line 1374
  mul r1.w, r1.w, r10.x
  mad r13.z, -r5.x, r0.w, r1.w  // r13.z <- p.z

#line 1517
  add r5.xyz, r14.xyzx, r13.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 817
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.zw, vThreadID.x, l(4), t2.xxxy  // r12.z <- m.y; r12.w <- m.z

#line 555
  dp3 r0.w, r12.xzwx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id78 return value>

#line 1552
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1553
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1554
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1555
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1556
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1560
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1561
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1576
ret 
// Approximately 182 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id349 = 0;
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
    float Input_14_id304;
    float3 SMVector3Join_ShaderFXResult_15_id307;
    float3 Input_16_id312;
    float3 Multiply_17_id315;
    float3 Input_18_id319;
    float3 Plus_19_id322;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id110;
    float r_20_id214;
    float4 TextureValue_22_id217;
    float SMCalcLuminance_ShaderFXResult_24_id225;
    float Multiply_25_id236;
    float SMCalcLuminance_ShaderFXResult_13_id118;
    float Multiply_26_id250;
    uint Input_27_id254;
    float SMMidiSelectValue_ShaderFXResult_28_id257;
    float Input_29_id268;
    float Multiply_30_id271;
    float3 SMVector3Join_ShaderFXResult_31_id275;
    float3 Input_32_id280;
    float3 Multiply_33_id283;
    float3 Input_34_id287;
    float3 Plus_35_id290;
    float3 Input_36_id294;
    float3 Plus_37_id297;
    float3 Input_38_id107;
    float Input_39_id129;
    float Multiply_40_id132;
    float Multiply_41_id136;
    float Multiply_42_id140;
    float3 SMVector3Join_ShaderFXResult_43_id144;
    float3 Input_44_id149;
    float3 Multiply_45_id152;
    float3 Plus_46_id156;
    float3 Input_47_id160;
    float3 Multiply_48_id163;
    float Input_49_id181;
    float Multiply_50_id184;
    float Input_51_id188;
    float3 SMVector3Join_ShaderFXResult_52_id191;
    float3 Input_53_id196;
    float3 Multiply_54_id199;
    float3 Input_55_id203;
    float3 Plus_56_id206;
    float g_2_id330;
    uint Input_3_id333;
    uint SMValueToIndex_ShaderFXResult_4_id336;
    float4 BufferItem_5_id340;
    float4 SRgbToLinear_ShaderFXResult_6_id344;
    float4 TextureValue_9_id347;
    float Input_11_id354;
    float4 Lerp_12_id357;
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
    float InputValue_id130;
    float3 InputValue_id150;
    float3 InputValue_id161;
    float InputValue_id182;
    float InputValue_id189;
    float3 InputValue_id197;
    float3 InputValue_id204;
    uint InputValue_id255;
    float InputValue_id269;
    float3 InputValue_id281;
    float3 InputValue_id288;
    float3 InputValue_id295;
    float InputValue_id305;
    float3 InputValue_id313;
    float3 InputValue_id320;
    uint InputValue_id334;
    float InputValue_id355;
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
    int3 VoxelCounts_id259;
    int3 PlacementCounts_id260;
    int Channel_id261;
    float Blink_id262;
    float2 SamplerOffset_id263;
    float2 SamplerScale_id264 = float2(1, 1);
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
StructuredBuffer<SMMidiNoteData> VoxelVolume_id258;
Texture2D DynamicTexture_id218;
SamplerState DynamicSampler_id219;
Buffer<float4> DynamicBuffer_id341;
Texture2D DynamicTexture_id348;
uint CalculateVoxelVolumeIndex_id69(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id259.x, VoxelCounts_id259.x * VoxelCounts_id259.y));
}
SMMidiNoteData GetVoxel_id37(uint3 coordinate)
{
    return VoxelVolume_id258[CalculateVoxelVolumeIndex_id69(coordinate)];
}
float3 Compute_id350(inout CS_STREAMS streams)
{
    return streams.Input_55_id203;
}
float3 Compute_id348(inout CS_STREAMS streams)
{
    return streams.Multiply_54_id199;
}
float3 Compute_id342(inout CS_STREAMS streams)
{
    return streams.Input_53_id196;
}
float3 Compute_id340(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_52_id191;
}
float Compute_id334(inout CS_STREAMS streams)
{
    return streams.Input_51_id188;
}
float Compute_id332(inout CS_STREAMS streams)
{
    return streams.Input_51_id188;
}
float Compute_id330(inout CS_STREAMS streams)
{
    return streams.Multiply_50_id184;
}
float Compute_id324(inout CS_STREAMS streams)
{
    return streams.Input_49_id181;
}
float Compute_id322(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id57(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id297(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id222(inout CS_STREAMS streams)
{
    return streams.Input_47_id160;
}
float3 Compute_id220(inout CS_STREAMS streams)
{
    return streams.Plus_46_id156;
}
float3 Compute_id214(inout CS_STREAMS streams)
{
    return streams.Multiply_45_id152;
}
float3 Compute_id212(inout CS_STREAMS streams)
{
    return streams.Input_38_id107;
}
float3 Compute_id208(inout CS_STREAMS streams)
{
    return streams.Input_44_id149;
}
float3 Compute_id206(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_43_id144;
}
float Compute_id200(inout CS_STREAMS streams)
{
    return streams.Multiply_42_id140;
}
float Compute_id198(inout CS_STREAMS streams)
{
    return streams.Multiply_41_id136;
}
float Compute_id196(inout CS_STREAMS streams)
{
    return streams.Multiply_40_id132;
}
float Compute_id192(inout CS_STREAMS streams)
{
    return streams.Input_39_id129;
}
float Compute_id190(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id186(inout CS_STREAMS streams)
{
    return streams.Input_39_id129;
}
float Compute_id184(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id180(inout CS_STREAMS streams)
{
    return streams.Input_39_id129;
}
float Compute_id178(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id153(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id498(inout CS_STREAMS streams)
{
    return streams.Input_36_id294;
}
float3 Compute_id496(inout CS_STREAMS streams)
{
    return streams.Plus_35_id290;
}
float3 Compute_id490(inout CS_STREAMS streams)
{
    return streams.Input_34_id287;
}
float3 Compute_id488(inout CS_STREAMS streams)
{
    return streams.Multiply_33_id283;
}
float3 Compute_id482(inout CS_STREAMS streams)
{
    return streams.Input_32_id280;
}
float3 Compute_id480(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_31_id275;
}
float Compute_id474(inout CS_STREAMS streams)
{
    return streams.Multiply_30_id271;
}
float Compute_id472(inout CS_STREAMS streams)
{
    return streams.Multiply_26_id250;
}
float Compute_id470(inout CS_STREAMS streams)
{
    return streams.Multiply_25_id236;
}
float Compute_id466(inout CS_STREAMS streams)
{
    return streams.Input_29_id268;
}
float Compute_id464(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_28_id257;
}
float SelectMidiValue_id70(SMMidiNoteData x, uint i)
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
uint Compute_id458(inout CS_STREAMS streams)
{
    return streams.Input_27_id254;
}
SMMidiNoteData Compute_id68(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id259;
    SMMidiNoteData m = GetVoxel_id37(uvw);
    return m;
}
float Compute_id447(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_24_id225;
}
float Compute_id445(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id67(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id422(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id418(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_24_id225;
}
float Compute_id416(inout CS_STREAMS streams)
{
    return streams.r_20_id214;
}
float Luminance_id63(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id393(inout CS_STREAMS streams)
{
    return streams.TextureValue_22_id217;
}
float Compute_id387()
{
    return Value_id349;
}
float2 Compute_id389(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 Compute_id383(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id569(inout CS_STREAMS streams)
{
    return streams.Input_18_id319;
}
float3 Compute_id567(inout CS_STREAMS streams)
{
    return streams.Multiply_17_id315;
}
float3 Compute_id561(inout CS_STREAMS streams)
{
    return streams.Input_16_id312;
}
float3 Compute_id559(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_15_id307;
}
float Compute_id553(inout CS_STREAMS streams)
{
    return streams.Input_14_id304;
}
float Compute_id551(inout CS_STREAMS streams)
{
    return streams.Input_14_id304;
}
float Compute_id549(inout CS_STREAMS streams)
{
    return streams.Input_14_id304;
}
float Luminance_id78(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id261(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id115(inout CS_STREAMS streams)
{
    return streams.Input_11_id354;
}
float4 Compute_id113(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id347;
}
float4 Compute_id111(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id344;
}
float Compute_id103()
{
    return Value_id349;
}
float2 Compute_id105(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id590(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id99(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id340;
}
uint Compute_id95(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id336;
}
uint Compute_id89(inout CS_STREAMS streams)
{
    return streams.Input_3_id333;
}
float Compute_id91(inout CS_STREAMS streams)
{
    return streams.g_2_id330;
}
float4 Compute_id83(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id353(inout CS_STREAMS streams)
{
    return Compute_id348(streams) + Compute_id350(streams);
}
float3 Compute_id346()
{
    return InputValue_id204;
}
float3 Compute_id345(inout CS_STREAMS streams)
{
    return Compute_id340(streams) * Compute_id342(streams);
}
float3 Compute_id338()
{
    return InputValue_id197;
}
float3 Compute_id337(inout CS_STREAMS streams)
{
    return float3(Compute_id330(streams), Compute_id332(streams), Compute_id334(streams));
}
float Compute_id328()
{
    return InputValue_id189;
}
float Compute_id327(inout CS_STREAMS streams)
{
    return Compute_id322(streams) * Compute_id324(streams);
}
float Compute_id320()
{
    return InputValue_id182;
}
float Compute_id319(inout CS_STREAMS streams)
{
    float4 color = Compute_id297(streams);
    return Luminance_id57(color.rgb);
}
float4 Compute_id52(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id225(inout CS_STREAMS streams)
{
    return Compute_id220(streams) * Compute_id222(streams);
}
float3 Compute_id218()
{
    return InputValue_id161;
}
float3 Compute_id217(inout CS_STREAMS streams)
{
    return Compute_id212(streams) + Compute_id214(streams);
}
float3 Compute_id211(inout CS_STREAMS streams)
{
    return Compute_id206(streams) * Compute_id208(streams);
}
float3 Compute_id204()
{
    return InputValue_id150;
}
float3 Compute_id203(inout CS_STREAMS streams)
{
    return float3(Compute_id196(streams), Compute_id198(streams), Compute_id200(streams));
}
float Compute_id195(inout CS_STREAMS streams)
{
    return Compute_id190(streams) * Compute_id192(streams);
}
float Compute_id189(inout CS_STREAMS streams)
{
    return Compute_id184(streams) * Compute_id186(streams);
}
float Compute_id183(inout CS_STREAMS streams)
{
    return Compute_id178(streams) * Compute_id180(streams);
}
float Compute_id176()
{
    return InputValue_id130;
}
float Compute_id175(inout CS_STREAMS streams)
{
    float4 color = Compute_id153(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id46(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id147()
{
    return InputValue_id108;
}
float3 Compute_id501(inout CS_STREAMS streams)
{
    return Compute_id496(streams) + Compute_id498(streams);
}
float3 Compute_id494()
{
    return InputValue_id295;
}
float3 Compute_id493(inout CS_STREAMS streams)
{
    return Compute_id488(streams) + Compute_id490(streams);
}
float3 Compute_id486()
{
    return InputValue_id288;
}
float3 Compute_id485(inout CS_STREAMS streams)
{
    return Compute_id480(streams) * Compute_id482(streams);
}
float3 Compute_id478()
{
    return InputValue_id281;
}
float3 Compute_id477(inout CS_STREAMS streams)
{
    return float3(Compute_id470(streams), Compute_id472(streams), Compute_id474(streams));
}
float Compute_id469(inout CS_STREAMS streams)
{
    return Compute_id464(streams) * Compute_id466(streams);
}
float Compute_id462()
{
    return InputValue_id269;
}
float Compute_id461(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id68(streams);
    return SelectMidiValue_id70(m, Compute_id458(streams));
}
uint Compute_id451()
{
    return InputValue_id255;
}
float Compute_id450(inout CS_STREAMS streams)
{
    return Compute_id445(streams) * Compute_id447(streams);
}
float Compute_id444(inout CS_STREAMS streams)
{
    float4 color = Compute_id422(streams);
    return Luminance_id67(color.rgb);
}
float Compute_id421(inout CS_STREAMS streams)
{
    return Compute_id416(streams) * Compute_id418(streams);
}
float Compute_id415(inout CS_STREAMS streams)
{
    float4 color = Compute_id393(streams);
    return Luminance_id63(color.rgb);
}
float4 Compute_id392(inout CS_STREAMS streams)
{
    return DynamicTexture_id218.SampleLevel(DynamicSampler_id219, Compute_id389(streams), Compute_id387());
}
float Compute_id386(inout CS_STREAMS streams)
{
    return Compute_id383(streams).r;
}
float4 Compute_id58(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id572(inout CS_STREAMS streams)
{
    return Compute_id567(streams) + Compute_id569(streams);
}
float3 Compute_id565()
{
    return InputValue_id320;
}
float3 Compute_id564(inout CS_STREAMS streams)
{
    return Compute_id559(streams) * Compute_id561(streams);
}
float3 Compute_id557()
{
    return InputValue_id313;
}
float3 Compute_id556(inout CS_STREAMS streams)
{
    return float3(Compute_id549(streams), Compute_id551(streams), Compute_id553(streams));
}
float Compute_id547()
{
    return InputValue_id305;
}
float Compute_id283(inout CS_STREAMS streams)
{
    float4 color = Compute_id261(streams);
    return Luminance_id78(color.rgb);
}
float4 Compute_id73(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float4 Compute_id118(inout CS_STREAMS streams)
{
    return lerp(Compute_id111(streams), Compute_id113(streams), Compute_id115(streams));
}
float Compute_id109()
{
    return InputValue_id355;
}
float4 Compute_id108(inout CS_STREAMS streams)
{
    return DynamicTexture_id348.SampleLevel(DynamicSampler_id219, Compute_id105(streams), Compute_id103());
}
float4 Compute_id102(inout CS_STREAMS streams)
{
    return SRgbToLinear_id590(Compute_id99(streams));
}
float4 Compute_id98(inout CS_STREAMS streams)
{
    return DynamicBuffer_id341[Compute_id95(streams)];
}
uint Compute_id94(inout CS_STREAMS streams)
{
    float v = Compute_id91(streams);
    uint c = Compute_id89(streams);
    return round(v * c);
}
uint Compute_id87()
{
    return InputValue_id334;
}
float Compute_id86(inout CS_STREAMS streams)
{
    return Compute_id83(streams).g;
}
float4 Compute_id71(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
void Compute_id373(inout CS_STREAMS streams)
{
    streams.Plus_56_id206 = Compute_id353(streams);
}
void Compute_id371(inout CS_STREAMS streams)
{
    streams.Input_55_id203 = Compute_id346();
}
void Compute_id369(inout CS_STREAMS streams)
{
    streams.Multiply_54_id199 = Compute_id345(streams);
}
void Compute_id367(inout CS_STREAMS streams)
{
    streams.Input_53_id196 = Compute_id338();
}
void Compute_id365(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_52_id191 = Compute_id337(streams);
}
void Compute_id363(inout CS_STREAMS streams)
{
    streams.Input_51_id188 = Compute_id328();
}
void Compute_id361(inout CS_STREAMS streams)
{
    streams.Multiply_50_id184 = Compute_id327(streams);
}
void Compute_id359(inout CS_STREAMS streams)
{
    streams.Input_49_id181 = Compute_id320();
}
void Compute_id357(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id319(streams);
}
void Compute_id355(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id52(streams);
}
void Compute_id251(inout CS_STREAMS streams)
{
    streams.Multiply_48_id163 = Compute_id225(streams);
}
void Compute_id249(inout CS_STREAMS streams)
{
    streams.Input_47_id160 = Compute_id218();
}
void Compute_id247(inout CS_STREAMS streams)
{
    streams.Plus_46_id156 = Compute_id217(streams);
}
void Compute_id245(inout CS_STREAMS streams)
{
    streams.Multiply_45_id152 = Compute_id211(streams);
}
void Compute_id243(inout CS_STREAMS streams)
{
    streams.Input_44_id149 = Compute_id204();
}
void Compute_id241(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_43_id144 = Compute_id203(streams);
}
void Compute_id239(inout CS_STREAMS streams)
{
    streams.Multiply_42_id140 = Compute_id195(streams);
}
void Compute_id237(inout CS_STREAMS streams)
{
    streams.Multiply_41_id136 = Compute_id189(streams);
}
void Compute_id235(inout CS_STREAMS streams)
{
    streams.Multiply_40_id132 = Compute_id183(streams);
}
void Compute_id233(inout CS_STREAMS streams)
{
    streams.Input_39_id129 = Compute_id176();
}
void Compute_id231(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id175(streams);
}
void Compute_id229(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id46(streams);
}
void Compute_id227(inout CS_STREAMS streams)
{
    streams.Input_38_id107 = Compute_id147();
}
void Compute_id541(inout CS_STREAMS streams)
{
    streams.Plus_37_id297 = Compute_id501(streams);
}
void Compute_id539(inout CS_STREAMS streams)
{
    streams.Input_36_id294 = Compute_id494();
}
void Compute_id537(inout CS_STREAMS streams)
{
    streams.Plus_35_id290 = Compute_id493(streams);
}
void Compute_id535(inout CS_STREAMS streams)
{
    streams.Input_34_id287 = Compute_id486();
}
void Compute_id533(inout CS_STREAMS streams)
{
    streams.Multiply_33_id283 = Compute_id485(streams);
}
void Compute_id531(inout CS_STREAMS streams)
{
    streams.Input_32_id280 = Compute_id478();
}
void Compute_id529(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_31_id275 = Compute_id477(streams);
}
void Compute_id527(inout CS_STREAMS streams)
{
    streams.Multiply_30_id271 = Compute_id469(streams);
}
void Compute_id525(inout CS_STREAMS streams)
{
    streams.Input_29_id268 = Compute_id462();
}
void Compute_id523(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_28_id257 = Compute_id461(streams);
}
void Compute_id521(inout CS_STREAMS streams)
{
    streams.Input_27_id254 = Compute_id451();
}
void Compute_id519(inout CS_STREAMS streams)
{
    streams.Multiply_26_id250 = Compute_id450(streams);
}
void Compute_id517(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id444(streams);
}
void Compute_id515(inout CS_STREAMS streams)
{
    streams.Multiply_25_id236 = Compute_id421(streams);
}
void Compute_id513(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_24_id225 = Compute_id415(streams);
}
void Compute_id511(inout CS_STREAMS streams)
{
    streams.TextureValue_22_id217 = Compute_id392(streams);
}
void Compute_id509()
{
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
void Compute_id505(inout CS_STREAMS streams)
{
    streams.r_20_id214 = Compute_id386(streams);
}
void Compute_id503(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id58(streams);
}
void Compute_id584(inout CS_STREAMS streams)
{
    streams.Plus_19_id322 = Compute_id572(streams);
}
void Compute_id582(inout CS_STREAMS streams)
{
    streams.Input_18_id319 = Compute_id565();
}
void Compute_id580(inout CS_STREAMS streams)
{
    streams.Multiply_17_id315 = Compute_id564(streams);
}
void Compute_id578(inout CS_STREAMS streams)
{
    streams.Input_16_id312 = Compute_id557();
}
void Compute_id576(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_15_id307 = Compute_id556(streams);
}
void Compute_id574(inout CS_STREAMS streams)
{
    streams.Input_14_id304 = Compute_id547();
}
void Compute_id287(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id283(streams);
}
void Compute_id285(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id73(streams);
}
void Compute_id141(inout CS_STREAMS streams)
{
    streams.Lerp_12_id357 = Compute_id118(streams);
}
void Compute_id139(inout CS_STREAMS streams)
{
    streams.Input_11_id354 = Compute_id109();
}
void Compute_id137(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id347 = Compute_id108(streams);
}
void Compute_id135()
{
}
void Compute_id134()
{
}
void Compute_id133()
{
}
void Compute_id132()
{
}
void Compute_id131(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id344 = Compute_id102(streams);
}
void Compute_id129(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id340 = Compute_id98(streams);
}
void Compute_id127(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id336 = Compute_id94(streams);
}
void Compute_id125(inout CS_STREAMS streams)
{
    streams.Input_3_id333 = Compute_id87();
}
void Compute_id123(inout CS_STREAMS streams)
{
    streams.g_2_id330 = Compute_id86(streams);
}
void Compute_id121(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id71(streams);
}
void Compute_id119()
{
}
float3 Compute_id376(inout CS_STREAMS streams)
{
    return streams.Plus_56_id206;
}
void Compute_id375(inout CS_STREAMS streams)
{

    {
        Compute_id355(streams);
    }

    {
        Compute_id357(streams);
    }

    {
        Compute_id359(streams);
    }

    {
        Compute_id361(streams);
    }

    {
        Compute_id363(streams);
    }

    {
        Compute_id365(streams);
    }

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
}
float3 Compute_id254(inout CS_STREAMS streams)
{
    return streams.Multiply_48_id163;
}
void Compute_id253(inout CS_STREAMS streams)
{

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
        Compute_id239(streams);
    }

    {
        Compute_id241(streams);
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
}
float3 Compute_id544(inout CS_STREAMS streams)
{
    return streams.Plus_37_id297;
}
void Compute_id543(inout CS_STREAMS streams)
{

    {
        Compute_id503(streams);
    }

    {
        Compute_id505(streams);
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
        Compute_id509();
    }

    {
        Compute_id511(streams);
    }

    {
        Compute_id513(streams);
    }

    {
        Compute_id515(streams);
    }

    {
        Compute_id517(streams);
    }

    {
        Compute_id519(streams);
    }

    {
        Compute_id521(streams);
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
    return streams.Plus_19_id322;
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
float Compute_id290(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
void Compute_id289(inout CS_STREAMS streams)
{

    {
        Compute_id285(streams);
    }

    {
        Compute_id287(streams);
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
float4 Compute_id144(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id357;
}
void Compute_id143(inout CS_STREAMS streams)
{

    {
        Compute_id119();
    }

    {
        Compute_id121(streams);
    }

    {
        Compute_id123(streams);
    }

    {
        Compute_id125(streams);
    }

    {
        Compute_id127(streams);
    }

    {
        Compute_id129(streams);
    }

    {
        Compute_id131(streams);
    }

    {
        Compute_id132();
    }

    {
        Compute_id133();
    }

    {
        Compute_id134();
    }

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
}
float3 Compute_id43(inout CS_STREAMS streams)
{
    Compute_id375(streams);
    return Compute_id376(streams);
}
float3 Compute_id42(inout CS_STREAMS streams)
{
    Compute_id253(streams);
    return Compute_id254(streams);
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id543(streams);
    return Compute_id544(streams);
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id586(streams);
    return Compute_id587(streams);
}
float Compute_id45(inout CS_STREAMS streams)
{
    Compute_id289(streams);
    return Compute_id290(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id44(inout CS_STREAMS streams)
{
    Compute_id143(streams);
    return Compute_id144(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id40(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id41(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id42(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id43(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id44(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id45(streams);
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

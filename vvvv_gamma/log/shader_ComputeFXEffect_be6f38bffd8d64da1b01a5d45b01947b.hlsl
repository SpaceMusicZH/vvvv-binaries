/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_22> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx21,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_23,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_24> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_22>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_40> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx39,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_41,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_42> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_40>}]}], mixin AssignVarFloat<Multiply_43> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<Multiply_38>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_42>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_44> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_43>}, {Y = GetVarFloat<Multiply_43>}, {Z = GetVarFloat<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_44>}, {Right = GetVarFloat3<Input_45>}]}], mixin AssignVarFloat3<Plus_47> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_33>}, {Right = GetVarFloat3<Multiply_46>}]}], mixin AssignVarFloat3<Input_48> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_49> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_47>}, {Right = GetVarFloat3<Input_48>}]}]]}]}, {Value = GetVarFloat3<Multiply_49>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_13> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_14> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_13>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_14>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_13> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_50> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_13>}]}], mixin AssignVarFloat<Input_51> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_50>}, {Right = GetVarFloat<Input_51>}]}], mixin AssignVarFloat<g_53> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_13>}]}], mixin AssignVarFloat<Multiply_54> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_53>}, {Right = GetVarFloat<Input_51>}]}], mixin AssignVarFloat<Multiply_55> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_53>}, {Right = GetVarFloat<Input_51>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_56> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_52>}, {Y = GetVarFloat<Multiply_54>}, {Z = GetVarFloat<Multiply_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_58> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_56>}, {Right = GetVarFloat3<Input_57>}]}], mixin AssignVarFloat3<Input_59> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_60> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_58>}, {Right = GetVarFloat3<Input_59>}]}]]}]}, {Value = GetVarFloat3<Plus_60>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_22> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx21,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_23,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_24> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_22>}]}], mixin AssignVarFloat<Input_25> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_26> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}, {Y = GetVarFloat<Input_25>}, {Z = GetVarFloat<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_28> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_28>}, {Right = GetVarFloat3<Input_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_30>}, {Right = GetVarFloat3<Input_31>}]}]]}]}, {Value = GetVarFloat3<Plus_32>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_15> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_16> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_15>}, {Y = GetVarFloat<Input_15>}, {Z = GetVarFloat<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_18> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_16>}, {Right = GetVarFloat3<Input_17>}]}], mixin AssignVarFloat3<Input_19> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_20> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_18>}, {Right = GetVarFloat3<Input_19>}]}]]}]}, {Value = GetVarFloat3<Plus_20>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_13> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_14> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_13>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_14>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_15> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_16> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_15>}, {Y = GetVarFloat<Input_15>}, {Z = GetVarFloat<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_18> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_16>}, {Right = GetVarFloat3<Input_17>}]}], mixin AssignVarFloat3<Input_19> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_20> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_18>}, {Right = GetVarFloat3<Input_19>}]}]]}]}, {Value = GetVarFloat3<Plus_20>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_22> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx21,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_23,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_24> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_22>}]}], mixin AssignVarFloat<Input_25> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_26> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}, {Y = GetVarFloat<Input_25>}, {Z = GetVarFloat<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_28> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_28>}, {Right = GetVarFloat3<Input_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_32> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_30>}, {Right = GetVarFloat3<Input_31>}]}]]}]}, {Value = GetVarFloat3<Plus_32>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_35> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx34,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_36,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_37> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_35>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_22> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx21,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_23,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_24> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_22>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_37>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_24>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_40> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx39,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_41,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_42> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_40>}]}], mixin AssignVarFloat<Multiply_43> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<Multiply_38>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_42>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_44> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_43>}, {Y = GetVarFloat<Multiply_43>}, {Z = GetVarFloat<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_44>}, {Right = GetVarFloat3<Input_45>}]}], mixin AssignVarFloat3<Plus_47> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_33>}, {Right = GetVarFloat3<Multiply_46>}]}], mixin AssignVarFloat3<Input_48> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_49> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_47>}, {Right = GetVarFloat3<Input_48>}]}]]}]}, {Value = GetVarFloat3<Multiply_49>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_13> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_50> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_13>}]}], mixin AssignVarFloat<Input_51> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_50>}, {Right = GetVarFloat<Input_51>}]}], mixin AssignVarFloat<g_53> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_13>}]}], mixin AssignVarFloat<Multiply_54> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_53>}, {Right = GetVarFloat<Input_51>}]}], mixin AssignVarFloat<Multiply_55> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<g_53>}, {Right = GetVarFloat<Input_51>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_56> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_52>}, {Y = GetVarFloat<Multiply_54>}, {Z = GetVarFloat<Multiply_55>}]}], mixin AssignVarFloat3<Input_57> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_58> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_56>}, {Right = GetVarFloat3<Input_57>}]}], mixin AssignVarFloat3<Input_59> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_60> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_58>}, {Right = GetVarFloat3<Input_59>}]}]]}]}, {Value = GetVarFloat3<Plus_60>}]
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
@C    InputValue_id322 => ShaderFX.InputValueUInt
@C    InputValue_id336 => ShaderFX.InputValueUInt.i1
@C    InputValue_id357 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id201 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id202 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id203 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id204 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id205 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
@C    VoxelCounts_id326 => SMMidiBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id327 => SMMidiBufferSelector_ShaderFX.PlacementCounts
@C    Channel_id328 => SMMidiBufferSelector_ShaderFX.Channel
@C    Blink_id329 => SMMidiBufferSelector_ShaderFX.Blink
@C    SamplerOffset_id330 => SMMidiBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id331 => SMMidiBufferSelector_ShaderFX.SamplerScale
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id112 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id200 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    VoxelVolume_id325 => SMMidiBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id111 => ObjectTexture_fx34 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id130 => ObjectTexture_fx21 [Stage: Compute, Slot: (5-5)]
@R    DynamicTexture_id152 => ObjectTexture_fx39 [Stage: Compute, Slot: (6-6)]
@R    DynamicBuffer_id343 => ObjectBuffer_fx0 [Stage: Compute, Slot: (7-7)]
@R    DynamicTexture_id350 => ObjectTexture_fx7 [Stage: Compute, Slot: (8-8)]
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
@S    SMCalcLuminance_ShaderFX => 11106821d0f843c804b28a35bba98d51
@S    MultiplyFloat => 3c410b17a1d4349d5f1f2557ce58f158
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    SMVideoBufferSelector_ShaderFX => de3fce0c1f79f845dd6952c0e7643ad2
@S    GetMemberFloat4Float => d4b15ec8b75d7bebcaf3454b6f9ce66b
***************************
*****     Stages      *****
***************************
@G    Compute => 1ec383532affe9f69fdd04a428d87bc5
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
//   uint InputValue_id322;             // Offset:  156 Size:     4
//   uint InputValue_id336;             // Offset:  160 Size:     4
//   float InputValue_id357;            // Offset:  164 Size:     4
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
//   int3 VoxelCounts_id326;            // Offset:  132 Size:    12
//   int3 PlacementCounts_id327;        // Offset:  144 Size:    12 [unused]
//   int Channel_id328;                 // Offset:  156 Size:     4 [unused]
//   float Blink_id329;                 // Offset:  160 Size:     4 [unused]
//   float2 SamplerOffset_id330;        // Offset:  164 Size:     8 [unused]
//   float2 SamplerScale_id331;         // Offset:  176 Size:     8 [unused]
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
// Resource bind info for VoxelVolume_id200
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for VoxelVolume_id325
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
// DynamicSampler_id112              sampler      NA          NA             s0      1 
// Damping_id97                      texture  struct         r/o             t0      1 
// PlacementVertices_id104           texture  struct         r/o             t1      1 
// VoxelVolume_id200                 texture  struct         r/o             t2      1 
// VoxelVolume_id325                 texture  struct         r/o             t3      1 
// DynamicTexture_id111              texture  float4          2d             t4      1 
// DynamicTexture_id130              texture  float4          2d             t5      1 
// DynamicTexture_id152              texture  float4          2d             t6      1 
// DynamicBuffer_id343               texture  float4         buf             t7      1 
// DynamicTexture_id350              texture  float4          2d             t8      1 
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
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t8
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
#line 1549 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_be6f38bffd8d64da1b01a5d45b01947b.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1550
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1561
  if_nz cb2[5].x

#line 1571
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

#line 1522
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 771
  mad r11.xyz, cb1[7].wwww, cb1[8].xyzx, cb1[9].xyzx  // r11.x <- <Compute_id555 return value>.x; r11.y <- <Compute_id555 return value>.y; r11.z <- <Compute_id555 return value>.z

#line 1525
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 767
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.zyzz, t5.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id443 return value>.x; r12.y <- <Compute_id443 return value>.y; r12.z <- <Compute_id443 return value>.z

#line 479
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id60 return value>

#line 746
  mov r12.yz, cb1[4].wwww

#line 738
  mad r12.yzw, r12.xxyz, cb1[5].xxyz, cb1[6].xxyz  // r12.y <- <Compute_id492 return value>.x; r12.z <- <Compute_id492 return value>.y; r12.w <- <Compute_id492 return value>.z

#line 730
  add r12.yzw, r12.yyzw, cb1[7].xxyz  // r12.y <- <Compute_id500 return value>.x; r12.z <- <Compute_id500 return value>.y; r12.w <- <Compute_id500 return value>.z

#line 1526
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.yzwy, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.yzwy  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 722
  sample_l_indexable(texture2d)(float,float,float,float) r12.yzw, r6.xyxx, t4.wxyz, s0, l(0.000000)  // r12.y <- <Compute_id148 return value>.x; r12.z <- <Compute_id148 return value>.y; r12.w <- <Compute_id148 return value>.z

#line 427
  dp3 r0.w, r12.yzwy, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id46 return value>

#line 704
  mul r0.w, r12.x, r0.w  // r0.w <- <Compute_id206 return value>

#line 700
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xzxx, t6.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id212 return value>.x; r12.y <- <Compute_id212 return value>.y; r12.z <- <Compute_id212 return value>.z

#line 387
  dp3 r1.w, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id54 return value>

#line 691
  mul r0.w, r0.w, r1.w  // r0.w <- <Compute_id241 return value>

#line 675
  mad r12.xyz, r0.wwww, cb1[1].xyzx, cb1[0].xyzx  // r12.x <- <Compute_id263 return value>.x; r12.y <- <Compute_id263 return value>.y; r12.z <- <Compute_id263 return value>.z

#line 667
  mul r13.xyz, r12.xyzx, cb1[2].xyzx  // r13.x <- <Compute_id271 return value>.x; r13.y <- <Compute_id271 return value>.y; r13.z <- <Compute_id271 return value>.z

#line 1527
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 662
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xy, vThreadID.x, l(0), t2.xyxx  // r12.x <- m.x; r12.y <- m.y

#line 640
  mul r12.xyz, r12.xyyx, cb1[2].wwww  // r12.z <- <Compute_id378 return value>

#line 616
  mad r12.xyz, r12.xyzx, cb1[3].xyzx, cb1[4].xyzx  // r12.x <- <Compute_id408 return value>.x; r12.y <- <Compute_id408 return value>.y; r12.z <- <Compute_id408 return value>.z

#line 1528
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1530
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 610
  itof r12.xyz, cb2[8].yzwy
  mul r12.xyz, r6.xyzx, r12.xyzx
  ftou r12.xyz, r12.xyzx  // r12.x <- uvw.x; r12.y <- uvw.y; r12.z <- uvw.z

#line 275
  imul null, r0.w, cb2[8].z, cb2[8].y
  imad r1.w, r12.y, cb2[8].y, r12.x
  imad r0.w, r12.z, r0.w, r1.w  // r0.w <- <CalculateVoxelVolumeIndex_id62 return value>

#line 279
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r12.xyzw, r0.w, l(0), t3.xyzw  // r12.x <- <GetVoxel_id35 return value>.Empty; r12.y <- <GetVoxel_id35 return value>.StartTime; r12.z <- <GetVoxel_id35 return value>.Note; r12.w <- <GetVoxel_id35 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r13.xyzw, r0.w, l(16), t3.xyzw  // r13.x <- <GetVoxel_id35 return value>.Length; r13.y <- <GetVoxel_id35 return value>.Channel; r13.z <- <GetVoxel_id35 return value>.Constant; r13.w <- <GetVoxel_id35 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r0.w, l(32), t3.wxyz  // r14.y <- <GetVoxel_id35 return value>.TrackId; r14.z <- <GetVoxel_id35 return value>.ModWheel; r14.w <- <GetVoxel_id35 return value>.PitchBend; r14.x <- <GetVoxel_id35 return value>.Random

#line 572
  switch cb1[9].w

#line 575
    case l(0)

#line 576
    mov r14.x, r12.x  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 577
    case l(1)

#line 578
    mov r14.x, r12.y  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 579
    case l(2)

#line 580
    mov r14.x, r12.z  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 581
    case l(3)

#line 582
    mov r14.x, r12.w  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 583
    case l(4)

#line 584
    mov r14.x, r13.x  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 585
    case l(5)

#line 586
    mov r14.x, r13.y  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 587
    case l(6)

#line 588
    mov r14.x, r13.z  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 589
    case l(7)

#line 590
    mov r14.x, r13.w  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 591
    case l(8)

#line 592
    mov r14.x, r14.y  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 593
    case l(9)

#line 594
    mov r14.x, r14.z  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 595
    case l(10)

#line 596
    mov r14.x, r14.w  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 597
    case l(11)

#line 598
    break 

#line 599
    default 

#line 600
    mov r14.x, l(0)  // r14.x <- <SelectMidiValue_id63 return value>
    break 

#line 601
  endswitch   // r14.x <- <SelectMidiValue_id63 return value>

#line 829
  utof r0.w, cb1[10].x
  mul r0.w, r0.w, r14.x
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id88 return value>

#line 823
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r0.wwww, t7.xyzw  // r12.x <- <Compute_id92 return value>.x; r12.y <- <Compute_id92 return value>.y; r12.z <- <Compute_id92 return value>.z

#line 552
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id573 return value>.x; r14.y <- <SRgbToLinear_id573 return value>.y; r14.z <- <SRgbToLinear_id573 return value>.z

#line 815
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t8.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id102 return value>.x; r6.z <- <Compute_id102 return value>.y; r6.w <- <Compute_id102 return value>.z

#line 807
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].yyyy, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id112 return value>.x; r6.z <- <Compute_id112 return value>.y; r6.w <- <Compute_id112 return value>.z

#line 1537
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1508
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1412
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 1415
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1414
  mad r0.w, r13.x, r10.y, -r12.z  // r0.w <- p.x

#line 1415
  mad r1.w, r13.x, r10.z, r12.w  // r1.w <- p.y

#line 1402
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1404
  mul r2.w, r10.w, r10.x
  mad r13.y, r12.x, r1.w, -r2.w  // r13.y <- p.y

#line 1405
  mul r2.w, r10.w, r12.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1392
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1394
  mul r2.w, r1.w, r10.x
  mad r13.x, r12.x, r0.w, r2.w  // r13.x <- p.x

#line 1395
  mul r1.w, r1.w, r12.x
  mad r13.z, -r10.x, r0.w, r1.w  // r13.z <- p.z

#line 1508
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1412
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1415
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1414
  mad r0.w, r12.x, r11.x, -r5.z

#line 1415
  mad r1.w, r12.x, r11.y, r5.w  // r1.w <- p.y

#line 1402
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1404
  mul r2.w, r11.z, r5.x
  mad r12.y, r10.x, r1.w, -r2.w  // r12.y <- p.y

#line 1405
  mul r2.w, r11.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1392
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1394
  mul r2.w, r1.w, r5.x
  mad r12.x, r10.x, r0.w, r2.w  // r12.x <- p.x

#line 1395
  mul r1.w, r1.w, r10.x
  mad r12.z, -r5.x, r0.w, r1.w  // r12.z <- p.z

#line 1538
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 802
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r5.xyz, vThreadID.x, l(0), t2.xyzx  // r5.x <- m.x; r5.y <- m.y; r5.z <- m.z

#line 523
  dp3 r0.w, r5.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id69 return value>

#line 1573
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1574
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1575
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1576
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1577
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1581
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1582
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1597
ret 
// Approximately 182 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id351 = 0;
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
    float Input_15_id296;
    float3 SMVector3Join_ShaderFXResult_16_id299;
    float3 Input_17_id304;
    float3 Multiply_18_id307;
    float3 Input_19_id311;
    float3 Plus_20_id314;
    float4 TextureValue_22_id129;
    float SMCalcLuminance_ShaderFXResult_24_id136;
    float Input_25_id264;
    float3 SMVector3Join_ShaderFXResult_26_id267;
    float3 Input_27_id272;
    float3 Multiply_28_id275;
    float3 Input_29_id279;
    float3 Plus_30_id282;
    float3 Input_31_id286;
    float3 Plus_32_id289;
    float3 Input_33_id107;
    float4 TextureValue_35_id110;
    float SMCalcLuminance_ShaderFXResult_37_id118;
    float Multiply_38_id147;
    float4 TextureValue_40_id151;
    float SMCalcLuminance_ShaderFXResult_42_id158;
    float Multiply_43_id169;
    float3 SMVector3Join_ShaderFXResult_44_id173;
    float3 Input_45_id178;
    float3 Multiply_46_id181;
    float3 Plus_47_id185;
    float3 Input_48_id189;
    float3 Multiply_49_id192;
    float4 SMVideoBufferSelector_ShaderFXResult_13_id199;
    float r_50_id207;
    float Input_51_id210;
    float Multiply_52_id213;
    float g_53_id217;
    float Multiply_54_id220;
    float Multiply_55_id224;
    float3 SMVector3Join_ShaderFXResult_56_id228;
    float3 Input_57_id233;
    float3 Multiply_58_id236;
    float3 Input_59_id240;
    float3 Plus_60_id243;
    uint Input_1_id321;
    float SMMidiSelectValue_ShaderFXResult_2_id324;
    uint Input_3_id335;
    uint SMValueToIndex_ShaderFXResult_4_id338;
    float4 BufferItem_5_id342;
    float4 SRgbToLinear_ShaderFXResult_6_id346;
    float4 TextureValue_9_id349;
    float Input_11_id356;
    float4 Lerp_12_id359;
    float SMCalcLuminance_ShaderFXResult_14_id368;
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
    uint InputValue_id322;
    uint InputValue_id336;
    float InputValue_id357;
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
    int3 VoxelCounts_id326;
    int3 PlacementCounts_id327;
    int Channel_id328;
    float Blink_id329;
    float2 SamplerOffset_id330;
    float2 SamplerScale_id331 = float2(1, 1);
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
StructuredBuffer<SMMidiNoteData> VoxelVolume_id325;
Texture2D DynamicTexture_id111;
SamplerState DynamicSampler_id112;
Texture2D DynamicTexture_id130;
Texture2D DynamicTexture_id152;
Buffer<float4> DynamicBuffer_id343;
Texture2D DynamicTexture_id350;
uint CalculateVoxelVolumeIndex_id62(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id326.x, VoxelCounts_id326.x * VoxelCounts_id326.y));
}
SMMidiNoteData GetVoxel_id35(uint3 coordinate)
{
    return VoxelVolume_id325[CalculateVoxelVolumeIndex_id62(coordinate)];
}
float3 Compute_id405(inout CS_STREAMS streams)
{
    return streams.Input_59_id240;
}
float3 Compute_id403(inout CS_STREAMS streams)
{
    return streams.Multiply_58_id236;
}
float3 Compute_id397(inout CS_STREAMS streams)
{
    return streams.Input_57_id233;
}
float3 Compute_id395(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_56_id228;
}
float Compute_id389(inout CS_STREAMS streams)
{
    return streams.Multiply_55_id224;
}
float Compute_id387(inout CS_STREAMS streams)
{
    return streams.Multiply_54_id220;
}
float Compute_id385(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id213;
}
float Compute_id381(inout CS_STREAMS streams)
{
    return streams.Input_51_id210;
}
float Compute_id379(inout CS_STREAMS streams)
{
    return streams.g_53_id217;
}
float Compute_id375(inout CS_STREAMS streams)
{
    return streams.Input_51_id210;
}
float Compute_id373(inout CS_STREAMS streams)
{
    return streams.g_53_id217;
}
float4 Compute_id369(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_13_id199;
}
float Compute_id365(inout CS_STREAMS streams)
{
    return streams.Input_51_id210;
}
float Compute_id363(inout CS_STREAMS streams)
{
    return streams.r_50_id207;
}
float4 Compute_id357(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_13_id199;
}
float3 Compute_id268(inout CS_STREAMS streams)
{
    return streams.Input_48_id189;
}
float3 Compute_id266(inout CS_STREAMS streams)
{
    return streams.Plus_47_id185;
}
float3 Compute_id260(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id181;
}
float3 Compute_id258(inout CS_STREAMS streams)
{
    return streams.Input_33_id107;
}
float3 Compute_id254(inout CS_STREAMS streams)
{
    return streams.Input_45_id178;
}
float3 Compute_id252(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_44_id173;
}
float Compute_id246(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id169;
}
float Compute_id244(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id169;
}
float Compute_id242(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id169;
}
float Compute_id238(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_42_id158;
}
float Compute_id236(inout CS_STREAMS streams)
{
    return streams.Multiply_38_id147;
}
float Luminance_id54(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id213(inout CS_STREAMS streams)
{
    return streams.TextureValue_40_id151;
}
float Compute_id207()
{
    return Value_id351;
}
float2 Compute_id209(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Compute_id203(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_24_id136;
}
float Compute_id201(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_37_id118;
}
float Luminance_id50(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id178(inout CS_STREAMS streams)
{
    return streams.TextureValue_22_id129;
}
float Compute_id172()
{
    return Value_id351;
}
float2 Compute_id174(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float Luminance_id46(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id149(inout CS_STREAMS streams)
{
    return streams.TextureValue_35_id110;
}
float Compute_id143()
{
    return Value_id351;
}
float2 Compute_id145(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float3 Compute_id497(inout CS_STREAMS streams)
{
    return streams.Input_31_id286;
}
float3 Compute_id495(inout CS_STREAMS streams)
{
    return streams.Plus_30_id282;
}
float3 Compute_id489(inout CS_STREAMS streams)
{
    return streams.Input_29_id279;
}
float3 Compute_id487(inout CS_STREAMS streams)
{
    return streams.Multiply_28_id275;
}
float3 Compute_id481(inout CS_STREAMS streams)
{
    return streams.Input_27_id272;
}
float3 Compute_id479(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_26_id267;
}
float Compute_id473(inout CS_STREAMS streams)
{
    return streams.Input_25_id264;
}
float Compute_id471(inout CS_STREAMS streams)
{
    return streams.Input_25_id264;
}
float Compute_id469(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_24_id136;
}
float Luminance_id60(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id444(inout CS_STREAMS streams)
{
    return streams.TextureValue_22_id129;
}
float Compute_id438()
{
    return Value_id351;
}
float2 Compute_id440(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id552(inout CS_STREAMS streams)
{
    return streams.Input_19_id311;
}
float3 Compute_id550(inout CS_STREAMS streams)
{
    return streams.Multiply_18_id307;
}
float3 Compute_id544(inout CS_STREAMS streams)
{
    return streams.Input_17_id304;
}
float3 Compute_id542(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_16_id299;
}
float Compute_id536(inout CS_STREAMS streams)
{
    return streams.Input_15_id296;
}
float Compute_id534(inout CS_STREAMS streams)
{
    return streams.Input_15_id296;
}
float Compute_id532(inout CS_STREAMS streams)
{
    return streams.Input_15_id296;
}
float Luminance_id69(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id321(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_13_id199;
}
float Compute_id109(inout CS_STREAMS streams)
{
    return streams.Input_11_id356;
}
float4 Compute_id107(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id349;
}
float4 Compute_id105(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id346;
}
float Compute_id97()
{
    return Value_id351;
}
float2 Compute_id99(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id573(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id93(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id342;
}
uint Compute_id89(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id338;
}
uint Compute_id83(inout CS_STREAMS streams)
{
    return streams.Input_3_id335;
}
float Compute_id85(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_2_id324;
}
float SelectMidiValue_id63(SMMidiNoteData x, uint i)
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
uint Compute_id77(inout CS_STREAMS streams)
{
    return streams.Input_1_id321;
}
SMMidiNoteData Compute_id61(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id326;
    SMMidiNoteData m = GetVoxel_id35(uvw);
    return m;
}
float3 Compute_id408(inout CS_STREAMS streams)
{
    return Compute_id403(streams) + Compute_id405(streams);
}
float3 Compute_id401()
{
    return InputValue_id241;
}
float3 Compute_id400(inout CS_STREAMS streams)
{
    return Compute_id395(streams) * Compute_id397(streams);
}
float3 Compute_id393()
{
    return InputValue_id234;
}
float3 Compute_id392(inout CS_STREAMS streams)
{
    return float3(Compute_id385(streams), Compute_id387(streams), Compute_id389(streams));
}
float Compute_id384(inout CS_STREAMS streams)
{
    return Compute_id379(streams) * Compute_id381(streams);
}
float Compute_id378(inout CS_STREAMS streams)
{
    return Compute_id373(streams) * Compute_id375(streams);
}
float Compute_id372(inout CS_STREAMS streams)
{
    return Compute_id369(streams).g;
}
float Compute_id368(inout CS_STREAMS streams)
{
    return Compute_id363(streams) * Compute_id365(streams);
}
float Compute_id361()
{
    return InputValue_id211;
}
float Compute_id360(inout CS_STREAMS streams)
{
    return Compute_id357(streams).r;
}
float4 Compute_id55(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id201;
    float4 m = VoxelVolume_id200[i];
    return m;
}
float3 Compute_id271(inout CS_STREAMS streams)
{
    return Compute_id266(streams) * Compute_id268(streams);
}
float3 Compute_id264()
{
    return InputValue_id190;
}
float3 Compute_id263(inout CS_STREAMS streams)
{
    return Compute_id258(streams) + Compute_id260(streams);
}
float3 Compute_id257(inout CS_STREAMS streams)
{
    return Compute_id252(streams) * Compute_id254(streams);
}
float3 Compute_id250()
{
    return InputValue_id179;
}
float3 Compute_id249(inout CS_STREAMS streams)
{
    return float3(Compute_id242(streams), Compute_id244(streams), Compute_id246(streams));
}
float Compute_id241(inout CS_STREAMS streams)
{
    return Compute_id236(streams) * Compute_id238(streams);
}
float Compute_id235(inout CS_STREAMS streams)
{
    float4 color = Compute_id213(streams);
    return Luminance_id54(color.rgb);
}
float4 Compute_id212(inout CS_STREAMS streams)
{
    return DynamicTexture_id152.SampleLevel(DynamicSampler_id112, Compute_id209(streams), Compute_id207());
}
float Compute_id206(inout CS_STREAMS streams)
{
    return Compute_id201(streams) * Compute_id203(streams);
}
float Compute_id200(inout CS_STREAMS streams)
{
    float4 color = Compute_id178(streams);
    return Luminance_id50(color.rgb);
}
float4 Compute_id177(inout CS_STREAMS streams)
{
    return DynamicTexture_id130.SampleLevel(DynamicSampler_id112, Compute_id174(streams), Compute_id172());
}
float Compute_id171(inout CS_STREAMS streams)
{
    float4 color = Compute_id149(streams);
    return Luminance_id46(color.rgb);
}
float4 Compute_id148(inout CS_STREAMS streams)
{
    return DynamicTexture_id111.SampleLevel(DynamicSampler_id112, Compute_id145(streams), Compute_id143());
}
float3 Compute_id141()
{
    return InputValue_id108;
}
float3 Compute_id500(inout CS_STREAMS streams)
{
    return Compute_id495(streams) + Compute_id497(streams);
}
float3 Compute_id493()
{
    return InputValue_id287;
}
float3 Compute_id492(inout CS_STREAMS streams)
{
    return Compute_id487(streams) + Compute_id489(streams);
}
float3 Compute_id485()
{
    return InputValue_id280;
}
float3 Compute_id484(inout CS_STREAMS streams)
{
    return Compute_id479(streams) * Compute_id481(streams);
}
float3 Compute_id477()
{
    return InputValue_id273;
}
float3 Compute_id476(inout CS_STREAMS streams)
{
    return float3(Compute_id469(streams), Compute_id471(streams), Compute_id473(streams));
}
float Compute_id467()
{
    return InputValue_id265;
}
float Compute_id466(inout CS_STREAMS streams)
{
    float4 color = Compute_id444(streams);
    return Luminance_id60(color.rgb);
}
float4 Compute_id443(inout CS_STREAMS streams)
{
    return DynamicTexture_id130.SampleLevel(DynamicSampler_id112, Compute_id440(streams), Compute_id438());
}
float3 Compute_id555(inout CS_STREAMS streams)
{
    return Compute_id550(streams) + Compute_id552(streams);
}
float3 Compute_id548()
{
    return InputValue_id312;
}
float3 Compute_id547(inout CS_STREAMS streams)
{
    return Compute_id542(streams) * Compute_id544(streams);
}
float3 Compute_id540()
{
    return InputValue_id305;
}
float3 Compute_id539(inout CS_STREAMS streams)
{
    return float3(Compute_id532(streams), Compute_id534(streams), Compute_id536(streams));
}
float Compute_id530()
{
    return InputValue_id297;
}
float Compute_id343(inout CS_STREAMS streams)
{
    float4 color = Compute_id321(streams);
    return Luminance_id69(color.rgb);
}
float4 Compute_id64(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id201;
    float4 m = VoxelVolume_id200[i];
    return m;
}
float4 Compute_id112(inout CS_STREAMS streams)
{
    return lerp(Compute_id105(streams), Compute_id107(streams), Compute_id109(streams));
}
float Compute_id103()
{
    return InputValue_id357;
}
float4 Compute_id102(inout CS_STREAMS streams)
{
    return DynamicTexture_id350.SampleLevel(DynamicSampler_id112, Compute_id99(streams), Compute_id97());
}
float4 Compute_id96(inout CS_STREAMS streams)
{
    return SRgbToLinear_id573(Compute_id93(streams));
}
float4 Compute_id92(inout CS_STREAMS streams)
{
    return DynamicBuffer_id343[Compute_id89(streams)];
}
uint Compute_id88(inout CS_STREAMS streams)
{
    float v = Compute_id85(streams);
    uint c = Compute_id83(streams);
    return round(v * c);
}
uint Compute_id81()
{
    return InputValue_id336;
}
float Compute_id80(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id61(streams);
    return SelectMidiValue_id63(m, Compute_id77(streams));
}
uint Compute_id70()
{
    return InputValue_id322;
}
void Compute_id432(inout CS_STREAMS streams)
{
    streams.Plus_60_id243 = Compute_id408(streams);
}
void Compute_id430(inout CS_STREAMS streams)
{
    streams.Input_59_id240 = Compute_id401();
}
void Compute_id428(inout CS_STREAMS streams)
{
    streams.Multiply_58_id236 = Compute_id400(streams);
}
void Compute_id426(inout CS_STREAMS streams)
{
    streams.Input_57_id233 = Compute_id393();
}
void Compute_id424(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_56_id228 = Compute_id392(streams);
}
void Compute_id422(inout CS_STREAMS streams)
{
    streams.Multiply_55_id224 = Compute_id384(streams);
}
void Compute_id420(inout CS_STREAMS streams)
{
    streams.Multiply_54_id220 = Compute_id378(streams);
}
void Compute_id418(inout CS_STREAMS streams)
{
    streams.g_53_id217 = Compute_id372(streams);
}
void Compute_id416(inout CS_STREAMS streams)
{
    streams.Multiply_52_id213 = Compute_id368(streams);
}
void Compute_id414(inout CS_STREAMS streams)
{
    streams.Input_51_id210 = Compute_id361();
}
void Compute_id412(inout CS_STREAMS streams)
{
    streams.r_50_id207 = Compute_id360(streams);
}
void Compute_id410(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_13_id199 = Compute_id55(streams);
}
void Compute_id311(inout CS_STREAMS streams)
{
    streams.Multiply_49_id192 = Compute_id271(streams);
}
void Compute_id309(inout CS_STREAMS streams)
{
    streams.Input_48_id189 = Compute_id264();
}
void Compute_id307(inout CS_STREAMS streams)
{
    streams.Plus_47_id185 = Compute_id263(streams);
}
void Compute_id305(inout CS_STREAMS streams)
{
    streams.Multiply_46_id181 = Compute_id257(streams);
}
void Compute_id303(inout CS_STREAMS streams)
{
    streams.Input_45_id178 = Compute_id250();
}
void Compute_id301(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_44_id173 = Compute_id249(streams);
}
void Compute_id299(inout CS_STREAMS streams)
{
    streams.Multiply_43_id169 = Compute_id241(streams);
}
void Compute_id297(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_42_id158 = Compute_id235(streams);
}
void Compute_id295(inout CS_STREAMS streams)
{
    streams.TextureValue_40_id151 = Compute_id212(streams);
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
    streams.Multiply_38_id147 = Compute_id206(streams);
}
void Compute_id288(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_24_id136 = Compute_id200(streams);
}
void Compute_id286(inout CS_STREAMS streams)
{
    streams.TextureValue_22_id129 = Compute_id177(streams);
}
void Compute_id284()
{
}
void Compute_id283()
{
}
void Compute_id282()
{
}
void Compute_id281(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_37_id118 = Compute_id171(streams);
}
void Compute_id279(inout CS_STREAMS streams)
{
    streams.TextureValue_35_id110 = Compute_id148(streams);
}
void Compute_id277()
{
}
void Compute_id276()
{
}
void Compute_id275()
{
}
void Compute_id274()
{
}
void Compute_id273(inout CS_STREAMS streams)
{
    streams.Input_33_id107 = Compute_id141();
}
void Compute_id524(inout CS_STREAMS streams)
{
    streams.Plus_32_id289 = Compute_id500(streams);
}
void Compute_id522(inout CS_STREAMS streams)
{
    streams.Input_31_id286 = Compute_id493();
}
void Compute_id520(inout CS_STREAMS streams)
{
    streams.Plus_30_id282 = Compute_id492(streams);
}
void Compute_id518(inout CS_STREAMS streams)
{
    streams.Input_29_id279 = Compute_id485();
}
void Compute_id516(inout CS_STREAMS streams)
{
    streams.Multiply_28_id275 = Compute_id484(streams);
}
void Compute_id514(inout CS_STREAMS streams)
{
    streams.Input_27_id272 = Compute_id477();
}
void Compute_id512(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_26_id267 = Compute_id476(streams);
}
void Compute_id510(inout CS_STREAMS streams)
{
    streams.Input_25_id264 = Compute_id467();
}
void Compute_id508(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_24_id136 = Compute_id466(streams);
}
void Compute_id506(inout CS_STREAMS streams)
{
    streams.TextureValue_22_id129 = Compute_id443(streams);
}
void Compute_id504()
{
}
void Compute_id503()
{
}
void Compute_id502()
{
}
void Compute_id501()
{
}
void Compute_id567(inout CS_STREAMS streams)
{
    streams.Plus_20_id314 = Compute_id555(streams);
}
void Compute_id565(inout CS_STREAMS streams)
{
    streams.Input_19_id311 = Compute_id548();
}
void Compute_id563(inout CS_STREAMS streams)
{
    streams.Multiply_18_id307 = Compute_id547(streams);
}
void Compute_id561(inout CS_STREAMS streams)
{
    streams.Input_17_id304 = Compute_id540();
}
void Compute_id559(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_16_id299 = Compute_id539(streams);
}
void Compute_id557(inout CS_STREAMS streams)
{
    streams.Input_15_id296 = Compute_id530();
}
void Compute_id347(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_14_id368 = Compute_id343(streams);
}
void Compute_id345(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_13_id199 = Compute_id64(streams);
}
void Compute_id135(inout CS_STREAMS streams)
{
    streams.Lerp_12_id359 = Compute_id112(streams);
}
void Compute_id133(inout CS_STREAMS streams)
{
    streams.Input_11_id356 = Compute_id103();
}
void Compute_id131(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id349 = Compute_id102(streams);
}
void Compute_id129()
{
}
void Compute_id128()
{
}
void Compute_id127()
{
}
void Compute_id126()
{
}
void Compute_id125(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id346 = Compute_id96(streams);
}
void Compute_id123(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id342 = Compute_id92(streams);
}
void Compute_id121(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id338 = Compute_id88(streams);
}
void Compute_id119(inout CS_STREAMS streams)
{
    streams.Input_3_id335 = Compute_id81();
}
void Compute_id117(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_2_id324 = Compute_id80(streams);
}
void Compute_id115(inout CS_STREAMS streams)
{
    streams.Input_1_id321 = Compute_id70();
}
void Compute_id113()
{
}
float3 Compute_id435(inout CS_STREAMS streams)
{
    return streams.Plus_60_id243;
}
void Compute_id434(inout CS_STREAMS streams)
{

    {
        Compute_id410(streams);
    }

    {
        Compute_id412(streams);
    }

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
}
float3 Compute_id314(inout CS_STREAMS streams)
{
    return streams.Multiply_49_id192;
}
void Compute_id313(inout CS_STREAMS streams)
{

    {
        Compute_id273(streams);
    }

    {
        Compute_id274();
    }

    {
        Compute_id275();
    }

    {
        Compute_id276();
    }

    {
        Compute_id277();
    }

    {
        Compute_id279(streams);
    }

    {
        Compute_id281(streams);
    }

    {
        Compute_id282();
    }

    {
        Compute_id283();
    }

    {
        Compute_id284();
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
        Compute_id291();
    }

    {
        Compute_id292();
    }

    {
        Compute_id293();
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
}
float3 Compute_id527(inout CS_STREAMS streams)
{
    return streams.Plus_32_id289;
}
void Compute_id526(inout CS_STREAMS streams)
{

    {
        Compute_id501();
    }

    {
        Compute_id502();
    }

    {
        Compute_id503();
    }

    {
        Compute_id504();
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

    {
        Compute_id522(streams);
    }

    {
        Compute_id524(streams);
    }
}
float3 Compute_id570(inout CS_STREAMS streams)
{
    return streams.Plus_20_id314;
}
void Compute_id569(inout CS_STREAMS streams)
{

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

    {
        Compute_id565(streams);
    }

    {
        Compute_id567(streams);
    }
}
float Compute_id350(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_14_id368;
}
void Compute_id349(inout CS_STREAMS streams)
{

    {
        Compute_id345(streams);
    }

    {
        Compute_id347(streams);
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
float4 Compute_id138(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id359;
}
void Compute_id137(inout CS_STREAMS streams)
{

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
        Compute_id126();
    }

    {
        Compute_id127();
    }

    {
        Compute_id128();
    }

    {
        Compute_id129();
    }

    {
        Compute_id131(streams);
    }

    {
        Compute_id133(streams);
    }

    {
        Compute_id135(streams);
    }
}
float3 Compute_id40(inout CS_STREAMS streams)
{
    Compute_id434(streams);
    return Compute_id435(streams);
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id313(streams);
    return Compute_id314(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id526(streams);
    return Compute_id527(streams);
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id569(streams);
    return Compute_id570(streams);
}
float Compute_id42(inout CS_STREAMS streams)
{
    Compute_id349(streams);
    return Compute_id350(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id137(streams);
    return Compute_id138(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id37(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id38(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id39(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id40(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id41(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id42(streams);
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

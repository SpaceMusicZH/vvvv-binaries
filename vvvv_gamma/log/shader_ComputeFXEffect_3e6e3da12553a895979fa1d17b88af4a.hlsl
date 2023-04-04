/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<g_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_42> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_43> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_42>}]}], mixin AssignVarFloat<Multiply_44> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_42>}]}], mixin AssignVarFloat<Multiply_45> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_42>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_46> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_43>}, {Y = GetVarFloat<Multiply_44>}, {Z = GetVarFloat<Multiply_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_46>}, {Right = GetVarFloat3<Input_47>}]}], mixin AssignVarFloat3<Plus_49> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_41>}, {Right = GetVarFloat3<Multiply_48>}]}], mixin AssignVarFloat3<Input_50> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_51> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_49>}, {Right = GetVarFloat3<Input_50>}]}]]}]}, {Value = GetVarFloat3<Multiply_51>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_52> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_52>}]}], mixin AssignVarFloat<Input_54> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_55> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_53>}, {Y = GetVarFloat<Input_54>}, {Z = GetVarFloat<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_57> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_55>}, {Right = GetVarFloat3<Input_56>}]}], mixin AssignVarFloat3<Input_58> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_59> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_57>}, {Right = GetVarFloat3<Input_58>}]}]]}]}, {Value = GetVarFloat3<Plus_59>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_27> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_17> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx16,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_18,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_19> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_17>}]}], mixin AssignVarFloat<Multiply_28> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_27>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_19>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_29> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_19>}]}], mixin AssignVarUInt<Input_30> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_31> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_30>}]}], mixin AssignVarFloat<Input_32> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_33> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_31>}, {Right = GetVarFloat<Input_32>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_34> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_28>}, {Y = GetVarFloat<Multiply_29>}, {Z = GetVarFloat<Multiply_33>}]}], mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_36> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_34>}, {Right = GetVarFloat3<Input_35>}]}], mixin AssignVarFloat3<Input_37> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_38> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_36>}, {Right = GetVarFloat3<Input_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_40> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_38>}, {Right = GetVarFloat3<Input_39>}]}]]}]}, {Value = GetVarFloat3<Plus_40>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat<Multiply_15> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_14>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_17> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx16,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_18,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_19> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_17>}]}], mixin AssignVarFloat<Multiply_20> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_19>}]}], mixin AssignVarFloat<Multiply_21> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_22> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_15>}, {Y = GetVarFloat<Multiply_20>}, {Z = GetVarFloat<Multiply_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_24>}, {Right = GetVarFloat3<Input_25>}]}]]}]}, {Value = GetVarFloat3<Plus_26>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<g_2> [{Value = mixin GetMemberFloat4Float<g> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<g_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat<Multiply_15> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_14>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_17> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx16,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_18,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_19> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_17>}]}], mixin AssignVarFloat<Multiply_20> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_19>}]}], mixin AssignVarFloat<Multiply_21> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_22> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_15>}, {Y = GetVarFloat<Multiply_20>}, {Z = GetVarFloat<Multiply_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_22>}, {Right = GetVarFloat3<Input_23>}]}], mixin AssignVarFloat3<Input_25> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_26> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_24>}, {Right = GetVarFloat3<Input_25>}]}]]}]}, {Value = GetVarFloat3<Plus_26>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<r_27> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_17> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx16,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_18,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_19> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_17>}]}], mixin AssignVarFloat<Multiply_28> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<r_27>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_19>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Multiply_29> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_19>}]}], mixin AssignVarUInt<Input_30> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_31> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiBufferSelector_ShaderFX}, {Selection = GetVarUInt<Input_30>}]}], mixin AssignVarFloat<Input_32> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_33> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_31>}, {Right = GetVarFloat<Input_32>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_34> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_28>}, {Y = GetVarFloat<Multiply_29>}, {Z = GetVarFloat<Multiply_33>}]}], mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_36> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_34>}, {Right = GetVarFloat3<Input_35>}]}], mixin AssignVarFloat3<Input_37> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_38> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_36>}, {Right = GetVarFloat3<Input_37>}]}], mixin AssignVarFloat3<Input_39> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_40> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_38>}, {Right = GetVarFloat3<Input_39>}]}]]}]}, {Value = GetVarFloat3<Plus_40>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_42> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat<Multiply_43> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_42>}]}], mixin AssignVarFloat<Multiply_44> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_42>}]}], mixin AssignVarFloat<Multiply_45> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_42>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_46> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_43>}, {Y = GetVarFloat<Multiply_44>}, {Z = GetVarFloat<Multiply_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_46>}, {Right = GetVarFloat3<Input_47>}]}], mixin AssignVarFloat3<Plus_49> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_41>}, {Right = GetVarFloat3<Multiply_48>}]}], mixin AssignVarFloat3<Input_50> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_51> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_49>}, {Right = GetVarFloat3<Input_50>}]}]]}]}, {Value = GetVarFloat3<Multiply_51>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_52> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}], mixin AssignVarFloat<Multiply_53> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Right = GetVarFloat<Input_52>}]}], mixin AssignVarFloat<Input_54> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_55> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_53>}, {Y = GetVarFloat<Input_54>}, {Z = GetVarFloat<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_57> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_55>}, {Right = GetVarFloat3<Input_56>}]}], mixin AssignVarFloat3<Input_58> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_59> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_57>}, {Right = GetVarFloat3<Input_58>}]}]]}]}, {Value = GetVarFloat3<Plus_59>}]
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
@C    InputValue_id316 => ShaderFX.InputValueFloat.i1
@C    InputValue_id350 => ShaderFX.InputValueFloat3
@C    InputValue_id357 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id371 => ShaderFX.InputValueUInt
@C    InputValue_id392 => ShaderFX.InputValueFloat
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
@R    DynamicTexture_id218 => ObjectTexture_fx16 [Stage: Compute, Slot: (4-4)]
@R    DynamicBuffer_id378 => ObjectBuffer_fx0 [Stage: Compute, Slot: (5-5)]
@R    DynamicTexture_id385 => ObjectTexture_fx7 [Stage: Compute, Slot: (6-6)]
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
@G    Compute => 0c65a2c0422e1c73e3b98683808b4035
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
//   float InputValue_id316;            // Offset:  124 Size:     4
//   float3 InputValue_id350;           // Offset:  128 Size:    12
//   float3 InputValue_id357;           // Offset:  144 Size:    12
//   uint InputValue_id371;             // Offset:  156 Size:     4
//   float InputValue_id392;            // Offset:  160 Size:     4
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
// DynamicBuffer_id378               texture  float4         buf             t5      1 
// DynamicTexture_id385              texture  float4          2d             t6      1 
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
#line 1696 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_3e6e3da12553a895979fa1d17b88af4a.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1697
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1708
  if_nz cb2[5].x

#line 1718
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

#line 1669
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 889
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r11.xyz, vThreadID.x, l(0), t2.xyzx  // r11.x <- m.x; r11.y <- m.y; r11.z <- m.z

#line 598
  dp3 r0.w, r11.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id77 return value>

#line 874
  mul r12.y, r0.w, cb1[7].w  // r12.y <- <Compute_id592 return value>

#line 870
  sample_l_indexable(texture2d)(float,float,float,float) r11.yzw, r6.xyxx, t4.wxyz, s0, l(0.000000)  // r11.y <- <Compute_id598 return value>.x; r11.z <- <Compute_id598 return value>.y; r11.w <- <Compute_id598 return value>.z

#line 574
  dp3 r1.w, r11.yzwy, l(0.299000, 0.587000, 0.114000, 0.000000)  // r1.w <- <Luminance_id81 return value>

#line 861
  mul r12.z, r0.w, r1.w  // r12.z <- <Compute_id627 return value>

#line 837
  mad r11.yzw, r12.yyzy, cb1[8].xxyz, cb1[9].xxyz  // r11.y <- <Compute_id657 return value>.x; r11.z <- <Compute_id657 return value>.y; r11.w <- <Compute_id657 return value>.z

#line 1672
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(0), l(0), t0.xyzx
  add r14.xyz, r8.yzwy, -r11.yzwy
  mad r13.xyz, r13.xyzx, r14.xyzx, r11.yzwy  // r13.x <- m.Trans.x; r13.y <- m.Trans.y; r13.z <- m.Trans.z

#line 813
  mul r12.x, r1.w, r11.x  // r12.x <- <Compute_id432 return value>

#line 480
  itof r11.xyz, cb2[8].yzwy
  mul r11.xyz, r6.xyzx, r11.xyzx
  ftou r11.xyz, r11.xyzx  // r11.x <- uvw.x; r11.y <- uvw.y; r11.z <- uvw.z

#line 278
  imul null, r1.w, cb2[8].z, cb2[8].y
  imad r2.w, r11.y, cb2[8].y, r11.x
  imad r1.w, r11.z, r1.w, r2.w  // r1.w <- <CalculateVoxelVolumeIndex_id70 return value>

#line 282
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r11.xyzw, r1.w, l(0), t3.xyzw  // r11.x <- <GetVoxel_id37 return value>.Empty; r11.y <- <GetVoxel_id37 return value>.StartTime; r11.z <- <GetVoxel_id37 return value>.Note; r11.w <- <GetVoxel_id37 return value>.Velocity
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r14.xyzw, r1.w, l(16), t3.xyzw  // r14.x <- <GetVoxel_id37 return value>.Length; r14.y <- <GetVoxel_id37 return value>.Channel; r14.z <- <GetVoxel_id37 return value>.Constant; r14.w <- <GetVoxel_id37 return value>.Id
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r15.xyzw, r1.w, l(32), t3.wxyz  // r15.y <- <GetVoxel_id37 return value>.TrackId; r15.z <- <GetVoxel_id37 return value>.ModWheel; r15.w <- <GetVoxel_id37 return value>.PitchBend; r15.x <- <GetVoxel_id37 return value>.Random

#line 442
  switch cb1[4].w

#line 445
    case l(0)

#line 446
    mov r15.x, r11.x  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 447
    case l(1)

#line 448
    mov r15.x, r11.y  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 449
    case l(2)

#line 450
    mov r15.x, r11.z  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 451
    case l(3)

#line 452
    mov r15.x, r11.w  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 453
    case l(4)

#line 454
    mov r15.x, r14.x  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 455
    case l(5)

#line 456
    mov r15.x, r14.y  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 457
    case l(6)

#line 458
    mov r15.x, r14.z  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 459
    case l(7)

#line 460
    mov r15.x, r14.w  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 461
    case l(8)

#line 462
    mov r15.x, r15.y  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 463
    case l(9)

#line 464
    mov r15.x, r15.z  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 465
    case l(10)

#line 466
    mov r15.x, r15.w  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 467
    case l(11)

#line 468
    break 

#line 469
    default 

#line 470
    mov r15.x, l(0)  // r15.x <- <SelectMidiValue_id71 return value>
    break 

#line 471
  endswitch   // r15.x <- <SelectMidiValue_id71 return value>

#line 787
  mul r12.w, r15.x, cb1[5].x  // r12.w <- <Compute_id480 return value>

#line 767
  mad r11.xyz, r12.xzwx, cb1[5].yzwy, cb1[6].xyzx  // r11.x <- <Compute_id504 return value>.x; r11.y <- <Compute_id504 return value>.y; r11.z <- <Compute_id504 return value>.z

#line 759
  add r11.xyz, r11.xyzx, cb1[7].xyzx  // r11.x <- <Compute_id512 return value>.x; r11.y <- <Compute_id512 return value>.y; r11.z <- <Compute_id512 return value>.z

#line 1673
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r11.xyzx, r8.xyzx
  mad r8.xyz, r12.xyzx, r8.xyzx, r11.xyzx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 735
  mul r1.w, r0.w, cb1[0].w  // r1.w <- <Compute_id194 return value>

#line 711
  mad r11.xyz, r1.wwww, cb1[1].xyzx, cb1[0].xyzx  // r11.x <- <Compute_id228 return value>.x; r11.y <- <Compute_id228 return value>.y; r11.z <- <Compute_id228 return value>.z

#line 703
  mul r12.xyz, r11.xyzx, cb1[2].xyzx  // r12.x <- <Compute_id236 return value>.x; r12.y <- <Compute_id236 return value>.y; r12.z <- <Compute_id236 return value>.z

#line 1674
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r11.xyzx, cb1[2].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r12.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 683
  mul r11.y, r0.w, cb1[2].w  // r11.y <- <Compute_id338 return value>

#line 667
  mov r11.zw, cb1[3].xxxx

#line 659
  mad r11.xyz, r11.yzwy, cb1[3].yzwy, cb1[4].xyzx  // r11.x <- <Compute_id364 return value>.x; r11.y <- <Compute_id364 return value>.y; r11.z <- <Compute_id364 return value>.z

#line 1675
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r11.xyzx
  mad r10.yzw, r12.xxyz, r10.xxyz, r11.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1677
  mov r13.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r13.xyzw
  mov r11.xy, r8.yzyy
  mov r11.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r11.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 901
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r11.xy, vThreadID.x, l(0), t2.xyxx  // r11.x <- m.x

#line 928
  utof r0.w, cb1[9].w
  mul r0.w, r0.w, r11.y
  round_ne r0.w, r0.w
  ftou r0.w, r0.w  // r0.w <- <Compute_id105 return value>

#line 922
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r0.wwww, t5.xyzw  // r12.x <- <Compute_id109 return value>.x; r12.y <- <Compute_id109 return value>.y; r12.z <- <Compute_id109 return value>.z

#line 635
  mad r14.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r14.xyz, r12.xyzx, r14.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r15.xyz, r12.xyzx, r14.xyzx  // r15.x <- <SRgbToLinear_id693 return value>.x; r15.y <- <SRgbToLinear_id693 return value>.y; r15.z <- <SRgbToLinear_id693 return value>.z

#line 914
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t6.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id119 return value>.x; r6.z <- <Compute_id119 return value>.y; r6.w <- <Compute_id119 return value>.z

#line 906
  mad r6.yzw, -r12.xxyz, r14.xxyz, r6.yyzw
  mad r6.yzw, cb1[10].xxxx, r6.yyzw, r15.xxyz  // r6.y <- <Compute_id129 return value>.x; r6.z <- <Compute_id129 return value>.y; r6.w <- <Compute_id129 return value>.z

#line 1684
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1655
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1559
  sincos r10.x, r14.x, r12.z  // r14.x <- c; r10.x <- s

#line 1562
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1561
  mad r0.w, r14.x, r10.y, -r12.z  // r0.w <- p.x

#line 1562
  mad r1.w, r14.x, r10.z, r12.w  // r1.w <- p.y

#line 1549
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1551
  mul r2.w, r10.w, r10.x
  mad r14.y, r12.x, r1.w, -r2.w  // r14.y <- p.y

#line 1552
  mul r2.w, r10.w, r12.x
  mad r1.w, r10.x, r1.w, r2.w  // r1.w <- p.z

#line 1539
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1541
  mul r2.w, r1.w, r10.x
  mad r14.x, r12.x, r0.w, r2.w  // r14.x <- p.x

#line 1542
  mul r1.w, r1.w, r12.x
  mad r14.z, -r10.x, r0.w, r1.w  // r14.z <- p.z

#line 1655
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1559
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1562
  mul r5.zw, r13.yyyx, r10.xxxx

#line 1561
  mad r0.w, r12.x, r13.x, -r5.z

#line 1562
  mad r1.w, r12.x, r13.y, r5.w  // r1.w <- p.y

#line 1549
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1551
  mul r2.w, r13.z, r5.x
  mad r12.y, r10.x, r1.w, -r2.w  // r12.y <- p.y

#line 1552
  mul r2.w, r13.z, r10.x
  mad r1.w, r5.x, r1.w, r2.w  // r1.w <- p.z

#line 1539
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1541
  mul r2.w, r1.w, r5.x
  mad r12.x, r10.x, r0.w, r2.w  // r12.x <- p.x

#line 1542
  mul r1.w, r1.w, r10.x
  mad r12.z, -r5.x, r0.w, r1.w  // r12.z <- p.z

#line 1685
  add r5.xyz, r14.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 901
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r11.zw, vThreadID.x, l(4), t2.xxxy  // r11.z <- m.y; r11.w <- m.z

#line 606
  dp3 r0.w, r11.xzwx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id89 return value>

#line 1720
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1721
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1722
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1723
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1724
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1728
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1729
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1744
ret 
// Approximately 183 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id386 = 0;
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
    float4 SMVideoBufferSelector_ShaderFXResult_1_id110;
    float SMCalcLuminance_ShaderFXResult_13_id118;
    float Input_14_id315;
    float Multiply_15_id318;
    float4 TextureValue_17_id217;
    float SMCalcLuminance_ShaderFXResult_19_id225;
    float Multiply_20_id336;
    float Multiply_21_id340;
    float3 SMVector3Join_ShaderFXResult_22_id344;
    float3 Input_23_id349;
    float3 Multiply_24_id352;
    float3 Input_25_id356;
    float3 Plus_26_id359;
    float r_27_id214;
    float Multiply_28_id236;
    float Multiply_29_id250;
    uint Input_30_id254;
    float SMMidiSelectValue_ShaderFXResult_31_id257;
    float Input_32_id268;
    float Multiply_33_id271;
    float3 SMVector3Join_ShaderFXResult_34_id275;
    float3 Input_35_id280;
    float3 Multiply_36_id283;
    float3 Input_37_id287;
    float3 Plus_38_id290;
    float3 Input_39_id294;
    float3 Plus_40_id297;
    float3 Input_41_id107;
    float Input_42_id129;
    float Multiply_43_id132;
    float Multiply_44_id136;
    float Multiply_45_id140;
    float3 SMVector3Join_ShaderFXResult_46_id144;
    float3 Input_47_id149;
    float3 Multiply_48_id152;
    float3 Plus_49_id156;
    float3 Input_50_id160;
    float3 Multiply_51_id163;
    float Input_52_id181;
    float Multiply_53_id184;
    float Input_54_id188;
    float3 SMVector3Join_ShaderFXResult_55_id191;
    float3 Input_56_id196;
    float3 Multiply_57_id199;
    float3 Input_58_id203;
    float3 Plus_59_id206;
    float g_2_id367;
    uint Input_3_id370;
    uint SMValueToIndex_ShaderFXResult_4_id373;
    float4 BufferItem_5_id377;
    float4 SRgbToLinear_ShaderFXResult_6_id381;
    float4 TextureValue_9_id384;
    float Input_11_id391;
    float4 Lerp_12_id394;
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
    float InputValue_id316;
    float3 InputValue_id350;
    float3 InputValue_id357;
    uint InputValue_id371;
    float InputValue_id392;
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
Buffer<float4> DynamicBuffer_id378;
Texture2D DynamicTexture_id385;
uint CalculateVoxelVolumeIndex_id70(uint3 coordinate)
{
    return dot(coordinate, uint3(1, VoxelCounts_id259.x, VoxelCounts_id259.x * VoxelCounts_id259.y));
}
SMMidiNoteData GetVoxel_id37(uint3 coordinate)
{
    return VoxelVolume_id258[CalculateVoxelVolumeIndex_id70(coordinate)];
}
float3 Compute_id361(inout CS_STREAMS streams)
{
    return streams.Input_58_id203;
}
float3 Compute_id359(inout CS_STREAMS streams)
{
    return streams.Multiply_57_id199;
}
float3 Compute_id353(inout CS_STREAMS streams)
{
    return streams.Input_56_id196;
}
float3 Compute_id351(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_55_id191;
}
float Compute_id345(inout CS_STREAMS streams)
{
    return streams.Input_54_id188;
}
float Compute_id343(inout CS_STREAMS streams)
{
    return streams.Input_54_id188;
}
float Compute_id341(inout CS_STREAMS streams)
{
    return streams.Multiply_53_id184;
}
float Compute_id335(inout CS_STREAMS streams)
{
    return streams.Input_52_id181;
}
float Compute_id333(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id58(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id308(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id233(inout CS_STREAMS streams)
{
    return streams.Input_50_id160;
}
float3 Compute_id231(inout CS_STREAMS streams)
{
    return streams.Plus_49_id156;
}
float3 Compute_id225(inout CS_STREAMS streams)
{
    return streams.Multiply_48_id152;
}
float3 Compute_id223(inout CS_STREAMS streams)
{
    return streams.Input_41_id107;
}
float3 Compute_id219(inout CS_STREAMS streams)
{
    return streams.Input_47_id149;
}
float3 Compute_id217(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_46_id144;
}
float Compute_id211(inout CS_STREAMS streams)
{
    return streams.Multiply_45_id140;
}
float Compute_id209(inout CS_STREAMS streams)
{
    return streams.Multiply_44_id136;
}
float Compute_id207(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id132;
}
float Compute_id203(inout CS_STREAMS streams)
{
    return streams.Input_42_id129;
}
float Compute_id201(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id197(inout CS_STREAMS streams)
{
    return streams.Input_42_id129;
}
float Compute_id195(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id191(inout CS_STREAMS streams)
{
    return streams.Input_42_id129;
}
float Compute_id189(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id52(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id164(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id509(inout CS_STREAMS streams)
{
    return streams.Input_39_id294;
}
float3 Compute_id507(inout CS_STREAMS streams)
{
    return streams.Plus_38_id290;
}
float3 Compute_id501(inout CS_STREAMS streams)
{
    return streams.Input_37_id287;
}
float3 Compute_id499(inout CS_STREAMS streams)
{
    return streams.Multiply_36_id283;
}
float3 Compute_id493(inout CS_STREAMS streams)
{
    return streams.Input_35_id280;
}
float3 Compute_id491(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_34_id275;
}
float Compute_id485(inout CS_STREAMS streams)
{
    return streams.Multiply_33_id271;
}
float Compute_id483(inout CS_STREAMS streams)
{
    return streams.Multiply_29_id250;
}
float Compute_id481(inout CS_STREAMS streams)
{
    return streams.Multiply_28_id236;
}
float Compute_id477(inout CS_STREAMS streams)
{
    return streams.Input_32_id268;
}
float Compute_id475(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_31_id257;
}
float SelectMidiValue_id71(SMMidiNoteData x, uint i)
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
uint Compute_id469(inout CS_STREAMS streams)
{
    return streams.Input_30_id254;
}
SMMidiNoteData Compute_id69(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id259;
    SMMidiNoteData m = GetVoxel_id37(uvw);
    return m;
}
float Compute_id458(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_19_id225;
}
float Compute_id456(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id68(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id433(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id429(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_19_id225;
}
float Compute_id427(inout CS_STREAMS streams)
{
    return streams.r_27_id214;
}
float Luminance_id64(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id404(inout CS_STREAMS streams)
{
    return streams.TextureValue_17_id217;
}
float Compute_id398()
{
    return Value_id386;
}
float2 Compute_id400(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 Compute_id394(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id654(inout CS_STREAMS streams)
{
    return streams.Input_25_id356;
}
float3 Compute_id652(inout CS_STREAMS streams)
{
    return streams.Multiply_24_id352;
}
float3 Compute_id646(inout CS_STREAMS streams)
{
    return streams.Input_23_id349;
}
float3 Compute_id644(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_22_id344;
}
float Compute_id638(inout CS_STREAMS streams)
{
    return streams.Multiply_21_id340;
}
float Compute_id636(inout CS_STREAMS streams)
{
    return streams.Multiply_20_id336;
}
float Compute_id634(inout CS_STREAMS streams)
{
    return streams.Multiply_15_id318;
}
float Compute_id630(inout CS_STREAMS streams)
{
    return streams.Input_14_id315;
}
float Compute_id628(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Compute_id624(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_19_id225;
}
float Compute_id622(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id81(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id599(inout CS_STREAMS streams)
{
    return streams.TextureValue_17_id217;
}
float Compute_id593()
{
    return Value_id386;
}
float2 Compute_id595(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float Compute_id589(inout CS_STREAMS streams)
{
    return streams.Input_14_id315;
}
float Compute_id587(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
float Luminance_id77(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id562(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Luminance_id89(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id272(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float Compute_id126(inout CS_STREAMS streams)
{
    return streams.Input_11_id391;
}
float4 Compute_id124(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id384;
}
float4 Compute_id122(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id381;
}
float Compute_id114()
{
    return Value_id386;
}
float2 Compute_id116(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id693(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id110(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id377;
}
uint Compute_id106(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id373;
}
uint Compute_id100(inout CS_STREAMS streams)
{
    return streams.Input_3_id370;
}
float Compute_id102(inout CS_STREAMS streams)
{
    return streams.g_2_id367;
}
float4 Compute_id94(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id110;
}
float3 Compute_id364(inout CS_STREAMS streams)
{
    return Compute_id359(streams) + Compute_id361(streams);
}
float3 Compute_id357()
{
    return InputValue_id204;
}
float3 Compute_id356(inout CS_STREAMS streams)
{
    return Compute_id351(streams) * Compute_id353(streams);
}
float3 Compute_id349()
{
    return InputValue_id197;
}
float3 Compute_id348(inout CS_STREAMS streams)
{
    return float3(Compute_id341(streams), Compute_id343(streams), Compute_id345(streams));
}
float Compute_id339()
{
    return InputValue_id189;
}
float Compute_id338(inout CS_STREAMS streams)
{
    return Compute_id333(streams) * Compute_id335(streams);
}
float Compute_id331()
{
    return InputValue_id182;
}
float Compute_id330(inout CS_STREAMS streams)
{
    float4 color = Compute_id308(streams);
    return Luminance_id58(color.rgb);
}
float4 Compute_id53(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id236(inout CS_STREAMS streams)
{
    return Compute_id231(streams) * Compute_id233(streams);
}
float3 Compute_id229()
{
    return InputValue_id161;
}
float3 Compute_id228(inout CS_STREAMS streams)
{
    return Compute_id223(streams) + Compute_id225(streams);
}
float3 Compute_id222(inout CS_STREAMS streams)
{
    return Compute_id217(streams) * Compute_id219(streams);
}
float3 Compute_id215()
{
    return InputValue_id150;
}
float3 Compute_id214(inout CS_STREAMS streams)
{
    return float3(Compute_id207(streams), Compute_id209(streams), Compute_id211(streams));
}
float Compute_id206(inout CS_STREAMS streams)
{
    return Compute_id201(streams) * Compute_id203(streams);
}
float Compute_id200(inout CS_STREAMS streams)
{
    return Compute_id195(streams) * Compute_id197(streams);
}
float Compute_id194(inout CS_STREAMS streams)
{
    return Compute_id189(streams) * Compute_id191(streams);
}
float Compute_id187()
{
    return InputValue_id130;
}
float Compute_id186(inout CS_STREAMS streams)
{
    float4 color = Compute_id164(streams);
    return Luminance_id52(color.rgb);
}
float4 Compute_id47(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id158()
{
    return InputValue_id108;
}
float3 Compute_id512(inout CS_STREAMS streams)
{
    return Compute_id507(streams) + Compute_id509(streams);
}
float3 Compute_id505()
{
    return InputValue_id295;
}
float3 Compute_id504(inout CS_STREAMS streams)
{
    return Compute_id499(streams) + Compute_id501(streams);
}
float3 Compute_id497()
{
    return InputValue_id288;
}
float3 Compute_id496(inout CS_STREAMS streams)
{
    return Compute_id491(streams) * Compute_id493(streams);
}
float3 Compute_id489()
{
    return InputValue_id281;
}
float3 Compute_id488(inout CS_STREAMS streams)
{
    return float3(Compute_id481(streams), Compute_id483(streams), Compute_id485(streams));
}
float Compute_id480(inout CS_STREAMS streams)
{
    return Compute_id475(streams) * Compute_id477(streams);
}
float Compute_id473()
{
    return InputValue_id269;
}
float Compute_id472(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id69(streams);
    return SelectMidiValue_id71(m, Compute_id469(streams));
}
uint Compute_id462()
{
    return InputValue_id255;
}
float Compute_id461(inout CS_STREAMS streams)
{
    return Compute_id456(streams) * Compute_id458(streams);
}
float Compute_id455(inout CS_STREAMS streams)
{
    float4 color = Compute_id433(streams);
    return Luminance_id68(color.rgb);
}
float Compute_id432(inout CS_STREAMS streams)
{
    return Compute_id427(streams) * Compute_id429(streams);
}
float Compute_id426(inout CS_STREAMS streams)
{
    float4 color = Compute_id404(streams);
    return Luminance_id64(color.rgb);
}
float4 Compute_id403(inout CS_STREAMS streams)
{
    return DynamicTexture_id218.SampleLevel(DynamicSampler_id219, Compute_id400(streams), Compute_id398());
}
float Compute_id397(inout CS_STREAMS streams)
{
    return Compute_id394(streams).r;
}
float4 Compute_id59(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float3 Compute_id657(inout CS_STREAMS streams)
{
    return Compute_id652(streams) + Compute_id654(streams);
}
float3 Compute_id650()
{
    return InputValue_id357;
}
float3 Compute_id649(inout CS_STREAMS streams)
{
    return Compute_id644(streams) * Compute_id646(streams);
}
float3 Compute_id642()
{
    return InputValue_id350;
}
float3 Compute_id641(inout CS_STREAMS streams)
{
    return float3(Compute_id634(streams), Compute_id636(streams), Compute_id638(streams));
}
float Compute_id633(inout CS_STREAMS streams)
{
    return Compute_id628(streams) * Compute_id630(streams);
}
float Compute_id627(inout CS_STREAMS streams)
{
    return Compute_id622(streams) * Compute_id624(streams);
}
float Compute_id621(inout CS_STREAMS streams)
{
    float4 color = Compute_id599(streams);
    return Luminance_id81(color.rgb);
}
float4 Compute_id598(inout CS_STREAMS streams)
{
    return DynamicTexture_id218.SampleLevel(DynamicSampler_id219, Compute_id595(streams), Compute_id593());
}
float Compute_id592(inout CS_STREAMS streams)
{
    return Compute_id587(streams) * Compute_id589(streams);
}
float Compute_id585()
{
    return InputValue_id316;
}
float Compute_id584(inout CS_STREAMS streams)
{
    float4 color = Compute_id562(streams);
    return Luminance_id77(color.rgb);
}
float4 Compute_id72(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float Compute_id294(inout CS_STREAMS streams)
{
    float4 color = Compute_id272(streams);
    return Luminance_id89(color.rgb);
}
float4 Compute_id84(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
float4 Compute_id129(inout CS_STREAMS streams)
{
    return lerp(Compute_id122(streams), Compute_id124(streams), Compute_id126(streams));
}
float Compute_id120()
{
    return InputValue_id392;
}
float4 Compute_id119(inout CS_STREAMS streams)
{
    return DynamicTexture_id385.SampleLevel(DynamicSampler_id219, Compute_id116(streams), Compute_id114());
}
float4 Compute_id113(inout CS_STREAMS streams)
{
    return SRgbToLinear_id693(Compute_id110(streams));
}
float4 Compute_id109(inout CS_STREAMS streams)
{
    return DynamicBuffer_id378[Compute_id106(streams)];
}
uint Compute_id105(inout CS_STREAMS streams)
{
    float v = Compute_id102(streams);
    uint c = Compute_id100(streams);
    return round(v * c);
}
uint Compute_id98()
{
    return InputValue_id371;
}
float Compute_id97(inout CS_STREAMS streams)
{
    return Compute_id94(streams).g;
}
float4 Compute_id82(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id112;
    float4 m = VoxelVolume_id111[i];
    return m;
}
void Compute_id384(inout CS_STREAMS streams)
{
    streams.Plus_59_id206 = Compute_id364(streams);
}
void Compute_id382(inout CS_STREAMS streams)
{
    streams.Input_58_id203 = Compute_id357();
}
void Compute_id380(inout CS_STREAMS streams)
{
    streams.Multiply_57_id199 = Compute_id356(streams);
}
void Compute_id378(inout CS_STREAMS streams)
{
    streams.Input_56_id196 = Compute_id349();
}
void Compute_id376(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_55_id191 = Compute_id348(streams);
}
void Compute_id374(inout CS_STREAMS streams)
{
    streams.Input_54_id188 = Compute_id339();
}
void Compute_id372(inout CS_STREAMS streams)
{
    streams.Multiply_53_id184 = Compute_id338(streams);
}
void Compute_id370(inout CS_STREAMS streams)
{
    streams.Input_52_id181 = Compute_id331();
}
void Compute_id368(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id330(streams);
}
void Compute_id366(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id53(streams);
}
void Compute_id262(inout CS_STREAMS streams)
{
    streams.Multiply_51_id163 = Compute_id236(streams);
}
void Compute_id260(inout CS_STREAMS streams)
{
    streams.Input_50_id160 = Compute_id229();
}
void Compute_id258(inout CS_STREAMS streams)
{
    streams.Plus_49_id156 = Compute_id228(streams);
}
void Compute_id256(inout CS_STREAMS streams)
{
    streams.Multiply_48_id152 = Compute_id222(streams);
}
void Compute_id254(inout CS_STREAMS streams)
{
    streams.Input_47_id149 = Compute_id215();
}
void Compute_id252(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_46_id144 = Compute_id214(streams);
}
void Compute_id250(inout CS_STREAMS streams)
{
    streams.Multiply_45_id140 = Compute_id206(streams);
}
void Compute_id248(inout CS_STREAMS streams)
{
    streams.Multiply_44_id136 = Compute_id200(streams);
}
void Compute_id246(inout CS_STREAMS streams)
{
    streams.Multiply_43_id132 = Compute_id194(streams);
}
void Compute_id244(inout CS_STREAMS streams)
{
    streams.Input_42_id129 = Compute_id187();
}
void Compute_id242(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id186(streams);
}
void Compute_id240(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id47(streams);
}
void Compute_id238(inout CS_STREAMS streams)
{
    streams.Input_41_id107 = Compute_id158();
}
void Compute_id552(inout CS_STREAMS streams)
{
    streams.Plus_40_id297 = Compute_id512(streams);
}
void Compute_id550(inout CS_STREAMS streams)
{
    streams.Input_39_id294 = Compute_id505();
}
void Compute_id548(inout CS_STREAMS streams)
{
    streams.Plus_38_id290 = Compute_id504(streams);
}
void Compute_id546(inout CS_STREAMS streams)
{
    streams.Input_37_id287 = Compute_id497();
}
void Compute_id544(inout CS_STREAMS streams)
{
    streams.Multiply_36_id283 = Compute_id496(streams);
}
void Compute_id542(inout CS_STREAMS streams)
{
    streams.Input_35_id280 = Compute_id489();
}
void Compute_id540(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_34_id275 = Compute_id488(streams);
}
void Compute_id538(inout CS_STREAMS streams)
{
    streams.Multiply_33_id271 = Compute_id480(streams);
}
void Compute_id536(inout CS_STREAMS streams)
{
    streams.Input_32_id268 = Compute_id473();
}
void Compute_id534(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_31_id257 = Compute_id472(streams);
}
void Compute_id532(inout CS_STREAMS streams)
{
    streams.Input_30_id254 = Compute_id462();
}
void Compute_id530(inout CS_STREAMS streams)
{
    streams.Multiply_29_id250 = Compute_id461(streams);
}
void Compute_id528(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id455(streams);
}
void Compute_id526(inout CS_STREAMS streams)
{
    streams.Multiply_28_id236 = Compute_id432(streams);
}
void Compute_id524(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_19_id225 = Compute_id426(streams);
}
void Compute_id522(inout CS_STREAMS streams)
{
    streams.TextureValue_17_id217 = Compute_id403(streams);
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
void Compute_id517()
{
}
void Compute_id516(inout CS_STREAMS streams)
{
    streams.r_27_id214 = Compute_id397(streams);
}
void Compute_id514(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id59(streams);
}
void Compute_id687(inout CS_STREAMS streams)
{
    streams.Plus_26_id359 = Compute_id657(streams);
}
void Compute_id685(inout CS_STREAMS streams)
{
    streams.Input_25_id356 = Compute_id650();
}
void Compute_id683(inout CS_STREAMS streams)
{
    streams.Multiply_24_id352 = Compute_id649(streams);
}
void Compute_id681(inout CS_STREAMS streams)
{
    streams.Input_23_id349 = Compute_id642();
}
void Compute_id679(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_22_id344 = Compute_id641(streams);
}
void Compute_id677(inout CS_STREAMS streams)
{
    streams.Multiply_21_id340 = Compute_id633(streams);
}
void Compute_id675(inout CS_STREAMS streams)
{
    streams.Multiply_20_id336 = Compute_id627(streams);
}
void Compute_id673(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_19_id225 = Compute_id621(streams);
}
void Compute_id671(inout CS_STREAMS streams)
{
    streams.TextureValue_17_id217 = Compute_id598(streams);
}
void Compute_id669()
{
}
void Compute_id668()
{
}
void Compute_id667()
{
}
void Compute_id666()
{
}
void Compute_id665(inout CS_STREAMS streams)
{
    streams.Multiply_15_id318 = Compute_id592(streams);
}
void Compute_id663(inout CS_STREAMS streams)
{
    streams.Input_14_id315 = Compute_id585();
}
void Compute_id661(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id584(streams);
}
void Compute_id659(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id72(streams);
}
void Compute_id298(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id118 = Compute_id294(streams);
}
void Compute_id296(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id84(streams);
}
void Compute_id152(inout CS_STREAMS streams)
{
    streams.Lerp_12_id394 = Compute_id129(streams);
}
void Compute_id150(inout CS_STREAMS streams)
{
    streams.Input_11_id391 = Compute_id120();
}
void Compute_id148(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id384 = Compute_id119(streams);
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
    streams.SRgbToLinear_ShaderFXResult_6_id381 = Compute_id113(streams);
}
void Compute_id140(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id377 = Compute_id109(streams);
}
void Compute_id138(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id373 = Compute_id105(streams);
}
void Compute_id136(inout CS_STREAMS streams)
{
    streams.Input_3_id370 = Compute_id98();
}
void Compute_id134(inout CS_STREAMS streams)
{
    streams.g_2_id367 = Compute_id97(streams);
}
void Compute_id132(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id110 = Compute_id82(streams);
}
void Compute_id130()
{
}
float3 Compute_id387(inout CS_STREAMS streams)
{
    return streams.Plus_59_id206;
}
void Compute_id386(inout CS_STREAMS streams)
{

    {
        Compute_id366(streams);
    }

    {
        Compute_id368(streams);
    }

    {
        Compute_id370(streams);
    }

    {
        Compute_id372(streams);
    }

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
}
float3 Compute_id265(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id163;
}
void Compute_id264(inout CS_STREAMS streams)
{

    {
        Compute_id238(streams);
    }

    {
        Compute_id240(streams);
    }

    {
        Compute_id242(streams);
    }

    {
        Compute_id244(streams);
    }

    {
        Compute_id246(streams);
    }

    {
        Compute_id248(streams);
    }

    {
        Compute_id250(streams);
    }

    {
        Compute_id252(streams);
    }

    {
        Compute_id254(streams);
    }

    {
        Compute_id256(streams);
    }

    {
        Compute_id258(streams);
    }

    {
        Compute_id260(streams);
    }

    {
        Compute_id262(streams);
    }
}
float3 Compute_id555(inout CS_STREAMS streams)
{
    return streams.Plus_40_id297;
}
void Compute_id554(inout CS_STREAMS streams)
{

    {
        Compute_id514(streams);
    }

    {
        Compute_id516(streams);
    }

    {
        Compute_id517();
    }

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

    {
        Compute_id530(streams);
    }

    {
        Compute_id532(streams);
    }

    {
        Compute_id534(streams);
    }

    {
        Compute_id536(streams);
    }

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

    {
        Compute_id550(streams);
    }

    {
        Compute_id552(streams);
    }
}
float3 Compute_id690(inout CS_STREAMS streams)
{
    return streams.Plus_26_id359;
}
void Compute_id689(inout CS_STREAMS streams)
{

    {
        Compute_id659(streams);
    }

    {
        Compute_id661(streams);
    }

    {
        Compute_id663(streams);
    }

    {
        Compute_id665(streams);
    }

    {
        Compute_id666();
    }

    {
        Compute_id667();
    }

    {
        Compute_id668();
    }

    {
        Compute_id669();
    }

    {
        Compute_id671(streams);
    }

    {
        Compute_id673(streams);
    }

    {
        Compute_id675(streams);
    }

    {
        Compute_id677(streams);
    }

    {
        Compute_id679(streams);
    }

    {
        Compute_id681(streams);
    }

    {
        Compute_id683(streams);
    }

    {
        Compute_id685(streams);
    }

    {
        Compute_id687(streams);
    }
}
float Compute_id301(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id118;
}
void Compute_id300(inout CS_STREAMS streams)
{

    {
        Compute_id296(streams);
    }

    {
        Compute_id298(streams);
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
    return streams.Lerp_12_id394;
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
float3 Compute_id44(inout CS_STREAMS streams)
{
    Compute_id386(streams);
    return Compute_id387(streams);
}
float3 Compute_id43(inout CS_STREAMS streams)
{
    Compute_id264(streams);
    return Compute_id265(streams);
}
float3 Compute_id42(inout CS_STREAMS streams)
{
    Compute_id554(streams);
    return Compute_id555(streams);
}
float3 Compute_id41(inout CS_STREAMS streams)
{
    Compute_id689(streams);
    return Compute_id690(streams);
}
float Compute_id46(inout CS_STREAMS streams)
{
    Compute_id300(streams);
    return Compute_id301(streams);
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
    Compute_id154(streams);
    return Compute_id155(streams);
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

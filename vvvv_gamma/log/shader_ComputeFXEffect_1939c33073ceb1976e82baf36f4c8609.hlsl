/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_27> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_28,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_29> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_27>}]}], mixin AssignVarFloat<Multiply_37> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_40> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_37>}, {Y = GetVarFloat<Multiply_38>}, {Z = GetVarFloat<Multiply_39>}]}], mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<Multiply_42> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_40>}, {Right = GetVarFloat3<Input_41>}]}], mixin AssignVarFloat3<Input_43> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_42>}, {Right = GetVarFloat3<Input_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Plus_46> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Multiply_48>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_53> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Multiply_51>}, {Z = GetVarFloat<Multiply_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Multiply_55> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_53>}, {Right = GetVarFloat3<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Plus_57> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_55>}, {Right = GetVarFloat3<Input_56>}]}]]}]}, {Value = GetVarFloat3<Plus_57>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_24> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx23,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_25,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_26> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_24>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_27> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_28,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_29> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_27>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_30> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<SMCalcLuminance_ShaderFXResult_26>}, {Z = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_32> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_30>}, {Right = GetVarFloat3<Input_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_34> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_32>}, {Right = GetVarFloat3<Input_33>}]}], mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_36> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_34>}, {Right = GetVarFloat3<Input_35>}]}]]}]}, {Value = GetVarFloat3<Plus_36>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarUInt<Input_3> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarUInt<SMValueToIndex_ShaderFXResult_4> [{Value = mixin SMValueToIndex_ShaderFX [{Count = GetVarUInt<Input_3>}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}], mixin AssignVarFloat4<BufferItem_5> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerUpdate> [{Index = GetVarUInt<SMValueToIndex_ShaderFXResult_4>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_6> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_5>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_10,TEXCOORD0>}]}], mixin AssignVarFloat<Input_11> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat4<Lerp_12> [{Value = mixin LerpFloat4 [{A = GetVarFloat4<SRgbToLinear_ShaderFXResult_6>}, {B = GetVarFloat4<TextureValue_9>}, {Scalar = GetVarFloat<Input_11>}]}]]}]}, {Value = GetVarFloat4<Lerp_12>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_13> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_14> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_13>}, {Y = GetVarFloat<Input_13>}, {Z = GetVarFloat<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_16> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_14>}, {Right = GetVarFloat3<Input_15>}]}], mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_18> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_16>}, {Right = GetVarFloat3<Input_17>}]}]]}]}, {Value = GetVarFloat3<Plus_18>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx19,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_21,TEXCOORD0>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_22> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_20>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_24> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx23,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_25,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_26> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_24>}]}], ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_27> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_28,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_29> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_27>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_30> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_22>}, {Y = GetVarFloat<SMCalcLuminance_ShaderFXResult_26>}, {Z = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat3<Input_31> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_32> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_30>}, {Right = GetVarFloat3<Input_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_34> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_32>}, {Right = GetVarFloat3<Input_33>}]}], mixin AssignVarFloat3<Input_35> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_36> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_34>}, {Right = GetVarFloat3<Input_35>}]}]]}]}, {Value = GetVarFloat3<Plus_36>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_27> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx7,PerUpdate,ObjectSampler_fx8,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_28,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_29> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_27>}]}], mixin AssignVarFloat<Multiply_37> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat<Multiply_38> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat<Multiply_39> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_29>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_40> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_37>}, {Y = GetVarFloat<Multiply_38>}, {Z = GetVarFloat<Multiply_39>}]}], mixin AssignVarFloat3<Input_41> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat3<Multiply_42> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_40>}, {Right = GetVarFloat3<Input_41>}]}], mixin AssignVarFloat3<Input_43> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Plus_44> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_42>}, {Right = GetVarFloat3<Input_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Plus_46> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_44>}, {Right = GetVarFloat3<Input_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_48> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Multiply_48>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<SMVideoBufferSelector_ShaderFXResult_1> [{Value = SMVideoBufferSelector_ShaderFX}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<SMVideoBufferSelector_ShaderFXResult_1>}]}], mixin AssignVarFloat<Input_49> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_50> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_51> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat<Multiply_52> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}, {Right = GetVarFloat<Input_49>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_53> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_50>}, {Y = GetVarFloat<Multiply_51>}, {Z = GetVarFloat<Multiply_52>}]}], mixin AssignVarFloat3<Input_54> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Multiply_55> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_53>}, {Right = GetVarFloat3<Input_54>}]}], mixin AssignVarFloat3<Input_56> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i10,PerUpdate>}], mixin AssignVarFloat3<Plus_57> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_55>}, {Right = GetVarFloat3<Input_56>}]}]]}]}, {Value = GetVarFloat3<Plus_57>}]
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
cbuffer PerUpdate [Size: 192]
@C    InputValue_id163 => ShaderFX.InputValueFloat3.i5
@C    InputValue_id170 => ShaderFX.InputValueFloat3.i6
@C    InputValue_id177 => ShaderFX.InputValueFloat3.i7
@C    InputValue_id184 => ShaderFX.InputValueFloat3.i8
@C    InputValue_id205 => ShaderFX.InputValueFloat.i2
@C    InputValue_id225 => ShaderFX.InputValueFloat3.i9
@C    InputValue_id232 => ShaderFX.InputValueFloat3.i10
@C    InputValue_id297 => ShaderFX.InputValueFloat3.i2
@C    InputValue_id304 => ShaderFX.InputValueFloat3.i3
@C    InputValue_id311 => ShaderFX.InputValueFloat3.i4
@C    InputValue_id321 => ShaderFX.InputValueFloat.i1
@C    InputValue_id329 => ShaderFX.InputValueFloat3
@C    InputValue_id336 => ShaderFX.InputValueFloat3.i1
@C    InputValue_id357 => ShaderFX.InputValueUInt
@C    InputValue_id377 => ShaderFX.InputValueFloat
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
@C    VoxelCounts_id109 => SMVideoBufferSelector_ShaderFX.VoxelCounts
@C    PlacementCounts_id110 => SMVideoBufferSelector_ShaderFX.PlacementCounts
@C    SamplerOffset_id111 => SMVideoBufferSelector_ShaderFX.SamplerOffset
@C    SamplerScale_id112 => SMVideoBufferSelector_ShaderFX.SamplerScale
@C    PlacementLevelCount_id113 => SMVideoBufferSelector_ShaderFX.PlacementLevelCount
***************************
******  Resources    ******
***************************
@R    DynamicSampler_id128 => ObjectSampler_fx8 [Stage: Compute, Slot: (0-0)]
@R    Damping_id97 => GPUMappingDamper_ShaderFX.Damping [Stage: Compute, Slot: (0-0)]
@R    PlacementVertices_id104 => SMGridSimulation_ComputeFX.PlacementVertices [Stage: Compute, Slot: (1-1)]
@R    VoxelVolume_id108 => SMVideoBufferSelector_ShaderFX.VoxelVolume [Stage: Compute, Slot: (2-2)]
@R    DynamicTexture_id127 => ObjectTexture_fx7 [Stage: Compute, Slot: (3-3)]
@R    DynamicTexture_id242 => ObjectTexture_fx19 [Stage: Compute, Slot: (4-4)]
@R    DynamicTexture_id260 => ObjectTexture_fx23 [Stage: Compute, Slot: (5-5)]
@R    DynamicBuffer_id364 => ObjectBuffer_fx0 [Stage: Compute, Slot: (6-6)]
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
***************************
*****     Stages      *****
***************************
@G    Compute => bdf89c1c693cf8828a5e860c6b831c02
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
//   float InputValue_id205;            // Offset:   60 Size:     4
//   float3 InputValue_id225;           // Offset:   64 Size:    12
//   float3 InputValue_id232;           // Offset:   80 Size:    12
//   float3 InputValue_id297;           // Offset:   96 Size:    12
//   float3 InputValue_id304;           // Offset:  112 Size:    12
//   float3 InputValue_id311;           // Offset:  128 Size:    12
//   float InputValue_id321;            // Offset:  140 Size:     4
//   float3 InputValue_id329;           // Offset:  144 Size:    12
//   float3 InputValue_id336;           // Offset:  160 Size:    12
//   uint InputValue_id357;             // Offset:  172 Size:     4
//   float InputValue_id377;            // Offset:  176 Size:     4
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
// DynamicTexture_id127              texture  float4          2d             t3      1 
// DynamicTexture_id242              texture  float4          2d             t4      1 
// DynamicTexture_id260              texture  float4          2d             t5      1 
// DynamicBuffer_id364               texture  float4         buf             t6      1 
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
dcl_constantbuffer CB1[12], immediateIndexed
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
#line 1532 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_1939c33073ceb1976e82baf36f4c8609.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u1.xyzw  // r0.x <- POut.Pos.x; r0.y <- POut.Pos.y; r0.z <- POut.Pos.z; r0.w <- POut.Vel.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(16), u1.zwxy  // r1.z <- POut.Vel.y; r1.w <- POut.Vel.z; r1.x <- POut.Rot.x; r1.y <- POut.Rot.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, vThreadID.x, l(32), u1.yzwx  // r2.w <- POut.Rot.z; r2.x <- POut.Size.x; r2.y <- POut.Size.y; r2.z <- POut.Size.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, vThreadID.x, l(48), u1.xyzx  // r3.x <- POut.Col.x; r3.y <- POut.Col.y; r3.z <- POut.Col.z

#line 1533
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r4.xyzw, vThreadID.x, l(0), t1.xyzw  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z; r4.w <- p.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r5.xy, vThreadID.x, l(16), t1.xyxx  // r5.x <- p.Rot.y; r5.y <- p.Rot.z
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r6.xyz, vThreadID.x, l(28), t1.xyzx  // r6.x <- p.UVW.x; r6.y <- p.UVW.y; r6.z <- p.UVW.z

#line 1544
  if_nz cb2[5].x

#line 1554
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

#line 1505
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r8.xyzw, vThreadID.x, l(0), u0.wxyz  // r8.y <- m.Trans.x; r8.z <- m.Trans.y; r8.w <- m.Trans.z; r8.x <- m.Rot.x
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r9.xyzw, vThreadID.x, l(16), u0.xzwy  // r9.x <- m.Rot.y; r9.w <- m.Rot.z; r9.y <- m.Dim.x; r9.z <- m.Dim.y
  ld_structured_indexable(structured_buffer, stride=48)(mixed,mixed,mixed,mixed) r10.xyzw, vThreadID.x, l(32), u0.xyzw  // r10.x <- m.Dim.z; r10.y <- m.Piv.x; r10.z <- m.Piv.y; r10.w <- m.Piv.z

#line 727
  mad r11.xyz, cb1[8].wwww, cb1[9].xyzx, cb1[10].xyzx  // r11.x <- <Compute_id643 return value>.x; r11.y <- <Compute_id643 return value>.y; r11.z <- <Compute_id643 return value>.z

#line 1508
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r12.xyz, l(0), l(0), t0.xyzx
  add r13.xyz, r8.yzwy, -r11.xyzx
  mad r11.xyz, r12.xyzx, r13.xyzx, r11.xyzx  // r11.x <- m.Trans.x; r11.y <- m.Trans.y; r11.z <- m.Trans.z

#line 723
  sample_l_indexable(texture2d)(float,float,float,float) r12.xyz, r6.xyxx, t4.xyzw, s0, l(0.000000)  // r12.x <- <Compute_id463 return value>.x; r12.y <- <Compute_id463 return value>.y; r12.z <- <Compute_id463 return value>.z

#line 454
  dp3 r12.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.x <- <Luminance_id61 return value>

#line 714
  sample_l_indexable(texture2d)(float,float,float,float) r13.xyz, r6.zyzz, t5.xyzw, s0, l(0.000000)  // r13.x <- <Compute_id492 return value>.x; r13.y <- <Compute_id492 return value>.y; r13.z <- <Compute_id492 return value>.z

#line 438
  dp3 r12.y, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.y <- <Luminance_id65 return value>

#line 705
  sample_l_indexable(texture2d)(float,float,float,float) r13.xyz, r6.xzxx, t3.xyzw, s0, l(0.000000)  // r13.x <- <Compute_id521 return value>.x; r13.y <- <Compute_id521 return value>.y; r13.z <- <Compute_id521 return value>.z

#line 422
  dp3 r12.z, r13.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r12.z <- <Luminance_id69 return value>

#line 680
  mad r12.xyw, r12.xyxz, cb1[6].xyxz, cb1[7].xyxz  // r12.x <- <Compute_id568 return value>.x; r12.y <- <Compute_id568 return value>.y; r12.w <- <Compute_id568 return value>.z

#line 672
  add r12.xyw, r12.xyxw, cb1[8].xyxz  // r12.x <- <Compute_id576 return value>.x; r12.y <- <Compute_id576 return value>.y; r12.w <- <Compute_id576 return value>.z

#line 1509
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(1), l(0), t0.xyzx
  mov r8.yz, r9.xxwx
  add r8.xyz, -r12.xywx, r8.xyzx
  mad r8.xyz, r13.xyzx, r8.xyzx, r12.xywx  // r8.x <- m.Rot.x; r8.y <- m.Rot.y; r8.z <- m.Rot.z

#line 667
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r12.xyw, vThreadID.x, l(0), t2.xyxz  // r12.x <- m.x; r12.y <- m.y; r12.w <- m.z

#line 378
  dp3 r0.w, r12.xywx, l(0.299000, 0.587000, 0.114000, 0.000000)  // r0.w <- <Luminance_id47 return value>

#line 647
  mul r1.w, r12.z, r0.w  // r1.w <- <Compute_id230 return value>

#line 619
  mad r12.xyz, r1.wwww, cb1[0].xyzx, cb1[1].xyzx  // r12.x <- <Compute_id266 return value>.x; r12.y <- <Compute_id266 return value>.y; r12.z <- <Compute_id266 return value>.z

#line 611
  add r12.xyz, r12.xyzx, cb1[2].xyzx  // r12.x <- <Compute_id274 return value>.x; r12.y <- <Compute_id274 return value>.y; r12.z <- <Compute_id274 return value>.z

#line 603
  mul r13.xyz, r12.xyzx, cb1[3].xyzx  // r13.x <- <Compute_id282 return value>.x; r13.y <- <Compute_id282 return value>.y; r13.z <- <Compute_id282 return value>.z

#line 1510
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r14.xyz, l(2), l(0), t0.xyzx
  mov r9.w, r10.x
  mad r9.xyz, -r12.xyzx, cb1[3].xyzx, r9.yzwy
  mad r9.xyz, r14.xyzx, r9.xyzx, r13.xyzx  // r9.x <- m.Dim.x; r9.y <- m.Dim.y; r9.z <- m.Dim.z

#line 583
  mul r1.w, r0.w, cb1[3].w  // r1.w <- <Compute_id394 return value>

#line 555
  mad r12.xyz, r1.wwww, cb1[4].xyzx, cb1[5].xyzx  // r12.x <- <Compute_id430 return value>.x; r12.y <- <Compute_id430 return value>.y; r12.z <- <Compute_id430 return value>.z

#line 1511
  ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r13.xyz, l(3), l(0), t0.xyzx
  add r10.xyz, r10.yzwy, -r12.xyzx
  mad r10.yzw, r13.xxyz, r10.xxyz, r12.xxyz  // r10.y <- m.Piv.x; r10.z <- m.Piv.y

#line 1513
  mov r11.w, r8.x
  store_structured u0.xyzw, vThreadID.x, l(0), r11.xyzw
  mov r12.xy, r8.yzyy
  mov r12.zw, r9.xxxy
  store_structured u0.xyzw, vThreadID.x, l(16), r12.xyzw
  mov r10.x, r9.z
  store_structured u0.xyzw, vThreadID.x, l(32), r10.xyzw

#line 785
  utof r1.w, cb1[10].w
  mul r1.w, r0.w, r1.w
  round_ne r1.w, r1.w
  ftou r1.w, r1.w  // r1.w <- <Compute_id116 return value>

#line 779
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r1.wwww, t6.xyzw  // r12.x <- <Compute_id120 return value>.x; r12.y <- <Compute_id120 return value>.y; r12.z <- <Compute_id120 return value>.z

#line 527
  mad r13.xyz, r12.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
  mad r13.xyz, r12.xyzx, r13.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
  mul r14.xyz, r12.xyzx, r13.xyzx  // r14.x <- <SRgbToLinear_id661 return value>.x; r14.y <- <SRgbToLinear_id661 return value>.y; r14.z <- <SRgbToLinear_id661 return value>.z

#line 771
  sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r6.xyxx, t3.wxyz, s0, l(0.000000)  // r6.y <- <Compute_id130 return value>.x; r6.z <- <Compute_id130 return value>.y; r6.w <- <Compute_id130 return value>.z

#line 763
  mad r6.yzw, -r12.xxyz, r13.xxyz, r6.yyzw
  mad r6.yzw, cb1[11].xxxx, r6.yyzw, r14.xxyz  // r6.y <- <Compute_id140 return value>.x; r6.z <- <Compute_id140 return value>.y; r6.w <- <Compute_id140 return value>.z

#line 1520
  mov r5.w, r4.w
  add r8.xyz, r5.wxyw, r8.xyzx

#line 1491
  mul r12.xyz, r8.xyzx, l(6.283185, 6.283185, 6.283185, 0.000000)  // r12.x <- angle.x; r12.y <- angle.y; r12.z <- angle.z

#line 1395
  sincos r10.x, r13.x, r12.z  // r13.x <- c; r10.x <- s

#line 1398
  mul r12.zw, r10.zzzy, r10.xxxx

#line 1397
  mad r1.w, r13.x, r10.y, -r12.z  // r1.w <- p.x

#line 1398
  mad r2.w, r13.x, r10.z, r12.w  // r2.w <- p.y

#line 1385
  sincos r10.x, r12.x, r12.x  // r12.x <- c; r10.x <- s

#line 1387
  mul r3.w, r10.w, r10.x
  mad r13.y, r12.x, r2.w, -r3.w  // r13.y <- p.y

#line 1388
  mul r3.w, r10.w, r12.x
  mad r2.w, r10.x, r2.w, r3.w  // r2.w <- p.z

#line 1375
  sincos r10.x, r12.x, r12.y  // r12.x <- c; r10.x <- s

#line 1377
  mul r3.w, r2.w, r10.x
  mad r13.x, r12.x, r1.w, r3.w  // r13.x <- p.x

#line 1378
  mul r2.w, r2.w, r12.x
  mad r13.z, -r10.x, r1.w, r2.w  // r13.z <- p.z

#line 1491
  mul r5.xyz, r5.wxyw, l(6.283185, 6.283185, 6.283185, 0.000000)  // r5.x <- angle.x; r5.y <- angle.y; r5.z <- angle.z

#line 1395
  sincos r10.x, r12.x, r5.z  // r12.x <- c; r10.x <- s

#line 1398
  mul r5.zw, r11.yyyx, r10.xxxx

#line 1397
  mad r1.w, r12.x, r11.x, -r5.z

#line 1398
  mad r2.w, r12.x, r11.y, r5.w  // r2.w <- p.y

#line 1385
  sincos r5.x, r10.x, r5.x  // r10.x <- c; r5.x <- s

#line 1387
  mul r3.w, r11.z, r5.x
  mad r12.y, r10.x, r2.w, -r3.w  // r12.y <- p.y

#line 1388
  mul r3.w, r11.z, r10.x
  mad r2.w, r5.x, r2.w, r3.w  // r2.w <- p.z

#line 1375
  sincos r5.x, r10.x, r5.y  // r10.x <- c; r5.x <- s

#line 1377
  mul r3.w, r2.w, r5.x
  mad r12.x, r10.x, r1.w, r3.w  // r12.x <- p.x

#line 1378
  mul r2.w, r2.w, r10.x
  mad r12.z, -r5.x, r1.w, r2.w  // r12.z <- p.z

#line 1521
  add r5.xyz, r13.xyzx, r12.xyzx
  add r4.xyz, r4.xyzx, r5.xyzx  // r4.x <- p.Pos.x; r4.y <- p.Pos.y; r4.z <- p.Pos.z

#line 1556
  add r0.xyz, r0.xyzx, -r4.xyzx
  mad r4.xyz, cb0[0].wwww, r0.xyzx, r4.xyzx  // r4.x <- POut.Pos.x; r4.y <- POut.Pos.y; r4.z <- POut.Pos.z

#line 1557
  add r0.xyz, r1.xyzx, -r8.xyzx
  mad r0.xyz, cb0[0].wwww, r0.xyzx, r8.xyzx  // r0.x <- POut.Rot.x; r0.y <- POut.Rot.y; r0.z <- POut.Rot.z

#line 1558
  add r1.xyz, r2.xyzx, -r9.xyzx
  mad r1.yzw, cb0[0].wwww, r1.xxyz, r9.xxyz  // r1.y <- POut.Size.x; r1.z <- POut.Size.y; r1.w <- POut.Size.z

#line 1559
  add r2.xyz, r3.xyzx, -r6.yzwy
  mad r2.xyz, cb0[1].xxxx, r2.xyzx, r6.yzwy  // r2.x <- POut.Col.x; r2.y <- POut.Col.y; r2.z <- POut.Col.z

#line 1560
  utof r3.x, cb0[0].z
  mul r0.w, r0.w, r3.x
  iadd r3.x, cb0[0].z, l(-1)
  utof r3.x, r3.x
  max r0.w, r0.w, l(0.000000)
  min r2.w, r3.x, r0.w  // r2.w <- POut.Mesh

#line 1564
  movc r3.xyz, cb0[0].yyyy, r6.xxxx, r7.yzxy  // r3.x <- POut.Vel.y; r3.y <- POut.Vel.z; r3.z <- POut.Vel.x

#line 1565
  mov r4.w, r3.z
  store_structured u1.xyzw, vThreadID.x, l(0), r4.xyzw
  mov r3.zw, r0.xxxy
  store_structured u1.xyzw, vThreadID.x, l(16), r3.xyzw
  mov r1.x, r0.z
  store_structured u1.xyzw, vThreadID.x, l(32), r1.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), r2.xyzw
endif 

#line 1580
ret 
// Approximately 131 instruction slots used
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id371 = 0;
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
    float Input_13_id320;
    float3 SMVector3Join_ShaderFXResult_14_id323;
    float3 Input_15_id328;
    float3 Multiply_16_id331;
    float3 Input_17_id335;
    float3 Plus_18_id338;
    float4 TextureValue_20_id241;
    float SMCalcLuminance_ShaderFXResult_22_id248;
    float4 TextureValue_24_id259;
    float SMCalcLuminance_ShaderFXResult_26_id266;
    float4 TextureValue_27_id126;
    float SMCalcLuminance_ShaderFXResult_29_id134;
    float3 SMVector3Join_ShaderFXResult_30_id291;
    float3 Input_31_id296;
    float3 Multiply_32_id299;
    float3 Input_33_id303;
    float3 Plus_34_id306;
    float3 Input_35_id310;
    float3 Plus_36_id313;
    float4 SMVideoBufferSelector_ShaderFXResult_1_id107;
    float SMCalcLuminance_ShaderFXResult_2_id115;
    float Multiply_37_id145;
    float Multiply_38_id149;
    float Multiply_39_id153;
    float3 SMVector3Join_ShaderFXResult_40_id157;
    float3 Input_41_id162;
    float3 Multiply_42_id165;
    float3 Input_43_id169;
    float3 Plus_44_id172;
    float3 Input_45_id176;
    float3 Plus_46_id179;
    float3 Input_47_id183;
    float3 Multiply_48_id186;
    float Input_49_id204;
    float Multiply_50_id207;
    float Multiply_51_id211;
    float Multiply_52_id215;
    float3 SMVector3Join_ShaderFXResult_53_id219;
    float3 Input_54_id224;
    float3 Multiply_55_id227;
    float3 Input_56_id231;
    float3 Plus_57_id234;
    uint Input_3_id356;
    uint SMValueToIndex_ShaderFXResult_4_id359;
    float4 BufferItem_5_id363;
    float4 SRgbToLinear_ShaderFXResult_6_id367;
    float4 TextureValue_9_id370;
    float Input_11_id376;
    float4 Lerp_12_id379;
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
    float3 InputValue_id163;
    float3 InputValue_id170;
    float3 InputValue_id177;
    float3 InputValue_id184;
    float InputValue_id205;
    float3 InputValue_id225;
    float3 InputValue_id232;
    float3 InputValue_id297;
    float3 InputValue_id304;
    float3 InputValue_id311;
    float InputValue_id321;
    float3 InputValue_id329;
    float3 InputValue_id336;
    uint InputValue_id357;
    float InputValue_id377;
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
Texture2D DynamicTexture_id127;
SamplerState DynamicSampler_id128;
Texture2D DynamicTexture_id242;
Texture2D DynamicTexture_id260;
Buffer<float4> DynamicBuffer_id364;
float3 Compute_id427(inout CS_STREAMS streams)
{
    return streams.Input_56_id231;
}
float3 Compute_id425(inout CS_STREAMS streams)
{
    return streams.Multiply_55_id227;
}
float3 Compute_id419(inout CS_STREAMS streams)
{
    return streams.Input_54_id224;
}
float3 Compute_id417(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_53_id219;
}
float Compute_id411(inout CS_STREAMS streams)
{
    return streams.Multiply_52_id215;
}
float Compute_id409(inout CS_STREAMS streams)
{
    return streams.Multiply_51_id211;
}
float Compute_id407(inout CS_STREAMS streams)
{
    return streams.Multiply_50_id207;
}
float Compute_id403(inout CS_STREAMS streams)
{
    return streams.Input_49_id204;
}
float Compute_id401(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Compute_id397(inout CS_STREAMS streams)
{
    return streams.Input_49_id204;
}
float Compute_id395(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Compute_id391(inout CS_STREAMS streams)
{
    return streams.Input_49_id204;
}
float Compute_id389(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Luminance_id57(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id364(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float3 Compute_id279(inout CS_STREAMS streams)
{
    return streams.Input_47_id183;
}
float3 Compute_id277(inout CS_STREAMS streams)
{
    return streams.Plus_46_id179;
}
float3 Compute_id271(inout CS_STREAMS streams)
{
    return streams.Input_45_id176;
}
float3 Compute_id269(inout CS_STREAMS streams)
{
    return streams.Plus_44_id172;
}
float3 Compute_id263(inout CS_STREAMS streams)
{
    return streams.Input_43_id169;
}
float3 Compute_id261(inout CS_STREAMS streams)
{
    return streams.Multiply_42_id165;
}
float3 Compute_id255(inout CS_STREAMS streams)
{
    return streams.Input_41_id162;
}
float3 Compute_id253(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_40_id157;
}
float Compute_id247(inout CS_STREAMS streams)
{
    return streams.Multiply_39_id153;
}
float Compute_id245(inout CS_STREAMS streams)
{
    return streams.Multiply_38_id149;
}
float Compute_id243(inout CS_STREAMS streams)
{
    return streams.Multiply_37_id145;
}
float Compute_id239(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_29_id134;
}
float Compute_id237(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Compute_id233(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_29_id134;
}
float Compute_id231(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Compute_id227(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_29_id134;
}
float Compute_id225(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id202(inout CS_STREAMS streams)
{
    return streams.TextureValue_27_id126;
}
float Compute_id196()
{
    return Value_id371;
}
float2 Compute_id198(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Luminance_id47(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id173(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float3 Compute_id573(inout CS_STREAMS streams)
{
    return streams.Input_35_id310;
}
float3 Compute_id571(inout CS_STREAMS streams)
{
    return streams.Plus_34_id306;
}
float3 Compute_id565(inout CS_STREAMS streams)
{
    return streams.Input_33_id303;
}
float3 Compute_id563(inout CS_STREAMS streams)
{
    return streams.Multiply_32_id299;
}
float3 Compute_id557(inout CS_STREAMS streams)
{
    return streams.Input_31_id296;
}
float3 Compute_id555(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_30_id291;
}
float Compute_id549(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_29_id134;
}
float Compute_id547(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_26_id266;
}
float Compute_id545(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_22_id248;
}
float Luminance_id69(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id522(inout CS_STREAMS streams)
{
    return streams.TextureValue_27_id126;
}
float Compute_id516()
{
    return Value_id371;
}
float2 Compute_id518(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float Luminance_id65(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id493(inout CS_STREAMS streams)
{
    return streams.TextureValue_24_id259;
}
float Compute_id487()
{
    return Value_id371;
}
float2 Compute_id489(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float Luminance_id61(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id464(inout CS_STREAMS streams)
{
    return streams.TextureValue_20_id241;
}
float Compute_id458()
{
    return Value_id371;
}
float2 Compute_id460(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float3 Compute_id640(inout CS_STREAMS streams)
{
    return streams.Input_17_id335;
}
float3 Compute_id638(inout CS_STREAMS streams)
{
    return streams.Multiply_16_id331;
}
float3 Compute_id632(inout CS_STREAMS streams)
{
    return streams.Input_15_id328;
}
float3 Compute_id630(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_14_id323;
}
float Compute_id624(inout CS_STREAMS streams)
{
    return streams.Input_13_id320;
}
float Compute_id622(inout CS_STREAMS streams)
{
    return streams.Input_13_id320;
}
float Compute_id620(inout CS_STREAMS streams)
{
    return streams.Input_13_id320;
}
float Luminance_id81(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id328(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float Compute_id137(inout CS_STREAMS streams)
{
    return streams.Input_11_id376;
}
float4 Compute_id135(inout CS_STREAMS streams)
{
    return streams.TextureValue_9_id370;
}
float4 Compute_id133(inout CS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_6_id367;
}
float Compute_id125()
{
    return Value_id371;
}
float2 Compute_id127(inout CS_STREAMS streams)
{
    return streams.TexCoord_id59;
}
float4 SRgbToLinear_id661(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id121(inout CS_STREAMS streams)
{
    return streams.BufferItem_5_id363;
}
uint Compute_id117(inout CS_STREAMS streams)
{
    return streams.SMValueToIndex_ShaderFXResult_4_id359;
}
uint Compute_id111(inout CS_STREAMS streams)
{
    return streams.Input_3_id356;
}
float Compute_id113(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
float Luminance_id75(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id86(inout CS_STREAMS streams)
{
    return streams.SMVideoBufferSelector_ShaderFXResult_1_id107;
}
float3 Compute_id430(inout CS_STREAMS streams)
{
    return Compute_id425(streams) + Compute_id427(streams);
}
float3 Compute_id423()
{
    return InputValue_id232;
}
float3 Compute_id422(inout CS_STREAMS streams)
{
    return Compute_id417(streams) * Compute_id419(streams);
}
float3 Compute_id415()
{
    return InputValue_id225;
}
float3 Compute_id414(inout CS_STREAMS streams)
{
    return float3(Compute_id407(streams), Compute_id409(streams), Compute_id411(streams));
}
float Compute_id406(inout CS_STREAMS streams)
{
    return Compute_id401(streams) * Compute_id403(streams);
}
float Compute_id400(inout CS_STREAMS streams)
{
    return Compute_id395(streams) * Compute_id397(streams);
}
float Compute_id394(inout CS_STREAMS streams)
{
    return Compute_id389(streams) * Compute_id391(streams);
}
float Compute_id387()
{
    return InputValue_id205;
}
float Compute_id386(inout CS_STREAMS streams)
{
    float4 color = Compute_id364(streams);
    return Luminance_id57(color.rgb);
}
float4 Compute_id52(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
float3 Compute_id282(inout CS_STREAMS streams)
{
    return Compute_id277(streams) * Compute_id279(streams);
}
float3 Compute_id275()
{
    return InputValue_id184;
}
float3 Compute_id274(inout CS_STREAMS streams)
{
    return Compute_id269(streams) + Compute_id271(streams);
}
float3 Compute_id267()
{
    return InputValue_id177;
}
float3 Compute_id266(inout CS_STREAMS streams)
{
    return Compute_id261(streams) + Compute_id263(streams);
}
float3 Compute_id259()
{
    return InputValue_id170;
}
float3 Compute_id258(inout CS_STREAMS streams)
{
    return Compute_id253(streams) * Compute_id255(streams);
}
float3 Compute_id251()
{
    return InputValue_id163;
}
float3 Compute_id250(inout CS_STREAMS streams)
{
    return float3(Compute_id243(streams), Compute_id245(streams), Compute_id247(streams));
}
float Compute_id242(inout CS_STREAMS streams)
{
    return Compute_id237(streams) * Compute_id239(streams);
}
float Compute_id236(inout CS_STREAMS streams)
{
    return Compute_id231(streams) * Compute_id233(streams);
}
float Compute_id230(inout CS_STREAMS streams)
{
    return Compute_id225(streams) * Compute_id227(streams);
}
float Compute_id224(inout CS_STREAMS streams)
{
    float4 color = Compute_id202(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id201(inout CS_STREAMS streams)
{
    return DynamicTexture_id127.SampleLevel(DynamicSampler_id128, Compute_id198(streams), Compute_id196());
}
float Compute_id195(inout CS_STREAMS streams)
{
    float4 color = Compute_id173(streams);
    return Luminance_id47(color.rgb);
}
float4 Compute_id42(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
float3 Compute_id576(inout CS_STREAMS streams)
{
    return Compute_id571(streams) + Compute_id573(streams);
}
float3 Compute_id569()
{
    return InputValue_id311;
}
float3 Compute_id568(inout CS_STREAMS streams)
{
    return Compute_id563(streams) + Compute_id565(streams);
}
float3 Compute_id561()
{
    return InputValue_id304;
}
float3 Compute_id560(inout CS_STREAMS streams)
{
    return Compute_id555(streams) * Compute_id557(streams);
}
float3 Compute_id553()
{
    return InputValue_id297;
}
float3 Compute_id552(inout CS_STREAMS streams)
{
    return float3(Compute_id545(streams), Compute_id547(streams), Compute_id549(streams));
}
float Compute_id544(inout CS_STREAMS streams)
{
    float4 color = Compute_id522(streams);
    return Luminance_id69(color.rgb);
}
float4 Compute_id521(inout CS_STREAMS streams)
{
    return DynamicTexture_id127.SampleLevel(DynamicSampler_id128, Compute_id518(streams), Compute_id516());
}
float Compute_id515(inout CS_STREAMS streams)
{
    float4 color = Compute_id493(streams);
    return Luminance_id65(color.rgb);
}
float4 Compute_id492(inout CS_STREAMS streams)
{
    return DynamicTexture_id260.SampleLevel(DynamicSampler_id128, Compute_id489(streams), Compute_id487());
}
float Compute_id486(inout CS_STREAMS streams)
{
    float4 color = Compute_id464(streams);
    return Luminance_id61(color.rgb);
}
float4 Compute_id463(inout CS_STREAMS streams)
{
    return DynamicTexture_id242.SampleLevel(DynamicSampler_id128, Compute_id460(streams), Compute_id458());
}
float3 Compute_id643(inout CS_STREAMS streams)
{
    return Compute_id638(streams) + Compute_id640(streams);
}
float3 Compute_id636()
{
    return InputValue_id336;
}
float3 Compute_id635(inout CS_STREAMS streams)
{
    return Compute_id630(streams) * Compute_id632(streams);
}
float3 Compute_id628()
{
    return InputValue_id329;
}
float3 Compute_id627(inout CS_STREAMS streams)
{
    return float3(Compute_id620(streams), Compute_id622(streams), Compute_id624(streams));
}
float Compute_id618()
{
    return InputValue_id321;
}
float Compute_id350(inout CS_STREAMS streams)
{
    float4 color = Compute_id328(streams);
    return Luminance_id81(color.rgb);
}
float4 Compute_id76(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
float4 Compute_id140(inout CS_STREAMS streams)
{
    return lerp(Compute_id133(streams), Compute_id135(streams), Compute_id137(streams));
}
float Compute_id131()
{
    return InputValue_id377;
}
float4 Compute_id130(inout CS_STREAMS streams)
{
    return DynamicTexture_id127.SampleLevel(DynamicSampler_id128, Compute_id127(streams), Compute_id125());
}
float4 Compute_id124(inout CS_STREAMS streams)
{
    return SRgbToLinear_id661(Compute_id121(streams));
}
float4 Compute_id120(inout CS_STREAMS streams)
{
    return DynamicBuffer_id364[Compute_id117(streams)];
}
uint Compute_id116(inout CS_STREAMS streams)
{
    float v = Compute_id113(streams);
    uint c = Compute_id111(streams);
    return round(v * c);
}
uint Compute_id109()
{
    return InputValue_id357;
}
float Compute_id108(inout CS_STREAMS streams)
{
    float4 color = Compute_id86(streams);
    return Luminance_id75(color.rgb);
}
float4 Compute_id70(inout CS_STREAMS streams)
{
    uint i = streams.DispatchThreadId_id1.x;
    uint3 uvw = float3(streams.TexCoord_id59.x, streams.TexCoord_id59.y, streams.TexCoord1_id60.x) * VoxelCounts_id109;
    float4 m = VoxelVolume_id108[i];
    return m;
}
void Compute_id452(inout CS_STREAMS streams)
{
    streams.Plus_57_id234 = Compute_id430(streams);
}
void Compute_id450(inout CS_STREAMS streams)
{
    streams.Input_56_id231 = Compute_id423();
}
void Compute_id448(inout CS_STREAMS streams)
{
    streams.Multiply_55_id227 = Compute_id422(streams);
}
void Compute_id446(inout CS_STREAMS streams)
{
    streams.Input_54_id224 = Compute_id415();
}
void Compute_id444(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_53_id219 = Compute_id414(streams);
}
void Compute_id442(inout CS_STREAMS streams)
{
    streams.Multiply_52_id215 = Compute_id406(streams);
}
void Compute_id440(inout CS_STREAMS streams)
{
    streams.Multiply_51_id211 = Compute_id400(streams);
}
void Compute_id438(inout CS_STREAMS streams)
{
    streams.Multiply_50_id207 = Compute_id394(streams);
}
void Compute_id436(inout CS_STREAMS streams)
{
    streams.Input_49_id204 = Compute_id387();
}
void Compute_id434(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id386(streams);
}
void Compute_id432(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id52(streams);
}
void Compute_id318(inout CS_STREAMS streams)
{
    streams.Multiply_48_id186 = Compute_id282(streams);
}
void Compute_id316(inout CS_STREAMS streams)
{
    streams.Input_47_id183 = Compute_id275();
}
void Compute_id314(inout CS_STREAMS streams)
{
    streams.Plus_46_id179 = Compute_id274(streams);
}
void Compute_id312(inout CS_STREAMS streams)
{
    streams.Input_45_id176 = Compute_id267();
}
void Compute_id310(inout CS_STREAMS streams)
{
    streams.Plus_44_id172 = Compute_id266(streams);
}
void Compute_id308(inout CS_STREAMS streams)
{
    streams.Input_43_id169 = Compute_id259();
}
void Compute_id306(inout CS_STREAMS streams)
{
    streams.Multiply_42_id165 = Compute_id258(streams);
}
void Compute_id304(inout CS_STREAMS streams)
{
    streams.Input_41_id162 = Compute_id251();
}
void Compute_id302(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_40_id157 = Compute_id250(streams);
}
void Compute_id300(inout CS_STREAMS streams)
{
    streams.Multiply_39_id153 = Compute_id242(streams);
}
void Compute_id298(inout CS_STREAMS streams)
{
    streams.Multiply_38_id149 = Compute_id236(streams);
}
void Compute_id296(inout CS_STREAMS streams)
{
    streams.Multiply_37_id145 = Compute_id230(streams);
}
void Compute_id294(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_29_id134 = Compute_id224(streams);
}
void Compute_id292(inout CS_STREAMS streams)
{
    streams.TextureValue_27_id126 = Compute_id201(streams);
}
void Compute_id290()
{
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
void Compute_id286(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id195(streams);
}
void Compute_id284(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id42(streams);
}
void Compute_id612(inout CS_STREAMS streams)
{
    streams.Plus_36_id313 = Compute_id576(streams);
}
void Compute_id610(inout CS_STREAMS streams)
{
    streams.Input_35_id310 = Compute_id569();
}
void Compute_id608(inout CS_STREAMS streams)
{
    streams.Plus_34_id306 = Compute_id568(streams);
}
void Compute_id606(inout CS_STREAMS streams)
{
    streams.Input_33_id303 = Compute_id561();
}
void Compute_id604(inout CS_STREAMS streams)
{
    streams.Multiply_32_id299 = Compute_id560(streams);
}
void Compute_id602(inout CS_STREAMS streams)
{
    streams.Input_31_id296 = Compute_id553();
}
void Compute_id600(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_30_id291 = Compute_id552(streams);
}
void Compute_id598(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_29_id134 = Compute_id544(streams);
}
void Compute_id596(inout CS_STREAMS streams)
{
    streams.TextureValue_27_id126 = Compute_id521(streams);
}
void Compute_id594()
{
}
void Compute_id593()
{
}
void Compute_id592()
{
}
void Compute_id591(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_26_id266 = Compute_id515(streams);
}
void Compute_id589(inout CS_STREAMS streams)
{
    streams.TextureValue_24_id259 = Compute_id492(streams);
}
void Compute_id587()
{
}
void Compute_id586()
{
}
void Compute_id585()
{
}
void Compute_id584(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_22_id248 = Compute_id486(streams);
}
void Compute_id582(inout CS_STREAMS streams)
{
    streams.TextureValue_20_id241 = Compute_id463(streams);
}
void Compute_id580()
{
}
void Compute_id579()
{
}
void Compute_id578()
{
}
void Compute_id577()
{
}
void Compute_id655(inout CS_STREAMS streams)
{
    streams.Plus_18_id338 = Compute_id643(streams);
}
void Compute_id653(inout CS_STREAMS streams)
{
    streams.Input_17_id335 = Compute_id636();
}
void Compute_id651(inout CS_STREAMS streams)
{
    streams.Multiply_16_id331 = Compute_id635(streams);
}
void Compute_id649(inout CS_STREAMS streams)
{
    streams.Input_15_id328 = Compute_id628();
}
void Compute_id647(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_14_id323 = Compute_id627(streams);
}
void Compute_id645(inout CS_STREAMS streams)
{
    streams.Input_13_id320 = Compute_id618();
}
void Compute_id354(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id350(streams);
}
void Compute_id352(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id76(streams);
}
void Compute_id163(inout CS_STREAMS streams)
{
    streams.Lerp_12_id379 = Compute_id140(streams);
}
void Compute_id161(inout CS_STREAMS streams)
{
    streams.Input_11_id376 = Compute_id131();
}
void Compute_id159(inout CS_STREAMS streams)
{
    streams.TextureValue_9_id370 = Compute_id130(streams);
}
void Compute_id157()
{
}
void Compute_id156()
{
}
void Compute_id155()
{
}
void Compute_id154()
{
}
void Compute_id153(inout CS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_6_id367 = Compute_id124(streams);
}
void Compute_id151(inout CS_STREAMS streams)
{
    streams.BufferItem_5_id363 = Compute_id120(streams);
}
void Compute_id149(inout CS_STREAMS streams)
{
    streams.SMValueToIndex_ShaderFXResult_4_id359 = Compute_id116(streams);
}
void Compute_id147(inout CS_STREAMS streams)
{
    streams.Input_3_id356 = Compute_id109();
}
void Compute_id145(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id115 = Compute_id108(streams);
}
void Compute_id143(inout CS_STREAMS streams)
{
    streams.SMVideoBufferSelector_ShaderFXResult_1_id107 = Compute_id70(streams);
}
void Compute_id141()
{
}
float3 Compute_id455(inout CS_STREAMS streams)
{
    return streams.Plus_57_id234;
}
void Compute_id454(inout CS_STREAMS streams)
{

    {
        Compute_id432(streams);
    }

    {
        Compute_id434(streams);
    }

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

    {
        Compute_id452(streams);
    }
}
float3 Compute_id321(inout CS_STREAMS streams)
{
    return streams.Multiply_48_id186;
}
void Compute_id320(inout CS_STREAMS streams)
{

    {
        Compute_id284(streams);
    }

    {
        Compute_id286(streams);
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
        Compute_id290();
    }

    {
        Compute_id292(streams);
    }

    {
        Compute_id294(streams);
    }

    {
        Compute_id296(streams);
    }

    {
        Compute_id298(streams);
    }

    {
        Compute_id300(streams);
    }

    {
        Compute_id302(streams);
    }

    {
        Compute_id304(streams);
    }

    {
        Compute_id306(streams);
    }

    {
        Compute_id308(streams);
    }

    {
        Compute_id310(streams);
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
}
float3 Compute_id615(inout CS_STREAMS streams)
{
    return streams.Plus_36_id313;
}
void Compute_id614(inout CS_STREAMS streams)
{

    {
        Compute_id577();
    }

    {
        Compute_id578();
    }

    {
        Compute_id579();
    }

    {
        Compute_id580();
    }

    {
        Compute_id582(streams);
    }

    {
        Compute_id584(streams);
    }

    {
        Compute_id585();
    }

    {
        Compute_id586();
    }

    {
        Compute_id587();
    }

    {
        Compute_id589(streams);
    }

    {
        Compute_id591(streams);
    }

    {
        Compute_id592();
    }

    {
        Compute_id593();
    }

    {
        Compute_id594();
    }

    {
        Compute_id596(streams);
    }

    {
        Compute_id598(streams);
    }

    {
        Compute_id600(streams);
    }

    {
        Compute_id602(streams);
    }

    {
        Compute_id604(streams);
    }

    {
        Compute_id606(streams);
    }

    {
        Compute_id608(streams);
    }

    {
        Compute_id610(streams);
    }

    {
        Compute_id612(streams);
    }
}
float3 Compute_id658(inout CS_STREAMS streams)
{
    return streams.Plus_18_id338;
}
void Compute_id657(inout CS_STREAMS streams)
{

    {
        Compute_id645(streams);
    }

    {
        Compute_id647(streams);
    }

    {
        Compute_id649(streams);
    }

    {
        Compute_id651(streams);
    }

    {
        Compute_id653(streams);
    }

    {
        Compute_id655(streams);
    }
}
float Compute_id357(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id115;
}
void Compute_id356(inout CS_STREAMS streams)
{

    {
        Compute_id352(streams);
    }

    {
        Compute_id354(streams);
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
float4 Compute_id166(inout CS_STREAMS streams)
{
    return streams.Lerp_12_id379;
}
void Compute_id165(inout CS_STREAMS streams)
{

    {
        Compute_id141();
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
        Compute_id149(streams);
    }

    {
        Compute_id151(streams);
    }

    {
        Compute_id153(streams);
    }

    {
        Compute_id154();
    }

    {
        Compute_id155();
    }

    {
        Compute_id156();
    }

    {
        Compute_id157();
    }

    {
        Compute_id159(streams);
    }

    {
        Compute_id161(streams);
    }

    {
        Compute_id163(streams);
    }
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id454(streams);
    return Compute_id455(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id320(streams);
    return Compute_id321(streams);
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id614(streams);
    return Compute_id615(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id657(streams);
    return Compute_id658(streams);
}
float Compute_id41(inout CS_STREAMS streams)
{
    Compute_id356(streams);
    return Compute_id357(streams);
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
    Compute_id165(streams);
    return Compute_id166(streams);
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

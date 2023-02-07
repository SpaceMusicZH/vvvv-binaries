/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_0>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_22> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_23> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_24> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = GetVarUInt<Input_23>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_26> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx25,PerUpdate,ObjectSampler_fx10,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_27,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_28> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_26>}]}], mixin AssignVarFloat<Multiply_29> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_24>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_28>}]}], mixin AssignVarFloat<Multiply_30> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_24>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_28>}]}], mixin AssignVarFloat<Multiply_31> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_24>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_28>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_32> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_29>}, {Y = GetVarFloat<Multiply_30>}, {Z = GetVarFloat<Multiply_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_34> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_32>}, {Right = GetVarFloat3<Input_33>}]}], mixin AssignVarFloat3<Plus_35> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_22>}, {Right = GetVarFloat3<Multiply_34>}]}], mixin AssignVarFloat3<Input_36> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_37> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_35>}, {Right = GetVarFloat3<Input_36>}]}]]}]}, {Value = GetVarFloat3<Multiply_37>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_1> [{Value = InputFloat4<ShaderFX.InputValueFloat4.i1,PerUpdate>}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<Default_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_38> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_39> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = GetVarUInt<Input_38>}]}], mixin AssignVarFloat<Input_40> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_41> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_39>}, {Right = GetVarFloat<Input_40>}]}], mixin AssignVarFloat<Multiply_42> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_39>}, {Right = GetVarFloat<Input_40>}]}], mixin AssignVarFloat<Multiply_43> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_39>}, {Right = GetVarFloat<Input_40>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_44> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_41>}, {Y = GetVarFloat<Multiply_42>}, {Z = GetVarFloat<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_44>}, {Right = GetVarFloat3<Input_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_48> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Plus_48>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_11> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx9,PerUpdate,ObjectSampler_fx10,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_12,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_11>}]}], mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_15> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Y = GetVarFloat<Input_14>}, {Z = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<Input_16> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_17> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_15>}, {Right = GetVarFloat3<Input_16>}]}], mixin AssignVarFloat3<Input_18> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_19> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_17>}, {Right = GetVarFloat3<Input_18>}]}], mixin AssignVarFloat3<Input_20> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_21> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_19>}, {Right = GetVarFloat3<Input_20>}]}]]}]}, {Value = GetVarFloat3<Plus_21>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_4> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_3>}, {Y = GetVarFloat<Input_3>}, {Z = GetVarFloat<Input_3>}]}], mixin AssignVarFloat3<Input_5> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_6> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_4>}, {Right = GetVarFloat3<Input_5>}]}], mixin AssignVarFloat3<Input_7> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_8> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_6>}, {Right = GetVarFloat3<Input_7>}]}]]}]}, {Value = GetVarFloat3<Plus_8>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_0>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_1> [{Value = InputFloat4<ShaderFX.InputValueFloat4.i1,PerUpdate>}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_2> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<Default_1>}]}]]}]}, {Value = GetVarFloat<SMCalcLuminance_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_4> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_3>}, {Y = GetVarFloat<Input_3>}, {Z = GetVarFloat<Input_3>}]}], mixin AssignVarFloat3<Input_5> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_6> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_4>}, {Right = GetVarFloat3<Input_5>}]}], mixin AssignVarFloat3<Input_7> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_8> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_6>}, {Right = GetVarFloat3<Input_7>}]}]]}]}, {Value = GetVarFloat3<Plus_8>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_11> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx9,PerUpdate,ObjectSampler_fx10,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_12,TEXCOORD1>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_13> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_11>}]}], mixin AssignVarFloat<Input_14> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_15> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<SMCalcLuminance_ShaderFXResult_13>}, {Y = GetVarFloat<Input_14>}, {Z = GetVarFloat<Input_14>}]}], mixin AssignVarFloat3<Input_16> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_17> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_15>}, {Right = GetVarFloat3<Input_16>}]}], mixin AssignVarFloat3<Input_18> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_19> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_17>}, {Right = GetVarFloat3<Input_18>}]}], mixin AssignVarFloat3<Input_20> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_21> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_19>}, {Right = GetVarFloat3<Input_20>}]}]]}]}, {Value = GetVarFloat3<Plus_21>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_22> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarUInt<Input_23> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_24> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = GetVarUInt<Input_23>}]}], ComputeVoid, ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_26> [{Value = mixin SampleLevelTextureFloat4<ObjectTexture_fx25,PerUpdate,ObjectSampler_fx10,PerUpdate> [{LOD = ConstantFloat<0>}, {TexCd = GetSemanticFloat2<SemanticValue_27,TEXCOORD2>}]}], mixin AssignVarFloat<SMCalcLuminance_ShaderFXResult_28> [{Value = mixin SMCalcLuminance_ShaderFX [{Color = GetVarFloat4<TextureValue_26>}]}], mixin AssignVarFloat<Multiply_29> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_24>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_28>}]}], mixin AssignVarFloat<Multiply_30> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_24>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_28>}]}], mixin AssignVarFloat<Multiply_31> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_24>}, {Right = GetVarFloat<SMCalcLuminance_ShaderFXResult_28>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_32> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_29>}, {Y = GetVarFloat<Multiply_30>}, {Z = GetVarFloat<Multiply_31>}]}], mixin AssignVarFloat3<Input_33> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_34> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_32>}, {Right = GetVarFloat3<Input_33>}]}], mixin AssignVarFloat3<Plus_35> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_22>}, {Right = GetVarFloat3<Multiply_34>}]}], mixin AssignVarFloat3<Input_36> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_37> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_35>}, {Right = GetVarFloat3<Input_36>}]}]]}]}, {Value = GetVarFloat3<Multiply_37>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_38> [{Value = InputUInt<ShaderFX.InputValueUInt.i1,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_39> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = GetVarUInt<Input_38>}]}], mixin AssignVarFloat<Input_40> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat<Multiply_41> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_39>}, {Right = GetVarFloat<Input_40>}]}], mixin AssignVarFloat<Multiply_42> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_39>}, {Right = GetVarFloat<Input_40>}]}], mixin AssignVarFloat<Multiply_43> [{Value = mixin MultiplyFloat [{Left = GetVarFloat<SMMidiSelectValue_ShaderFXResult_39>}, {Right = GetVarFloat<Input_40>}]}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_44> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Multiply_41>}, {Y = GetVarFloat<Multiply_42>}, {Z = GetVarFloat<Multiply_43>}]}], mixin AssignVarFloat3<Input_45> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_46> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_44>}, {Right = GetVarFloat3<Input_45>}]}], mixin AssignVarFloat3<Input_47> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_48> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_46>}, {Right = GetVarFloat3<Input_47>}]}]]}]}, {Value = GetVarFloat3<Plus_48>}]
@P ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    SMGridSimulation_ComputeFX => b898d1713930155e72f79c736fa063e0
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    SMPlacementVertexStruct => d7db2b1ae2bb867d6babd72d88045d05
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    GPUMappingDamper_ShaderFX => d5d887977d3645180563743e87b0b681
@S    SMMappingValuesStruct => 954c1a692dee3148d1e131c056afac72
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    DoFloat3 => a777cae10437d10548290d7d3a46cd99
@S    AssignVarFloat3 => 4040ea8570cd36802d25459fd79c8876
@S    StreamVariableFloat3 => f8eb882d1acd8b041f9a967c812a0d72
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
@S    AssignVarUInt => 3b592bbebd12f5fd9b3efa21858134de
@S    ComputeUInt => 707f4166cd9f83784b42c78a0cc57287
@S    StreamVariableUInt => cf0b8cb7ff18f507a9334d36032dfc7f
@S    InputUInt => e8bcca0c5de594d673cd9669b7bdad68
@S    DeclUInt => a5c3b92d01d17f67ecdac3662ed6737d
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    SMMidiSelectValue_ShaderFX => 8226c095a58954713a3c9936a5832dc4
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    GetVarUInt => 1b3b1ca648adeb8fde60326c4ce3dfeb
@S    SampleLevelTextureFloat4 => cf31c570ad1d5f365d5ea504cfd70990
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    DeclTexture => 446d0ef18094b3b6440125d6e9cb6306
@S    DeclSampler => 2b4d3075cdc21c655fee5c274c8566ed
@S    ConstantFloat => 460c24995a6db8c1f9344767cc7a01db
@S    GetSemanticFloat2 => 72d1b2113bce4aac1e03baaeaa9db138
@S    SemanticFloat2 => 7d018e6f29de96f6b830ab77f6b8985a
@S    SMCalcLuminance_ShaderFX => c1d8c73c085a0ac1966a292c66946650
@S    MultiplyFloat => 3c410b17a1d4349d5f1f2557ce58f158
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
const static float Value_id120 = 0;
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
    float Input_3_id268;
    float3 SMVector3Join_ShaderFXResult_4_id271;
    float3 Input_5_id276;
    float3 Multiply_6_id279;
    float3 Input_7_id283;
    float3 Plus_8_id286;
    float4 TextureValue_11_id218;
    float SMCalcLuminance_ShaderFXResult_13_id225;
    float Input_14_id236;
    float3 SMVector3Join_ShaderFXResult_15_id239;
    float3 Input_16_id244;
    float3 Multiply_17_id247;
    float3 Input_18_id251;
    float3 Plus_19_id254;
    float3 Input_20_id258;
    float3 Plus_21_id261;
    float3 Input_22_id107;
    uint Input_23_id110;
    float SMMidiSelectValue_ShaderFXResult_24_id113;
    float4 TextureValue_26_id117;
    float SMCalcLuminance_ShaderFXResult_28_id125;
    float Multiply_29_id136;
    float Multiply_30_id140;
    float Multiply_31_id144;
    float3 SMVector3Join_ShaderFXResult_32_id148;
    float3 Input_33_id153;
    float3 Multiply_34_id156;
    float3 Plus_35_id160;
    float3 Input_36_id164;
    float3 Multiply_37_id167;
    uint Input_38_id174;
    float SMMidiSelectValue_ShaderFXResult_39_id177;
    float Input_40_id181;
    float Multiply_41_id184;
    float Multiply_42_id188;
    float Multiply_43_id192;
    float3 SMVector3Join_ShaderFXResult_44_id196;
    float3 Input_45_id201;
    float3 Multiply_46_id204;
    float3 Input_47_id208;
    float3 Plus_48_id211;
    float4 Default_0_id293;
    float4 Default_1_id299;
    float SMCalcLuminance_ShaderFXResult_2_id302;
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
    float3 InputValue_id154;
    float3 InputValue_id165;
    uint InputValue_id175;
    float InputValue_id182;
    float3 InputValue_id202;
    float3 InputValue_id209;
    float InputValue_id237;
    float3 InputValue_id245;
    float3 InputValue_id252;
    float3 InputValue_id259;
    float InputValue_id269;
    float3 InputValue_id277;
    float3 InputValue_id284;
    float4 InputValue_id294;
    float4 InputValue_id300;
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
Texture2D DynamicTexture_id118;
SamplerState DynamicSampler_id119;
Texture2D DynamicTexture_id219;
float3 Compute_id271(inout CS_STREAMS streams)
{
    return streams.Input_47_id208;
}
float3 Compute_id269(inout CS_STREAMS streams)
{
    return streams.Multiply_46_id204;
}
float3 Compute_id263(inout CS_STREAMS streams)
{
    return streams.Input_45_id201;
}
float3 Compute_id261(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_44_id196;
}
float Compute_id255(inout CS_STREAMS streams)
{
    return streams.Multiply_43_id192;
}
float Compute_id253(inout CS_STREAMS streams)
{
    return streams.Multiply_42_id188;
}
float Compute_id251(inout CS_STREAMS streams)
{
    return streams.Multiply_41_id184;
}
float Compute_id247(inout CS_STREAMS streams)
{
    return streams.Input_40_id181;
}
float Compute_id245(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_39_id177;
}
float Compute_id241(inout CS_STREAMS streams)
{
    return streams.Input_40_id181;
}
float Compute_id239(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_39_id177;
}
float Compute_id235(inout CS_STREAMS streams)
{
    return streams.Input_40_id181;
}
float Compute_id233(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_39_id177;
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
uint Compute_id227(inout CS_STREAMS streams)
{
    return streams.Input_38_id174;
}
SMMidiNoteData Compute_id225()
{
}
float3 Compute_id148(inout CS_STREAMS streams)
{
    return streams.Input_36_id164;
}
float3 Compute_id146(inout CS_STREAMS streams)
{
    return streams.Plus_35_id160;
}
float3 Compute_id140(inout CS_STREAMS streams)
{
    return streams.Multiply_34_id156;
}
float3 Compute_id138(inout CS_STREAMS streams)
{
    return streams.Input_22_id107;
}
float3 Compute_id134(inout CS_STREAMS streams)
{
    return streams.Input_33_id153;
}
float3 Compute_id132(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_32_id148;
}
float Compute_id126(inout CS_STREAMS streams)
{
    return streams.Multiply_31_id144;
}
float Compute_id124(inout CS_STREAMS streams)
{
    return streams.Multiply_30_id140;
}
float Compute_id122(inout CS_STREAMS streams)
{
    return streams.Multiply_29_id136;
}
float Compute_id118(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_28_id125;
}
float Compute_id116(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_24_id113;
}
float Compute_id112(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_28_id125;
}
float Compute_id110(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_24_id113;
}
float Compute_id106(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_28_id125;
}
float Compute_id104(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_24_id113;
}
float Luminance_id46(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id81(inout CS_STREAMS streams)
{
    return streams.TextureValue_26_id117;
}
float Compute_id75()
{
    return Value_id120;
}
float2 Compute_id77(inout CS_STREAMS streams)
{
    return streams.TexCoord2_id61;
}
float SelectMidiValue_id42(SMMidiNoteData x, uint i)
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
uint Compute_id71(inout CS_STREAMS streams)
{
    return streams.Input_23_id110;
}
SMMidiNoteData Compute_id69()
{
}
float3 Compute_id361(inout CS_STREAMS streams)
{
    return streams.Input_20_id258;
}
float3 Compute_id359(inout CS_STREAMS streams)
{
    return streams.Plus_19_id254;
}
float3 Compute_id353(inout CS_STREAMS streams)
{
    return streams.Input_18_id251;
}
float3 Compute_id351(inout CS_STREAMS streams)
{
    return streams.Multiply_17_id247;
}
float3 Compute_id345(inout CS_STREAMS streams)
{
    return streams.Input_16_id244;
}
float3 Compute_id343(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_15_id239;
}
float Compute_id337(inout CS_STREAMS streams)
{
    return streams.Input_14_id236;
}
float Compute_id335(inout CS_STREAMS streams)
{
    return streams.Input_14_id236;
}
float Compute_id333(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_13_id225;
}
float Luminance_id51(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id308(inout CS_STREAMS streams)
{
    return streams.TextureValue_11_id218;
}
float Compute_id302()
{
    return Value_id120;
}
float2 Compute_id304(inout CS_STREAMS streams)
{
    return streams.TexCoord1_id60;
}
float3 Compute_id416(inout CS_STREAMS streams)
{
    return streams.Input_7_id283;
}
float3 Compute_id414(inout CS_STREAMS streams)
{
    return streams.Multiply_6_id279;
}
float3 Compute_id408(inout CS_STREAMS streams)
{
    return streams.Input_5_id276;
}
float3 Compute_id406(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_4_id271;
}
float Compute_id400(inout CS_STREAMS streams)
{
    return streams.Input_3_id268;
}
float Compute_id398(inout CS_STREAMS streams)
{
    return streams.Input_3_id268;
}
float Compute_id396(inout CS_STREAMS streams)
{
    return streams.Input_3_id268;
}
float Luminance_id55(float3 color)
{
    return dot(color, float3(0.299f, 0.587f, 0.114f));
}
float4 Compute_id191(inout CS_STREAMS streams)
{
    return streams.Default_1_id299;
}
float3 Compute_id274(inout CS_STREAMS streams)
{
    return Compute_id269(streams) + Compute_id271(streams);
}
float3 Compute_id267()
{
    return InputValue_id209;
}
float3 Compute_id266(inout CS_STREAMS streams)
{
    return Compute_id261(streams) * Compute_id263(streams);
}
float3 Compute_id259()
{
    return InputValue_id202;
}
float3 Compute_id258(inout CS_STREAMS streams)
{
    return float3(Compute_id251(streams), Compute_id253(streams), Compute_id255(streams));
}
float Compute_id250(inout CS_STREAMS streams)
{
    return Compute_id245(streams) * Compute_id247(streams);
}
float Compute_id244(inout CS_STREAMS streams)
{
    return Compute_id239(streams) * Compute_id241(streams);
}
float Compute_id238(inout CS_STREAMS streams)
{
    return Compute_id233(streams) * Compute_id235(streams);
}
float Compute_id231()
{
    return InputValue_id182;
}
float Compute_id230(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id225();
    return SelectMidiValue_id47(m, Compute_id227(streams));
}
uint Compute_id223()
{
    return InputValue_id175;
}
float3 Compute_id151(inout CS_STREAMS streams)
{
    return Compute_id146(streams) * Compute_id148(streams);
}
float3 Compute_id144()
{
    return InputValue_id165;
}
float3 Compute_id143(inout CS_STREAMS streams)
{
    return Compute_id138(streams) + Compute_id140(streams);
}
float3 Compute_id137(inout CS_STREAMS streams)
{
    return Compute_id132(streams) * Compute_id134(streams);
}
float3 Compute_id130()
{
    return InputValue_id154;
}
float3 Compute_id129(inout CS_STREAMS streams)
{
    return float3(Compute_id122(streams), Compute_id124(streams), Compute_id126(streams));
}
float Compute_id121(inout CS_STREAMS streams)
{
    return Compute_id116(streams) * Compute_id118(streams);
}
float Compute_id115(inout CS_STREAMS streams)
{
    return Compute_id110(streams) * Compute_id112(streams);
}
float Compute_id109(inout CS_STREAMS streams)
{
    return Compute_id104(streams) * Compute_id106(streams);
}
float Compute_id103(inout CS_STREAMS streams)
{
    float4 color = Compute_id81(streams);
    return Luminance_id46(color.rgb);
}
float4 Compute_id80(inout CS_STREAMS streams)
{
    return DynamicTexture_id118.SampleLevel(DynamicSampler_id119, Compute_id77(streams), Compute_id75());
}
float Compute_id74(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id69();
    return SelectMidiValue_id42(m, Compute_id71(streams));
}
uint Compute_id67()
{
    return InputValue_id111;
}
float3 Compute_id65()
{
    return InputValue_id108;
}
float3 Compute_id364(inout CS_STREAMS streams)
{
    return Compute_id359(streams) + Compute_id361(streams);
}
float3 Compute_id357()
{
    return InputValue_id259;
}
float3 Compute_id356(inout CS_STREAMS streams)
{
    return Compute_id351(streams) + Compute_id353(streams);
}
float3 Compute_id349()
{
    return InputValue_id252;
}
float3 Compute_id348(inout CS_STREAMS streams)
{
    return Compute_id343(streams) * Compute_id345(streams);
}
float3 Compute_id341()
{
    return InputValue_id245;
}
float3 Compute_id340(inout CS_STREAMS streams)
{
    return float3(Compute_id333(streams), Compute_id335(streams), Compute_id337(streams));
}
float Compute_id331()
{
    return InputValue_id237;
}
float Compute_id330(inout CS_STREAMS streams)
{
    float4 color = Compute_id308(streams);
    return Luminance_id51(color.rgb);
}
float4 Compute_id307(inout CS_STREAMS streams)
{
    return DynamicTexture_id219.SampleLevel(DynamicSampler_id119, Compute_id304(streams), Compute_id302());
}
float3 Compute_id419(inout CS_STREAMS streams)
{
    return Compute_id414(streams) + Compute_id416(streams);
}
float3 Compute_id412()
{
    return InputValue_id284;
}
float3 Compute_id411(inout CS_STREAMS streams)
{
    return Compute_id406(streams) * Compute_id408(streams);
}
float3 Compute_id404()
{
    return InputValue_id277;
}
float3 Compute_id403(inout CS_STREAMS streams)
{
    return float3(Compute_id396(streams), Compute_id398(streams), Compute_id400(streams));
}
float Compute_id394()
{
    return InputValue_id269;
}
float Compute_id213(inout CS_STREAMS streams)
{
    float4 color = Compute_id191(streams);
    return Luminance_id55(color.rgb);
}
float4 Compute_id189()
{
    return InputValue_id300;
}
float4 Compute_id56()
{
    return InputValue_id294;
}
void Compute_id296(inout CS_STREAMS streams)
{
    streams.Plus_48_id211 = Compute_id274(streams);
}
void Compute_id294(inout CS_STREAMS streams)
{
    streams.Input_47_id208 = Compute_id267();
}
void Compute_id292(inout CS_STREAMS streams)
{
    streams.Multiply_46_id204 = Compute_id266(streams);
}
void Compute_id290(inout CS_STREAMS streams)
{
    streams.Input_45_id201 = Compute_id259();
}
void Compute_id288(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_44_id196 = Compute_id258(streams);
}
void Compute_id286(inout CS_STREAMS streams)
{
    streams.Multiply_43_id192 = Compute_id250(streams);
}
void Compute_id284(inout CS_STREAMS streams)
{
    streams.Multiply_42_id188 = Compute_id244(streams);
}
void Compute_id282(inout CS_STREAMS streams)
{
    streams.Multiply_41_id184 = Compute_id238(streams);
}
void Compute_id280(inout CS_STREAMS streams)
{
    streams.Input_40_id181 = Compute_id231();
}
void Compute_id278(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_39_id177 = Compute_id230(streams);
}
void Compute_id276(inout CS_STREAMS streams)
{
    streams.Input_38_id174 = Compute_id223();
}
void Compute_id183(inout CS_STREAMS streams)
{
    streams.Multiply_37_id167 = Compute_id151(streams);
}
void Compute_id181(inout CS_STREAMS streams)
{
    streams.Input_36_id164 = Compute_id144();
}
void Compute_id179(inout CS_STREAMS streams)
{
    streams.Plus_35_id160 = Compute_id143(streams);
}
void Compute_id177(inout CS_STREAMS streams)
{
    streams.Multiply_34_id156 = Compute_id137(streams);
}
void Compute_id175(inout CS_STREAMS streams)
{
    streams.Input_33_id153 = Compute_id130();
}
void Compute_id173(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_32_id148 = Compute_id129(streams);
}
void Compute_id171(inout CS_STREAMS streams)
{
    streams.Multiply_31_id144 = Compute_id121(streams);
}
void Compute_id169(inout CS_STREAMS streams)
{
    streams.Multiply_30_id140 = Compute_id115(streams);
}
void Compute_id167(inout CS_STREAMS streams)
{
    streams.Multiply_29_id136 = Compute_id109(streams);
}
void Compute_id165(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_28_id125 = Compute_id103(streams);
}
void Compute_id163(inout CS_STREAMS streams)
{
    streams.TextureValue_26_id117 = Compute_id80(streams);
}
void Compute_id161()
{
}
void Compute_id160()
{
}
void Compute_id159()
{
}
void Compute_id158()
{
}
void Compute_id157(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_24_id113 = Compute_id74(streams);
}
void Compute_id155(inout CS_STREAMS streams)
{
    streams.Input_23_id110 = Compute_id67();
}
void Compute_id153(inout CS_STREAMS streams)
{
    streams.Input_22_id107 = Compute_id65();
}
void Compute_id388(inout CS_STREAMS streams)
{
    streams.Plus_21_id261 = Compute_id364(streams);
}
void Compute_id386(inout CS_STREAMS streams)
{
    streams.Input_20_id258 = Compute_id357();
}
void Compute_id384(inout CS_STREAMS streams)
{
    streams.Plus_19_id254 = Compute_id356(streams);
}
void Compute_id382(inout CS_STREAMS streams)
{
    streams.Input_18_id251 = Compute_id349();
}
void Compute_id380(inout CS_STREAMS streams)
{
    streams.Multiply_17_id247 = Compute_id348(streams);
}
void Compute_id378(inout CS_STREAMS streams)
{
    streams.Input_16_id244 = Compute_id341();
}
void Compute_id376(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_15_id239 = Compute_id340(streams);
}
void Compute_id374(inout CS_STREAMS streams)
{
    streams.Input_14_id236 = Compute_id331();
}
void Compute_id372(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_13_id225 = Compute_id330(streams);
}
void Compute_id370(inout CS_STREAMS streams)
{
    streams.TextureValue_11_id218 = Compute_id307(streams);
}
void Compute_id368()
{
}
void Compute_id367()
{
}
void Compute_id366()
{
}
void Compute_id365()
{
}
void Compute_id431(inout CS_STREAMS streams)
{
    streams.Plus_8_id286 = Compute_id419(streams);
}
void Compute_id429(inout CS_STREAMS streams)
{
    streams.Input_7_id283 = Compute_id412();
}
void Compute_id427(inout CS_STREAMS streams)
{
    streams.Multiply_6_id279 = Compute_id411(streams);
}
void Compute_id425(inout CS_STREAMS streams)
{
    streams.Input_5_id276 = Compute_id404();
}
void Compute_id423(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_4_id271 = Compute_id403(streams);
}
void Compute_id421(inout CS_STREAMS streams)
{
    streams.Input_3_id268 = Compute_id394();
}
void Compute_id217(inout CS_STREAMS streams)
{
    streams.SMCalcLuminance_ShaderFXResult_2_id302 = Compute_id213(streams);
}
void Compute_id215(inout CS_STREAMS streams)
{
    streams.Default_1_id299 = Compute_id189();
}
void Compute_id59(inout CS_STREAMS streams)
{
    streams.Default_0_id293 = Compute_id56();
}
float3 Compute_id299(inout CS_STREAMS streams)
{
    return streams.Plus_48_id211;
}
void Compute_id298(inout CS_STREAMS streams)
{

    {
        Compute_id276(streams);
    }

    {
        Compute_id278(streams);
    }

    {
        Compute_id280(streams);
    }

    {
        Compute_id282(streams);
    }

    {
        Compute_id284(streams);
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
        Compute_id292(streams);
    }

    {
        Compute_id294(streams);
    }

    {
        Compute_id296(streams);
    }
}
float3 Compute_id186(inout CS_STREAMS streams)
{
    return streams.Multiply_37_id167;
}
void Compute_id185(inout CS_STREAMS streams)
{

    {
        Compute_id153(streams);
    }

    {
        Compute_id155(streams);
    }

    {
        Compute_id157(streams);
    }

    {
        Compute_id158();
    }

    {
        Compute_id159();
    }

    {
        Compute_id160();
    }

    {
        Compute_id161();
    }

    {
        Compute_id163(streams);
    }

    {
        Compute_id165(streams);
    }

    {
        Compute_id167(streams);
    }

    {
        Compute_id169(streams);
    }

    {
        Compute_id171(streams);
    }

    {
        Compute_id173(streams);
    }

    {
        Compute_id175(streams);
    }

    {
        Compute_id177(streams);
    }

    {
        Compute_id179(streams);
    }

    {
        Compute_id181(streams);
    }

    {
        Compute_id183(streams);
    }
}
float3 Compute_id391(inout CS_STREAMS streams)
{
    return streams.Plus_21_id261;
}
void Compute_id390(inout CS_STREAMS streams)
{

    {
        Compute_id365();
    }

    {
        Compute_id366();
    }

    {
        Compute_id367();
    }

    {
        Compute_id368();
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

    {
        Compute_id386(streams);
    }

    {
        Compute_id388(streams);
    }
}
float3 Compute_id434(inout CS_STREAMS streams)
{
    return streams.Plus_8_id286;
}
void Compute_id433(inout CS_STREAMS streams)
{

    {
        Compute_id421(streams);
    }

    {
        Compute_id423(streams);
    }

    {
        Compute_id425(streams);
    }

    {
        Compute_id427(streams);
    }

    {
        Compute_id429(streams);
    }

    {
        Compute_id431(streams);
    }
}
float Compute_id220(inout CS_STREAMS streams)
{
    return streams.SMCalcLuminance_ShaderFXResult_2_id302;
}
void Compute_id219(inout CS_STREAMS streams)
{

    {
        Compute_id215(streams);
    }

    {
        Compute_id217(streams);
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
float4 Compute_id62(inout CS_STREAMS streams)
{
    return streams.Default_0_id293;
}
void Compute_id61(inout CS_STREAMS streams)
{

    {
        Compute_id59(streams);
    }
}
float3 Compute_id39(inout CS_STREAMS streams)
{
    Compute_id298(streams);
    return Compute_id299(streams);
}
float3 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id185(streams);
    return Compute_id186(streams);
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id390(streams);
    return Compute_id391(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id433(streams);
    return Compute_id434(streams);
}
float Compute_id41(inout CS_STREAMS streams)
{
    Compute_id219(streams);
    return Compute_id220(streams);
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
    Compute_id61(streams);
    return Compute_id62(streams);
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

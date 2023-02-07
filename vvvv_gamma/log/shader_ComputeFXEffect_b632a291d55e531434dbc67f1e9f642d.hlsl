/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMGridSimulation_ComputeFX [{Color = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_0>}]}, {Dim = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat<Input_18> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_19> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_18>}, {Y = GetVarFloat<Input_18>}, {Z = GetVarFloat<Input_18>}]}], mixin AssignVarFloat3<Input_20> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_21> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_19>}, {Right = GetVarFloat3<Input_20>}]}], mixin AssignVarFloat3<Plus_22> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_17>}, {Right = GetVarFloat3<Multiply_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_22>}, {Right = GetVarFloat3<Input_23>}]}]]}]}, {Value = GetVarFloat3<Multiply_24>}]}, {Mesh = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = GetVarUInt<Input_1>}]}]]}]}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]}, {Piv = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_25> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_26> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_25>}, {Y = GetVarFloat<Input_25>}, {Z = GetVarFloat<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_28> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]}, {Rot = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_9> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_10> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_9>}, {Y = GetVarFloat<Input_9>}, {Z = GetVarFloat<Input_9>}]}], mixin AssignVarFloat3<Input_11> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_12> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_10>}, {Right = GetVarFloat3<Input_11>}]}], mixin AssignVarFloat3<Input_13> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_14> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_12>}, {Right = GetVarFloat3<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_16> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_14>}, {Right = GetVarFloat3<Input_15>}]}]]}]}, {Value = GetVarFloat3<Plus_16>}]}, {Trans = mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_4> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_3>}, {Y = GetVarFloat<Input_3>}, {Z = GetVarFloat<Input_3>}]}], mixin AssignVarFloat3<Input_5> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_6> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_4>}, {Right = GetVarFloat3<Input_5>}]}], mixin AssignVarFloat3<Input_7> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_8> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_6>}, {Right = GetVarFloat3<Input_7>}]}]]}]}, {Value = GetVarFloat3<Plus_8>}]}]
@P Color: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_0>}]
@P Mesh: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarUInt<Input_1> [{Value = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}], mixin AssignVarFloat<SMMidiSelectValue_ShaderFXResult_2> [{Value = mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = GetVarUInt<Input_1>}]}]]}]}, {Value = GetVarFloat<SMMidiSelectValue_ShaderFXResult_2>}]
@P Trans: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_4> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_3>}, {Y = GetVarFloat<Input_3>}, {Z = GetVarFloat<Input_3>}]}], mixin AssignVarFloat3<Input_5> [{Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}], mixin AssignVarFloat3<Multiply_6> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_4>}, {Right = GetVarFloat3<Input_5>}]}], mixin AssignVarFloat3<Input_7> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}], mixin AssignVarFloat3<Plus_8> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_6>}, {Right = GetVarFloat3<Input_7>}]}]]}]}, {Value = GetVarFloat3<Plus_8>}]
@P Rot: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_9> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_10> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_9>}, {Y = GetVarFloat<Input_9>}, {Z = GetVarFloat<Input_9>}]}], mixin AssignVarFloat3<Input_11> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i2,PerUpdate>}], mixin AssignVarFloat3<Multiply_12> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_10>}, {Right = GetVarFloat3<Input_11>}]}], mixin AssignVarFloat3<Input_13> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i3,PerUpdate>}], mixin AssignVarFloat3<Plus_14> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_12>}, {Right = GetVarFloat3<Input_13>}]}], mixin AssignVarFloat3<Input_15> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i4,PerUpdate>}], mixin AssignVarFloat3<Plus_16> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Plus_14>}, {Right = GetVarFloat3<Input_15>}]}]]}]}, {Value = GetVarFloat3<Plus_16>}]
@P Dim: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat3<Input_17> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i5,PerUpdate>}], mixin AssignVarFloat<Input_18> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_19> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_18>}, {Y = GetVarFloat<Input_18>}, {Z = GetVarFloat<Input_18>}]}], mixin AssignVarFloat3<Input_20> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i6,PerUpdate>}], mixin AssignVarFloat3<Multiply_21> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_19>}, {Right = GetVarFloat3<Input_20>}]}], mixin AssignVarFloat3<Plus_22> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Input_17>}, {Right = GetVarFloat3<Multiply_21>}]}], mixin AssignVarFloat3<Input_23> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i7,PerUpdate>}], mixin AssignVarFloat3<Multiply_24> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<Plus_22>}, {Right = GetVarFloat3<Input_23>}]}]]}]}, {Value = GetVarFloat3<Multiply_24>}]
@P Piv: mixin DoFloat3 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_25> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}], mixin AssignVarFloat3<SMVector3Join_ShaderFXResult_26> [{Value = mixin SMVector3Join_ShaderFX [{X = GetVarFloat<Input_25>}, {Y = GetVarFloat<Input_25>}, {Z = GetVarFloat<Input_25>}]}], mixin AssignVarFloat3<Input_27> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i8,PerUpdate>}], mixin AssignVarFloat3<Multiply_28> [{Value = mixin MultiplyFloat3 [{Left = GetVarFloat3<SMVector3Join_ShaderFXResult_26>}, {Right = GetVarFloat3<Input_27>}]}], mixin AssignVarFloat3<Input_29> [{Value = InputFloat3<ShaderFX.InputValueFloat3.i9,PerUpdate>}], mixin AssignVarFloat3<Plus_30> [{Value = mixin PlusFloat3 [{Left = GetVarFloat3<Multiply_28>}, {Right = GetVarFloat3<Input_29>}]}]]}]}, {Value = GetVarFloat3<Plus_30>}]
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
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    SMVector3Join_ShaderFX => 8c39076ea4eeadbfe57bc742b1f9ee67
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    MultiplyFloat3 => 0e6cf5a0a1de649fa63bec16277125c5
@S    GetVarFloat3 => 670cff8f1d0d8501220d37d867c0ce3a
@S    PlusFloat3 => b56a1311e839819b317407bb6d29b3eb
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    AssignVarUInt => 3b592bbebd12f5fd9b3efa21858134de
@S    ComputeUInt => 707f4166cd9f83784b42c78a0cc57287
@S    StreamVariableUInt => cf0b8cb7ff18f507a9334d36032dfc7f
@S    InputUInt => e8bcca0c5de594d673cd9669b7bdad68
@S    DeclUInt => a5c3b92d01d17f67ecdac3662ed6737d
@S    SMMidiSelectValue_ShaderFX => 8226c095a58954713a3c9936a5832dc4
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    GetVarUInt => 1b3b1ca648adeb8fde60326c4ce3dfeb
***************************
*************************/
static const float TwoPi_id70 = 6.283185307179586476925286766559;
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
    float Input_3_id196;
    float3 SMVector3Join_ShaderFXResult_4_id199;
    float3 Input_5_id204;
    float3 Multiply_6_id207;
    float3 Input_7_id211;
    float3 Plus_8_id214;
    float Input_9_id164;
    float3 SMVector3Join_ShaderFXResult_10_id167;
    float3 Input_11_id172;
    float3 Multiply_12_id175;
    float3 Input_13_id179;
    float3 Plus_14_id182;
    float3 Input_15_id186;
    float3 Plus_16_id189;
    float3 Input_17_id107;
    float Input_18_id110;
    float3 SMVector3Join_ShaderFXResult_19_id113;
    float3 Input_20_id118;
    float3 Multiply_21_id121;
    float3 Plus_22_id125;
    float3 Input_23_id129;
    float3 Multiply_24_id132;
    float Input_25_id139;
    float3 SMVector3Join_ShaderFXResult_26_id142;
    float3 Input_27_id147;
    float3 Multiply_28_id150;
    float3 Input_29_id154;
    float3 Plus_30_id157;
    float4 Default_0_id221;
    uint Input_1_id227;
    float SMMidiSelectValue_ShaderFXResult_2_id230;
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
    float InputValue_id140;
    float3 InputValue_id148;
    float3 InputValue_id155;
    float InputValue_id165;
    float3 InputValue_id173;
    float3 InputValue_id180;
    float3 InputValue_id187;
    float InputValue_id197;
    float3 InputValue_id205;
    float3 InputValue_id212;
    float4 InputValue_id222;
    uint InputValue_id228;
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
float3 Compute_id144(inout CS_STREAMS streams)
{
    return streams.Input_29_id154;
}
float3 Compute_id142(inout CS_STREAMS streams)
{
    return streams.Multiply_28_id150;
}
float3 Compute_id136(inout CS_STREAMS streams)
{
    return streams.Input_27_id147;
}
float3 Compute_id134(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_26_id142;
}
float Compute_id128(inout CS_STREAMS streams)
{
    return streams.Input_25_id139;
}
float Compute_id126(inout CS_STREAMS streams)
{
    return streams.Input_25_id139;
}
float Compute_id124(inout CS_STREAMS streams)
{
    return streams.Input_25_id139;
}
float3 Compute_id80(inout CS_STREAMS streams)
{
    return streams.Input_23_id129;
}
float3 Compute_id78(inout CS_STREAMS streams)
{
    return streams.Plus_22_id125;
}
float3 Compute_id72(inout CS_STREAMS streams)
{
    return streams.Multiply_21_id121;
}
float3 Compute_id70(inout CS_STREAMS streams)
{
    return streams.Input_17_id107;
}
float3 Compute_id66(inout CS_STREAMS streams)
{
    return streams.Input_20_id118;
}
float3 Compute_id64(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_19_id113;
}
float Compute_id58(inout CS_STREAMS streams)
{
    return streams.Input_18_id110;
}
float Compute_id56(inout CS_STREAMS streams)
{
    return streams.Input_18_id110;
}
float Compute_id54(inout CS_STREAMS streams)
{
    return streams.Input_18_id110;
}
float3 Compute_id195(inout CS_STREAMS streams)
{
    return streams.Input_15_id186;
}
float3 Compute_id193(inout CS_STREAMS streams)
{
    return streams.Plus_14_id182;
}
float3 Compute_id187(inout CS_STREAMS streams)
{
    return streams.Input_13_id179;
}
float3 Compute_id185(inout CS_STREAMS streams)
{
    return streams.Multiply_12_id175;
}
float3 Compute_id179(inout CS_STREAMS streams)
{
    return streams.Input_11_id172;
}
float3 Compute_id177(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_10_id167;
}
float Compute_id171(inout CS_STREAMS streams)
{
    return streams.Input_9_id164;
}
float Compute_id169(inout CS_STREAMS streams)
{
    return streams.Input_9_id164;
}
float Compute_id167(inout CS_STREAMS streams)
{
    return streams.Input_9_id164;
}
float3 Compute_id242(inout CS_STREAMS streams)
{
    return streams.Input_7_id211;
}
float3 Compute_id240(inout CS_STREAMS streams)
{
    return streams.Multiply_6_id207;
}
float3 Compute_id234(inout CS_STREAMS streams)
{
    return streams.Input_5_id204;
}
float3 Compute_id232(inout CS_STREAMS streams)
{
    return streams.SMVector3Join_ShaderFXResult_4_id199;
}
float Compute_id226(inout CS_STREAMS streams)
{
    return streams.Input_3_id196;
}
float Compute_id224(inout CS_STREAMS streams)
{
    return streams.Input_3_id196;
}
float Compute_id222(inout CS_STREAMS streams)
{
    return streams.Input_3_id196;
}
float SelectMidiValue_id40(SMMidiNoteData x, uint i)
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
uint Compute_id109(inout CS_STREAMS streams)
{
    return streams.Input_1_id227;
}
SMMidiNoteData Compute_id107()
{
}
float3 Compute_id147(inout CS_STREAMS streams)
{
    return Compute_id142(streams) + Compute_id144(streams);
}
float3 Compute_id140()
{
    return InputValue_id155;
}
float3 Compute_id139(inout CS_STREAMS streams)
{
    return Compute_id134(streams) * Compute_id136(streams);
}
float3 Compute_id132()
{
    return InputValue_id148;
}
float3 Compute_id131(inout CS_STREAMS streams)
{
    return float3(Compute_id124(streams), Compute_id126(streams), Compute_id128(streams));
}
float Compute_id122()
{
    return InputValue_id140;
}
float3 Compute_id83(inout CS_STREAMS streams)
{
    return Compute_id78(streams) * Compute_id80(streams);
}
float3 Compute_id76()
{
    return InputValue_id130;
}
float3 Compute_id75(inout CS_STREAMS streams)
{
    return Compute_id70(streams) + Compute_id72(streams);
}
float3 Compute_id69(inout CS_STREAMS streams)
{
    return Compute_id64(streams) * Compute_id66(streams);
}
float3 Compute_id62()
{
    return InputValue_id119;
}
float3 Compute_id61(inout CS_STREAMS streams)
{
    return float3(Compute_id54(streams), Compute_id56(streams), Compute_id58(streams));
}
float Compute_id52()
{
    return InputValue_id111;
}
float3 Compute_id50()
{
    return InputValue_id108;
}
float3 Compute_id198(inout CS_STREAMS streams)
{
    return Compute_id193(streams) + Compute_id195(streams);
}
float3 Compute_id191()
{
    return InputValue_id187;
}
float3 Compute_id190(inout CS_STREAMS streams)
{
    return Compute_id185(streams) + Compute_id187(streams);
}
float3 Compute_id183()
{
    return InputValue_id180;
}
float3 Compute_id182(inout CS_STREAMS streams)
{
    return Compute_id177(streams) * Compute_id179(streams);
}
float3 Compute_id175()
{
    return InputValue_id173;
}
float3 Compute_id174(inout CS_STREAMS streams)
{
    return float3(Compute_id167(streams), Compute_id169(streams), Compute_id171(streams));
}
float Compute_id165()
{
    return InputValue_id165;
}
float3 Compute_id245(inout CS_STREAMS streams)
{
    return Compute_id240(streams) + Compute_id242(streams);
}
float3 Compute_id238()
{
    return InputValue_id212;
}
float3 Compute_id237(inout CS_STREAMS streams)
{
    return Compute_id232(streams) * Compute_id234(streams);
}
float3 Compute_id230()
{
    return InputValue_id205;
}
float3 Compute_id229(inout CS_STREAMS streams)
{
    return float3(Compute_id222(streams), Compute_id224(streams), Compute_id226(streams));
}
float Compute_id220()
{
    return InputValue_id197;
}
float Compute_id112(inout CS_STREAMS streams)
{
    SMMidiNoteData m = Compute_id107();
    return SelectMidiValue_id40(m, Compute_id109(streams));
}
uint Compute_id105()
{
    return InputValue_id228;
}
float4 Compute_id41()
{
    return InputValue_id222;
}
void Compute_id159(inout CS_STREAMS streams)
{
    streams.Plus_30_id157 = Compute_id147(streams);
}
void Compute_id157(inout CS_STREAMS streams)
{
    streams.Input_29_id154 = Compute_id140();
}
void Compute_id155(inout CS_STREAMS streams)
{
    streams.Multiply_28_id150 = Compute_id139(streams);
}
void Compute_id153(inout CS_STREAMS streams)
{
    streams.Input_27_id147 = Compute_id132();
}
void Compute_id151(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_26_id142 = Compute_id131(streams);
}
void Compute_id149(inout CS_STREAMS streams)
{
    streams.Input_25_id139 = Compute_id122();
}
void Compute_id99(inout CS_STREAMS streams)
{
    streams.Multiply_24_id132 = Compute_id83(streams);
}
void Compute_id97(inout CS_STREAMS streams)
{
    streams.Input_23_id129 = Compute_id76();
}
void Compute_id95(inout CS_STREAMS streams)
{
    streams.Plus_22_id125 = Compute_id75(streams);
}
void Compute_id93(inout CS_STREAMS streams)
{
    streams.Multiply_21_id121 = Compute_id69(streams);
}
void Compute_id91(inout CS_STREAMS streams)
{
    streams.Input_20_id118 = Compute_id62();
}
void Compute_id89(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_19_id113 = Compute_id61(streams);
}
void Compute_id87(inout CS_STREAMS streams)
{
    streams.Input_18_id110 = Compute_id52();
}
void Compute_id85(inout CS_STREAMS streams)
{
    streams.Input_17_id107 = Compute_id50();
}
void Compute_id214(inout CS_STREAMS streams)
{
    streams.Plus_16_id189 = Compute_id198(streams);
}
void Compute_id212(inout CS_STREAMS streams)
{
    streams.Input_15_id186 = Compute_id191();
}
void Compute_id210(inout CS_STREAMS streams)
{
    streams.Plus_14_id182 = Compute_id190(streams);
}
void Compute_id208(inout CS_STREAMS streams)
{
    streams.Input_13_id179 = Compute_id183();
}
void Compute_id206(inout CS_STREAMS streams)
{
    streams.Multiply_12_id175 = Compute_id182(streams);
}
void Compute_id204(inout CS_STREAMS streams)
{
    streams.Input_11_id172 = Compute_id175();
}
void Compute_id202(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_10_id167 = Compute_id174(streams);
}
void Compute_id200(inout CS_STREAMS streams)
{
    streams.Input_9_id164 = Compute_id165();
}
void Compute_id257(inout CS_STREAMS streams)
{
    streams.Plus_8_id214 = Compute_id245(streams);
}
void Compute_id255(inout CS_STREAMS streams)
{
    streams.Input_7_id211 = Compute_id238();
}
void Compute_id253(inout CS_STREAMS streams)
{
    streams.Multiply_6_id207 = Compute_id237(streams);
}
void Compute_id251(inout CS_STREAMS streams)
{
    streams.Input_5_id204 = Compute_id230();
}
void Compute_id249(inout CS_STREAMS streams)
{
    streams.SMVector3Join_ShaderFXResult_4_id199 = Compute_id229(streams);
}
void Compute_id247(inout CS_STREAMS streams)
{
    streams.Input_3_id196 = Compute_id220();
}
void Compute_id116(inout CS_STREAMS streams)
{
    streams.SMMidiSelectValue_ShaderFXResult_2_id230 = Compute_id112(streams);
}
void Compute_id114(inout CS_STREAMS streams)
{
    streams.Input_1_id227 = Compute_id105();
}
void Compute_id44(inout CS_STREAMS streams)
{
    streams.Default_0_id221 = Compute_id41();
}
float3 Compute_id162(inout CS_STREAMS streams)
{
    return streams.Plus_30_id157;
}
void Compute_id161(inout CS_STREAMS streams)
{

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
        Compute_id155(streams);
    }

    {
        Compute_id157(streams);
    }

    {
        Compute_id159(streams);
    }
}
float3 Compute_id102(inout CS_STREAMS streams)
{
    return streams.Multiply_24_id132;
}
void Compute_id101(inout CS_STREAMS streams)
{

    {
        Compute_id85(streams);
    }

    {
        Compute_id87(streams);
    }

    {
        Compute_id89(streams);
    }

    {
        Compute_id91(streams);
    }

    {
        Compute_id93(streams);
    }

    {
        Compute_id95(streams);
    }

    {
        Compute_id97(streams);
    }

    {
        Compute_id99(streams);
    }
}
float3 Compute_id217(inout CS_STREAMS streams)
{
    return streams.Plus_16_id189;
}
void Compute_id216(inout CS_STREAMS streams)
{

    {
        Compute_id200(streams);
    }

    {
        Compute_id202(streams);
    }

    {
        Compute_id204(streams);
    }

    {
        Compute_id206(streams);
    }

    {
        Compute_id208(streams);
    }

    {
        Compute_id210(streams);
    }

    {
        Compute_id212(streams);
    }

    {
        Compute_id214(streams);
    }
}
float3 Compute_id260(inout CS_STREAMS streams)
{
    return streams.Plus_8_id214;
}
void Compute_id259(inout CS_STREAMS streams)
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
        Compute_id253(streams);
    }

    {
        Compute_id255(streams);
    }

    {
        Compute_id257(streams);
    }
}
float Compute_id119(inout CS_STREAMS streams)
{
    return streams.SMMidiSelectValue_ShaderFXResult_2_id230;
}
void Compute_id118(inout CS_STREAMS streams)
{

    {
        Compute_id114(streams);
    }

    {
        Compute_id116(streams);
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
float4 Compute_id47(inout CS_STREAMS streams)
{
    return streams.Default_0_id221;
}
void Compute_id46(inout CS_STREAMS streams)
{

    {
        Compute_id44(streams);
    }
}
float3 Compute_id37(inout CS_STREAMS streams)
{
    Compute_id161(streams);
    return Compute_id162(streams);
}
float3 Compute_id36(inout CS_STREAMS streams)
{
    Compute_id101(streams);
    return Compute_id102(streams);
}
float3 Compute_id35(inout CS_STREAMS streams)
{
    Compute_id216(streams);
    return Compute_id217(streams);
}
float3 Compute_id34(inout CS_STREAMS streams)
{
    Compute_id259(streams);
    return Compute_id260(streams);
}
float Compute_id39(inout CS_STREAMS streams)
{
    Compute_id118(streams);
    return Compute_id119(streams);
}
float3 RotatePlacement_id26(float3 v, float3 angle, float3 center)
{
    angle *= TwoPi_id70;
    v = rCZ_id28(v, angle.z, center);
    v = rCX_id29(v, angle.x, center);
    v = rCY_id30(v, angle.y, center);
    return v;
}
float4 Compute_id38(inout CS_STREAMS streams)
{
    Compute_id46(streams);
    return Compute_id47(streams);
}
SMMappingValues ComputeDamping_id25(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    SMMappingValues m = LastValues_id96[index];

    {
        m.Trans = lerp(Compute_id34(streams), m.Trans, Damping_id97[0]);
        m.Rot = lerp(Compute_id35(streams), m.Rot, Damping_id97[1]);
        m.Dim = lerp(Compute_id36(streams), m.Dim, Damping_id97[2]);
        m.Piv = lerp(Compute_id37(streams), m.Piv, Damping_id97[3]);
    }
    LastValues_id96[index] = m;
    return m;
}
SMGridParticle Modify_id27(inout CS_STREAMS streams, SMGridParticle p)
{
    SMMappingValues m = ComputeDamping_id25(streams);
    p.Col = Compute_id38(streams);
    float3 piv = RotatePlacement_id26(m.Piv, p.Rot + m.Rot, 0);
    p.Pos += RotatePlacement_id26(m.Trans, p.Rot, 0) + piv;
    p.Rot += m.Rot;
    p.Size = m.Dim;
    p.Mesh = Compute_id39(streams);
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

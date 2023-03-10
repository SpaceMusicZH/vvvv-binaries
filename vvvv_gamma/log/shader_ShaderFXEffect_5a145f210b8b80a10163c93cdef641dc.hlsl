/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Imposter_ShaderFX
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Imposter_ShaderFX => a8d29afd67e60b8e063b1e66e9ea6a59
@S    SphereProvider => 0d83a07e81ceb85f3914bc202a9f86bf
@S    FuseCommonBuffer => 65b35e271cc4ebdf63ebebd0f53f481c
@S    FuseCommonTypes => 294db151085426350495bb436e7480dd
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    VertexIDStream => 9d1d889df6ab3d2e141f4e6e5d369333
***************************
*****     Stages      *****
***************************
@G    Vertex => 702b455ffa0863236c8706a53d952f4b
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VertexID              0   x           0   VERTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VERTEXID_ID15_SEM        0   x           0     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_output o0.x
//
// Initial variable locations:
//   v0.x <- __input__; 
//   o0.x <- <VSMain return value>
//
#line 59 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_5a145f210b8b80a10163c93cdef641dc.hlsl"
mov o0.x, v0.x
ret 
// Approximately 2 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
    uint VertexID_VS_id14;
    uint VertexID_id15;
};
struct VS_OUTPUT 
{
    uint VertexID_id15 : VERTEXID_ID15_SEM;
};
struct VS_INPUT 
{
    uint VertexID_VS_id14 : SV_VertexID;
};
struct Matrix4x4 
{
    float4x4 Matrix;
};
struct Ray 
{
    float3 ro, rd, sp, sn;
};
cbuffer PerMaterial 
{
    float SizeDefualt_id18 = 0.1;
};
StructuredBuffer<float3> posBuffer_id16;
StructuredBuffer<float> sizeBuffer_id17;
void AssignVertexID_id22(inout VS_STREAMS streams)
{
    streams.VertexID_id15 = streams.VertexID_VS_id14;
}
void PostTransformPosition_id19()
{
}
void TransformPosition_id18()
{
}
void PreTransformPosition_id23(inout VS_STREAMS streams)
{
    AssignVertexID_id22(streams);
}
void BaseTransformVS_id21(inout VS_STREAMS streams)
{
    PreTransformPosition_id23(streams);
    TransformPosition_id18();
    PostTransformPosition_id19();
}
void VSMain_id0()
{
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_VS_id14 = __input__.VertexID_VS_id14;
    VSMain_id0();
    BaseTransformVS_id21(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VertexID_id15 = streams.VertexID_id15;
    return __output__;
}

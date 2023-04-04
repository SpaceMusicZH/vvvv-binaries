/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin AsyncTest_ComputeFX [{Logic = AsyncTestLogic_ShaderFX}]
@P Logic: AsyncTestLogic_ShaderFX
@P ComputeEffectShader.ThreadNumbers: X:0 Y:0 Z:0
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    AsyncTest_ComputeFX => 6d665d378ffb73833dfb9ba8d2cd6e62
@S    AdditionalPins => cbf8b05737c6ac26fbb507984fd582ad
@S    AsyncTestLogic_ShaderFX => 95c9600b204f9cc45514aa69622d1b77
***************************
*************************/
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
};
struct CS_INPUT 
{
    uint3 GroupId_id0 : SV_GroupID;
    uint3 DispatchThreadId_id1 : SV_DispatchThreadID;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
};
cbuffer Globals 
{
    float AdditionalStagePin_id11;
    float AdditionalPin_id12;
    float AdditionalPin_id14;
    float Inc_id16;
};
RWBuffer<float> Values_id15;
void Compute_id3(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    float value = Values_id15[index];
    value += Inc_id16;
    Values_id15[index] = value;
}
void Compute_id2(inout CS_STREAMS streams)
{
    Compute_id3(streams);
}
[numthreads(0, 0, 0)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 0;
    streams.ThreadCountY_id8 = 0;
    streams.ThreadCountZ_id9 = 0;
    streams.ThreadCountPerGroup_id5 = 0 * 0 * 0;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id2(streams);
}

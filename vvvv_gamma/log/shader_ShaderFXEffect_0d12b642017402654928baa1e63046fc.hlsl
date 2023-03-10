/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin GPUDamperVector4Col_ShaderFX [{Damping = InputFloat4<ShaderFX.InputValueFloat4.i1,PerUpdate>}, {Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]
@P Value: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
@P Damping: InputFloat4<ShaderFX.InputValueFloat4.i1,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerUpdate [Size: 32]
@C    InputValue_id28 => ShaderFX.InputValueFloat4.i1
@C    InputValue_id29 => ShaderFX.InputValueFloat4
***************************
******  Resources    ******
***************************
@R    LastValue_id27 => GPUDamperVector4Col_ShaderFX.LastValue [Stage: Compute, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    GPUDamperVector4Col_ShaderFX => 4c2bf88a8453ba186eb2411ef75bbbb8
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
***************************
*****     Stages      *****
***************************
@G    Compute => 4076f5cc5f2e50ae88c91438a38b7737
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id28;            // Offset:    0 Size:    16
//   float4 InputValue_id29;            // Offset:   16 Size:    16
//
// }
//
// Resource bind info for LastValue_id27
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LastValue_id27                        UAV  struct         r/w             u0      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
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
dcl_uav_structured u0, 16
dcl_input vThreadID.x
dcl_temps 1
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id14.x; vThreadGroupID.y <- __input__.GroupId_id14.y; vThreadGroupID.z <- __input__.GroupId_id14.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id15.x; vThreadID.y <- __input__.DispatchThreadId_id15.y; vThreadID.z <- __input__.DispatchThreadId_id15.z
//
#line 44 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_0d12b642017402654928baa1e63046fc.hlsl"
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), u0.xyzw
add r0.xyzw, r0.xyzw, -cb0[1].xyzw
mad r0.xyzw, cb0[0].xyzw, r0.xyzw, cb0[1].xyzw  // r0.x <- newValue.x; r0.y <- newValue.y; r0.z <- newValue.z; r0.w <- newValue.w

#line 45
store_structured u0.xyzw, vThreadID.x, l(0), r0.xyzw

#line 61
ret 
// Approximately 5 instruction slots used
***************************
*************************/
struct CS_STREAMS 
{
    uint3 GroupId_id14;
    uint3 DispatchThreadId_id15;
    int ThreadCountX_id21;
    int ThreadCountY_id22;
    int ThreadCountZ_id23;
    uint ThreadCountPerGroup_id19;
    uint3 ThreadGroupCount_id18;
    uint ThreadGroupIndex_id20;
};
struct CS_INPUT 
{
    uint3 GroupId_id14 : SV_GroupID;
    uint3 DispatchThreadId_id15 : SV_DispatchThreadID;
};
struct VS_STREAMS 
{
};
struct VS_INPUT 
{
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id24;
};
cbuffer PerUpdate 
{
    float4 InputValue_id28;
    float4 InputValue_id29;
};
RWStructuredBuffer<float4> LastValue_id27;
float4 Compute_id6()
{
    return InputValue_id28;
}
float4 Compute_id5()
{
    return InputValue_id29;
}
float4 Compute_id4(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id15.x;
    float4 newValue = lerp(Compute_id5(), LastValue_id27[index], Compute_id6());
    LastValue_id27[index] = newValue;
    return newValue;
}
[numthreads(1, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id14 = __input__.GroupId_id14;
    streams.DispatchThreadId_id15 = __input__.DispatchThreadId_id15;
    streams.ThreadCountX_id21 = 1;
    streams.ThreadCountY_id22 = 1;
    streams.ThreadCountZ_id23 = 1;
    streams.ThreadCountPerGroup_id19 = 1 * 1 * 1;
    streams.ThreadGroupCount_id18 = ThreadGroupCountGlobal_id24;
    streams.ThreadGroupIndex_id20 = (streams.GroupId_id14.z * streams.ThreadGroupCount_id18.y + streams.GroupId_id14.y) * streams.ThreadGroupCount_id18.x + streams.GroupId_id14.x;
    Compute_id4(streams);
}
void VSMain()
{
    VS_STREAMS streams = (VS_STREAMS)0;
}

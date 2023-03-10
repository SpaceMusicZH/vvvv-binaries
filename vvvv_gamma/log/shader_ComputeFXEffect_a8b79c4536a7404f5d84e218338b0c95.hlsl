/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin Fluid3DAdvectTexture_Internal_ComputeFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer Globals [Size: 64]
@C    FluidDimensions_id11 => Fluid3DGlobals.FluidDimensions
@C    Timestep_id12 => Fluid3DGlobals.Timestep
@C    Modulate_id16 => Fluid3DAdvectTexture_Internal_ComputeFX.Modulate
@C    Forward_id17 => Fluid3DAdvectTexture_Internal_ComputeFX.Forward
@C    CoordsOffset_id18 => Fluid3DAdvectTexture_Internal_ComputeFX.CoordsOffset
@C    BorderMargin_id19 => Fluid3DAdvectTexture_Internal_ComputeFX.BorderMargin
@C    BorderGamma_id20 => Fluid3DAdvectTexture_Internal_ComputeFX.BorderGamma
***************************
******  Resources    ******
***************************
@R    samLinear_id21 => Fluid3DAdvectTexture_Internal_ComputeFX.samLinear [Stage: Compute, Slot: (0-0)]
@R    Texture_VectorField_id13 => Fluid3DAdvectTexture_Internal_ComputeFX.Texture_VectorField [Stage: Compute, Slot: (0-0)]
@R    Texture_Value_id14 => Fluid3DAdvectTexture_Internal_ComputeFX.Texture_Value [Stage: Compute, Slot: (1-1)]
@R    Texture_Value_RW_id15 => Fluid3DAdvectTexture_Internal_ComputeFX.Texture_Value_RW [Stage: Compute, Slot: (0-0)]
@R    Globals => Globals [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    Fluid3DAdvectTexture_Internal_ComputeFX => 8666914e575730e2326d4ef3f5271535
@S    Fluid3DGlobals => fbecbddf8a1fd6a33748892251f2ebdf
***************************
*****     Stages      *****
***************************
@G    Compute => ffd8906c3432b32daa39761df779000f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float3 FluidDimensions_id11;       // Offset:    0 Size:    12
//   float Timestep_id12;               // Offset:   12 Size:     4
//   float Modulate_id16;               // Offset:   16 Size:     4
//      = 0x3f800000 
//   float Forward_id17;                // Offset:   20 Size:     4
//      = 0x3f800000 
//   float3 CoordsOffset_id18;          // Offset:   32 Size:    12
//   int BorderMargin_id19;             // Offset:   44 Size:     4 [unused]
//      = 0x00000005 
//   float BorderGamma_id20;            // Offset:   48 Size:     4 [unused]
//      = 0x3f800000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// samLinear_id21                    sampler      NA          NA             s0      1 
// Texture_VectorField_id13          texture  float3          3d             t0      1 
// Texture_Value_id14                texture  float3          3d             t1      1 
// Texture_Value_RW_id15                 UAV  float3          3d             u0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture3d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 2
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 44 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_a8b79c4536a7404f5d84e218338b0c95.hlsl"
mov r0.xyz, vThreadID.xyzx
mov r0.w, l(0)
ld_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw

#line 43
utof r1.xyz, vThreadID.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 44
mul r0.w, cb0[0].w, cb0[1].y
mad r0.xyz, -r0.wwww, r0.xyzx, r1.xyzx  // r0.x <- pos.x; r0.y <- pos.y; r0.z <- pos.z

#line 51
round_z r1.xyz, cb0[2].xyzx
add r0.xyz, r0.xyzx, r1.xyzx
add r0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)

#line 50
ftou r1.xyz, cb0[0].xyzx  // r1.x <- dim.x; r1.y <- dim.y; r1.z <- dim.z

#line 51
utof r1.xyz, r1.xyzx
div r0.xyz, r0.xyzx, r1.xyzx  // r0.x <- npos.x; r0.y <- npos.y; r0.z <- npos.z

#line 52
sample_l_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzx, t1.xyzw, s0, l(0.000000)
mul r0.xyzw, r0.xyzx, cb0[1].xxxx
store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw

#line 67
ret 
// Approximately 16 instruction slots used
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
    float3 FluidDimensions_id11;
    float Timestep_id12;
    float Modulate_id16 = 1.0f;
    float Forward_id17 = 1.0f;
    float3 CoordsOffset_id18;
    int BorderMargin_id19 = 5;
    float BorderGamma_id20 = 1.0f;
};
Texture3D<float3> Texture_VectorField_id13;
Texture3D<float3> Texture_Value_id14;
RWTexture3D<float3> Texture_Value_RW_id15;
SamplerState samLinear_id21 : IMMUTABLE 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Clamp;
    AddressV = Clamp;
    AddressW = Clamp;
};
float3 GetAdvectedPosTexCoords_id2(uint3 i)
{
    float3 pos = i;
    pos -= Timestep_id12 * Forward_id17 * Texture_VectorField_id13[i];
    return pos;
}
void Compute_id3(inout CS_STREAMS streams)
{
    uint3 i = streams.DispatchThreadId_id1;
    uint3 dim = FluidDimensions_id11;
    float3 npos = ((GetAdvectedPosTexCoords_id2((int3)i) + (int3)CoordsOffset_id18) + 0.5f) / dim;
    Texture_Value_RW_id15[i] = Texture_Value_id14.SampleLevel(samLinear_id21, npos, 0) * Modulate_id16;
}
[numthreads(1, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 1;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 1 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id3(streams);
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin Fluid3DSphericalImpulse_Internal_ComputeFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer Globals [Size: 32]
@C    FluidDimensions_id11 => Fluid3DGlobals.FluidDimensions
@C    Timestep_id12 => Fluid3DGlobals.Timestep
@C    ScaleFactorInverse_id16 => Fluid3DSphericalImpulse_Internal_ComputeFX.ScaleFactorInverse
@C    SphericalImpulseCount_id19 => Fluid3DSphericalImpulse_Internal_ComputeFX.SphericalImpulseCount
***************************
******  Resources    ******
***************************
@R    Texture_Target_id13 => Fluid3DSphericalImpulse_Internal_ComputeFX.Texture_Target [Stage: Compute, Slot: (0-0)]
@R    Texture_ObstaclesGradient_id15 => Fluid3DSphericalImpulse_Internal_ComputeFX.Texture_ObstaclesGradient [Stage: Compute, Slot: (1-1)]
@R    PosSizeBuffer_id17 => Fluid3DSphericalImpulse_Internal_ComputeFX.PosSizeBuffer [Stage: Compute, Slot: (2-2)]
@R    ValueBuffer_id18 => Fluid3DSphericalImpulse_Internal_ComputeFX.ValueBuffer [Stage: Compute, Slot: (3-3)]
@R    Texture_Target_RW_id14 => Fluid3DSphericalImpulse_Internal_ComputeFX.Texture_Target_RW [Stage: Compute, Slot: (0-0)]
@R    Globals => Globals [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    Fluid3DSphericalImpulse_Internal_ComputeFX => 56277500bdad56c453f1e2cb8942d446
@S    Fluid3DGlobals => fbecbddf8a1fd6a33748892251f2ebdf
***************************
*****     Stages      *****
***************************
@G    Compute => bb8ce0dfdf657a0aa62c2b297c14b692
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float3 FluidDimensions_id11;       // Offset:    0 Size:    12 [unused]
//   float Timestep_id12;               // Offset:   12 Size:     4 [unused]
//   float3 ScaleFactorInverse_id16;    // Offset:   16 Size:    12 [unused]
//   int SphericalImpulseCount_id19;    // Offset:   28 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Texture_Target_id13               texture  float3          3d             t0      1 
// Texture_ObstaclesGradient_id15    texture   float          3d             t1      1 
// PosSizeBuffer_id17                texture  float4         buf             t2      1 
// ValueBuffer_id18                  texture  float4         buf             t3      1 
// Texture_Target_RW_id14                UAV  float3          3d             u0      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_resource_texture3d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 5
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 35 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_c7b32ca78e38c917eba737aaf9697df1.hlsl"
mov r0.xyz, vThreadID.xyzx
mov r0.w, l(0)
ld_indexable(texture3d)(float,float,float,float) r1.x, r0.xyzw, t1.xyzw
lt r1.x, l(0.000000), r1.x  // r1.x <- <IsNonEmptyCell_id2 return value>

#line 40
if_nz r1.x

#line 42
  store_uav_typed u0.xyzw, vThreadID.xyzz, l(0,0,0,0)

#line 44
endif 

#line 45
if_z r1.x
  ld_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw  // r0.x <- AccumValue.x; r0.y <- AccumValue.y; r0.z <- AccumValue.z

#line 51
  utof r1.xyz, vThreadID.xyzx

#line 47
  mov r2.xyz, r0.xyzx  // r2.x <- AccumValue.x; r2.y <- AccumValue.y; r2.z <- AccumValue.z
  mov r0.w, l(0)  // r0.w <- s
  loop 
    uge r1.w, r0.w, cb0[1].w
    breakc_nz r1.w

#line 49
    ld_indexable(buffer)(float,float,float,float) r3.xyzw, r0.wwww, t2.xyzw  // r3.x <- Source_PosSize.x; r3.y <- Source_PosSize.y; r3.z <- Source_PosSize.z; r3.w <- Source_PosSize.w

#line 50
    ld_indexable(buffer)(float,float,float,float) r4.xyz, r0.wwww, t3.xyzw  // r4.x <- Source_Value.x; r4.y <- Source_Value.y; r4.z <- Source_Value.z

#line 51
    add r3.xyz, r1.xyzx, -r3.xyzx
    dp3 r1.w, r3.xyzx, r3.xyzx
    sqrt r1.w, r1.w
    mul r1.w, r3.w, r1.w  // r1.w <- dist

#line 54
    mul r1.w, r1.w, -r1.w
    mul r1.w, r1.w, l(1.442695)
    exp r1.w, r1.w  // r1.w <- result.w

#line 55
    mad r2.xyz, r4.xyzx, r1.wwww, r2.xyzx

#line 56
    iadd r0.w, r0.w, l(1)
  endloop 
  mov r0.xyzw, r2.xyzx  // r0.y <- AccumValue.y; r0.z <- AccumValue.z; r0.w <- AccumValue.x

#line 57
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
endif 

#line 72
ret 
// Approximately 31 instruction slots used
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
    float3 ScaleFactorInverse_id16;
    int SphericalImpulseCount_id19;
};
Texture3D<float3> Texture_Target_id13;
RWTexture3D<float3> Texture_Target_RW_id14;
Texture3D<float> Texture_ObstaclesGradient_id15;
Buffer<float4> PosSizeBuffer_id17;
Buffer<float4> ValueBuffer_id18;
bool IsNonEmptyCell_id2(float3 cellTexCoords)
{
    return (Texture_ObstaclesGradient_id15[cellTexCoords].r > 0.0);
}
void Compute_id3(inout CS_STREAMS streams)
{
    uint3 i = streams.DispatchThreadId_id1;
    if (IsNonEmptyCell_id2(i))
    {
        Texture_Target_RW_id14[i] = 0;
        return;
    }
    float3 AccumValue = Texture_Target_id13[i];

    for (uint s = 0; s < (uint)SphericalImpulseCount_id19; s++)
    {
        float4 Source_PosSize = PosSizeBuffer_id17[s];
        float4 Source_Value = ValueBuffer_id18[s];
        float dist = length(i - Source_PosSize.xyz) * Source_PosSize.w;
        float4 result;
        result.rgb = Source_Value.xyz;
        result.a = exp(-dist * dist);
        AccumValue += result.xyz * result.a;
    }
    Texture_Target_RW_id14[i] = AccumValue;
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

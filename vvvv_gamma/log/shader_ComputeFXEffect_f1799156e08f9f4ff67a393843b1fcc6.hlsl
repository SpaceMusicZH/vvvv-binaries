/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin GenerateSMGridTransformations_ComputeFX
@P ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
***************************
****  ConstantBuffers  ****
***************************
cbuffer Globals [Size: 16]
@C    Count_id14 => GenerateSMGridTransformations_ComputeFX.Count
***************************
******  Resources    ******
***************************
@R    Particles_id11 => GenerateSMGridTransformations_ComputeFX.Particles [Stage: Compute, Slot: (0-0)]
@R    InstanceWorld_id12 => GenerateSMGridTransformations_ComputeFX.InstanceWorld [Stage: Compute, Slot: (0-0)]
@R    InstanceWorldInverse_id13 => GenerateSMGridTransformations_ComputeFX.InstanceWorldInverse [Stage: Compute, Slot: (1-1)]
@R    Globals => Globals [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    GenerateSMGridTransformations_ComputeFX => 4c149a3a1b9d9e44f16ab5a96902691e
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    TransformUtils => 651146ed53d019a2c2c72b489f9cff84
@S    HappyTransform => 40e380fb8141f7a8a6b741a8bd03a993
***************************
*****     Stages      *****
***************************
@G    Compute => fec2a05fedff0850538693c17ae24211
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   uint Count_id14;                   // Offset:    0 Size:     4
//
// }
//
// Resource bind info for Particles_id11
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
// Resource bind info for InstanceWorld_id12
// {
//
//   struct Transform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
// Resource bind info for InstanceWorldInverse_id13
// {
//
//   struct Transform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
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
// Particles_id11                    texture  struct         r/o             t0      1 
// InstanceWorld_id12                    UAV  struct         r/w             u0      1 
// InstanceWorldInverse_id13             UAV  struct         r/w             u1      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_resource_structured t0, 64
dcl_uav_structured u0, 64
dcl_uav_structured u1, 64
dcl_input vThreadID.x
dcl_temps 9
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 82 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_f1799156e08f9f4ff67a393843b1fcc6.hlsl"
ult r0.x, vThreadID.x, cb0[0].x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyw, vThreadID.x, l(0), t0.xyxz  // r0.x <- p.Pos.x; r0.y <- p.Pos.y; r0.w <- p.Pos.z
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, vThreadID.x, l(24), t0.xyzw  // r1.x <- p.Rot.x; r1.y <- p.Rot.y; r1.z <- p.Rot.z; r1.w <- p.Size.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xy, vThreadID.x, l(40), t0.xyxx  // r2.x <- p.Size.y; r2.y <- p.Size.z

#line 63
  div r2.z, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r2.z <- inverseScaling.x
  div r3.xy, l(1.000000, 1.000000, 1.000000, 1.000000), r2.xyxx  // r3.x <- inverseScaling.y; r3.y <- inverseScaling.z

#line 48
  mul r1.xyz, r1.xyzx, l(-6.283185, 6.283185, -6.283185, 0.000000)  // r1.x <- z.x; r1.y <- z.y; r1.z <- z.z

#line 49
  sincos r1.xyz, r4.xyz, r1.xyzx  // r4.x <- x.x; r4.y <- x.y; r4.z <- x.z; r1.x <- y.x; r1.y <- y.y; r1.z <- y.z

#line 50
  mul r5.xyz, r4.zzyz, r4.yxxy  // r5.y <- <rot3x3_id12 return value>._m11; r5.z <- <rot3x3_id12 return value>._m22
  mul r2.w, r1.y, r1.x
  mad r6.x, r2.w, r1.z, r5.x  // r6.x <- <rot3x3_id12 return value>._m00
  mul r6.y, r1.z, -r4.x  // r6.y <- <rot3x3_id12 return value>._m01
  mul r7.xyzw, r1.xyzy, r4.yzyx  // r7.w <- <rot3x3_id12 return value>._m20
  mad r6.z, r7.x, r1.z, -r7.y  // r6.z <- <rot3x3_id12 return value>._m02
  mad r8.x, -r2.w, r4.z, r7.z  // r8.x <- <rot3x3_id12 return value>._m10
  mul r2.w, r4.z, r7.x
  mad r8.z, -r1.y, r1.z, -r2.w  // r8.z <- <rot3x3_id12 return value>._m12

#line 67
  mul r1.yzw, r1.wwww, r6.xxyz  // r1.y <- m._m00; r1.z <- m._m01; r1.w <- m._m02

#line 68
  mov r8.y, r5.y
  mul r4.xyz, r2.xxxx, r8.xyzx  // r4.x <- m._m10; r4.y <- m._m11; r4.z <- m._m12

#line 69
  mov r5.x, r7.w
  mov r5.y, r1.x
  mul r2.xyw, r2.yyyy, r5.xyxz  // r2.x <- m._m20; r2.y <- m._m21; r2.w <- m._m22

#line 72
  dp3 r6.w, -r0.xywx, r6.xyzx  // r6.w <- im._m30
  dp3 r8.w, -r0.xywx, r8.xyzx  // r8.w <- im._m31
  dp3 r5.w, -r0.xywx, r5.xyzx  // r5.w <- im._m32

#line 73
  mul r6.xyzw, r2.zzzz, r6.xyzw  // r6.x <- im._m00; r6.y <- im._m10; r6.z <- im._m20

#line 74
  mul r7.xyzw, r3.xxxx, r8.xyzw  // r7.x <- im._m01; r7.y <- im._m11; r7.z <- im._m21; r7.w <- im._m31

#line 75
  mul r3.xyzw, r3.yyyy, r5.xyzw  // r3.x <- im._m02; r3.y <- im._m12; r3.z <- im._m22; r3.w <- im._m32

#line 86
  mov r5.x, r1.y
  mov r5.y, r4.x
  mov r5.z, r2.x
  mov r5.w, r0.x
  store_structured u0.xyzw, vThreadID.x, l(0), r5.xyzw
  mov r5.x, r1.z
  mov r5.y, r4.y
  mov r5.z, r2.y
  mov r5.w, r0.y
  store_structured u0.xyzw, vThreadID.x, l(16), r5.xyzw
  mov r0.x, r1.w
  mov r0.y, r4.z
  mov r0.z, r2.w
  store_structured u0.xyzw, vThreadID.x, l(32), r0.xyzw
  store_structured u0.xyzw, vThreadID.x, l(48), l(0,0,0,1.000000)

#line 87
  store_structured u1.xyzw, vThreadID.x, l(0), r6.xyzw
  store_structured u1.xyzw, vThreadID.x, l(16), r7.xyzw
  store_structured u1.xyzw, vThreadID.x, l(32), r3.xyzw
  store_structured u1.xyzw, vThreadID.x, l(48), l(0,0,0,1.000000)
endif 

#line 102
ret 
// Approximately 51 instruction slots used
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
struct SMGridParticle 
{
    float3 Pos;
    float3 Vel;
    float3 Rot;
    float3 Size;
    float3 Col;
    float Mesh;
};
struct Transform 
{
    float4x4 Matrix;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
};
cbuffer Globals 
{
    uint Count_id14;
};
StructuredBuffer<SMGridParticle> Particles_id11;
RWStructuredBuffer<Transform> InstanceWorld_id12;
RWStructuredBuffer<Transform> InstanceWorldInverse_id13;
float4x4 as4x4_id6(float3x3 m)
{
    float4x4 newM = { m._11, m._12, m._13, 0, m._21, m._22, m._23, 0, m._31, m._32, m._33, 0, 0, 0, 0, 1};
    return newM;
}
float3x3 rot3x3_id12(float3 rotation)
{
    float3 z = float3(-rotation.x, rotation.y, -rotation.z) * acos(-1) * 2;
    float3 x = cos(z), y = sin(z);
    return float3x3(x.y * x.z + y.x * y.y * y.z, -x.x * y.z, y.x * x.y * y.z - y.y * x.z, x.y * y.z - y.x * y.y * x.z, x.x * x.z, -y.y * y.z - y.x * x.y * x.z, x.x * y.y, y.x, x.x * x.y);
}
float4x4 rot4x4_id14(float3 rotation)
{
    return as4x4_id6(rot3x3_id12(rotation));
}
float4x4 identity4x4_id4()
{
    float4x4 m = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
    return m;
}
void TransformTRSWithInverse_id30(float3 translation, float3 rotation, float3 scaling, out float4x4 m, out float4x4 im)
{
    float3 inverseScaling = 1.0 / scaling;
    im = identity4x4_id4();
    m = rot4x4_id14(rotation);
    float4x4 inverseRotation = transpose(m);
    m[0] *= scaling.x;
    m[1] *= scaling.y;
    m[2] *= scaling.z;
    m[3].xyz = translation.xyz;
    im[3].xyz = -translation.xyz;
    im = mul(im, inverseRotation);
    im._11_21_31_41 *= inverseScaling.x;
    im._12_22_32_42 *= inverseScaling.y;
    im._13_23_33_43 *= inverseScaling.z;
}
void Compute_id32(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    if (index >= Count_id14)
        return;
    SMGridParticle p = Particles_id11[index];
    float4x4 world;
    float4x4 worldInverse;
    TransformTRSWithInverse_id30(p.Pos, p.Rot, p.Size, world, worldInverse);
    InstanceWorld_id12[index].Matrix = world;
    InstanceWorldInverse_id13[index].Matrix = worldInverse;
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
    Compute_id32(streams);
}
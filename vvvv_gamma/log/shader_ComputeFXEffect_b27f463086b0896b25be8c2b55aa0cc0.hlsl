/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin FuseInstancedGenerateTransformationsAxis_ComputeFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer Globals [Size: 32]
@C    Angles_id20 => FuseInstancedGenerateTransformationsAxis_ComputeFX.Angles
@C    Pivot_id21 => FuseInstancedGenerateTransformationsAxis_ComputeFX.Pivot
***************************
******  Resources    ******
***************************
@R    Position_id22 => FuseInstancedGenerateTransformationsAxis_ComputeFX.Position [Stage: Compute, Slot: (0-0)]
@R    AxisX_id23 => FuseInstancedGenerateTransformationsAxis_ComputeFX.AxisX [Stage: Compute, Slot: (1-1)]
@R    AxisY_id24 => FuseInstancedGenerateTransformationsAxis_ComputeFX.AxisY [Stage: Compute, Slot: (2-2)]
@R    AxisZ_id25 => FuseInstancedGenerateTransformationsAxis_ComputeFX.AxisZ [Stage: Compute, Slot: (3-3)]
@R    Size_id26 => FuseInstancedGenerateTransformationsAxis_ComputeFX.Size [Stage: Compute, Slot: (4-4)]
@R    InstanceWorld_id27 => FuseInstancedGenerateTransformationsAxis_ComputeFX.InstanceWorld [Stage: Compute, Slot: (0-0)]
@R    InstanceWorldInverse_id28 => FuseInstancedGenerateTransformationsAxis_ComputeFX.InstanceWorldInverse [Stage: Compute, Slot: (1-1)]
@R    Globals => Globals [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    FuseInstancedGenerateTransformationsAxis_ComputeFX => afc58e221a0cb5cd1a312cd6bf5636ce
@S    FuseCoreTransform => 2cbaeb06b0367b954ef12b555e3c4d7a
@S    FuseCoreMath => fdeacca3b2f02b9acb6430ed603f50b4
@S    FuseCommonTypes => 294db151085426350495bb436e7480dd
***************************
*****     Stages      *****
***************************
@G    Compute => cd904060b518f796298ed8cb742261f3
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float3 Angles_id20;                // Offset:    0 Size:    12
//   float3 Pivot_id21;                 // Offset:   16 Size:    12
//
// }
//
// Resource bind info for Position_id22
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for AxisX_id23
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for AxisY_id24
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for AxisZ_id25
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for Size_id26
// {
//
//   float3 $Element;                   // Offset:    0 Size:    12
//
// }
//
// Resource bind info for InstanceWorld_id27
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
// Resource bind info for InstanceWorldInverse_id28
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
// Position_id22                     texture  struct         r/o             t0      1 
// AxisX_id23                        texture  struct         r/o             t1      1 
// AxisY_id24                        texture  struct         r/o             t2      1 
// AxisZ_id25                        texture  struct         r/o             t3      1 
// Size_id26                         texture  struct         r/o             t4      1 
// InstanceWorld_id27                    UAV  struct         r/w             u0      1 
// InstanceWorldInverse_id28             UAV  struct         r/w             u1      1 
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
dcl_resource_structured t0, 12
dcl_resource_structured t1, 12
dcl_resource_structured t2, 12
dcl_resource_structured t3, 12
dcl_resource_structured t4, 12
dcl_uav_structured u0, 64
dcl_uav_structured u1, 64
dcl_input vThreadID.x
dcl_temps 9
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 84 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_ComputeFXEffect_b27f463086b0896b25be8c2b55aa0cc0.hlsl"
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r0.xyz, vThreadID.x, l(0), t0.xyzx  // r0.x <- pos.x; r0.y <- pos.y; r0.z <- pos.z

#line 85
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r1.xyz, vThreadID.x, l(0), t1.xyzx  // r1.x <- axisX.x; r1.y <- axisX.y; r1.z <- axisX.z

#line 66
mul r2.xyz, cb0[0].xyzx, l(0.017453, 0.017453, 0.017453, 0.000000)

#line 54
sincos r2.xyz, r3.xyz, r2.xyzx  // r2.x <- s.x; r2.y <- s.y; r2.z <- s.z; r3.x <- c.x; r3.y <- c.y; r3.z <- c.z

#line 55
mul r0.w, r2.x, r3.y
mul r0.w, r2.z, r0.w
mad r4.z, -r3.z, r2.y, r0.w  // r4.z <- <GetEulerMatrix_id53 return value>._m20
mul r5.xy, r2.yzyy, r2.xyxx
mul r6.xyz, r3.zzyz, r3.yxxy  // r6.y <- <GetEulerMatrix_id53 return value>._m11; r6.z <- <GetEulerMatrix_id53 return value>._m22
mad r4.x, r5.x, r2.z, r6.x  // r4.x <- <GetEulerMatrix_id53 return value>._m00
mad r5.z, r6.x, r2.x, r5.y  // r5.z <- <GetEulerMatrix_id53 return value>._m21
mul r3.xyzw, r2.yxzz, r3.xzyx  // r3.x <- <GetEulerMatrix_id53 return value>._m02; r3.w <- <GetEulerMatrix_id53 return value>._m10

#line 67
mov r4.y, r3.w
dp3 r7.x, r1.xyzx, r4.xyzx  // r7.x <- rot3x3._m00

#line 55
mad r5.x, r3.y, r2.y, -r3.z  // r5.x <- <GetEulerMatrix_id53 return value>._m01
mov r3.y, -r2.x  // r3.y <- <GetEulerMatrix_id53 return value>._m12

#line 67
mov r5.y, r6.y
mov r3.z, r6.z
dp3 r7.y, r1.xyzx, r5.xyzx  // r7.y <- rot3x3._m01
dp3 r7.z, r1.xyzx, r3.xyzx  // r7.z <- rot3x3._m02

#line 73
dp3 r1.x, r7.xyzx, cb0[1].xyzx

#line 86
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r2.xyz, vThreadID.x, l(0), t2.xyzx  // r2.x <- axisY.x; r2.y <- axisY.y; r2.z <- axisY.z

#line 67
dp3 r6.x, r2.xyzx, r4.xyzx  // r6.x <- rot3x3._m10
dp3 r6.y, r2.xyzx, r5.xyzx  // r6.y <- rot3x3._m11
dp3 r6.z, r2.xyzx, r3.xyzx  // r6.z <- rot3x3._m12

#line 73
dp3 r1.y, r6.xyzx, cb0[1].xyzx

#line 87
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r2.xyz, vThreadID.x, l(0), t3.xyzx  // r2.x <- axisZ.x; r2.y <- axisZ.y; r2.z <- axisZ.z

#line 67
dp3 r4.x, r2.xyzx, r4.xyzx  // r4.x <- rot3x3._m20
dp3 r4.y, r2.xyzx, r5.xyzx  // r4.y <- rot3x3._m21
dp3 r4.z, r2.xyzx, r3.xyzx  // r4.z <- rot3x3._m22

#line 73
dp3 r1.z, r4.xyzx, cb0[1].xyzx
add r0.xyz, r0.xyzx, -r1.xyzx  // r0.x <- translation.x; r0.y <- translation.y; r0.z <- translation.z

#line 92
mov r1.w, r0.x

#line 88
ld_structured_indexable(structured_buffer, stride=12)(mixed,mixed,mixed,mixed) r2.xyz, vThreadID.x, l(0), t4.xyzx  // r2.x <- size.x; r2.y <- size.y; r2.z <- size.z

#line 70
mul r3.xyz, r2.xxxx, r7.yxzy  // r3.x <- m._m01; r3.y <- m._m00; r3.z <- m._m02

#line 92
mov r1.x, r3.y

#line 71
mul r5.xyz, r2.yyyy, r6.xzyx  // r5.x <- m._m10; r5.y <- m._m12; r5.z <- m._m11

#line 92
mov r1.y, r5.x

#line 72
mul r8.xyz, r2.zzzz, r4.xyzx  // r8.x <- m._m20; r8.y <- m._m21; r8.z <- m._m22

#line 64
div r2.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r2.xyzx  // r2.x <- inverseScaling.x; r2.y <- inverseScaling.y; r2.z <- inverseScaling.z

#line 92
mov r1.z, r8.x
store_structured u0.xyzw, vThreadID.x, l(0), r1.xyzw
mov r5.x, r3.z
mov r3.y, r5.z
mov r3.z, r8.y
mov r5.z, r8.z
mov r3.w, r0.y
store_structured u0.xyzw, vThreadID.x, l(16), r3.xyzw
mov r5.w, r0.z
store_structured u0.xyzw, vThreadID.x, l(32), r5.xyzw
mov r1.xyzw, l(0,0,0,1.000000)
store_structured u0.xyzw, vThreadID.x, l(48), r1.xyzw

#line 76
dp3 r7.w, -r0.xyzx, r7.xyzx  // r7.w <- im._m30

#line 77
mul r1.xyzw, r2.xxxx, r7.xyzw  // r1.x <- im._m00; r1.y <- im._m10; r1.z <- im._m20; r1.w <- im._m30

#line 93
store_structured u1.xyzw, vThreadID.x, l(0), r1.xyzw

#line 76
dp3 r6.w, -r0.xyzx, r6.xyzx  // r6.w <- im._m31
dp3 r4.w, -r0.xyzx, r4.xyzx  // r4.w <- im._m32

#line 79
mul r0.xyzw, r2.zzzz, r4.xyzw  // r0.x <- im._m02; r0.y <- im._m12; r0.z <- im._m22; r0.w <- im._m32

#line 78
mul r1.xyzw, r2.yyyy, r6.xyzw  // r1.x <- im._m01; r1.y <- im._m11; r1.z <- im._m21; r1.w <- im._m31

#line 93
store_structured u1.xyzw, vThreadID.x, l(16), r1.xyzw
store_structured u1.xyzw, vThreadID.x, l(32), r0.xyzw
store_structured u1.xyzw, vThreadID.x, l(48), l(0,0,0,1.000000)

#line 108
ret 
// Approximately 63 instruction slots used
***************************
*************************/
static const float PI_id11 = 3.1415926535897;
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
struct Matrix4x4 
{
    float4x4 Matrix;
};
struct Ray 
{
    float3 ro, rd, sp, sn;
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
    float3 Angles_id20;
    float3 Pivot_id21;
};
StructuredBuffer<float3> Position_id22;
StructuredBuffer<float3> AxisX_id23;
StructuredBuffer<float3> AxisY_id24;
StructuredBuffer<float3> AxisZ_id25;
StructuredBuffer<float3> Size_id26;
RWStructuredBuffer<Transform> InstanceWorld_id27;
RWStructuredBuffer<Transform> InstanceWorldInverse_id28;
float4x4 as4x4_id43(float3x3 m)
{
    float4x4 newM = { m._11, m._12, m._13, 0, m._21, m._22, m._23, 0, m._31, m._32, m._33, 0, 0, 0, 0, 1};
    return newM;
}
float3x3 GetEulerMatrix_id53(float3 angles)
{
    float3 s, c;
    sincos(angles, s, c);
    return float3x3(c.y * c.z + s.x * s.y * s.z, c.z * s.x * s.y - c.y * s.z, c.x * s.y, c.x * s.z, c.x * c.z, -s.x, -c.z * s.y + c.y * s.x * s.z, c.y * c.z * s.x + s.y * s.z, c.x * c.y);
}
float4x4 identity4x4_id41()
{
    float4x4 m = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
    return m;
}
void ParticleWorldMatrix_id81(float3 axisX, float3 axisY, float3 axisZ, float3 angles, float3 pivot, float3 scaling, float3 translation, inout float4x4 m, inout float4x4 im)
{
    float3 inverseScaling = 1.0 / scaling;
    im = identity4x4_id41();
    float3x3 rot3x3 = GetEulerMatrix_id53(radians(angles));
    rot3x3 = mul(float3x3(axisX, axisY, axisZ), rot3x3);
    m = as4x4_id43(rot3x3);
    float4x4 inverseRotation = transpose(m);
    m[0] *= scaling.x;
    m[1] *= scaling.y;
    m[2] *= scaling.z;
    translation -= mul(rot3x3, pivot);
    m[3].xyz = translation.xyz;
    im[3].xyz = -translation.xyz;
    im = mul(im, inverseRotation);
    im._11_21_31_41 *= inverseScaling.x;
    im._12_22_32_42 *= inverseScaling.y;
    im._13_23_33_43 *= inverseScaling.z;
}
void Compute_id82(inout CS_STREAMS streams)
{
    uint index = streams.DispatchThreadId_id1.x;
    float3 pos = Position_id22[index];
    float3 axisX = AxisX_id23[index];
    float3 axisY = AxisY_id24[index];
    float3 axisZ = AxisZ_id25[index];
    float3 size = Size_id26[index];
    float4x4 world;
    float4x4 worldInverse;
    ParticleWorldMatrix_id81(axisX, axisY, axisZ, Angles_id20, Pivot_id21, size, pos, world, worldInverse);
    InstanceWorld_id27[index].Matrix = world;
    InstanceWorldInverse_id28[index].Matrix = worldInverse;
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
    Compute_id82(streams);
}
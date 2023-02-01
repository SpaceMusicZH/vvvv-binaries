/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin XeGTAO_GenerateNormals_ComputeFX
***************************
******  Resources    ******
***************************
@R    PointClampSampler_id12 => XeGTAO_Common.PointClampSampler [Stage: Compute, Slot: (0-0)]
@R    GTAOConsts_id11 => XeGTAO_Common.GTAOConsts [Stage: Compute, Slot: (0-0)]
@R    SrcRawDepth_id14 => XeGTAO_GenerateNormals_ComputeFX.SrcRawDepth [Stage: Compute, Slot: (1-1)]
@R    OutNormalmap_id15 => XeGTAO_GenerateNormals_ComputeFX.OutNormalmap [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    XeGTAO_GenerateNormals_ComputeFX => 5f729c89b93de5b6ecf75c0d6a6ceb2c
@S    XeGTAO_Common => 5520834cac689aa7bb9df583ac43c08d
***************************
*****     Stages      *****
***************************
@G    Compute => 4cfb67d1159e512e854a2e8a4e600470
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// Resource bind info for GTAOConsts_id11
// {
//
//   struct GTAOConstants
//   {
//       
//       int2 ViewportSize;             // Offset:    0
//       float2 ViewportPixelSize;      // Offset:    8
//       float2 DepthUnpackConsts;      // Offset:   16
//       float2 CameraTanHalfFOV;       // Offset:   24
//       float2 NDCToViewMul;           // Offset:   32
//       float2 NDCToViewAdd;           // Offset:   40
//       float2 NDCToViewMul_x_PixelSize;// Offset:   48
//       float EffectRadius;            // Offset:   56
//       float EffectFalloffRange;      // Offset:   60
//       float RadiusMultiplier;        // Offset:   64
//       float Padding0;                // Offset:   68
//       float FinalValuePower;         // Offset:   72
//       float DenoiseBlurBeta;         // Offset:   76
//       float SampleDistributionPower; // Offset:   80
//       float ThinOccluderCompensation;// Offset:   84
//       float DepthMIPSamplingOffset;  // Offset:   88
//       int NoiseIndex;                // Offset:   92
//
//   } $Element;                        // Offset:    0 Size:    96
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PointClampSampler_id12            sampler      NA          NA             s0      1 
// GTAOConsts_id11                   texture  struct         r/o             t0      1 
// SrcRawDepth_id14                  texture   float          2d             t1      1 
// OutNormalmap_id15                     UAV  float4          2d             u0      1 
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
dcl_sampler s0, mode_default
dcl_resource_structured t0, 96
dcl_resource_texture2d (float,float,float,float) t1
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_input vThreadID.xy
dcl_temps 8
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 69 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_15043e72d0778ba67d6113b880f0e6aa.hlsl"
ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r0.xyzw, l(0), l(32), t0.xyzw

#line 90
utof r1.xy, vThreadID.xyxx
add r2.xyzw, r1.xyxy, l(0.500000, 0.500000, 0.500000, 0.500000)

#line 85
ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r3.xyzw, l(0), l(8), t0.xyzw  // r3.z <- depthLinearizeMul; r3.w <- depthLinearizeAdd

#line 90
mul r2.xyzw, r2.xyzw, r3.xyxy  // r2.z <- normalizedScreenPos.x; r2.w <- normalizedScreenPos.y

#line 101
mad r4.xyzw, r3.xyxy, l(-1.000000, 0.000000, 1.000000, 0.000000), r2.zwzw  // r4.z <- screenPos.x; r4.w <- screenPos.y

#line 69
mad r4.xyzw, r0.xyxy, r4.xyzw, r0.zwzw

#line 91
mul r1.xy, r1.xyxx, r3.xyxx

#line 92
gather4_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r1.zw, r1.xyxx, t1.ywxz, s0.x  // r1.z <- valuesBR.x; r1.w <- valuesBR.z

#line 91
gather4_indexable(texture2d)(float,float,float,float) r5.xyz, r1.xyxx, t1.xyzw, s0.x  // r5.x <- valuesUL.x; r5.y <- valuesUL.y; r5.z <- valuesUL.z

#line 86
add r5.xyz, r3.wwww, -r5.yxzy
div r5.xyz, r3.zzzz, r5.xyzx  // r5.z <- <XeGTAO_ScreenSpaceToViewSpaceDepth_id7 return value>
add r1.xy, -r1.wzww, r3.wwww
div r1.xw, r3.zzzz, r1.xxxy  // r1.w <- <XeGTAO_ScreenSpaceToViewSpaceDepth_id7 return value>

#line 69
mul r1.yz, r1.xxxx, r4.zzwz  // r1.y <- ret.x; r1.z <- ret.y; r1.y <- ret.x; r1.z <- ret.y
mul r3.xz, r4.yyxy, r5.yyyy  // r3.x <- ret.y; r3.z <- ret.x; r3.x <- ret.y; r3.z <- ret.x
mad r4.xy, r0.xyxx, r2.zwzz, r0.zwzz
mul r4.yz, r5.xxxx, r4.xxyx  // r4.y <- ret.x; r4.z <- ret.y

#line 58
mov r4.x, r5.x

#line 59
add r6.xyz, r1.xyzx, -r4.xyzx
dp3 r3.w, r6.xyzx, r6.xyzx
rsq r3.w, r3.w
mul r6.xyz, r3.wwww, r6.xyzx  // r6.x <- pixRPos.z; r6.y <- pixRPos.x; r6.z <- pixRPos.y

#line 102
ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r7.xy, l(0), l(8), t0.xyxx

#line 103
mad r2.xyzw, r7.xyxy, l(0.000000, -1.000000, 0.000000, 1.000000), r2.xyzw

#line 69
mad r0.xyzw, r0.xyxy, r2.xyzw, r0.zwzw
mul r2.yz, r5.zzzz, r0.xxyx  // r2.y <- ret.x; r2.z <- ret.y; r2.y <- ret.x; r2.z <- ret.y
mul r0.yz, r1.wwww, r0.zzwz  // r0.y <- ret.x; r0.z <- ret.y

#line 75
mov r1.yz, r5.yyzy

#line 60
mov r2.x, r1.z
add r2.xyz, -r4.xyzx, r2.xyzx
dp3 r0.w, r2.xyzx, r2.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- pixTPos.z; r2.y <- pixTPos.x; r2.z <- pixTPos.y

#line 62
mul r5.yzw, r6.zzxy, r2.xxyz
mad r5.yzw, r2.zzxy, r6.xxyz, -r5.yyzw

#line 75
add r7.xyzw, -r5.xxxx, r1.yzxw  // r7.x <- edgesLRTB.x; r7.y <- edgesLRTB.z; r7.z <- edgesLRTB.y; r7.w <- edgesLRTB.w

#line 80
mul r0.w, r4.x, l(0.011000)

#line 61
mov r0.x, r1.w
add r0.xyz, -r4.xyzx, r0.xyzx

#line 58
mov r3.y, r1.y
add r1.xyz, r3.xyzx, -r4.zxyz

#line 77
add r3.xy, -r7.xyxx, r7.zwzz
mul r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r3.x <- slopeLR; r3.y <- slopeTB

#line 78
mov r3.zw, -r3.xxxy
add r3.xyzw, r3.xyzw, r7.xyzw  // r3.x <- edgesLRTBSlopeAdjusted.x; r3.y <- edgesLRTBSlopeAdjusted.z; r3.z <- edgesLRTBSlopeAdjusted.y; r3.w <- edgesLRTBSlopeAdjusted.w

#line 79
min r3.xyzw, |r3.xyzw|, |r7.xyzw|  // r3.x <- edgesLRTB.x; r3.y <- edgesLRTB.z; r3.z <- edgesLRTB.y; r3.w <- edgesLRTB.w

#line 80
div r3.xyzw, r3.xyzw, r0.wwww
add_sat r3.xyzw, -r3.xyzw, l(1.250000, 1.250000, 1.250000, 1.250000)  // r3.x <- <XeGTAO_CalculateEdges_id8 return value>.x; r3.y <- <XeGTAO_CalculateEdges_id8 return value>.z; r3.z <- <XeGTAO_CalculateEdges_id8 return value>.y; r3.w <- <XeGTAO_CalculateEdges_id8 return value>.w

#line 57
mad r3.xyzw, r3.xyzw, r3.yzwx, l(0.010000, 0.010000, 0.010000, 0.010000)
min r3.xyzw, r3.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)  // r3.x <- acceptedNormals.x; r3.y <- acceptedNormals.y; r3.z <- acceptedNormals.z; r3.w <- acceptedNormals.w

#line 62
mul r4.xyz, r5.yzwy, r3.yyyy

#line 58
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- pixLPos.y; r1.y <- pixLPos.z; r1.z <- pixLPos.x

#line 62
mul r5.xyz, r2.zxyz, r1.yzxy
mad r2.xyz, r1.xyzx, r2.xyzx, -r5.xyzx
mad r2.xyz, r3.xxxx, r2.xyzx, r4.xyzx

#line 61
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- pixBPos.z; r0.y <- pixBPos.x; r0.z <- pixBPos.y

#line 62
mul r4.xyz, r0.zxyz, r6.xyzx
mad r4.xyz, r6.zxyz, r0.xyzx, -r4.xyzx
mad r2.xyz, r3.zzzz, r4.xyzx, r2.xyzx
mul r3.xyz, r1.xyzx, r0.xyzx
mad r0.xyz, r0.zxyz, r1.yzxy, -r3.xyzx
mad r0.xyz, r3.wwww, r0.xyzx, r2.xyzx  // r0.x <- pixelNormal.x; r0.y <- pixelNormal.y; r0.z <- pixelNormal.z

#line 63
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx

#line 110
mov r0.w, l(1.000000)
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw

#line 125
ret 
// Approximately 73 instruction slots used
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
typedef float AOTermType;
struct GTAOConstants 
{
    int2 ViewportSize;
    float2 ViewportPixelSize;
    float2 DepthUnpackConsts;
    float2 CameraTanHalfFOV;
    float2 NDCToViewMul;
    float2 NDCToViewAdd;
    float2 NDCToViewMul_x_PixelSize;
    float EffectRadius;
    float EffectFalloffRange;
    float RadiusMultiplier;
    float Padding0;
    float FinalValuePower;
    float DenoiseBlurBeta;
    float SampleDistributionPower;
    float ThinOccluderCompensation;
    float DepthMIPSamplingOffset;
    int NoiseIndex;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
};
cbuffer Globals 
{
    groupshared float g_scratchDepths_id13[8][8];
};
SamplerState PointClampSampler_id12 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = clamp;
    AddressV = clamp;
};
StructuredBuffer<GTAOConstants> GTAOConsts_id11;
Texture2D<float> SrcRawDepth_id14;
RWTexture2D<float4> OutNormalmap_id15;
float3 XeGTAO_CalculateNormal_id10(const float4 edgesLRTB, float3 pixCenterPos, float3 pixLPos, float3 pixRPos, float3 pixTPos, float3 pixBPos)
{
    float4 acceptedNormals = saturate(float4(edgesLRTB.x * edgesLRTB.z, edgesLRTB.z * edgesLRTB.y, edgesLRTB.y * edgesLRTB.w, edgesLRTB.w * edgesLRTB.x) + 0.01);
    pixLPos = normalize(pixLPos - pixCenterPos);
    pixRPos = normalize(pixRPos - pixCenterPos);
    pixTPos = normalize(pixTPos - pixCenterPos);
    pixBPos = normalize(pixBPos - pixCenterPos);
    float3 pixelNormal = acceptedNormals.x * cross(pixLPos, pixTPos) + +acceptedNormals.y * cross(pixTPos, pixRPos) + +acceptedNormals.z * cross(pixRPos, pixBPos) + +acceptedNormals.w * cross(pixBPos, pixLPos);
    pixelNormal = normalize(pixelNormal);
    return pixelNormal;
}
float3 XeGTAO_ComputeViewspacePosition_id6(const float2 screenPos, const float viewspaceDepth, const GTAOConstants consts)
{
    float3 ret;
    ret.xy = (consts.NDCToViewMul * screenPos.xy + consts.NDCToViewAdd) * viewspaceDepth;
    ret.z = viewspaceDepth;
    return ret;
}
float4 XeGTAO_CalculateEdges_id8(const float centerZ, const float leftZ, const float rightZ, const float topZ, const float bottomZ)
{
    float4 edgesLRTB = float4(leftZ, rightZ, topZ, bottomZ) - (float)centerZ;
    float slopeLR = (edgesLRTB.y - edgesLRTB.x) * 0.5;
    float slopeTB = (edgesLRTB.w - edgesLRTB.z) * 0.5;
    float4 edgesLRTBSlopeAdjusted = edgesLRTB + float4(slopeLR, -slopeLR, slopeTB, -slopeTB);
    edgesLRTB = min(abs(edgesLRTB), abs(edgesLRTBSlopeAdjusted));
    return float4(saturate((1.25 - edgesLRTB / (centerZ * 0.011))));
}
float XeGTAO_ScreenSpaceToViewSpaceDepth_id7(const float screenDepth, const GTAOConstants consts)
{
    float depthLinearizeMul = consts.DepthUnpackConsts.x;
    float depthLinearizeAdd = consts.DepthUnpackConsts.y;
    return depthLinearizeMul / (depthLinearizeAdd - screenDepth);
}
float3 XeGTAO_ComputeViewspaceNormal_id26(const uint2 pixCoord, const GTAOConstants consts, Texture2D<float> sourceNDCDepth, SamplerState depthSampler)
{
    float2 normalizedScreenPos = (pixCoord + 0.5.xx) * consts.ViewportPixelSize;
    float4 valuesUL = sourceNDCDepth.GatherRed(depthSampler, float2(pixCoord * consts.ViewportPixelSize));
    float4 valuesBR = sourceNDCDepth.GatherRed(depthSampler, float2(pixCoord * consts.ViewportPixelSize), int2(1, 1));
    float viewspaceZ = XeGTAO_ScreenSpaceToViewSpaceDepth_id7(valuesUL.y, consts);
    const float pixLZ = XeGTAO_ScreenSpaceToViewSpaceDepth_id7(valuesUL.x, consts);
    const float pixTZ = XeGTAO_ScreenSpaceToViewSpaceDepth_id7(valuesUL.z, consts);
    const float pixRZ = XeGTAO_ScreenSpaceToViewSpaceDepth_id7(valuesBR.z, consts);
    const float pixBZ = XeGTAO_ScreenSpaceToViewSpaceDepth_id7(valuesBR.x, consts);
    float4 edgesLRTB = XeGTAO_CalculateEdges_id8((float)viewspaceZ, (float)pixLZ, (float)pixRZ, (float)pixTZ, (float)pixBZ);
    float3 CENTER = XeGTAO_ComputeViewspacePosition_id6(normalizedScreenPos, viewspaceZ, consts);
    float3 LEFT = XeGTAO_ComputeViewspacePosition_id6(normalizedScreenPos + float2(-1, 0) * consts.ViewportPixelSize, pixLZ, consts);
    float3 RIGHT = XeGTAO_ComputeViewspacePosition_id6(normalizedScreenPos + float2(1, 0) * consts.ViewportPixelSize, pixRZ, consts);
    float3 TOP = XeGTAO_ComputeViewspacePosition_id6(normalizedScreenPos + float2(0, -1) * consts.ViewportPixelSize, pixTZ, consts);
    float3 BOTTOM = XeGTAO_ComputeViewspacePosition_id6(normalizedScreenPos + float2(0, 1) * consts.ViewportPixelSize, pixBZ, consts);
    return XeGTAO_CalculateNormal_id10(edgesLRTB, CENTER, LEFT, RIGHT, TOP, BOTTOM);
}
void Compute_id27(inout CS_STREAMS streams)
{
    GTAOConstants consts = GTAOConsts_id11[0];
    float2 pixCoord = streams.DispatchThreadId_id1.xy;
    OutNormalmap_id15[pixCoord] = float4(XeGTAO_ComputeViewspaceNormal_id26(pixCoord, GTAOConsts_id11[0], SrcRawDepth_id14, PointClampSampler_id12), 1);
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
    Compute_id27(streams);
}
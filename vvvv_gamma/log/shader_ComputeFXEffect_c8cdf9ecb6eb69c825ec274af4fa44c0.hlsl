/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin XeGTAO_Denoise_ComputeFX
***************************
******  Resources    ******
***************************
@R    PointClampSampler_id12 => XeGTAO_Common.PointClampSampler [Stage: Compute, Slot: (0-0)]
@R    GTAOConsts_id11 => XeGTAO_Common.GTAOConsts [Stage: Compute, Slot: (0-0)]
@R    SrcWorkingAOTerm_id14 => XeGTAO_Denoise_ComputeFX.SrcWorkingAOTerm [Stage: Compute, Slot: (1-1)]
@R    SrcWorkingEdges_id15 => XeGTAO_Denoise_ComputeFX.SrcWorkingEdges [Stage: Compute, Slot: (2-2)]
@R    OutFinalAOTerm_id16 => XeGTAO_Denoise_ComputeFX.OutFinalAOTerm [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    XeGTAO_Denoise_ComputeFX => 111a23dafc2df5e4489886657d24966b
@S    XeGTAO_Common => 5520834cac689aa7bb9df583ac43c08d
***************************
*****     Stages      *****
***************************
@G    Compute => 1b6f5005e97166d98d36698f727866f1
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
// SrcWorkingAOTerm_id14             texture    uint          2d             t1      1 
// SrcWorkingEdges_id15              texture   float          2d             t2      1 
// OutFinalAOTerm_id16                   UAV  float4          2d             u0      1 
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
dcl_resource_texture2d (uint,uint,uint,uint) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_input vThreadID.xy
dcl_temps 13
dcl_indexableTemp x0[4], 4
dcl_indexableTemp x1[4], 4
dcl_indexableTemp x2[4], 4
dcl_indexableTemp x3[4], 4
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 148 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_c8cdf9ecb6eb69c825ec274af4fa44c0.hlsl"
ishl r0.yz, vThreadID.xxyx, l(0, 1, 0, 0)  // r0.y <- pixCoordBase.x; r0.z <- pixCoordBase.y

#line 85
ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r0.w, l(0), l(76), t0.xxxx  // r0.w <- blurAmount

#line 93
utof r1.xy, r0.yzyy
ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r1.zw, l(0), l(8), t0.xxxy
mul r1.xy, r1.zwzz, r1.xyxx  // r1.x <- gatherCenter.x; r1.y <- gatherCenter.y

#line 94
gather4_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0.x  // r2.x <- edgesQ0.x; r2.y <- edgesQ0.y; r2.z <- edgesQ0.z

#line 95
gather4_aoffimmi_indexable(2,0,0)(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t2.xywz, s0.x  // r3.x <- edgesQ1.x; r3.y <- edgesQ1.y; r3.z <- edgesQ1.w

#line 96
gather4_aoffimmi_indexable(1,2,0)(texture2d)(float,float,float,float) r1.zw, r1.xyxx, t2.xyzw, s0.x  // r1.z <- edgesQ2.z; r1.w <- edgesQ2.w

#line 98
gather4_indexable(texture2d)(uint,uint,uint,uint) r4.xyzw, r1.xyxx, t1.xyzw, s0.x

#line 80
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, l(4)
  breakc_nz r3.w

#line 81
  ineg r3.w, r2.w
  ult r5.xyz, r2.wwww, l(1, 2, 3, 0)
  and r6.y, r3.w, r5.y
  iadd r7.xy, r2.wwww, l(-3, 1, 0, 0)  // r7.y <- i
  movc r6.z, r5.y, l(0), r7.x
  ieq r6.w, r5.z, l(0)
  mov r6.x, r5.x
  and r5.xyzw, r4.xyzw, r6.xyzw
  or r5.xy, r5.ywyy, r5.xzxx
  or r3.w, r5.y, r5.x
  utof r3.w, r3.w
  mul r3.w, r3.w, l(0.003922)
  mov x0[r2.w + 0].x, r3.w
  mov r2.w, r7.y  // r2.w <- i
endloop 

#line 98
mov r2.w, x0[0].x
mov r3.w, x0[1].x
mov r4.x, x0[2].x
mov r4.y, x0[3].x

#line 100
gather4_aoffimmi_indexable(2,0,0)(texture2d)(uint,uint,uint,uint) r5.xyzw, r1.xyxx, t1.xyzw, s0.x

#line 80
mov r4.z, l(0)  // r4.z <- i
loop 
  ige r4.w, r4.z, l(4)
  breakc_nz r4.w

#line 81
  ineg r4.w, r4.z
  ult r6.xyz, r4.zzzz, l(1, 2, 3, 0)
  and r7.y, r4.w, r6.y
  iadd r8.xy, r4.zzzz, l(-3, 1, 0, 0)  // r8.y <- i
  movc r7.z, r6.y, l(0), r8.x
  ieq r7.w, r6.z, l(0)
  mov r7.x, r6.x
  and r6.xyzw, r5.xyzw, r7.xyzw
  or r6.xy, r6.ywyy, r6.xzxx
  or r4.w, r6.y, r6.x
  utof r4.w, r4.w
  mul r4.w, r4.w, l(0.003922)
  mov x1[r4.z + 0].x, r4.w
  mov r4.z, r8.y  // r4.z <- i
endloop 

#line 100
mov r4.z, x1[0].x
mov r4.w, x1[1].x
mov r5.x, x1[2].x
mov r5.y, x1[3].x

#line 102
gather4_aoffimmi_indexable(0,2,0)(texture2d)(uint,uint,uint,uint) r6.xyzw, r1.xyxx, t1.xyzw, s0.x

#line 80
mov r5.z, l(0)  // r5.z <- i
loop 
  ige r5.w, r5.z, l(4)
  breakc_nz r5.w

#line 81
  ineg r5.w, r5.z
  ult r7.xyz, r5.zzzz, l(1, 2, 3, 0)
  and r8.y, r5.w, r7.y
  iadd r9.xy, r5.zzzz, l(-3, 1, 0, 0)  // r9.y <- i
  movc r8.z, r7.y, l(0), r9.x
  ieq r8.w, r7.z, l(0)
  mov r8.x, r7.x
  and r7.xyzw, r6.xyzw, r8.xyzw
  or r7.xy, r7.ywyy, r7.xzxx
  or r5.w, r7.y, r7.x
  utof r5.w, r5.w
  mul r5.w, r5.w, l(0.003922)
  mov x2[r5.z + 0].x, r5.w
  mov r5.z, r9.y  // r5.z <- i
endloop 

#line 102
mov r5.z, x2[2].x
mov r5.w, x2[3].x

#line 104
gather4_aoffimmi_indexable(2,2,0)(texture2d)(uint,uint,uint,uint) r6.xyzw, r1.xyxx, t1.xyzw, s0.x

#line 80
mov r1.x, l(0)  // r1.x <- i
loop 
  ige r1.y, r1.x, l(4)
  breakc_nz r1.y

#line 81
  ineg r1.y, r1.x
  ult r7.xyz, r1.xxxx, l(1, 2, 3, 0)
  and r8.y, r1.y, r7.y
  iadd r9.xy, r1.xxxx, l(-3, 1, 0, 0)  // r9.y <- i
  movc r8.z, r7.y, l(0), r9.x
  ieq r8.w, r7.z, l(0)
  mov r8.x, r7.x
  and r7.xyzw, r6.xyzw, r8.xyzw
  or r7.xy, r7.ywyy, r7.xzxx
  or r1.y, r7.y, r7.x
  utof r1.y, r1.y
  mul r1.y, r1.y, l(0.003922)
  mov x3[r1.x + 0].x, r1.y
  mov r1.x, r9.y  // r1.x <- i
endloop 

#line 104
mov r1.x, x3[2].x
mov r1.y, x3[3].x

#line 59
mov r6.w, l(1.000000)

#line 106
mov r7.x, l(0)  // r7.x <- side
loop 
  ige r7.y, r7.x, l(2)
  breakc_nz r7.y

#line 108
  iadd r0.x, r0.y, r7.x  // r0.x <- pixCoord.x

#line 109
  movc r7.y, r7.x, r2.y, r2.x

#line 69
  mul r7.y, r7.y, l(255.500000)
  ftou r7.y, r7.y  // r7.y <- packedVal

#line 73
  ubfe r7.zw, l(0, 0, 2, 2), l(0, 0, 4, 2), r7.yyyy
  utof r7.zw, r7.zzzw

#line 74
  and r7.y, r7.y, l(3)
  utof r7.y, r7.y

#line 73
  mul r7.yzw, r7.yyzw, l(0.000000, 0.333333, 0.333333, 0.333333)  // r7.y <- edgesLRTB.w; r7.z <- edgesLRTB.y; r7.w <- edgesLRTB.z

#line 113
  movc r8.xy, r7.xxxx, r3.zxzz, r2.zyzz

#line 69
  mul r8.xy, r8.xyxx, l(255.500000, 255.500000, 0.000000, 0.000000)
  ftou r8.xy, r8.xyxx  // r8.y <- packedVal

#line 72
  ubfe r9.xyzw, l(2, 2, 2, 2), l(6, 4, 6, 4), r8.xxyy
  utof r9.xyzw, r9.xyzw
  mul r8.zw, r9.xxxy, l(0.000000, 0.000000, 0.333333, 0.333333)  // r8.z <- edgesLRTB.x; r8.w <- edgesLRTB.y; r8.z <- edgesLRTB.x; r8.w <- edgesLRTB.y

#line 74
  and r9.xy, r8.xyxx, l(3, 3, 0, 0)
  utof r9.xy, r9.xyxx
  mul r8.x, r9.x, l(0.333333)  // r8.x <- edgesLRTB.w; r8.x <- edgesLRTB.w

#line 111
  movc r9.x, r7.x, r3.y, r3.x  // r9.x <- _packedVal

#line 69
  mul r9.x, r9.x, l(255.500000)
  ftou r9.x, r9.x  // r9.x <- packedVal; r9.x <- packedVal

#line 73
  ubfe r10.xy, l(2, 2, 0, 0), l(6, 2, 0, 0), r9.xxxx
  utof r10.xy, r10.xyxx

#line 74
  and r9.x, r9.x, l(3)
  utof r9.x, r9.x
  mul r9.x, r9.x, l(0.333333)  // r9.x <- edgesLRTB.w; r9.x <- edgesLRTB.w

#line 129
  movc r10.zw, r7.xxxx, r1.zzzx, r1.wwwy  // r10.w <- ssaoValueBR; r10.z <- _packedVal; r10.z <- _packedVal

#line 73
  mul r10.xyz, r10.xyzx, l(0.333333, 0.333333, 255.500000, 0.000000)  // r10.x <- edgesLRTB.x; r10.y <- edgesLRTB.z; r10.x <- edgesLRTB.x; r10.y <- edgesLRTB.z

#line 69
  ftou r10.z, r10.z  // r10.z <- packedVal; r10.z <- packedVal

#line 73
  ubfe r11.xyz, l(2, 2, 2, 0), l(6, 4, 2, 0), r10.zzzz
  utof r11.xyz, r11.xyzx
  mul r11.xyz, r11.xyzx, l(0.333333, 0.333333, 0.333333, 0.000000)  // r11.x <- edgesLRTB.x; r11.y <- edgesLRTB.y; r11.z <- edgesLRTB.z; r11.x <- edgesLRTB.x; r11.y <- edgesLRTB.y; r11.z <- edgesLRTB.z

#line 71
  mul r12.x, r7.z, r9.z

#line 72
  mul r12.y, r9.w, r10.x

#line 73
  ubfe r7.z, l(2), l(2), r8.y
  utof r7.z, r7.z
  mul r12.z, r8.x, r7.z

#line 74
  mul r12.w, r9.y, r11.z

#line 114
  mul r12.xyzw, r12.xyzw, l(0.333333, 0.333333, 0.333333, 0.333333)

#line 117
  dp4 r7.z, r12.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
  add_sat r7.z, -r7.z, l(1.500000)

#line 118
  mad r12.xyzw, r7.zzzz, l(0.333333, 0.333333, 0.333333, 0.333333), r12.xyzw
  min r12.xyzw, r12.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)

#line 120
  mul r8.xy, r8.zwzz, r12.zzzz

#line 119
  mad r7.z, r12.x, r7.w, r8.x
  mul r7.w, r7.z, l(0.425000)

#line 120
  mad r8.x, r12.y, r10.y, r8.y
  mul r8.y, r8.x, l(0.425000)

#line 122
  mul r8.zw, r11.xxxy, r12.wwww

#line 121
  mad r7.y, r12.x, r7.y, r8.z
  mul r8.z, r7.y, l(0.425000)

#line 122
  mad r8.w, r12.y, r9.x, r8.w
  mul r9.x, r8.w, l(0.425000)

#line 123
  movc r9.y, r7.x, r4.z, r3.w  // r9.y <- ssaoValue

#line 124
  movc r9.z, r7.x, r3.w, r2.w  // r9.z <- ssaoValueL

#line 125
  movc r9.w, r7.x, r5.y, r4.x  // r9.w <- ssaoValueT

#line 127
  movc r10.y, r7.x, r1.y, r5.z  // r10.y <- ssaoValueB

#line 126
  movc r10.xz, r7.xxxx, r4.wwxw, r4.zzyz  // r10.x <- ssaoValueR; r10.z <- ssaoValueTL

#line 130
  movc r11.xy, r7.xxxx, r5.xzxx, r5.ywyy  // r11.x <- ssaoValueTR; r11.y <- ssaoValueBL

#line 64
  mul r9.z, r9.z, r12.x
  mad r9.y, r9.y, r0.w, r9.z  // r9.y <- sum

#line 65
  add r9.z, r0.w, r12.x  // r9.z <- sumWeight

#line 64
  mad r9.y, r12.y, r10.x, r9.y

#line 65
  add r9.z, r12.y, r9.z

#line 64
  mad r9.y, r12.z, r9.w, r9.y

#line 65
  add r9.z, r12.z, r9.z

#line 64
  mad r9.y, r12.w, r10.y, r9.y

#line 65
  add r9.z, r12.w, r9.z

#line 64
  mad r7.w, r7.w, r10.z, r9.y  // r7.w <- sum

#line 65
  mad r7.z, r7.z, l(0.425000), r9.z  // r7.z <- sumWeight

#line 64
  mad r7.w, r8.y, r11.x, r7.w

#line 65
  mad r7.z, r8.x, l(0.425000), r7.z

#line 64
  mad r7.w, r8.z, r11.y, r7.w

#line 65
  mad r7.y, r7.y, l(0.425000), r7.z  // r7.y <- sumWeight

#line 64
  mad r7.z, r9.x, r10.w, r7.w  // r7.z <- sum

#line 65
  mad r7.y, r8.w, l(0.425000), r7.y

#line 142
  div r7.y, r7.z, r7.y

#line 58
  mul r6.xyz, r7.yyyy, l(1.500000, 1.500000, 1.500000, 0.000000)  // r6.z <- outputValue

#line 59
  store_uav_typed u0.xyzw, r0.xzzz, r6.xyzw

#line 144
  iadd r7.x, r7.x, l(1)
endloop 

#line 164
ret 
// Approximately 187 instruction slots used
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
Texture2D<uint> SrcWorkingAOTerm_id14;
Texture2D<float> SrcWorkingEdges_id15;
RWTexture2D<float4> OutFinalAOTerm_id16;
void XeGTAO_Output_id23(uint2 pixCoord, RWTexture2D<float4> outputTexture, AOTermType outputValue, const uniform bool finalApply)
{
    outputValue *= (finalApply) ? ((float)(1.5f)) : (1);
    outputTexture[pixCoord.xy] = float4(outputValue.xxx, 1);
}
void XeGTAO_AddSample_id22(AOTermType ssaoValue, float edgeValue, inout AOTermType sum, inout float sumWeight)
{
    float weight = edgeValue;
    sum += (weight * ssaoValue);
    sumWeight += weight;
}
float4 XeGTAO_UnpackEdges_id21(float _packedVal)
{
    uint packedVal = (uint)(_packedVal * 255.5);
    float4 edgesLRTB;
    edgesLRTB.x = float((packedVal >> 6) & 0x03) / 3.0;
    edgesLRTB.y = float((packedVal >> 4) & 0x03) / 3.0;
    edgesLRTB.z = float((packedVal >> 2) & 0x03) / 3.0;
    edgesLRTB.w = float((packedVal >> 0) & 0x03) / 3.0;
    return saturate(edgesLRTB);
}
void XeGTAO_DecodeGatherPartial_id24(const uint4 packedValue, out AOTermType outDecoded[4])
{

    for (int i = 0; i < 4; i++)
        outDecoded[i] = float(packedValue[i]) / float(255.0);
}
void XeGTAO_Denoise_id25(const uint2 pixCoordBase, const GTAOConstants consts, Texture2D<uint> sourceAOTerm, Texture2D<float> sourceEdges, SamplerState texSampler, RWTexture2D<float4> outputTexture, const uniform bool finalApply)
{
    const float blurAmount = (finalApply) ? ((float)consts.DenoiseBlurBeta) : ((float)consts.DenoiseBlurBeta / (float)5.0);
    const float diagWeight = 0.85 * 0.5;
    AOTermType aoTerm[2];
    float4 edgesC_LRTB[2];
    float weightTL[2];
    float weightTR[2];
    float weightBL[2];
    float weightBR[2];
    const float2 gatherCenter = float2(pixCoordBase.x, pixCoordBase.y) * consts.ViewportPixelSize;
    float4 edgesQ0 = sourceEdges.GatherRed(texSampler, gatherCenter, int2(0, 0));
    float4 edgesQ1 = sourceEdges.GatherRed(texSampler, gatherCenter, int2(2, 0));
    float4 edgesQ2 = sourceEdges.GatherRed(texSampler, gatherCenter, int2(1, 2));
    AOTermType visQ0[4];
    XeGTAO_DecodeGatherPartial_id24(sourceAOTerm.GatherRed(texSampler, gatherCenter, int2(0, 0)), visQ0);
    AOTermType visQ1[4];
    XeGTAO_DecodeGatherPartial_id24(sourceAOTerm.GatherRed(texSampler, gatherCenter, int2(2, 0)), visQ1);
    AOTermType visQ2[4];
    XeGTAO_DecodeGatherPartial_id24(sourceAOTerm.GatherRed(texSampler, gatherCenter, int2(0, 2)), visQ2);
    AOTermType visQ3[4];
    XeGTAO_DecodeGatherPartial_id24(sourceAOTerm.GatherRed(texSampler, gatherCenter, int2(2, 2)), visQ3);

    for (int side = 0; side < 2; side++)
    {
        const int2 pixCoord = int2(pixCoordBase.x + side, pixCoordBase.y);
        float4 edgesL_LRTB = XeGTAO_UnpackEdges_id21((side == 0) ? (edgesQ0.x) : (edgesQ0.y));
        float4 edgesT_LRTB = XeGTAO_UnpackEdges_id21((side == 0) ? (edgesQ0.z) : (edgesQ1.w));
        float4 edgesR_LRTB = XeGTAO_UnpackEdges_id21((side == 0) ? (edgesQ1.x) : (edgesQ1.y));
        float4 edgesB_LRTB = XeGTAO_UnpackEdges_id21((side == 0) ? (edgesQ2.w) : (edgesQ2.z));
        edgesC_LRTB[side] = XeGTAO_UnpackEdges_id21((side == 0) ? (edgesQ0.y) : (edgesQ1.x));
        edgesC_LRTB[side] *= float4(edgesL_LRTB.y, edgesR_LRTB.x, edgesT_LRTB.w, edgesB_LRTB.z);
        const float leak_threshold = 2.5;
        const float leak_strength = 0.5;
        float edginess = (saturate(4.0 - leak_threshold - dot(edgesC_LRTB[side], (1).xxxx)) / (4 - leak_threshold)) * leak_strength;
        edgesC_LRTB[side] = saturate(edgesC_LRTB[side] + edginess);
        weightTL[side] = diagWeight * (edgesC_LRTB[side].x * edgesL_LRTB.z + edgesC_LRTB[side].z * edgesT_LRTB.x);
        weightTR[side] = diagWeight * (edgesC_LRTB[side].z * edgesT_LRTB.y + edgesC_LRTB[side].y * edgesR_LRTB.z);
        weightBL[side] = diagWeight * (edgesC_LRTB[side].w * edgesB_LRTB.x + edgesC_LRTB[side].x * edgesL_LRTB.w);
        weightBR[side] = diagWeight * (edgesC_LRTB[side].y * edgesR_LRTB.w + edgesC_LRTB[side].w * edgesB_LRTB.y);
        AOTermType ssaoValue = (side == 0) ? (visQ0[1]) : (visQ1[0]);
        AOTermType ssaoValueL = (side == 0) ? (visQ0[0]) : (visQ0[1]);
        AOTermType ssaoValueT = (side == 0) ? (visQ0[2]) : (visQ1[3]);
        AOTermType ssaoValueR = (side == 0) ? (visQ1[0]) : (visQ1[1]);
        AOTermType ssaoValueB = (side == 0) ? (visQ2[2]) : (visQ3[3]);
        AOTermType ssaoValueTL = (side == 0) ? (visQ0[3]) : (visQ0[2]);
        AOTermType ssaoValueBR = (side == 0) ? (visQ3[3]) : (visQ3[2]);
        AOTermType ssaoValueTR = (side == 0) ? (visQ1[3]) : (visQ1[2]);
        AOTermType ssaoValueBL = (side == 0) ? (visQ2[3]) : (visQ2[2]);
        float sumWeight = blurAmount;
        AOTermType sum = ssaoValue * sumWeight;
        XeGTAO_AddSample_id22(ssaoValueL, edgesC_LRTB[side].x, sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueR, edgesC_LRTB[side].y, sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueT, edgesC_LRTB[side].z, sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueB, edgesC_LRTB[side].w, sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueTL, weightTL[side], sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueTR, weightTR[side], sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueBL, weightBL[side], sum, sumWeight);
        XeGTAO_AddSample_id22(ssaoValueBR, weightBR[side], sum, sumWeight);
        aoTerm[side] = sum / sumWeight;
        XeGTAO_Output_id23(pixCoord, outputTexture, aoTerm[side], finalApply);
    }
}
void Compute_id27(inout CS_STREAMS streams)
{
    const uint2 pixCoordBase = streams.DispatchThreadId_id1.xy * uint2(2, 1);
    XeGTAO_Denoise_id25(pixCoordBase, GTAOConsts_id11[0], SrcWorkingAOTerm_id14, SrcWorkingEdges_id15, PointClampSampler_id12, OutFinalAOTerm_id16, true);
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
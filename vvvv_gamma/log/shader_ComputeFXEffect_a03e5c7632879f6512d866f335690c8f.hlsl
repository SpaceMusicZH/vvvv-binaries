/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin Fluid3DProjectVelocity_Internal_ComputeFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer Globals [Size: 32]
@C    FluidDimensions_id11 => Fluid3DGlobals.FluidDimensions
@C    Timestep_id12 => Fluid3DGlobals.Timestep
@C    Modulate_id18 => Fluid3DProjectVelocity_Internal_ComputeFX.Modulate
***************************
******  Resources    ******
***************************
@R    Texture_ObstGradient_id13 => Fluid3DProjectVelocity_Internal_ComputeFX.Texture_ObstGradient [Stage: Compute, Slot: (0-0)]
@R    Texture_ObstVelocity_id14 => Fluid3DProjectVelocity_Internal_ComputeFX.Texture_ObstVelocity [Stage: Compute, Slot: (1-1)]
@R    Texture_Pressure_id15 => Fluid3DProjectVelocity_Internal_ComputeFX.Texture_Pressure [Stage: Compute, Slot: (2-2)]
@R    Texture_Velocity_id16 => Fluid3DProjectVelocity_Internal_ComputeFX.Texture_Velocity [Stage: Compute, Slot: (3-3)]
@R    Texture_Velocity_RW_id17 => Fluid3DProjectVelocity_Internal_ComputeFX.Texture_Velocity_RW [Stage: Compute, Slot: (0-0)]
@R    Globals => Globals [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    Fluid3DProjectVelocity_Internal_ComputeFX => a8b37bf4effbdb8435bdd6167c5e7bc5
@S    Fluid3DGlobals => fbecbddf8a1fd6a33748892251f2ebdf
***************************
*****     Stages      *****
***************************
@G    Compute => cc09a7b80c1c0afdb0eeadeee51654ad
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
//   float Timestep_id12;               // Offset:   12 Size:     4 [unused]
//   float Modulate_id18;               // Offset:   16 Size:     4
//      = 0x3f800000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Texture_ObstGradient_id13         texture   float          3d             t0      1 
// Texture_ObstVelocity_id14         texture  float3          3d             t1      1 
// Texture_Pressure_id15             texture   float          3d             t2      1 
// Texture_Velocity_id16             texture  float3          3d             t3      1 
// Texture_Velocity_RW_id17              UAV  float3          3d             u0      1 
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
dcl_resource_texture3d (float,float,float,float) t2
dcl_resource_texture3d (float,float,float,float) t3
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 16
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 38 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ComputeFXEffect_a03e5c7632879f6512d866f335690c8f.hlsl"
mov r0.xyz, vThreadID.xyzx
mov r0.w, l(0)
ld_indexable(texture3d)(float,float,float,float) r1.x, r0.xyzw, t0.xyzw
lt r1.x, l(0.900000), r1.x  // r1.x <- <IsBoundaryCell_id3 return value>

#line 44
if_nz r1.x

#line 34
  ld_indexable(texture3d)(float,float,float,float) r1.yzw, r0.xyzw, t1.wxyz  // r1.y <- <GetObstVelocity_id2 return value>.x; r1.z <- <GetObstVelocity_id2 return value>.y; r1.w <- <GetObstVelocity_id2 return value>.z

#line 46
  store_uav_typed u0.xyzw, vThreadID.xyzz, r1.yzwy

#line 48
endif 

#line 49
if_z r1.x

#line 43
  ftou r1.xyz, cb0[0].xyzx  // r1.x <- dim.x; r1.y <- dim.y; r1.z <- dim.z

#line 52
  iadd r2.xyzw, vThreadID.xyxy, l(-1, -1, 1, 1)  // r2.x <- LEFTCELL.x; r2.y <- BOTTOMCELL.y

#line 54
  iadd r1.xyz, r1.xyzx, l(-1, -1, -1, 0)

#line 52
  umin r3.xy, r1.xyxx, r2.zwzz  // r3.x <- RIGHTCELL.x; r3.y <- TOPCELL.y

#line 54
  iadd r4.xz, vThreadID.zzzz, l(1, 0, -1, 0)  // r4.z <- DOWNCELL.z
  umin r1.z, r1.z, r4.x  // r1.z <- UPCELL.z

#line 55
  ld_indexable(texture3d)(float,float,float,float) r5.x, r0.xyzw, t2.xyzw  // r5.x <- pCenter

#line 56
  mov r6.x, r2.x
  mov r6.yzw, r0.yyzw
  ld_indexable(texture3d)(float,float,float,float) r7.x, r6.xyzw, t2.xyzw  // r7.x <- pL

#line 57
  mov r8.x, r3.x
  mov r8.yzw, r6.yyzw
  ld_indexable(texture3d)(float,float,float,float) r9.w, r8.xyzw, t2.yzwx  // r9.w <- pR

#line 58
  mov r2.xzw, r0.xxzw
  ld_indexable(texture3d)(float,float,float,float) r10.x, r2.xyzw, t2.xyzw  // r10.x <- pB

#line 59
  mov r3.xzw, r2.xxzw
  ld_indexable(texture3d)(float,float,float,float) r11.w, r3.xyzw, t2.yzwx  // r11.w <- pT

#line 60
  mov r4.xyw, r0.xyxw
  ld_indexable(texture3d)(float,float,float,float) r12.x, r4.xyzw, t2.xyzw  // r12.x <- pD

#line 61
  mov r1.xyw, r4.xyxw
  ld_indexable(texture3d)(float,float,float,float) r13.w, r1.xyzw, t2.yzwx  // r13.w <- pU

#line 34
  ld_indexable(texture3d)(float,float,float,float) r5.y, r6.xyzw, t1.yxzw  // r5.y <- <GetObstVelocity_id2 return value>.x
  ld_indexable(texture3d)(float,float,float,float) r5.w, r8.xyzw, t1.yzwx  // r5.w <- <GetObstVelocity_id2 return value>.x
  ld_indexable(texture3d)(float,float,float,float) r14.y, r2.xyzw, t1.xyzw  // r14.y <- <GetObstVelocity_id2 return value>.y
  ld_indexable(texture3d)(float,float,float,float) r14.w, r3.xyzw, t1.xzwy  // r14.w <- <GetObstVelocity_id2 return value>.y
  ld_indexable(texture3d)(float,float,float,float) r15.y, r4.xyzw, t1.xzyw  // r15.y <- <GetObstVelocity_id2 return value>.z
  ld_indexable(texture3d)(float,float,float,float) r15.w, r1.xyzw, t1.xywz  // r15.w <- <GetObstVelocity_id2 return value>.z

#line 38
  ld_indexable(texture3d)(float,float,float,float) r6.x, r6.xyzw, t0.xyzw
  lt r6.x, l(0.900000), r6.x  // r6.x <- <IsBoundaryCell_id3 return value>

#line 77
  mov r5.z, l(0)
  mov r7.yz, l(0,0,1.000000,0)
  movc r9.xyz, r6.xxxx, r5.xyzx, r7.xyzx  // r9.x <- pL; r9.y <- obstV.x; r9.z <- vMask.x

#line 38
  ld_indexable(texture3d)(float,float,float,float) r5.y, r8.xyzw, t0.yxzw
  lt r5.y, l(0.900000), r5.y  // r5.y <- <IsBoundaryCell_id3 return value>

#line 83
  movc r6.xyz, r5.yyyy, r5.xwzx, r9.wyzw  // r6.x <- pR; r6.y <- obstV.x; r6.z <- vMask.x

#line 38
  ld_indexable(texture3d)(float,float,float,float) r2.x, r2.xyzw, t0.xyzw
  lt r2.x, l(0.900000), r2.x  // r2.x <- <IsBoundaryCell_id3 return value>

#line 89
  mov r14.xz, r5.xxzx
  mov r10.yz, l(0,0,1.000000,0)
  movc r11.xyz, r2.xxxx, r14.xyzx, r10.xyzx  // r11.x <- pB; r11.y <- obstV.y; r11.z <- vMask.y

#line 38
  ld_indexable(texture3d)(float,float,float,float) r2.x, r3.xyzw, t0.xyzw
  lt r2.x, l(0.900000), r2.x  // r2.x <- <IsBoundaryCell_id3 return value>

#line 95
  movc r2.xyz, r2.xxxx, r14.xwzx, r11.wyzw  // r2.x <- pT; r2.y <- obstV.y; r2.z <- vMask.y

#line 38
  ld_indexable(texture3d)(float,float,float,float) r2.w, r4.xyzw, t0.yzwx
  lt r2.w, l(0.900000), r2.w  // r2.w <- <IsBoundaryCell_id3 return value>

#line 101
  mov r15.xz, r14.xxzx
  mov r12.yz, l(0,0,1.000000,0)
  movc r13.xyz, r2.wwww, r15.xyzx, r12.xyzx  // r13.x <- pD; r13.y <- obstV.z; r13.z <- vMask.z

#line 38
  ld_indexable(texture3d)(float,float,float,float) r1.x, r1.xyzw, t0.xyzw
  lt r1.x, l(0.900000), r1.x  // r1.x <- <IsBoundaryCell_id3 return value>

#line 107
  movc r1.xyz, r1.xxxx, r15.xzwx, r13.wzyw  // r1.x <- pU; r1.z <- obstV.z; r1.y <- vMask.z

#line 108
  ld_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzw, t3.xyzw  // r0.x <- velTex.x; r0.y <- velTex.y; r0.z <- velTex.z

#line 109
  mul r0.w, cb0[1].x, l(0.500000)
  add r3.xw, -r9.xxxx, r6.xxxx
  add r3.y, -r11.x, r2.x
  add r3.z, -r13.x, r1.x
  mad r0.xyzw, -r0.wwww, r3.xyzw, r0.xyzx  // r0.y <- v.y; r0.z <- v.z; r0.w <- v.x

#line 110
  mov r3.xw, r6.zzzz
  mov r3.y, r2.z
  mov r3.z, r1.y
  mov r1.xw, r6.yyyy
  mov r1.y, r2.y
  mad r0.xyzw, r3.xyzw, r0.xyzw, r1.xyzw  // r0.y <- velocity.y; r0.z <- velocity.z; r0.w <- velocity.x

#line 111
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
endif 

#line 126
ret 
// Approximately 75 instruction slots used
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
    float Modulate_id18 = 1.0f;
};
Texture3D<float> Texture_ObstGradient_id13;
Texture3D<float3> Texture_ObstVelocity_id14;
Texture3D<float> Texture_Pressure_id15;
Texture3D<float3> Texture_Velocity_id16;
RWTexture3D<float3> Texture_Velocity_RW_id17;
float3 GetObstVelocity_id2(float3 cellTexCoords)
{
    return Texture_ObstVelocity_id14[cellTexCoords];
}
bool IsBoundaryCell_id3(float3 cellTexCoords)
{
    return (Texture_ObstGradient_id13[cellTexCoords].r > 0.9);
}
void Compute_id4(inout CS_STREAMS streams)
{
    uint3 i = streams.DispatchThreadId_id1;
    uint3 dim = FluidDimensions_id11;
    if (IsBoundaryCell_id3(i))
    {
        Texture_Velocity_RW_id17[i] = GetObstVelocity_id2(i);
        return;
    }
    uint3 LEFTCELL = uint3(max(i.x - 1, 0), i.y, i.z);
    uint3 RIGHTCELL = uint3(min(i.x + 1, dim.x - 1), i.y, i.z);
    uint3 BOTTOMCELL = uint3(i.x, max(i.y - 1, 0), i.z);
    uint3 TOPCELL = uint3(i.x, min(i.y + 1, dim.y - 1), i.z);
    uint3 DOWNCELL = uint3(i.x, i.y, max(i.z - 1, 0));
    uint3 UPCELL = uint3(i.x, i.y, min(i.z + 1, dim.z - 1));
    float pCenter = Texture_Pressure_id15[i];
    float pL = Texture_Pressure_id15[LEFTCELL];
    float pR = Texture_Pressure_id15[RIGHTCELL];
    float pB = Texture_Pressure_id15[BOTTOMCELL];
    float pT = Texture_Pressure_id15[TOPCELL];
    float pD = Texture_Pressure_id15[DOWNCELL];
    float pU = Texture_Pressure_id15[UPCELL];
    float3 velocity;
    float3 obstV = float3(0, 0, 0);
    float3 vMask = float3(1, 1, 1);
    float3 v;
    float3 vLeft = GetObstVelocity_id2(LEFTCELL);
    float3 vRight = GetObstVelocity_id2(RIGHTCELL);
    float3 vBottom = GetObstVelocity_id2(BOTTOMCELL);
    float3 vTop = GetObstVelocity_id2(TOPCELL);
    float3 vDown = GetObstVelocity_id2(DOWNCELL);
    float3 vUp = GetObstVelocity_id2(UPCELL);
    if (IsBoundaryCell_id3(LEFTCELL))
    {
        pL = pCenter;
        obstV.x = vLeft.x;
        vMask.x = 0;
    }
    if (IsBoundaryCell_id3(RIGHTCELL))
    {
        pR = pCenter;
        obstV.x = vRight.x;
        vMask.x = 0;
    }
    if (IsBoundaryCell_id3(BOTTOMCELL))
    {
        pB = pCenter;
        obstV.y = vBottom.y;
        vMask.y = 0;
    }
    if (IsBoundaryCell_id3(TOPCELL))
    {
        pT = pCenter;
        obstV.y = vTop.y;
        vMask.y = 0;
    }
    if (IsBoundaryCell_id3(DOWNCELL))
    {
        pD = pCenter;
        obstV.z = vDown.z;
        vMask.z = 0;
    }
    if (IsBoundaryCell_id3(UPCELL))
    {
        pU = pCenter;
        obstV.z = vUp.z;
        vMask.z = 0;
    }
    float3 velTex = Texture_Velocity_id16[i];
    v = (velTex - (0.5 * Modulate_id18 * float3(pR - pL, pT - pB, pU - pD)));
    velocity = (vMask * v) + obstV;
    Texture_Velocity_RW_id17[i] = velocity;
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
    Compute_id4(streams);
}

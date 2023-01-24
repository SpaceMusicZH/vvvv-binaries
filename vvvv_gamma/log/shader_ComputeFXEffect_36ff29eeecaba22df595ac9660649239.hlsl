/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin DCGenerateOuterCellVertices_ComputeFX [{SDF = Float3ToFloat}]
@P SDF: Float3ToFloat
***************************
****  ConstantBuffers  ****
***************************
cbuffer Globals [Size: 48]
@C    NumberOfVoxels_id17 => SDFVoxelVolume.NumberOfVoxels
@C    VoxelSpacing_id18 => SDFVoxelVolume.VoxelSpacing
@C    VolumeOffset_id19 => SDFVoxelVolume.VolumeOffset
@C    cellStride_id22 => DualContouringUtils.cellStride
@C    schmitzParticleIterations_id23 => DualContouringUtils.schmitzParticleIterations
@C    schmitzParticleStepSize_id24 => DualContouringUtils.schmitzParticleStepSize
@C    UseSDFNormal_id25 => DualContouringUtils.UseSDFNormal
***************************
******  Resources    ******
***************************
@R    VoxelVolume_id16 => SDFVoxelVolume.VoxelVolume [Stage: Compute, Slot: (0-0)]
@R    cellVertexInfoLookupTable_id26 => DualContouringUtils.cellVertexInfoLookupTable [Stage: Compute, Slot: (1-1)]
@R    generatedVertices_id27 => DualContouringUtils.generatedVertices [Stage: Compute, Slot: (2-2)]
@R    generatedVerticesCounter_id28 => DualContouringUtils.generatedVerticesCounter [Stage: Compute, Slot: (3-3)]
@R    Globals => Globals [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    DCGenerateOuterCellVertices_ComputeFX => 1fdb2608c86f60dbae868245f1eb2063
@S    DualContouringUtils => 6983a768905494dba6ecf7a940211aaf
@S    SDFInput => a9a2d11c443f5dcd90f5f02aeaa8a31d
@S    Float3ToFloat => 2f0e51a8298c61a56eadba3a099d3a38
@S    SDFCell => 6534f6064f13ddc49aee1189d082646f
@S    SDFVertex => a55fb6c0cb5db6eac29bd614045e195f
@S    SDFVoxelVolume => bc75ddec3ed07697b2259473a518c873
@S    SDFVoxel => d74a04a0d37ae8f2dc735e623d43aecc
***************************
*****     Stages      *****
***************************
@G    Compute => 5b353fd7e6d76b3754510df1a8fccf75
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   int3 NumberOfVoxels_id17;          // Offset:    0 Size:    12
//   float VoxelSpacing_id18;           // Offset:   12 Size:     4
//   float3 VolumeOffset_id19;          // Offset:   16 Size:    12 [unused]
//   uint cellStride_id22;              // Offset:   28 Size:     4 [unused]
//      = 0x00000001 
//   uint schmitzParticleIterations_id23;// Offset:   32 Size:     4
//      = 0x00000014 
//   float schmitzParticleStepSize_id24;// Offset:   36 Size:     4
//      = 0x3e4ccccd 
//   bool UseSDFNormal_id25;            // Offset:   40 Size:     4
//
// }
//
// Resource bind info for VoxelVolume_id16
// {
//
//   struct Voxel
//   {
//       
//       float4 valueAndGradient;       // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    16
//
// }
//
// Resource bind info for cellVertexInfoLookupTable_id26
// {
//
//   struct CellVertexInfo
//   {
//       
//       uint index;                    // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:     4
//
// }
//
// Resource bind info for generatedVertices_id27
// {
//
//   struct Vertex
//   {
//       
//       float3 position;               // Offset:    0
//       float3 normal;                 // Offset:   12
//
//   } $Element;                        // Offset:    0 Size:    24
//
// }
//
// Resource bind info for generatedVerticesCounter_id28
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
// VoxelVolume_id16                      UAV  struct         r/w             u0      1 
// cellVertexInfoLookupTable_id26        UAV  struct         r/w             u1      1 
// generatedVertices_id27                UAV  struct         r/w             u2      1 
// generatedVerticesCounter_id28         UAV  struct     r/w+cnt             u3      1 
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
dcl_immediateConstantBuffer { { 0, 3, 0, 0},
                              { 3, 7, 0, 0},
                              { 7, 4, 0, 0},
                              { 4, 0, 0, 0},
                              { 1, 2, 0, 0},
                              { 2, 6, 0, 0},
                              { 5, 6, 0, 0},
                              { 5, 1, 0, 0},
                              { 0, 1, 0, 0},
                              { 3, 2, 0, 0},
                              { 7, 6, 0, 0},
                              { 4, 5, 0, 0},
                              { 0, 0, 0, 0},
                              { 0, 1, 0, 0},
                              { 1, 1, 0, 0},
                              { 1, 0, 0, 0},
                              { 0, 0, 1, 0},
                              { 0, 1, 1, 0},
                              { 1, 1, 1, 0},
                              { 1, 0, 1, 0} }
dcl_constantbuffer CB0[3], immediateIndexed
dcl_uav_structured u0, 16
dcl_uav_structured u1, 4
dcl_uav_structured u2, 24
dcl_uav_structured_opc u3, 16
dcl_input vThreadID.xyz
dcl_temps 16
dcl_indexableTemp x0[18], 4
dcl_indexableTemp x1[8], 4
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 56 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_ComputeFXEffect_36ff29eeecaba22df595ac9660649239.hlsl"
mov x0[0].xyz, l(0,0,0,0)
mov x0[1].xyz, l(0,0,0,0)
mov x0[3].xyz, l(0,0,0,0)
mov x0[4].xyz, l(0,0,0,0)
mov x0[6].xyz, l(0,0,0,0)
mov x0[7].xyz, l(0,0,0,0)
mov x0[9].xyz, l(0,0,0,0)
mov x0[10].xyz, l(0,0,0,0)
mov x0[12].xyz, l(0,0,0,0)
mov x0[13].xyz, l(0,0,0,0)
mov x0[15].xyz, l(0,0,0,0)
mov x0[16].xyz, l(0,0,0,0)

#line 59
mov x1[0].xyz, l(0,0,0,0)
mov x1[1].xyz, l(0,0,0,0)
mov x1[2].xyz, l(0,0,0,0)
mov x1[3].xyz, l(0,0,0,0)
mov x1[4].xyz, l(0,0,0,0)
mov x1[5].xyz, l(0,0,0,0)
mov x1[6].xyz, l(0,0,0,0)
mov x1[7].xyz, l(0,0,0,0)

#line 227
iadd r0.xyz, cb0[0].xyzx, l(-2, -2, -2, 0)
ult r1.xyz, r0.xyzx, vThreadID.xyzx
or r0.w, r1.y, r1.x
or r0.w, r1.z, r0.w

#line 90
ieq r1.xyz, vThreadID.xyzx, l(0, 0, 0, 0)
ieq r0.xyz, r0.xyzx, vThreadID.xyzx
or r0.xyz, r0.xyzx, r1.xyzx
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x

#line 227
ieq r0.x, r0.x, l(0)
or r0.x, r0.x, r0.w

#line 231
if_z r0.x

#line 86
  imul null, r0.x, cb0[0].y, cb0[0].x

#line 197
  mov r0.y, cb0[2].z  // r0.y <- UseSDFNormal_id25; r0.y <- UseSDFNormal_id25; r0.y <- UseSDFNormal_id25
  mov r0.zw, l(0,0,0,0)  // r0.z <- numberOfIntersections_id31; r0.z <- numberOfIntersections_id31; r0.w <- cellEdgeIndex; r0.z <- numberOfIntersections_id31
  loop 
    uge r1.x, r0.w, l(12)
    breakc_nz r1.x

#line 203
    ult r1.xy, icb[r0.w + 0].xyxx, l(4, 4, 0, 0)
    movc r1.xy, r1.xyxx, l(0,0,0,0), l(1,1,0,0)

#line 202
    mov r2.x, icb[r0.w + 0].x
    mov r1.zw, icb[r2.x + 12].xxxy
    iadd r2.xyz, r1.zwxz, vThreadID.xyzx  // r2.x <- coordinate.x; r2.y <- coordinate.y; r2.z <- coordinate.z

#line 86
    imad r2.x, r2.y, cb0[0].x, r2.x
    imad r2.x, r2.z, r0.x, r2.x  // r2.x <- <CalculateVoxelVolumeIndex_id11 return value>

#line 166
    ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(0), u0.xyzw  // r2.x <- <GetVoxel_id12 return value>.valueAndGradient.x; r2.y <- <GetVoxel_id12 return value>.valueAndGradient.y; r2.z <- <GetVoxel_id12 return value>.valueAndGradient.z; r2.w <- <GetVoxel_id12 return value>.valueAndGradient.w

#line 203
    mov r3.x, icb[r0.w + 0].y
    mov r3.xy, icb[r3.x + 12].xyxx
    mov r3.z, r1.y
    iadd r4.xyz, r3.xyzx, vThreadID.xyzx

#line 86
    imad r1.y, r4.y, cb0[0].x, r4.x
    imad r1.y, r4.z, r0.x, r1.y  // r1.y <- <CalculateVoxelVolumeIndex_id11 return value>

#line 166
    ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r4.xyzw, r1.y, l(0), u0.xyzw  // r4.x <- <GetVoxel_id12 return value>.valueAndGradient.x; r4.y <- <GetVoxel_id12 return value>.valueAndGradient.y; r4.z <- <GetVoxel_id12 return value>.valueAndGradient.z; r4.w <- <GetVoxel_id12 return value>.valueAndGradient.w

#line 162
    ge r1.y, r2.x, l(0.000000)
    and r1.y, r1.y, l(1)  // r1.y <- <IsSolid_id8 return value>
    ge r3.w, r4.x, l(0.000000)
    and r3.w, r3.w, l(1)  // r3.w <- <IsSolid_id8 return value>

#line 204
    ieq r1.y, r1.y, r3.w
    if_nz r1.y

#line 206
      iadd r1.y, r0.w, l(1)  // r1.y <- cellEdgeIndex
      mov r0.w, r1.y  // r0.w <- cellEdgeIndex
      continue 

#line 207
    endif 

#line 210
    add r4.xyzw, -r2.xyzw, r4.xyzw

#line 208
    div r1.y, -r2.x, r4.x  // r1.y <- interpolant

#line 209
    utof r1.xzw, r1.zzwx
    utof r3.xyz, r3.xyzx
    add r3.xyz, -r1.xzwx, r3.xyzx
    mad r1.xzw, r1.yyyy, r3.xxyz, r1.xxzw  // r1.x <- pos.x; r1.z <- pos.y; r1.w <- pos.z

#line 210
    mad r2.xyz, r1.yyyy, r4.yzwy, r2.yzwy
    dp3 r1.y, r2.xyzx, r2.xyzx
    rsq r1.y, r1.y
    mul r2.xyz, r1.yyyy, r2.xyzx  // r2.x <- norm.x; r2.y <- norm.y; r2.z <- norm.z

#line 214
    movc r2.xyz, r0.yyyy, l(1.000000,0.000000,0.000000,0), r2.xyzx

#line 215
    iadd r1.y, r0.z, l(1)  // r1.y <- numberOfIntersections_id31; r1.y <- numberOfIntersections_id31; r1.y <- numberOfIntersections_id31
    imul null, r2.w, r0.z, l(3)
    mov x0[r2.w + 0].xyz, r1.xzwx
    mov x0[r2.w + 1].xyz, r2.xyzx
    mov x0[r2.w + 2].x, l(0)
    mov r0.z, r1.y  // r0.z <- numberOfIntersections_id31; r0.z <- numberOfIntersections_id31; r0.z <- numberOfIntersections_id31

#line 197
    iadd r0.w, r0.w, l(1)

#line 216
  endloop 

#line 233
  if_nz r0.z

#line 235
    imm_atomic_alloc r1.x, u3  // r1.x <- cellVertexInfo

#line 136
    mov r1.yzw, x0[0].xxyz  // r1.y <- intersection.position.x; r1.z <- intersection.position.y; r1.w <- intersection.position.z
    mov r2.xyz, x0[1].xyzx  // r2.x <- intersection.normal.x; r2.y <- intersection.normal.y; r2.z <- intersection.normal.z

#line 134
    ult r0.y, l(1), r0.z
    if_nz r0.y

#line 136
      mov r3.xyz, x0[3].xyzx  // r3.x <- intersection.position.x; r3.y <- intersection.position.y; r3.z <- intersection.position.z
      mov r4.xyz, x0[4].xyzx  // r4.x <- intersection.normal.x; r4.y <- intersection.normal.y; r4.z <- intersection.normal.z

#line 137
      add r1.yzw, r1.yyzw, r3.xxyz  // r1.y <- vertex.position.x; r1.z <- vertex.position.y; r1.w <- vertex.position.z

#line 138
      add r2.xyz, r2.xyzx, r4.xyzx  // r2.x <- vertex.normal.x; r2.y <- vertex.normal.y; r2.z <- vertex.normal.z

#line 139
      mov r0.w, l(2)  // r0.w <- intersectionIndex
    else   // Prior locations: r1.y <- intersection.position.x; r1.z <- intersection.position.y; r1.w <- intersection.position.z; r2.x <- intersection.normal.x; r2.y <- intersection.normal.y; r2.z <- intersection.normal.z
      mov r0.w, l(1)  // r1.y <- vertex.position.x; r1.z <- vertex.position.y; r1.w <- vertex.position.z; r2.x <- vertex.normal.x; r2.y <- vertex.normal.y; r2.z <- vertex.normal.z; r0.w <- intersectionIndex
    endif 

#line 134
    ult r2.w, r0.w, r0.z
    if_nz r2.w

#line 136
      mov r3.xyz, x0[6].xyzx  // r3.x <- intersection.position.x; r3.y <- intersection.position.y; r3.z <- intersection.position.z
      mov r4.xyz, x0[7].xyzx  // r4.x <- intersection.normal.x; r4.y <- intersection.normal.y; r4.z <- intersection.normal.z

#line 137
      add r1.yzw, r1.yyzw, r3.xxyz

#line 138
      add r2.xyz, r2.xyzx, r4.xyzx

#line 139
      mov r0.w, l(3)
    endif 

#line 134
    ult r3.x, r0.w, r0.z
    and r2.w, r2.w, r3.x
    if_nz r2.w

#line 136
      mov r3.xyz, x0[9].xyzx  // r3.x <- intersection.position.x; r3.y <- intersection.position.y; r3.z <- intersection.position.z
      mov r4.xyz, x0[10].xyzx  // r4.x <- intersection.normal.x; r4.y <- intersection.normal.y; r4.z <- intersection.normal.z

#line 137
      add r1.yzw, r1.yyzw, r3.xxyz

#line 138
      add r2.xyz, r2.xyzx, r4.xyzx

#line 139
      mov r0.w, l(4)
    endif 

#line 134
    ult r3.x, r0.w, r0.z
    and r2.w, r2.w, r3.x
    if_nz r2.w

#line 136
      mov r3.xyz, x0[12].xyzx  // r3.x <- intersection.position.x; r3.y <- intersection.position.y; r3.z <- intersection.position.z
      mov r4.xyz, x0[13].xyzx  // r4.x <- intersection.normal.x; r4.y <- intersection.normal.y; r4.z <- intersection.normal.z

#line 137
      add r1.yzw, r1.yyzw, r3.xxyz

#line 138
      add r2.xyz, r2.xyzx, r4.xyzx

#line 139
      mov r0.w, l(5)
    endif 

#line 134
    ult r0.w, r0.w, r0.z
    and r0.w, r0.w, r2.w
    if_nz r0.w

#line 136
      mov r3.xyz, x0[15].xyzx  // r3.x <- intersection.position.x; r3.y <- intersection.position.y; r3.z <- intersection.position.z
      mov r4.xyz, x0[16].xyzx  // r4.x <- intersection.normal.x; r4.y <- intersection.normal.y; r4.z <- intersection.normal.z

#line 137
      add r1.yzw, r1.yyzw, r3.xxyz

#line 138
      add r2.xyz, r2.xyzx, r4.xyzx

#line 139
    endif 

#line 140
    utof r0.w, r0.z
    div r1.yzw, r1.yyzw, r0.wwww

#line 141
    dp3 r0.w, r2.xyzx, r2.xyzx
    rsq r0.w, r0.w
    mul r2.xyz, r0.wwww, r2.xyzx

#line 121
    mov r3.xyz, x0[0].xyzx  // r3.x <- position.x; r3.y <- position.y; r3.z <- position.z

#line 122
    mov r4.xyz, x0[1].xyzx  // r4.x <- normal.x; r4.y <- normal.y; r4.z <- normal.z

#line 121
    mov r5.xyz, x0[3].xyzx  // r5.x <- position.x; r5.y <- position.y; r5.z <- position.z

#line 122
    mov r6.xyz, x0[4].xyzx  // r6.x <- normal.x; r6.y <- normal.y; r6.z <- normal.z

#line 177
    mov r0.w, l(0)  // r0.w <- cornerIndex
    loop 
      uge r2.w, r0.w, l(8)
      breakc_nz r2.w

#line 179
      ult r2.w, r0.w, l(4)
      movc r2.w, r2.w, l(0), l(1)
      utof r7.xy, icb[r0.w + 12].xyxx  // r7.x <- corner.x; r7.y <- corner.y
      utof r7.z, r2.w  // r7.z <- corner.z

#line 123
      add r8.xyz, -r3.xyzx, r7.xyzx
      dp3 r2.w, r4.xyzx, r8.xyzx  // r2.w <- distance

#line 124
      mul r8.xyz, r4.xyzx, -r2.wwww  // r8.x <- voxelCornerToPlaneVector.x; r8.y <- voxelCornerToPlaneVector.y; r8.z <- voxelCornerToPlaneVector.z

#line 119
      if_nz r0.y

#line 123
        add r9.xyz, -r5.xyzx, r7.xyzx
        dp3 r2.w, r6.xyzx, r9.xyzx

#line 125
        mad r8.xyz, -r2.wwww, r6.xyzx, r8.xyzx  // r8.x <- force.x; r8.y <- force.y; r8.z <- force.z

#line 126
        mov r2.w, l(2)  // r2.w <- intersectionIndex
      else   // Prior locations: r2.w <- distance; r8.x <- voxelCornerToPlaneVector.x; r8.y <- voxelCornerToPlaneVector.y; r8.z <- voxelCornerToPlaneVector.z
        mov r2.w, l(1)  // r8.x <- force.x; r8.y <- force.y; r8.z <- force.z; r2.w <- intersectionIndex
      endif 

#line 119
      ult r3.w, r2.w, r0.z
      if_nz r3.w

#line 121
        mov r9.xyz, x0[6].xyzx  // r9.x <- position.x; r9.y <- position.y; r9.z <- position.z

#line 122
        mov r10.xyz, x0[7].xyzx  // r10.x <- normal.x; r10.y <- normal.y; r10.z <- normal.z

#line 123
        add r9.xyz, r7.xyzx, -r9.xyzx
        dp3 r4.w, r10.xyzx, r9.xyzx  // r4.w <- distance

#line 125
        mad r8.xyz, -r4.wwww, r10.xyzx, r8.xyzx

#line 126
        mov r2.w, l(3)
      endif 

#line 119
      ult r4.w, r2.w, r0.z
      and r3.w, r3.w, r4.w
      if_nz r3.w

#line 121
        mov r9.xyz, x0[9].xyzx  // r9.x <- position.x; r9.y <- position.y; r9.z <- position.z

#line 122
        mov r10.xyz, x0[10].xyzx  // r10.x <- normal.x; r10.y <- normal.y; r10.z <- normal.z

#line 123
        add r9.xyz, r7.xyzx, -r9.xyzx
        dp3 r4.w, r10.xyzx, r9.xyzx  // r4.w <- distance

#line 125
        mad r8.xyz, -r4.wwww, r10.xyzx, r8.xyzx

#line 126
        mov r2.w, l(4)
      endif 

#line 119
      ult r4.w, r2.w, r0.z
      and r3.w, r3.w, r4.w
      if_nz r3.w

#line 121
        mov r9.xyz, x0[12].xyzx  // r9.x <- position.x; r9.y <- position.y; r9.z <- position.z

#line 122
        mov r10.xyz, x0[13].xyzx  // r10.x <- normal.x; r10.y <- normal.y; r10.z <- normal.z

#line 123
        add r9.xyz, r7.xyzx, -r9.xyzx
        dp3 r4.w, r10.xyzx, r9.xyzx  // r4.w <- distance

#line 125
        mad r8.xyz, -r4.wwww, r10.xyzx, r8.xyzx

#line 126
        mov r2.w, l(5)
      endif 

#line 119
      ult r2.w, r2.w, r0.z
      and r2.w, r2.w, r3.w
      if_nz r2.w

#line 121
        mov r9.xyz, x0[15].xyzx  // r9.x <- position.x; r9.y <- position.y; r9.z <- position.z

#line 122
        mov r10.xyz, x0[16].xyzx  // r10.x <- normal.x; r10.y <- normal.y; r10.z <- normal.z

#line 123
        add r7.xyz, r7.xyzx, -r9.xyzx
        dp3 r2.w, r10.xyzx, r7.xyzx  // r2.w <- distance

#line 125
        mad r8.xyz, -r2.wwww, r10.xyzx, r8.xyzx

#line 126
      endif 

#line 179
      mov x1[r0.w + 0].xyz, r8.xyzx

#line 180
      iadd r0.w, r0.w, l(1)
    endloop 

#line 104
    mov r0.yzw, x1[3].xxyz
    mov r3.xyz, x1[0].xyzx

#line 105
    mov r4.xyz, x1[7].xyzx
    mov r5.xyz, x1[4].xyzx

#line 106
    mov r6.xyz, x1[2].xyzx
    mov r7.xyz, x1[1].xyzx

#line 107
    mov r8.xyz, x1[6].xyzx
    mov r9.xyz, x1[5].xyzx

#line 182
    mov r10.xyz, r1.yzwy  // r10.x <- vertex.position.x; r10.y <- vertex.position.y; r10.z <- vertex.position.z
    mov r2.w, l(0)  // r2.w <- schmitzParticleIteration
    loop 
      uge r3.w, r2.w, cb0[2].x
      breakc_nz r3.w

#line 112
      add r11.xyz, -r10.xzyx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 104
      mul r12.xyz, r3.xyzx, r11.xxxx
      mad r12.xyz, r10.xxxx, r0.yzwy, r12.xyzx  // r12.x <- force03.x; r12.y <- force03.y; r12.z <- force03.z

#line 105
      mul r13.xyz, r5.xyzx, r11.xxxx
      mad r13.xyz, r10.xxxx, r4.xyzx, r13.xyzx  // r13.x <- force47.x; r13.y <- force47.y; r13.z <- force47.z

#line 106
      mul r14.xyz, r7.xyzx, r11.xxxx
      mad r14.xyz, r10.xxxx, r6.xyzx, r14.xyzx  // r14.x <- force12.x; r14.y <- force12.y; r14.z <- force12.z

#line 107
      mul r15.xyz, r9.xyzx, r11.xxxx
      mad r15.xyz, r10.xxxx, r8.xyzx, r15.xyzx  // r15.x <- force56.x; r15.y <- force56.y; r15.z <- force56.z

#line 109
      mul r12.xyz, r11.yyyy, r12.xyzx
      mad r12.xyz, r10.zzzz, r13.xyzx, r12.xyzx  // r12.x <- force0347.x; r12.y <- force0347.y; r12.z <- force0347.z

#line 110
      mul r11.xyw, r11.yyyy, r14.xyxz
      mad r11.xyw, r10.zzzz, r15.xyxz, r11.xyxw  // r11.x <- force1256.x; r11.y <- force1256.y; r11.w <- force1256.z

#line 112
      mul r12.xyz, r11.zzzz, r12.xyzx
      mad r11.xyz, r10.yyyy, r11.xywx, r12.xyzx  // r11.x <- <CalculateCombinedForce_id22 return value>.x; r11.y <- <CalculateCombinedForce_id22 return value>.y; r11.z <- <CalculateCombinedForce_id22 return value>.z

#line 184
      mad r10.xyz, cb0[2].yyyy, r11.xyzx, r10.xyzx

#line 185
      iadd r2.w, r2.w, l(1)
    endloop 

#line 99
    utof r0.yzw, vThreadID.xxyz
    add r0.yzw, r0.yyzw, r10.xxyz
    itof r1.yzw, cb0[0].xxyz
    add r1.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)
    mad r0.yzw, -r1.yyzw, l(0.000000, 0.500000, 0.500000, 0.500000), r0.yyzw
    mul r3.xyz, r0.yzwy, cb0[0].wwww  // r3.x <- <VoxelToVoxelVolumeSpace_id14 return value>.x; r3.y <- <VoxelToVoxelVolumeSpace_id14 return value>.y; r3.z <- <VoxelToVoxelVolumeSpace_id14 return value>.z

#line 190
    movc r0.yzw, cb0[2].zzzz, l(0,1.000000,0.000000,0.000000), r2.xxyz  // r0.y <- vertex.normal.x; r0.z <- vertex.normal.y; r0.w <- vertex.normal.z

#line 236
    mov r3.w, r0.y
    store_structured u2.xyzw, r1.x, l(0), r3.xyzw
    store_structured u2.xy, r1.x, l(16), r0.zwzz

#line 237
  else   // Prior locations: r0.y <- UseSDFNormal_id25; r0.z <- numberOfIntersections_id31; r0.y <- UseSDFNormal_id25; r0.z <- numberOfIntersections_id31
    mov r1.x, l(-1)  // r1.x <- cellVertexInfo
  endif 

#line 171
  imad r0.y, vThreadID.y, cb0[0].x, vThreadID.x
  imad r0.x, vThreadID.z, r0.x, r0.y  // r0.x <- <CalculateCellVertexInfoLookupTableIndex_id21 return value>

#line 238
  store_structured u1.x, r0.x, l(0), r1.x
endif 

#line 253
ret 
// Approximately 248 instruction slots used
***************************
*************************/
static const uint numberOfCellCorners_id12 = 8;
static const uint3 cellCorners_id13[numberOfCellCorners_id12] = { uint3(0, 0, 0), uint3(0, 1, 0), uint3(1, 1, 0), uint3(1, 0, 0), uint3(0, 0, 1), uint3(0, 1, 1), uint3(1, 1, 1), uint3(1, 0, 1)};
static const uint numberOfCellEdges_id14 = 12;
static const uint2 cellEdges_id15[numberOfCellEdges_id14] = { uint2(0, 3), uint2(3, 7), uint2(7, 4), uint2(4, 0), uint2(1, 2), uint2(2, 6), uint2(5, 6), uint2(5, 1), uint2(0, 1), uint2(3, 2), uint2(7, 6), uint2(4, 5)};
static const uint nullVertexIndex_id20 = -1;
static const uint maxNumberOfIntersections_id21 = 6;
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
struct Vertex 
{
    float3 position;
    float3 normal;
};
struct Voxel 
{
    float4 valueAndGradient;
};
struct CellVertexInfo 
{
    uint index;
};
struct Intersection 
{
    float3 position;
    float3 normal;
    uint materialIndex;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
};
cbuffer Globals 
{
    int3 NumberOfVoxels_id17;
    float VoxelSpacing_id18;
    float3 VolumeOffset_id19;
    uint cellStride_id22 = 1;
    uint schmitzParticleIterations_id23 = 20;
    float schmitzParticleStepSize_id24 = 0.2f;
    bool UseSDFNormal_id25;
    static uint numberOfIntersections_id31;
    static Intersection intersections_id32[maxNumberOfIntersections_id21];
    static uint numberOfMaterialIndices_id33;
    static uint materialIndices_id34[numberOfCellCorners_id12];
    static float3 forces_id35[numberOfCellCorners_id12];
    static CellVertexInfo neighbourCellVertexInfos_id36[3];
};
RWStructuredBuffer<Voxel> VoxelVolume_id16;
RWStructuredBuffer<CellVertexInfo> cellVertexInfoLookupTable_id26;
RWStructuredBuffer<Vertex> generatedVertices_id27;
RWStructuredBuffer<float4> generatedVerticesCounter_id28;
RWStructuredBuffer<Vertex> generatedVertices1_id29;
RWStructuredBuffer<uint3> generatedTriangles_id30;
float Compute_id33(float3 p)
{
    return p.x;
}
float3 SDFNormal_id2(float3 p, float e = 0.01)
{
    float3 gradient = float3((Compute_id33(p + float3(e, 0, 0)) - Compute_id33(p - float3(e, 0, 0))) / (2 * e), (Compute_id33(p + float3(0, e, 0)) - Compute_id33(p - float3(0, e, 0))) / (2 * e), (Compute_id33(p + float3(0, 0, e)) - Compute_id33(p - float3(0, 0, e))) / (2 * e));
    return normalize(gradient + 0.0000001);
}
Vertex CreateVertex_id3(float3 position = 0.0f, float3 normal = 0.0f, uint materialIndex = 0)
{
    Vertex vertex;
    vertex.position = position;
    vertex.normal = normal;
    return vertex;
}
uint CalculateVoxelVolumeIndex_id11(uint3 coordinate)
{
    return dot(coordinate, uint3(1, NumberOfVoxels_id17.x, NumberOfVoxels_id17.x * NumberOfVoxels_id17.y));
}
bool IsOuterVoxel_id20(uint3 coordinate)
{
    return any(coordinate == 0 || coordinate == NumberOfVoxels_id17 - 2);
}
Vertex SetNormalFromSDF_id25(Vertex v)
{
    v.normal = SDFNormal_id2(v.position);
    return v;
}
float3 VoxelToVoxelVolumeSpace_id14(uint3 coordinate, float3 position = 0.0f)
{
    return VoxelSpacing_id18 * (position + coordinate - 0.5f * (NumberOfVoxels_id17 - 1.0f));
}
float3 CalculateCombinedForce_id22(float3 center)
{
    float alpha = center.x;
    float3 force03 = alpha * forces_id35[3] + (1.0f - alpha) * forces_id35[0];
    float3 force47 = alpha * forces_id35[7] + (1.0f - alpha) * forces_id35[4];
    float3 force12 = alpha * forces_id35[2] + (1.0f - alpha) * forces_id35[1];
    float3 force56 = alpha * forces_id35[6] + (1.0f - alpha) * forces_id35[5];
    float beta = center.z;
    float3 force0347 = beta * force47 + (1.0f - beta) * force03;
    float3 force1256 = beta * force56 + (1.0f - beta) * force12;
    float gamma = center.y;
    return gamma * force1256 + (1.0f - gamma) * force0347;
}
float3 CalculateForce_id23(float3 corner)
{
    float3 force = 0.0f;

    [unroll]
    for (uint intersectionIndex = 0; intersectionIndex < numberOfIntersections_id31; intersectionIndex++)
    {
        float3 position = intersections_id32[intersectionIndex].position;
        float3 normal = intersections_id32[intersectionIndex].normal;
        float distance = dot(normal, corner - position);
        float3 voxelCornerToPlaneVector = -distance * normal;
        force += voxelCornerToPlaneVector;
    }
    return force;
}
Vertex CalculateCenterVertex_id24()
{
    Vertex vertex = CreateVertex_id3();

    [unroll]
    for (uint intersectionIndex = 0; intersectionIndex < numberOfIntersections_id31; intersectionIndex++)
    {
        Intersection intersection = intersections_id32[intersectionIndex];
        vertex.position = vertex.position + intersection.position;
        vertex.normal = vertex.normal + intersection.normal;
    }
    vertex.position = vertex.position / numberOfIntersections_id31;
    vertex.normal = normalize(vertex.normal);
    return vertex;
}
Intersection CreateIntersection_id19(float3 position = 0.0f, float3 normal = 0.0f, uint materialIndex = 0)
{
    Intersection intersection;
    intersection.position = position;
    intersection.normal = normal;
    intersection.materialIndex = materialIndex;
    return intersection;
}
float3 GetGradient_id6(Voxel v)
{
    return v.valueAndGradient.yzw;
}
float GetValue_id4(Voxel v)
{
    return v.valueAndGradient.x;
}
uint IsSolid_id8(Voxel v)
{
    return v.valueAndGradient.x >= 0.0;
}
Voxel GetVoxel_id12(uint3 coordinate)
{
    return VoxelVolume_id16[CalculateVoxelVolumeIndex_id11(coordinate)];
}
uint CalculateCellVertexInfoLookupTableIndex_id21(uint3 coordinate, uint stride = 1)
{
    coordinate = IsOuterVoxel_id20(coordinate) ? coordinate : (coordinate - 1) / stride * stride + 1;
    return dot(coordinate, uint3(1, NumberOfVoxels_id17.x, (NumberOfVoxels_id17.x) * (NumberOfVoxels_id17.y)));
}
Vertex CalculateCellVertex_id26(uint3 coordinate)
{
    Vertex vertex = CalculateCenterVertex_id24();

    for (uint cornerIndex = 0; cornerIndex < numberOfCellCorners_id12; cornerIndex++)
    {
        forces_id35[cornerIndex] = CalculateForce_id23(cellCorners_id13[cornerIndex]);
    }

    for (uint schmitzParticleIteration = 0; schmitzParticleIteration < schmitzParticleIterations_id23; schmitzParticleIteration++)
    {
        vertex.position = (vertex.position + schmitzParticleStepSize_id24 * CalculateCombinedForce_id22(vertex.position));
    }
    vertex.position = VoxelToVoxelVolumeSpace_id14(coordinate, vertex.position);
    if (UseSDFNormal_id25)
    {
        vertex = SetNormalFromSDF_id25(vertex);
    }
    return vertex;
}
void CalculatePositionsAndNormals_id27(uint3 coordinate)
{
    numberOfIntersections_id31 = 0;

    for (uint cellEdgeIndex = 0; cellEdgeIndex < numberOfCellEdges_id14; cellEdgeIndex++)
    {
        uint2 cellEdge = cellEdges_id15[cellEdgeIndex];
        uint3 cellCornerA = cellCorners_id13[cellEdge.x];
        uint3 cellCornerB = cellCorners_id13[cellEdge.y];
        Voxel sampleA = GetVoxel_id12(coordinate + cellCornerA);
        Voxel sampleB = GetVoxel_id12(coordinate + cellCornerB);
        if (IsSolid_id8(sampleA) == IsSolid_id8(sampleB))
        {
            continue;
        }
        float interpolant = -GetValue_id4(sampleA) / (GetValue_id4(sampleB) - GetValue_id4(sampleA));
        float3 pos = lerp(cellCornerA, cellCornerB, interpolant);
        float3 norm = normalize(lerp(GetGradient_id6(sampleA), GetGradient_id6(sampleB), interpolant));
        if (UseSDFNormal_id25)
        {
            norm = SDFNormal_id2(VoxelToVoxelVolumeSpace_id14(coordinate, pos));
        }
        intersections_id32[numberOfIntersections_id31++] = CreateIntersection_id19(pos, norm);
    }
}
CellVertexInfo CreateCellVertexInfo_id18()
{
    CellVertexInfo cellVertexInfo;
    cellVertexInfo.index = nullVertexIndex_id20;
    return cellVertexInfo;
}
void Compute_id32(inout CS_STREAMS streams)
{
    uint3 cellID = streams.DispatchThreadId_id1;
    if (any(cellID > NumberOfVoxels_id17 - 2) || !IsOuterVoxel_id20(cellID))
    {
        return;
    }
    CellVertexInfo cellVertexInfo = CreateCellVertexInfo_id18();
    CalculatePositionsAndNormals_id27(cellID);
    if (numberOfIntersections_id31 > 0)
    {
        cellVertexInfo.index = generatedVerticesCounter_id28.IncrementCounter();
        generatedVertices_id27[cellVertexInfo.index] = CalculateCellVertex_id26(cellID);
    }
    cellVertexInfoLookupTable_id26[CalculateCellVertexInfoLookupTableIndex_id21(cellID)] = cellVertexInfo;
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
    Compute_id32(streams);
}
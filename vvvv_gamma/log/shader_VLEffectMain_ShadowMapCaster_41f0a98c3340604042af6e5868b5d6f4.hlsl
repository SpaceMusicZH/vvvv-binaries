/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMBoxImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id149 => SMBoxImpostor_ShaderFX.ParticleSize
@C    InputValue_id162 => ShaderFX.InputValueFloat
@C    InputValue_id171 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 352]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id148 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id148 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id154 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id154 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id183 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id183 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id148 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationWAndVP => ea6628bcd79c8f0060c612aa9fc4819b
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    PositionHStream4 => fc5e64dda1ac2bb4a31d58404dced340
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    NormalFromMesh => 85b71ad3ed9065c0803bfd77d09fb685
@S    NormalBase => b2b31addde884722f942622026837c39
@S    NormalUpdate => 6fd3c9b8fa943d9951400645fe40502e
@S    MaterialSurfacePixelStageCompositor => ea7a1f076313986d24488e1073848b3d
@S    PositionStream => f677bb6cb046d4f5f594cc6d8a703259
@S    MaterialPixelShadingStream => ad7a8ed4b25fbb8ce36df356d447fda2
@S    MaterialPixelStream => 3e33eeb836e260b00905946a5267b87e
@S    MaterialStream => 6f0bb68dde7beef4b38d4867da2f4d0a
@S    IStreamInitializer => acbd5b5e1debd1516c61049f39f04fdc
@S    LightStream => db97b763bbf12e53eaf0875b9db31366
@S    DirectLightGroupArray => c8057c9126020ee1c62e23facba5036d
@S    DirectLightGroup => 501cdd2e28afd5e234c08907f26aa5df
@S    ShadowGroup => bd0b502fd18b37aedabdcefe14deef34
@S    ShadowStream => e75e57a19e12d81083677a851803d69a
@S    TextureProjectionGroup => 6f741ec2cbd4e9796145b35f8fc18c45
@S    EnvironmentLightArray => 2dfda49afe728922257f9b497bc6b904
@S    EnvironmentLight => 67198c913f8c86fad248a6726699dd4d
@S    IMaterialSurface => 4439d1801d274f7bab04ddbc33b85f40
@S    ShadowMapCasterNoPixelShader => aa6a2819c879eaf0eb664f08fb1f41b4
@S    SMBoxImpostor_ShaderFX => 97707c6c4db6de5bb09491109bc1ab96
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    TransformUtils => 651146ed53d019a2c2c72b489f9cff84
@S    HappyTransform => 40e380fb8141f7a8a6b741a8bd03a993
@S    MaterialSurfaceArray => 8cf3cc54fcd9949ce74f2e4caaa0d6d9
@S    MaterialSurfaceDiffuse => 959d3b90076611b0252419cb02190f99
@S    IMaterialSurfacePixel => b6013c701b8fca52da0c65754bb0a9ca
@S    Float4ToColor => c8460cd5d71b5fac69b6f550d07a4ce7
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    ColorPerParticle_ShaderFX => 1fa1f88eaafe98303b47b5b9dc7662d6
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    MaterialSurfaceGlossinessMap => 45f7d0ea2ac0e9c8c8e5c9d8f614e1ea
@S    FloatToScalar => 605ed86580e45cae6e52484a38db1c04
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    MaterialSurfaceMetalness => 4078836fd77689b5ca2e35f4eae23def
@S    MaterialSurfaceLightingAndShading => 632084a1d51a33d288c188803e2d5afc
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    IMaterialSurfaceShading => 1c45b326cd8616074872dd56496a9b5a
@S    MaterialSurfaceShadingDiffuseLambert => 8e2e1baa4a7bcb427f3ca539f81dd15c
@S    MaterialSurfaceShadingSpecularMicrofacet => fc12dc9f1da47fe9fb484f9432195131
@S    BRDFMicrofacet => e6c8c59dd59d4fef181ae8322a095acf
@S    IMaterialSpecularMicrofacetFresnelFunction => b87b5e33e7e148467ff6df90b1f65e8d
@S    IMaterialSpecularMicrofacetVisibilityFunction => 35ae192f090d569ff410a98a8e5dc154
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => 861fea38e5209e4678493895145cc2e6
@S    IMaterialSpecularMicrofacetEnvironmentFunction => 56a33499bed82d63575ceb48ba33baee
@S    MaterialSpecularMicrofacetEnvironmentGGXLUT => 2e52ec40bc84df02cbd7a9c438f7b99f
@S    MaterialSpecularMicrofacetFresnelSchlick => edbe75a9ad2d1152adf6c393d9f528cb
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => db766e9fd55ea510f5ca816de1114a2c
@S    MaterialSpecularMicrofacetNormalDistributionGGX => a2e713df174ca0b459793779a40abe22
***************************
*****     Stages      *****
***************************
@G    Vertex => 8de14ab7e612936ec2625c5d9dbf177a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VertexID              0   x           0   VERTID    uint   x   
// POSITION                 0   xyzw        1     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VID_ID152_SEM            0   x           0     NONE    uint   x   
// SV_Position              0   xyzw        1      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_input v1.xyzw
dcl_output o0.x
dcl_output_siv o1.xyzw, position
//
// Initial variable locations:
//   v0.x <- __input__.VertexID_id151; 
//   v1.x <- __input__.Position_id20.x; v1.y <- __input__.Position_id20.y; v1.z <- __input__.Position_id20.z; v1.w <- __input__.Position_id20.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id152
//
#line 288 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_ShadowMapCaster_41f0a98c3340604042af6e5868b5d6f4.hlsl"
mov o0.x, v0.x
mov o1.xyzw, v1.xyzw
ret 
// Approximately 3 instruction slots used
@G    Geometry => 03e7405a6151ee729027f19254d62c8e
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id149;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id162;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id171;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16
//
// }
//
// Resource bind info for ParticlesBuffer_id148
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// ParticlesBuffer_id148             texture  struct         r/o             t0      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerMaterial                       cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VID_ID152_SEM            0   x           0     NONE    uint   x   
// SV_Position              0   xyzw        1      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID150_SEM          0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// DEPTH_VS                 0     z         2     NONE   float     z 
// NORMALWS                 0   xyz         3     NONE   float   xyz 
// MESHNORMALWS_ID16_SEM     0   xyz         4     NONE   float   xyz 
// SV_Position              0   xyzw        5      POS   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 1.000000, 0, 0},
                              { 1.000000, 1.000000, 0, 0},
                              { 0, 0, 0, 0},
                              { 1.000000, 0, 0, 0} }
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[22], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v[1][0].x
dcl_input_siv v[1][1].xyzw, position
dcl_temps 11
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xy
dcl_output o2.z
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output_siv o5.xyzw, position
dcl_maxout 12
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].VID_id152; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w
//
#line 255 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_ShadowMapCaster_41f0a98c3340604042af6e5868b5d6f4.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v[0][0].x, l(24), t0.xyzw  // r0.x <- p.Rot.x; r0.y <- p.Rot.y; r0.z <- p.Rot.z; r0.w <- p.Size.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xy, v[0][0].x, l(40), t0.xyxx  // r1.x <- p.Size.y; r1.y <- p.Size.z

#line 257
mov r1.z, r0.w
mul r1.xyz, r1.zxyz, cb1[0].xxxx  // r1.x <- streams.PSize_id150.x; r1.y <- streams.PSize_id150.y; r1.z <- streams.PSize_id150.z

#line 258
dp3 r0.w, r1.xyzx, r1.xyzx
ge r0.w, l(0.000000), r0.w
if_nz r0.w

#line 259
  ret 
endif 

#line 255
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, v[0][0].x, l(0), t0.xyzx  // r2.x <- p.Pos.x; r2.y <- p.Pos.y; r2.z <- p.Pos.z

#line 236
mul r0.xyz, r0.xyzx, l(-6.283185, 6.283185, -6.283185, 0.000000)  // r0.x <- z.x; r0.y <- z.y; r0.z <- z.z

#line 237
sincos r0.xyz, r3.xyz, r0.xyzx  // r3.x <- x.x; r3.y <- x.y; r3.z <- x.z; r0.x <- y.x; r0.y <- y.y; r0.z <- y.z

#line 238
mul r4.xyz, r3.zzyz, r3.yxxy  // r4.y <- <rot3x3_id67 return value>._m11; r4.z <- <rot3x3_id67 return value>._m22
mul r0.w, r0.y, r0.x
mad r5.x, r0.w, r0.z, r4.x  // r5.x <- <rot3x3_id67 return value>._m00
mul r5.y, r0.z, -r3.x  // r5.y <- <rot3x3_id67 return value>._m01
mul r6.xyzw, r0.xyzy, r3.yzyx  // r6.w <- <rot3x3_id67 return value>._m20

#line 267
mov r7.xy, r6.ywyy
mov r7.z, r0.x
mov r7.w, r4.z

#line 238
mad r5.z, r6.x, r0.z, -r7.x  // r5.z <- <rot3x3_id67 return value>._m02
mad r8.x, -r0.w, r3.z, r6.z  // r8.x <- <rot3x3_id67 return value>._m10
mul r0.w, r3.z, r6.x
mad r8.y, -r0.y, r0.z, -r0.w  // r8.y <- <rot3x3_id67 return value>._m12

#line 264
add r0.yzw, -r2.xxyz, cb2[21].xxyz  // r0.y <- viewDir.x; r0.z <- viewDir.y; r0.w <- viewDir.z

#line 265
dp3 r1.w, r0.yzwy, r7.yzwy
lt r1.w, l(0.000000), r1.w
if_nz r1.w

#line 211
  mov r8.z, r4.y

#line 213
  mov r3.w, l(1.000000)

#line 205
  mov r1.w, l(0)  // r1.w <- i
  loop 
    uge r2.w, r1.w, l(4)
    breakc_nz r2.w

#line 207
    and r2.w, r1.w, l(3)

#line 190
    ishl r4.w, l(1), r1.w  // r4.w <- b

#line 191
    and r6.xyz, r4.wwww, l(90, 51, 15, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 210
    mul r9.xyz, r5.xyzx, r6.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 211
    mul r10.xyz, r8.xzyx, r6.yyyy
    mad r9.xyz, r10.xyzx, r1.yyyy, r9.xyzx

#line 212
    mul r6.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r6.xyzx, r1.zzzz, r9.xyzx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 213
    dp4 r9.x, r3.xyzw, cb0[0].xyzw  // r9.x <- posWorld.x
    dp4 r9.y, r3.xyzw, cb0[1].xyzw  // r9.y <- posWorld.y
    dp4 r9.z, r3.xyzw, cb0[2].xyzw  // r9.z <- posWorld.z
    dp4 r9.w, r3.xyzw, cb0[3].xyzw  // r9.w <- posWorld.w

#line 217
    dp4 r3.x, r9.xyzw, cb2[16].xyzw  // r3.x <- streams.ShadingPosition_id0.x
    dp4 r3.y, r9.xyzw, cb2[17].xyzw  // r3.y <- streams.ShadingPosition_id0.y
    dp4 r3.z, r9.xyzw, cb2[18].xyzw  // r3.z <- streams.ShadingPosition_id0.z
    dp4 r4.w, r9.xyzw, cb2[19].xyzw  // r4.w <- streams.ShadingPosition_id0.w

#line 229
    mov o0.xyzw, r9.xyzw
    mov o1.xyz, r1.xyzx
    mov o2.xy, icb[r2.w + 0].xyxx
    mov o2.z, r4.w
    mov o3.x, r6.w
    mov o3.y, r0.x
    mov o3.z, r4.z
    mov o4.x, r6.w
    mov o4.y, r0.x
    mov o4.z, r4.z
    mov o5.x, r3.x
    mov o5.y, r3.y
    mov o5.z, r3.z
    mov o5.w, r4.w
    emit_stream m0

#line 231
    iadd r1.w, r1.w, l(1)
  endloop 

#line 232
  cut_stream m0

#line 266
endif 

#line 267
dp3 r0.x, r0.yzwy, -r7.yzwy
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 211
  mov r8.w, r4.y

#line 213
  mov r3.w, l(1.000000)

#line 205
  mov r0.x, l(4)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(8)
    breakc_nz r1.w

#line 207
    and r1.w, r0.x, l(3)

#line 190
    ishl r2.w, l(1), r0.x  // r2.w <- b

#line 191
    and r6.xyz, r2.wwww, l(0x0000a55a, 3891, 0x0000330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 210
    mul r9.xyz, r5.xyzx, r6.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 211
    mul r6.xyw, r8.xwxy, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r9.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 212
    mul r9.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r9.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 213
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 217
    dp4 r2.w, r6.xyzw, cb2[16].xyzw  // r2.w <- streams.ShadingPosition_id0.x
    dp4 r3.x, r6.xyzw, cb2[17].xyzw  // r3.x <- streams.ShadingPosition_id0.y
    dp4 r3.y, r6.xyzw, cb2[18].xyzw  // r3.y <- streams.ShadingPosition_id0.z
    dp4 r3.z, r6.xyzw, cb2[19].xyzw  // r3.z <- streams.ShadingPosition_id0.w

#line 229
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, r1.xyzx
    mov o2.xy, icb[r1.w + 0].xyxx
    mov o2.z, r3.z
    mov o3.xyz, -r7.yzwy
    mov o4.xyz, -r7.yzwy
    mov o5.x, r2.w
    mov o5.y, r3.x
    mov o5.z, r3.y
    mov o5.w, r3.z
    emit_stream m0

#line 231
    iadd r0.x, r0.x, l(1)
  endloop 

#line 232
  cut_stream m0

#line 268
endif 

#line 269
mov r4.xz, r8.xxyx
dp3 r0.x, r0.yzwy, r4.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 213
  mov r3.w, l(1.000000)

#line 205
  mov r0.x, l(8)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(12)
    breakc_nz r1.w

#line 207
    and r1.w, r0.x, l(3)

#line 190
    ishl r2.w, l(1), r0.x  // r2.w <- b

#line 191
    and r6.xyz, r2.wwww, l(0x0000a500, 3840, 0x00003300, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 210
    mul r9.xyz, r5.xyzx, r6.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 211
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r9.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 212
    mul r9.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r9.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 213
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 217
    dp4 r2.w, r6.xyzw, cb2[16].xyzw  // r2.w <- streams.ShadingPosition_id0.x
    dp4 r3.x, r6.xyzw, cb2[17].xyzw  // r3.x <- streams.ShadingPosition_id0.y
    dp4 r3.y, r6.xyzw, cb2[18].xyzw  // r3.y <- streams.ShadingPosition_id0.z
    dp4 r3.z, r6.xyzw, cb2[19].xyzw  // r3.z <- streams.ShadingPosition_id0.w

#line 229
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, r1.xyzx
    mov o2.xy, icb[r1.w + 0].xyxx
    mov o2.z, r3.z
    mov o3.xz, r8.xxyx
    mov o3.y, r4.y
    mov o4.xz, r8.xxyx
    mov o4.y, r4.y
    mov o5.x, r2.w
    mov o5.y, r3.x
    mov o5.z, r3.y
    mov o5.w, r3.z
    emit_stream m0

#line 231
    iadd r0.x, r0.x, l(1)
  endloop 

#line 232
  cut_stream m0

#line 270
endif 

#line 271
dp3 r0.x, r0.yzwy, -r4.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 213
  mov r3.w, l(1.000000)

#line 205
  mov r0.x, l(12)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(16)
    breakc_nz r1.w

#line 207
    and r1.w, r0.x, l(3)

#line 190
    ishl r2.w, l(1), r0.x  // r2.w <- b

#line 191
    and r6.xyz, r2.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 210
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 211
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 212
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 213
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 217
    dp4 r2.w, r6.xyzw, cb2[16].xyzw  // r2.w <- streams.ShadingPosition_id0.x
    dp4 r3.x, r6.xyzw, cb2[17].xyzw  // r3.x <- streams.ShadingPosition_id0.y
    dp4 r3.y, r6.xyzw, cb2[18].xyzw  // r3.y <- streams.ShadingPosition_id0.z
    dp4 r3.z, r6.xyzw, cb2[19].xyzw  // r3.z <- streams.ShadingPosition_id0.w

#line 229
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, r1.xyzx
    mov o2.xy, icb[r1.w + 0].xyxx
    mov o2.z, r3.z
    mov o3.xyz, -r4.xyzx
    mov o4.xyz, -r4.xyzx
    mov o5.x, r2.w
    mov o5.y, r3.x
    mov o5.z, r3.y
    mov o5.w, r3.z
    emit_stream m0

#line 231
    iadd r0.x, r0.x, l(1)
  endloop 

#line 232
  cut_stream m0

#line 272
endif 

#line 273
dp3 r0.x, r0.yzwy, r5.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 213
  mov r3.w, l(1.000000)

#line 205
  mov r0.x, l(16)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(20)
    breakc_nz r1.w

#line 207
    and r1.w, r0.x, l(3)

#line 190
    ishl r2.w, l(1), r0.x  // r2.w <- b

#line 191
    and r6.xyz, r2.wwww, l(0x000f0000, 0x005a0000, 0x00330000, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 210
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 211
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 212
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 213
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 217
    dp4 r2.w, r6.xyzw, cb2[16].xyzw  // r2.w <- streams.ShadingPosition_id0.x
    dp4 r3.x, r6.xyzw, cb2[17].xyzw  // r3.x <- streams.ShadingPosition_id0.y
    dp4 r3.y, r6.xyzw, cb2[18].xyzw  // r3.y <- streams.ShadingPosition_id0.z
    dp4 r3.z, r6.xyzw, cb2[19].xyzw  // r3.z <- streams.ShadingPosition_id0.w

#line 229
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, r1.xyzx
    mov o2.xy, icb[r1.w + 0].xyxx
    mov o2.z, r3.z
    mov o3.xyz, r5.xyzx
    mov o4.xyz, r5.xyzx
    mov o5.x, r2.w
    mov o5.y, r3.x
    mov o5.z, r3.y
    mov o5.w, r3.z
    emit_stream m0

#line 231
    iadd r0.x, r0.x, l(1)
  endloop 

#line 232
  cut_stream m0

#line 274
endif 

#line 275
dp3 r0.x, r0.yzwy, -r5.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 213
  mov r0.w, l(1.000000)

#line 205
  mov r1.w, l(20)  // r1.w <- i
  loop 
    uge r2.w, r1.w, l(24)
    breakc_nz r2.w

#line 207
    and r2.w, r1.w, l(3)

#line 190
    ishl r3.x, l(1), r1.w  // r3.x <- b

#line 191
    and r3.xyz, r3.xxxx, l(0x000f0000, 0x005a0000, 0x00330000, 0)
    movc r3.xyz, r3.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r3.x <- <CubeVert_id91 return value>.x; r3.y <- <CubeVert_id91 return value>.y; r3.z <- <CubeVert_id91 return value>.z

#line 210
    mul r6.xyz, r5.xyzx, r3.xxxx
    mad r6.xyz, r6.xyzx, r1.xxxx, r2.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 211
    mul r3.xyw, r4.xyxz, r3.yyyy
    mad r3.xyw, r3.xyxw, r1.yyyy, r6.xyxz  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.w <- posWorld.z

#line 212
    mul r6.xyz, r7.yzwy, r3.zzzz
    mad r0.xyz, r6.xyzx, r1.zzzz, r3.xywx  // r0.x <- posWorld.x; r0.y <- posWorld.y; r0.z <- posWorld.z

#line 213
    dp4 r3.x, r0.xyzw, cb0[0].xyzw  // r3.x <- posWorld.x
    dp4 r3.y, r0.xyzw, cb0[1].xyzw  // r3.y <- posWorld.y
    dp4 r3.z, r0.xyzw, cb0[2].xyzw  // r3.z <- posWorld.z
    dp4 r3.w, r0.xyzw, cb0[3].xyzw  // r3.w <- posWorld.w

#line 217
    dp4 r0.x, r3.xyzw, cb2[16].xyzw  // r0.x <- streams.ShadingPosition_id0.x
    dp4 r0.y, r3.xyzw, cb2[17].xyzw  // r0.y <- streams.ShadingPosition_id0.y
    dp4 r0.z, r3.xyzw, cb2[18].xyzw  // r0.z <- streams.ShadingPosition_id0.z
    dp4 r4.w, r3.xyzw, cb2[19].xyzw  // r4.w <- streams.ShadingPosition_id0.w

#line 229
    mov o0.xyzw, r3.xyzw
    mov o1.xyz, r1.xyzx
    mov o2.xy, icb[r2.w + 0].xyxx
    mov o2.z, r4.w
    mov o3.xyz, r5.xyzx
    mov o4.xyz, r5.xyzx
    mov o5.x, r0.x
    mov o5.y, r0.y
    mov o5.z, r0.z
    mov o5.w, r4.w
    emit_stream m0

#line 231
    iadd r1.w, r1.w, l(1)
  endloop 

#line 232
  cut_stream m0

#line 276
endif 

#line 277
ret 
// Approximately 281 instruction slots used
***************************
*************************/
static const float2 QuadUV_id146[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct GS_STREAMS 
{
    uint VID_id152;
    float4 PositionWS_id21;
    float3 PSize_id150;
    float2 TexCoord_id130;
    float3 normalWS_id18;
    float3 meshNormalWS_id16;
    float4 ShadingPosition_id0;
    float DepthVS_id22;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float3 PSize_id150 : PSIZE_ID150_SEM;
    float2 TexCoord_id130 : TEXCOORD0;
    float3 normalWS_id18 : NORMALWS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
};
struct GS_INPUT 
{
    uint VID_id152 : VID_ID152_SEM;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    uint VertexID_id151;
    float4 Position_id20;
    uint InstanceID_id13;
    uint VID_id152;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    uint VID_id152 : VID_ID152_SEM;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    uint VertexID_id151 : SV_VertexID;
    float4 Position_id20 : POSITION;
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
cbuffer PerDraw 
{
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
};
cbuffer PerMaterial 
{
    float ParticleSize_id149 = 0.1;
    float InputValue_id162;
    float InputValue_id171;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id83;
    float2 Texture1TexelSize_id85;
    float2 Texture2TexelSize_id87;
    float2 Texture3TexelSize_id89;
    float2 Texture4TexelSize_id91;
    float2 Texture5TexelSize_id93;
    float2 Texture6TexelSize_id95;
    float2 Texture7TexelSize_id97;
    float2 Texture8TexelSize_id99;
    float2 Texture9TexelSize_id101;
};
Texture2D Texture0_id82;
Texture2D Texture1_id84;
Texture2D Texture2_id86;
Texture2D Texture3_id88;
Texture2D Texture4_id90;
Texture2D Texture5_id92;
Texture2D Texture6_id94;
Texture2D Texture7_id96;
Texture2D Texture8_id98;
Texture2D Texture9_id100;
TextureCube TextureCube0_id102;
TextureCube TextureCube1_id103;
TextureCube TextureCube2_id104;
TextureCube TextureCube3_id105;
Texture3D Texture3D0_id106;
Texture3D Texture3D1_id107;
Texture3D Texture3D2_id108;
Texture3D Texture3D3_id109;
SamplerState Sampler_id110;
SamplerState PointSampler_id111 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id112 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id113 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id114 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id115 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id116 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id117 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id118 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id119 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id120;
SamplerState Sampler1_id121;
SamplerState Sampler2_id122;
SamplerState Sampler3_id123;
SamplerState Sampler4_id124;
SamplerState Sampler5_id125;
SamplerState Sampler6_id126;
SamplerState Sampler7_id127;
SamplerState Sampler8_id128;
SamplerState Sampler9_id129;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id148;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id154;
Texture2D EnvironmentLightingDFG_LUT_id183;
void PostTransformPosition_id89(inout VS_STREAMS streams)
{
    streams.VID_id152 = streams.VertexID_id151;
    streams.InstanceID_id13 = streams.VertexID_id151;
    streams.ShadingPosition_id0 = streams.Position_id20;
}
void TransformPosition_id88()
{
}
void PreTransformPosition_id87()
{
}
float3 CubeVert_id91(in uint vertexID)
{
    uint b = 1 << vertexID;
    return float3((0xFA55A & b) != 0, (0x5A0F33 & b) != 0, (0x33330F & b) != 0) - 0.5;
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id87();
    TransformPosition_id88();
    PostTransformPosition_id89(streams);
}
void VSMain_id0()
{
}
void SpawnQuad_id92(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, SMGridParticle p, float3 AxisX, float3 AxisY, float3 AxisZ)
{

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id130 = QuadUV_id146[i % 4].xy;
        float4 posWorld = float4(p.Pos, 1);
        float3 qPos = CubeVert_id91(i);
        posWorld.xyz += qPos.x * AxisX * streams.PSize_id150.x;
        posWorld.xyz += qPos.y * AxisY * streams.PSize_id150.y;
        posWorld.xyz += qPos.z * AxisZ * streams.PSize_id150.z;
        posWorld = mul(posWorld, World_id31);
        streams.PositionWS_id21 = posWorld;
        streams.normalWS_id18 = normal;
        streams.meshNormalWS_id16 = normal;
        streams.ShadingPosition_id0 = mul(posWorld, ViewProjection_id28);
        streams.DepthVS_id22 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id21 = streams.PositionWS_id21;
            output.PSize_id150 = streams.PSize_id150;
            output.TexCoord_id130 = streams.TexCoord_id130;
            output.normalWS_id18 = streams.normalWS_id18;
            output.meshNormalWS_id16 = streams.meshNormalWS_id16;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.DepthVS_id22 = streams.DepthVS_id22;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
}
float3x3 rot3x3_id67(float3 rotation)
{
    float3 z = float3(-rotation.x, rotation.y, -rotation.z) * acos(-1) * 2;
    float3 x = cos(z), y = sin(z);
    return float3x3(x.y * x.z + y.x * y.y * y.z, -x.x * y.z, y.x * x.y * y.z - y.y * x.z, x.y * y.z - y.x * y.y * x.z, x.x * x.z, -y.y * y.z - y.x * x.y * x.z, x.x * y.y, y.x, x.x * x.y);
}
void GenerateNormal_VS_id90()
{
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
[maxvertexcount(12)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id152 = input[0].VID_id152;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    uint id = streams.VID_id152;
    SMGridParticle p = ParticlesBuffer_id148[id];
    streams.PositionWS_id21 = float4(p.Pos.xyz, 1);
    streams.PSize_id150 = p.Size * ParticleSize_id149;
    if (dot(streams.PSize_id150, streams.PSize_id150) <= 0)
        return;
    float3x3 or = rot3x3_id67(p.Rot);
    float3 AxisX = or._m00_m01_m02;
    float3 AxisY = or._m10_m11_m12;
    float3 AxisZ = or._m20_m21_m22;
    float3 viewDir = Eye_id30.xyz - p.Pos;
    if (dot(viewDir, AxisZ) > 0)
        SpawnQuad_id92(streams, 0, triangleStream, AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisZ) > 0)
        SpawnQuad_id92(streams, 4, triangleStream, -AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisY) > 0)
        SpawnQuad_id92(streams, 8, triangleStream, AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisY) > 0)
        SpawnQuad_id92(streams, 12, triangleStream, -AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisX) > 0)
        SpawnQuad_id92(streams, 16, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisX) > 0)
        SpawnQuad_id92(streams, 20, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id151 = __input__.VertexID_id151;
    streams.Position_id20 = __input__.Position_id20;
    VSMain_id9(streams);
    GenerateNormal_VS_id90();
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id152 = streams.VID_id152;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}

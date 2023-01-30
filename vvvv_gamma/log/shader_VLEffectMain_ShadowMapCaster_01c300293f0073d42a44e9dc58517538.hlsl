/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.ModelTransformUsage: 2
@P StrideEffectBase.HasInstancing: True
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMGridMeshSelector_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MeshIndex_id142 => SMGridMeshSelector_ShaderFX.MeshIndex
@C    InputValue_id153 => ShaderFX.InputValueFloat
@C    InputValue_id162 => ShaderFX.InputValueFloat.i1
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
@R    InstanceWorld_id39 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id39 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id40 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id40 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id143 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id143 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id145 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id145 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id174 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id174 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id39 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    InstanceWorldInverse_id40 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
@R    ParticlesBuffer_id143 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: Vertex, Slot: (2-2)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Vertex, Slot: (1-1)]
@R    PerView => PerView [Stage: Vertex, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationWAndVPInstanced => 8325fb6159461ffe14f58fd5d834f811
@S    TransformationWAndVP => ea6628bcd79c8f0060c612aa9fc4819b
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    PositionHStream4 => fc5e64dda1ac2bb4a31d58404dced340
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    TransformationInstancing => ae3c8a30f5549546f12050a57609180f
@S    NormalFromMeshInstanced => 72228b53d8b9fb94a34db50c8b566ef2
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
@S    SMGridMeshSelector_ShaderFX => 19b1ef34fb398a3aa79ae25149b83614
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
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
@G    Vertex => 6c682d37e103443a8b17f6a5b0e9855e
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
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64
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
//   uint MeshIndex_id142;              // Offset:    0 Size:     4
//   float InputValue_id153;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id162;            // Offset:    8 Size:     4 [unused]
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
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
// Resource bind info for InstanceWorld_id39
// {
//
//   struct InstanceTransform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
// Resource bind info for InstanceWorldInverse_id40
// {
//
//   struct InstanceTransform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
// Resource bind info for ParticlesBuffer_id143
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
// InstanceWorld_id39                texture  struct         r/o             t0      1 
// InstanceWorldInverse_id40         texture  struct         r/o             t1      1 
// ParticlesBuffer_id143             texture  struct         r/o             t2      1 
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
// POSITION                 0   xyzw        0     NONE   float   xyzw
// SV_InstanceID            0   x           1   INSTID    uint   x   
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// MESHNORMALWS_ID16_SEM     0    yzw        3     NONE   float    yzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[8], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[20], immediateIndexed
dcl_resource_structured t0, 64
dcl_resource_structured t1, 64
dcl_resource_structured t2, 64
dcl_input v0.xyzw
dcl_input_sgv v1.x, instance_id
dcl_input v2.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.xyz
dcl_temps 10
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id15.x; v2.y <- __input__.meshNormal_id15.y; v2.z <- __input__.meshNormal_id15.z; 
//   o4.x <- <VSMain return value>.normalWS_id18.x; o4.y <- <VSMain return value>.normalWS_id18.y; o4.z <- <VSMain return value>.normalWS_id18.z; 
//   o3.x <- <VSMain return value>.DepthVS_id22; o3.y <- <VSMain return value>.meshNormalWS_id16.x; o3.z <- <VSMain return value>.meshNormalWS_id16.y; o3.w <- <VSMain return value>.meshNormalWS_id16.z; 
//   o2.x <- <VSMain return value>.PositionH_id23.x; o2.y <- <VSMain return value>.PositionH_id23.y; o2.z <- <VSMain return value>.PositionH_id23.z; o2.w <- <VSMain return value>.PositionH_id23.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 177 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_ShadowMapCaster_01c300293f0073d42a44e9dc58517538.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v1.x, l(60), t2.xxxx
ftou r0.x, r0.x  // r0.x <- m

#line 178
ieq r0.x, r0.x, cb1[0].x
if_nz r0.x

#line 166
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(0), t0.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, v1.x, l(16), t0.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, v1.x, l(32), t0.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(48), t0.xyzw
  mov r5.x, r1.x
  mov r5.y, r2.x
  mov r5.z, r3.x
  mov r5.w, r4.x
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- <GetInstanceWorld_id13 return value>._m00
  dp4 r7.x, r5.xyzw, cb0[1].xyzw  // r7.x <- <GetInstanceWorld_id13 return value>._m01
  dp4 r8.x, r5.xyzw, cb0[2].xyzw  // r8.x <- <GetInstanceWorld_id13 return value>._m02
  dp4 r5.x, r5.xyzw, cb0[3].xyzw  // r5.x <- <GetInstanceWorld_id13 return value>._m03
  mov r9.x, r1.y
  mov r9.y, r2.y
  mov r9.z, r3.y
  mov r9.w, r4.y
  dp4 r6.y, r9.xyzw, cb0[0].xyzw  // r6.y <- <GetInstanceWorld_id13 return value>._m10
  dp4 r7.y, r9.xyzw, cb0[1].xyzw  // r7.y <- <GetInstanceWorld_id13 return value>._m11
  dp4 r8.y, r9.xyzw, cb0[2].xyzw  // r8.y <- <GetInstanceWorld_id13 return value>._m12
  dp4 r5.y, r9.xyzw, cb0[3].xyzw  // r5.y <- <GetInstanceWorld_id13 return value>._m13
  mov r9.x, r1.z
  mov r9.y, r2.z
  mov r9.z, r3.z
  mov r9.w, r4.z
  dp4 r6.z, r9.xyzw, cb0[0].xyzw  // r6.z <- <GetInstanceWorld_id13 return value>._m20
  dp4 r7.z, r9.xyzw, cb0[1].xyzw  // r7.z <- <GetInstanceWorld_id13 return value>._m21
  dp4 r8.z, r9.xyzw, cb0[2].xyzw  // r8.z <- <GetInstanceWorld_id13 return value>._m22
  dp4 r5.z, r9.xyzw, cb0[3].xyzw  // r5.z <- <GetInstanceWorld_id13 return value>._m23
  mov r4.x, r1.w
  mov r4.y, r2.w
  mov r4.z, r3.w
  dp4 r6.w, r4.xyzw, cb0[0].xyzw  // r6.w <- <GetInstanceWorld_id13 return value>._m30
  dp4 r7.w, r4.xyzw, cb0[1].xyzw  // r7.w <- <GetInstanceWorld_id13 return value>._m31
  dp4 r8.w, r4.xyzw, cb0[2].xyzw  // r8.w <- <GetInstanceWorld_id13 return value>._m32
  dp4 r5.w, r4.xyzw, cb0[3].xyzw  // r6.x <- <GetInstanceWorld_id38 return value>._m00; r6.y <- <GetInstanceWorld_id38 return value>._m10; r6.z <- <GetInstanceWorld_id38 return value>._m20; r6.w <- <GetInstanceWorld_id38 return value>._m30; r7.x <- <GetInstanceWorld_id38 return value>._m01; r7.y <- <GetInstanceWorld_id38 return value>._m11; r7.z <- <GetInstanceWorld_id38 return value>._m21; r7.w <- <GetInstanceWorld_id38 return value>._m31; r8.x <- <GetInstanceWorld_id38 return value>._m02; r8.y <- <GetInstanceWorld_id38 return value>._m12; r8.z <- <GetInstanceWorld_id38 return value>._m22; r8.w <- <GetInstanceWorld_id38 return value>._m32

#line 179
endif   // r5.x <- <GetInstanceWorld_id38 return value>._m03; r5.y <- <GetInstanceWorld_id38 return value>._m13; r5.z <- <GetInstanceWorld_id38 return value>._m23; r5.w <- <GetInstanceWorld_id38 return value>._m33

#line 180
if_z r0.x
  mov r6.xyzw, l(0,0,0,0)
  mov r7.xyzw, l(0,0,0,0)
  mov r8.xyzw, l(0,0,0,0)
  mov r5.xyzw, l(0,0,0,0)
endif 

#line 198
dp4 r1.x, v0.xyzw, r6.xyzw  // r1.x <- streams.PositionWS_id21.x
dp4 r1.y, v0.xyzw, r7.xyzw  // r1.y <- streams.PositionWS_id21.y
dp4 r1.z, v0.xyzw, r8.xyzw  // r1.z <- streams.PositionWS_id21.z
dp4 r1.w, v0.xyzw, r5.xyzw  // r1.w <- streams.PositionWS_id21.w

#line 170
dp4 r2.x, r1.xyzw, cb2[16].xyzw  // r2.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r2.y, r1.xyzw, cb2[17].xyzw  // r2.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r2.z, r1.xyzw, cb2[18].xyzw  // r2.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r2.w, r1.xyzw, cb2[19].xyzw  // r2.w <- <ComputeShadingPosition_id11 return value>.w

#line 203
if_nz r0.x

#line 184
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, v1.x, l(0), t1.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(16), t1.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, v1.x, l(32), t1.xyzw
  mul r0.yzw, r3.yyyy, cb0[5].xxyz
  mad r0.yzw, cb0[4].xxyz, r3.xxxx, r0.yyzw
  mad r0.yzw, cb0[6].xxyz, r3.zzzz, r0.yyzw
  mad r0.yzw, cb0[7].xxyz, r3.wwww, r0.yyzw  // r0.y <- <GetInstanceWorldInverse_id14 return value>._m00; r0.z <- <GetInstanceWorldInverse_id14 return value>._m10; r0.w <- <GetInstanceWorldInverse_id14 return value>._m20
  mul r3.xyz, r4.yyyy, cb0[5].xyzx
  mad r3.xyz, cb0[4].xyzx, r4.xxxx, r3.xyzx
  mad r3.xyz, cb0[6].xyzx, r4.zzzz, r3.xyzx
  mad r3.xyz, cb0[7].xyzx, r4.wwww, r3.xyzx  // r3.x <- <GetInstanceWorldInverse_id14 return value>._m01; r3.y <- <GetInstanceWorldInverse_id14 return value>._m11; r3.z <- <GetInstanceWorldInverse_id14 return value>._m21
  mul r4.xyz, r5.yyyy, cb0[5].xyzx
  mad r4.xyz, cb0[4].xyzx, r5.xxxx, r4.xyzx
  mad r4.xyz, cb0[6].xyzx, r5.zzzz, r4.xyzx
  mad r4.xyz, cb0[7].xyzx, r5.wwww, r4.xyzx  // r4.x <- <GetInstanceWorldInverse_id14 return value>._m02; r4.y <- <GetInstanceWorldInverse_id14 return value>._m12; r4.z <- <GetInstanceWorldInverse_id14 return value>._m22

#line 204
  mov r5.x, r0.y  // r5.x <- <GetInstanceWorldInverse_id39 return value>._m00
  mov r5.y, r3.x  // r5.y <- <GetInstanceWorldInverse_id39 return value>._m01
  mov r5.z, r4.x  // r5.z <- <GetInstanceWorldInverse_id39 return value>._m02
  mov r6.x, r0.z  // r6.x <- <GetInstanceWorldInverse_id39 return value>._m10
  mov r6.y, r3.y  // r6.y <- <GetInstanceWorldInverse_id39 return value>._m11
  mov r6.z, r4.y  // r6.z <- <GetInstanceWorldInverse_id39 return value>._m12
  mov r4.x, r0.w  // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20
  mov r4.y, r3.z
endif   // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20; r4.y <- <GetInstanceWorldInverse_id39 return value>._m21; r4.z <- <GetInstanceWorldInverse_id39 return value>._m22

#line 205
if_z r0.x
  mov r5.xyz, l(0,0,0,0)
  mov r6.xyz, l(0,0,0,0)
  mov r4.xyz, l(0,0,0,0)
endif 

#line 218
dp3 r0.y, r5.xyzx, v2.xyzx  // r0.y <- streams.meshNormalWS_id16.x
dp3 r0.z, r6.xyzx, v2.xyzx  // r0.z <- streams.meshNormalWS_id16.y
dp3 r0.w, r4.xyzx, v2.xyzx  // r0.w <- streams.meshNormalWS_id16.z

#line 241
mov o0.xyzw, r1.xyzw
mov o1.xyzw, r2.xyzw
mov o2.xyzw, r2.xyzw
mov o3.x, r2.w
mov o3.yzw, r0.yyzw
mov o4.xyz, r0.yzwy
ret 
// Approximately 94 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
    float4 Position_id20;
    uint InstanceID_id13;
    float3 meshNormal_id15;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id23 : POSITIONH;
    float DepthVS_id22 : DEPTH_VS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float3 normalWS_id18 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id15 : NORMAL;
};
struct InstanceTransform 
{
    float4x4 Matrix;
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
    uint MeshIndex_id142;
    float InputValue_id153;
    float InputValue_id162;
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
    float2 Texture0TexelSize_id85;
    float2 Texture1TexelSize_id87;
    float2 Texture2TexelSize_id89;
    float2 Texture3TexelSize_id91;
    float2 Texture4TexelSize_id93;
    float2 Texture5TexelSize_id95;
    float2 Texture6TexelSize_id97;
    float2 Texture7TexelSize_id99;
    float2 Texture8TexelSize_id101;
    float2 Texture9TexelSize_id103;
};
Texture2D Texture0_id84;
Texture2D Texture1_id86;
Texture2D Texture2_id88;
Texture2D Texture3_id90;
Texture2D Texture4_id92;
Texture2D Texture5_id94;
Texture2D Texture6_id96;
Texture2D Texture7_id98;
Texture2D Texture8_id100;
Texture2D Texture9_id102;
TextureCube TextureCube0_id104;
TextureCube TextureCube1_id105;
TextureCube TextureCube2_id106;
TextureCube TextureCube3_id107;
Texture3D Texture3D0_id108;
Texture3D Texture3D1_id109;
Texture3D Texture3D2_id110;
Texture3D Texture3D3_id111;
SamplerState Sampler_id112;
SamplerState PointSampler_id113 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id114 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id115 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id116 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id117 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id118 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id119 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id120 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id121 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id122;
SamplerState Sampler1_id123;
SamplerState Sampler2_id124;
SamplerState Sampler3_id125;
SamplerState Sampler4_id126;
SamplerState Sampler5_id127;
SamplerState Sampler6_id128;
SamplerState Sampler7_id129;
SamplerState Sampler8_id130;
SamplerState Sampler9_id131;
StructuredBuffer<InstanceTransform> InstanceWorld_id39;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id40;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id143;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id145;
Texture2D EnvironmentLightingDFG_LUT_id174;
float4x4 GetInstanceWorld_id13(uint instanceId)
{
    return mul(InstanceWorld_id39[instanceId].Matrix, World_id31);
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
float4x4 GetInstanceWorld_id38(uint instanceId)
{
    uint m = ParticlesBuffer_id143[instanceId].Mesh;
    if (m == MeshIndex_id142)
        return GetInstanceWorld_id13(instanceId);
    return 0;
}
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return mul(WorldInverse_id32, InstanceWorldInverse_id40[instanceId].Matrix);
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id15(inout VS_STREAMS streams)
{
    streams.PositionWS_id21 = mul(streams.Position_id20, GetInstanceWorld_id38(streams.InstanceID_id13));
}
float4x4 GetInstanceWorldInverse_id39(uint instanceId)
{
    uint m = ParticlesBuffer_id143[instanceId].Mesh;
    if (m == MeshIndex_id142)
        return GetInstanceWorldInverse_id14(instanceId);
    return 0;
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id15(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void GenerateNormal_VS_id26(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul((float3x3)GetInstanceWorldInverse_id39(streams.InstanceID_id13), streams.meshNormal_id15);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id9(streams);
    GenerateNormal_VS_id26(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id23 = streams.PositionH_id23;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.meshNormalWS_id16 = streams.meshNormalWS_id16;
    __output__.normalWS_id18 = streams.normalWS_id18;
    return __output__;
}

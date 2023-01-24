/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id83 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 32]
@C    InputValue_id175 => ShaderFX.InputValueFloat4
@C    InputValue_id183 => ShaderFX.InputValueFloat
@C    InputValue_id192 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 944]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id90 => Camera.NearClipPlane
@C    FarClipPlane_id91 => Camera.FarClipPlane
@C    ZProjection_id92 => Camera.ZProjection
@C    ViewSize_id93 => Camera.ViewSize
@C    AspectRatio_id94 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id86 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id88 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id99 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id100 => LightClustered.ClusterDepthBias
@C    ClusterStride_id101 => LightClustered.ClusterStride
@C    AmbientLight_id104 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id109 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id168 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id170 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id171 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id204 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id204 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id169 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id169 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id140 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id204 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id169 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (2-2)]
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
@S    LightDirectionalGroup => 4b30b0154f396d93fd98b65dbdd2fe7f
@S    DirectLightGroupPerView => dba9b0c7c0e05b5469cf8940cc91d69c
@S    LightDirectional => 0e45e8c12e5e36d4bb0df5d5b2739bb1
@S    LightClusteredPointGroup => 843aea2daf41f8d9d51dc3f2e6983510
@S    LightClustered => 33caec9577a483e38f00249390b3c928
@S    ScreenPositionBase => 2dae8708ab57eb7bfe3be30e463a947f
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    LightPoint => 294f81466d0cada846a599c119c5fb47
@S    LightUtil => 21ef9aac4d8713802ffffd7b6a054610
@S    LightClusteredSpotGroup => 13a781ebabc5e5b807beef263ac92450
@S    LightSpot => 0c28763d5549e9d53c818622d5b67087
@S    SpotLightDataInternalShader => ebbf2821da7249148876264c5dcf660d
@S    LightSpotAttenuationDefault => e20860e5b3b88061c074f0438d523fa5
@S    LightSimpleAmbient => 1be2895cd80f1f25f0225844e19b3398
@S    LightSkyboxShader => 7bdb9a65f0d95cff0eeaad64ebe19d64
@S    IComputeEnvironmentColor => 6a62dbc486c6d4dda67154b3aefa7236
@S    SphericalHarmonicsEnvironmentColor => e4af0f396494d26684557116612d99be
@S    SphericalHarmonicsUtils => daf3f722d099facfd735f53c731dd735
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    RoughnessCubeMapEnvironmentColor => a00e41cfd6760a1623b985fedae4700d
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
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
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 934d223d6907a61625e2b0eaad985654
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id83;           // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id90;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id91;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id92;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id93;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id94;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88[8];                  // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id99;      // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id100;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id101;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id104;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id109[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id168;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id170;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id171;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID89_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id89.x; o3.y <- <VSMain return value>.ScreenPosition_id89.y; o3.z <- <VSMain return value>.ScreenPosition_id89.z; o3.w <- <VSMain return value>.ScreenPosition_id89.w; 
//   o2.x <- <VSMain return value>.normalWS_id19.x; o2.y <- <VSMain return value>.normalWS_id19.y; o2.z <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 992 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_e886c2f94a3a0a1607cca0b49fc88c46.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1077
mov o0.xyzw, r0.xyzw

#line 947
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1077
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 1032
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 1077
ret 
// Approximately 15 instruction slots used
@G    Pixel => 3c5b94f137e9446249bd74bfb7a7c47f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id83;           // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id175;           // Offset:    0 Size:    16
//   float InputValue_id183;            // Offset:   16 Size:     4
//   float InputValue_id192;            // Offset:   20 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16
//   float NearClipPlane_id90;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id91;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id92;           // Offset:  360 Size:     8
//   float2 ViewSize_id93;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id94;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88[8];                  // Offset:  416 Size:   252
//   float ClusterDepthScale_id99;      // Offset:  668 Size:     4
//   float ClusterDepthBias_id100;      // Offset:  672 Size:     4
//   float2 ClusterStride_id101;        // Offset:  676 Size:     8
//   float3 AmbientLight_id104;         // Offset:  688 Size:    12
//   float3 SphericalColors_id109[9];   // Offset:  704 Size:   140
//   float MipCount_id168;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id170;          // Offset:  848 Size:    64
//   float Intensity_id171;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id140               sampler      NA          NA             s0      1 
// EnvironmentLightingDFG_LUT_id204    texture  float4          2d             t0      1 
// LightClusters_id97                texture   uint2          3d             t1      1 
// LightIndices_id98                 texture    uint         buf             t2      1 
// PointLights_id102                 texture  float4         buf             t3      1 
// SpotLights_id103                  texture  float4         buf             t4      1 
// CubeMap_id169                     texture  float4        cube             t5      1 
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
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float     z 
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID89_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[27], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[58], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_texturecube (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id89.x; v3.y <- __input__.ScreenPosition_id89.y; v3.z <- __input__.ScreenPosition_id89.z; v3.w <- __input__.ScreenPosition_id89.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1058 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_e886c2f94a3a0a1607cca0b49fc88c46.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id89.x; r0.y <- streams.ScreenPosition_id89.y

#line 1026
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 1027
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 1000
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id68.x; r2.y <- streams.viewWS_id68.y; r2.z <- streams.viewWS_id68.z

#line 911
add r0.z, -cb1[1].x, l(1.000000)  // r0.z <- glossiness

#line 903
add r3.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb1[1].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id55.x; r3.y <- streams.matSpecular_id55.y; r3.z <- streams.matSpecular_id55.z

#line 904
mad r4.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r4.x <- streams.matDiffuse_id53.x; r4.y <- streams.matDiffuse_id53.y; r4.z <- streams.matDiffuse_id53.z

#line 768
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 725
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id72

#line 726
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 727
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id70

#line 786
mov r0.w, r5.y  // r0.w <- streams.NdotV_id72
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.viewWS_id68.x; r7.y <- streams.viewWS_id68.y; r7.z <- streams.viewWS_id68.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matDiffuseVisible_id69.x; r8.y <- streams.matDiffuseVisible_id69.y; r8.z <- streams.matDiffuseVisible_id69.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matSpecularVisible_id71.x; r9.y <- streams.matSpecularVisible_id71.y; r9.z <- streams.matSpecularVisible_id71.z
mov r9.w, r0.z  // r9.w <- streams.alphaRoughness_id70
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 788
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 790
    break 

#line 791
  endif 

#line 565
  ishl r2.w, r1.w, l(1)

#line 695
  dp3 r3.w, r6.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 697
  mul r11.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r11.x <- streams.lightColorNdotL_id44.x; r11.y <- streams.lightColorNdotL_id44.y; r11.z <- streams.lightColorNdotL_id44.z

#line 687
  add r12.xyz, r7.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r12.xyzx, r12.xyzx
  rsq r4.w, r4.w
  mul r12.xyz, r4.wwww, r12.xyzx  // r12.x <- streams.H_id75.x; r12.y <- streams.H_id75.y; r12.z <- streams.H_id75.z

#line 688
  dp3_sat r4.w, r6.xyzx, r12.xyzx  // r4.w <- streams.NdotH_id76

#line 689
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r12.xyzx  // r2.w <- streams.LdotH_id77

#line 683
  mul r12.xyz, r8.xyzx, r11.xyzx

#line 796
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 347
  add r13.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.z, r2.w, r2.w
  mul r5.z, r5.z, r5.z
  mul r2.w, r2.w, r5.z
  mad r13.xyz, r13.xyzx, r2.wwww, r9.xyzx  // r13.x <- <FresnelSchlick_id132 return value>.x; r13.y <- <FresnelSchlick_id132 return value>.y; r13.z <- <FresnelSchlick_id132 return value>.z

#line 342
  mul r2.w, r9.w, l(0.500000)  // r2.w <- k

#line 343
  mad r5.z, -r9.w, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r5.z, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id148 return value>
  mad r2.w, r0.w, r5.z, r2.w
  div r2.w, r0.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id148 return value>

#line 411
  mul r2.w, r2.w, r5.w
  mul r3.w, r0.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id150 return value>

#line 405
  mul r3.w, r9.w, r9.w  // r3.w <- alphaR2

#line 406
  mul r4.w, r4.w, r4.w
  mad r5.z, r9.w, r9.w, l(-1.000000)
  mad r4.w, r4.w, r5.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 407
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id162 return value>

#line 677
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 800
  mad r10.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 786
  iadd r1.w, r1.w, l(1)

#line 802
endloop 

#line 532
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 533
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 534
mad r0.w, r0.w, cb2[41].w, cb2[42].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 535
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 534
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 535
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t1.xyzw  // r0.x <- streams.lightData_id95.x; r0.y <- streams.lightData_id95.y

#line 665
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id190 return value>

#line 810
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id22.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id22.y; r7.y <- streams.PositionWS_id22.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id68.x; r7.w <- streams.viewWS_id68.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id68.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id70
mov r5.w, r5.y  // r5.w <- streams.NdotV_id72
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id96
mov r12.xyz, r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 812
  if_nz r2.w

#line 814
    break 

#line 815
  endif 

#line 519
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t2.yzwx  // r2.w <- realLightIndex

#line 520
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id96

#line 522
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t3.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 523
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t3.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 334
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 335
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 336
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 303
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 282
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 283
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 284
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id62 return value>

#line 304
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 651
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 653
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 687
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id75.x; r8.y <- streams.H_id75.y; r8.w <- streams.H_id75.z

#line 688
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id76

#line 689
  dp3_sat r4.w, r13.xyzx, r8.xywx  // r4.w <- streams.LdotH_id77

#line 683
  mul r8.xyw, r9.xyxz, r14.xyxz

#line 820
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 347
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id132 return value>.x; r13.y <- <FresnelSchlick_id132 return value>.y; r13.z <- <FresnelSchlick_id132 return value>.z

#line 342
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 343
  mad r9.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r9.w, r4.w
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id148 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id148 return value>

#line 411
  mul r4.w, r4.w, r10.w
  mul r3.w, r5.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id150 return value>

#line 405
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 406
  mul r2.w, r2.w, r2.w
  mad r9.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 407
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id162 return value>

#line 677
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 824
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 810
  iadd r1.w, r1.w, l(1)

#line 826
endloop   // r5.z <- streams.lightIndex_id96

#line 643
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id202 return value>

#line 834
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id22.x; r6.y <- streams.PositionWS_id22.y; r6.z <- streams.PositionWS_id22.z
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y
mov r9.xyz, r4.xyzx
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r11.x, r0.z  // r11.x <- streams.alphaRoughness_id70
mov r11.z, r5.y  // r11.z <- streams.NdotV_id72
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.z  // r0.y <- streams.lightIndex_id96
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 836
  if_nz r1.w

#line 838
    break 

#line 839
  endif 

#line 491
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t2.yzwx  // r1.w <- realLightIndex

#line 492
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id96

#line 494
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t4.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 497
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 495
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t4.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 496
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t4.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 497
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t4.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 321
  add r14.xyz, -r6.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 322
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 323
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 296
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 276
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 277
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 278
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id73 return value>

#line 297
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 288
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 289
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 290
  mul r2.w, r2.w, r2.w

#line 329
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 629
  dp3 r2.w, r7.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 631
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 687
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 688
  dp3_sat r1.w, r7.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id76

#line 689
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id77

#line 683
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 844
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 347
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id132 return value>.x; r16.y <- <FresnelSchlick_id132 return value>.y; r16.z <- <FresnelSchlick_id132 return value>.z

#line 342
  mul r3.w, r11.x, l(0.500000)  // r3.w <- k

#line 343
  mad r4.w, -r11.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id148 return value>
  mad r3.w, r11.z, r4.w, r3.w
  div r3.w, r11.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id148 return value>

#line 411
  mul r3.w, r3.w, r5.w
  mul r2.w, r11.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id150 return value>

#line 405
  mul r3.w, r11.x, r11.x  // r3.w <- alphaR2

#line 406
  mul r1.w, r1.w, r1.w
  mad r4.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 407
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id162 return value>

#line 677
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 848
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 834
  iadd r0.w, r0.w, l(1)

#line 850
endloop   // r0.y <- streams.lightIndex_id96

#line 467
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 468
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t0.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 469
mad r0.yzw, r3.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id273 return value>.x; r0.z <- <Compute_id273 return value>.y; r0.w <- <Compute_id273 return value>.z

#line 612
mul r3.xyz, r0.yzwy, cb2[43].xyzx  // r3.x <- <ComputeEnvironmentLightContribution_id452 return value>.x; r3.y <- <ComputeEnvironmentLightContribution_id452 return value>.y; r3.z <- <ComputeEnvironmentLightContribution_id452 return value>.z

#line 862
mad r3.xyz, r4.xyzx, cb2[43].xyzx, r3.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 601
dp3 r1.w, r1.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 367
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 368
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 372
mad r5.yzw, cb2[45].xxyz, r2.wwww, cb2[44].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 373
mad r5.yzw, cb2[46].xxyz, -r3.wwww, r5.yyzw

#line 374
mad r5.yzw, cb2[47].xxyz, r1.wwww, r5.yyzw

#line 377
mul r6.xyz, r2.wwww, cb2[48].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 378
mul r6.xyz, r2.wwww, cb2[49].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 379
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[50].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 380
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 381
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[52].xyzx, r1.wwww, r5.xyzx

#line 603
mul r5.xyz, r5.xyzx, cb2[57].xxxx  // r5.x <- streams.envLightDiffuseColor_id47.x; r5.y <- streams.envLightDiffuseColor_id47.y; r5.z <- streams.envLightDiffuseColor_id47.z

#line 604
dp3 r1.w, -r2.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r2.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 605
dp3 r2.x, r1.xyzx, cb2[53].xyzx  // r2.x <- sampleDirection.x
dp3 r2.y, r1.xyzx, cb2[54].xyzx  // r2.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[55].xyzx  // r1.x <- sampleDirection.z

#line 606
mov r2.z, -r1.x  // r2.z <- sampleDirection.z

#line 453
mul r0.x, r0.x, cb2[52].w  // r0.x <- mipLevel

#line 454
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r2.xyzx, t5.xyzw, s0, r0.x  // r1.x <- <Compute_id223 return value>.x; r1.y <- <Compute_id223 return value>.y; r1.z <- <Compute_id223 return value>.z

#line 607
mul r1.xyz, r1.xyzx, cb2[57].xxxx  // r1.x <- streams.envLightSpecularColor_id48.x; r1.y <- streams.envLightSpecularColor_id48.y; r1.z <- streams.envLightSpecularColor_id48.z

#line 870
mad r2.xyz, r4.xyzx, r5.xyzx, r3.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 874
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 889
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 996
utof o1.xyzw, cb0[26].xxxx

#line 1063
mov o0.w, cb1[0].w
ret 
// Approximately 289 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id87 = 8;
const static int TOrder_id106 = 3;
const static int TOrder_id108 = 3;
const static bool TInvert_id189 = true;
const static bool TIsEnergyConservative_id201 = false;
static const float PI_id203 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id89;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
    float3 viewWS_id68;
    float3 shadingColor_id73;
    float matBlend_id40;
    float3 matNormal_id51;
    float4 matColorBase_id52;
    float4 matDiffuse_id53;
    float3 matDiffuseVisible_id69;
    float3 matSpecular_id55;
    float3 matSpecularVisible_id71;
    float matSpecularIntensity_id56;
    float matGlossiness_id54;
    float alphaRoughness_id70;
    float matAmbientOcclusion_id57;
    float matAmbientOcclusionDirectLightingFactor_id58;
    float matCavity_id59;
    float matCavityDiffuse_id60;
    float matCavitySpecular_id61;
    float4 matEmissive_id62;
    float matEmissiveIntensity_id63;
    float matScatteringStrength_id64;
    float2 matDiffuseSpecularAlphaBlend_id65;
    float3 matAlphaBlendColor_id66;
    float matAlphaDiscard_id67;
    float shadingColorAlpha_id74;
    float4 Input_0_id174;
    float Input_1_id182;
    float Input_2_id191;
    float3 lightPositionWS_id41;
    float3 lightDirectionWS_id42;
    float3 lightColor_id43;
    float3 lightColorNdotL_id44;
    float3 lightSpecularColorNdotL_id45;
    float lightAttenuation_id46;
    float3 envLightDiffuseColor_id47;
    float3 envLightSpecularColor_id48;
    float lightDirectAmbientOcclusion_id50;
    float NdotL_id49;
    float NdotV_id72;
    float thicknessWS_id85;
    float3 shadowColor_id84;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id95;
    int lightIndex_id96;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
};
struct PS_INPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id89 : SCREENPOSITION_ID89_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id89;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id89 : SCREENPOSITION_ID89_SEM;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    float3 meshNormal_id16 : NORMAL;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id32;
    float4x4 WorldInverse_id33;
    float4x4 WorldInverseTranspose_id34;
    float4x4 WorldView_id35;
    float4x4 WorldViewInverse_id36;
    float4x4 WorldViewProjection_id37;
    float3 WorldScale_id38;
    float4 EyeMS_id39;
    uint MaterialIndex_id83;
};
cbuffer PerMaterial 
{
    float4 InputValue_id175;
    float InputValue_id183;
    float InputValue_id192;
};
cbuffer PerView 
{
    float4x4 View_id25;
    float4x4 ViewInverse_id26;
    float4x4 Projection_id27;
    float4x4 ProjectionInverse_id28;
    float4x4 ViewProjection_id29;
    float2 ProjScreenRay_id30;
    float4 Eye_id31;
    float NearClipPlane_id90 = 1.0f;
    float FarClipPlane_id91 = 100.0f;
    float2 ZProjection_id92;
    float2 ViewSize_id93;
    float AspectRatio_id94;
    float4 _padding_PerView_Default;
    int LightCount_id86;
    DirectionalLightData Lights_id88[TMaxLightCount_id87];
    float ClusterDepthScale_id99;
    float ClusterDepthBias_id100;
    float2 ClusterStride_id101;
    float3 AmbientLight_id104;
    float3 SphericalColors_id109[TOrder_id108 * TOrder_id108];
    float MipCount_id168;
    float4x4 SkyMatrix_id170;
    float Intensity_id171;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id111;
    float2 Texture1TexelSize_id113;
    float2 Texture2TexelSize_id115;
    float2 Texture3TexelSize_id117;
    float2 Texture4TexelSize_id119;
    float2 Texture5TexelSize_id121;
    float2 Texture6TexelSize_id123;
    float2 Texture7TexelSize_id125;
    float2 Texture8TexelSize_id127;
    float2 Texture9TexelSize_id129;
};
Texture2D Texture0_id110;
Texture2D Texture1_id112;
Texture2D Texture2_id114;
Texture2D Texture3_id116;
Texture2D Texture4_id118;
Texture2D Texture5_id120;
Texture2D Texture6_id122;
Texture2D Texture7_id124;
Texture2D Texture8_id126;
Texture2D Texture9_id128;
TextureCube TextureCube0_id130;
TextureCube TextureCube1_id131;
TextureCube TextureCube2_id132;
TextureCube TextureCube3_id133;
Texture3D Texture3D0_id134;
Texture3D Texture3D1_id135;
Texture3D Texture3D2_id136;
Texture3D Texture3D3_id137;
SamplerState Sampler_id138;
SamplerState PointSampler_id139 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id140 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id141 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id142 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id143 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id144 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id145 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id146 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id147 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id148;
SamplerState Sampler1_id149;
SamplerState Sampler2_id150;
SamplerState Sampler3_id151;
SamplerState Sampler4_id152;
SamplerState Sampler5_id153;
SamplerState Sampler6_id154;
SamplerState Sampler7_id155;
SamplerState Sampler8_id156;
SamplerState Sampler9_id157;
Texture2D EnvironmentLightingDFG_LUT_id204;
Texture3D<uint2> LightClusters_id97;
Buffer<uint> LightIndices_id98;
Buffer<float4> PointLights_id102;
Buffer<float4> SpotLights_id103;
TextureCube CubeMap_id169;
float SmoothDistanceAttenuation_id73(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id62(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id75(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id74(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id73(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id64(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id62(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id261()
{
    return InputValue_id192;
}
float Compute_id249()
{
    return InputValue_id183;
}
float4 Compute_id237()
{
    return InputValue_id175;
}
float ComputeAttenuation_id76(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id74(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id75(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id63(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id64(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id148(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id132(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id264(inout PS_STREAMS streams)
{
    streams.Input_2_id191 = Compute_id261();
}
void Compute_id252(inout PS_STREAMS streams)
{
    streams.Input_1_id182 = Compute_id249();
}
void Compute_id240(inout PS_STREAMS streams)
{
    streams.Input_0_id174 = Compute_id237();
}
float4 EvaluateSphericalHarmonics_id86(float3 sphericalColors[TOrder_id106 * TOrder_id106], float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = sphericalColors[0];

    {
        color += sphericalColors[1] * y;
        color += sphericalColors[2] * z;
        color += sphericalColors[3] * x;

        {
            color += sphericalColors[4] * y * x;
            color += sphericalColors[5] * y * z;
            color += sphericalColors[6] * (3.0 * z2 - 1.0);
            color += sphericalColors[7] * x * z;
            color += sphericalColors[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
void ProcessLight_id77(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id76(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id66(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id63(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id162(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id203 * d * d);
}
float VisibilitySmithSchlickGGX_id150(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id148(alphaR, nDotL) * VisibilityhSchlickGGX_id148(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id138(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id132(f0, 1.0f, lOrVDotH);
}
float Compute_id267(inout PS_STREAMS streams)
{
    return streams.Input_2_id191;
}
void Compute_id266(inout PS_STREAMS streams)
{

    {
        Compute_id264(streams);
    }
}
float Compute_id255(inout PS_STREAMS streams)
{
    return streams.Input_1_id182;
}
void Compute_id254(inout PS_STREAMS streams)
{

    {
        Compute_id252(streams);
    }
}
float4 Compute_id243(inout PS_STREAMS streams)
{
    return streams.Input_0_id174;
}
void Compute_id242(inout PS_STREAMS streams)
{

    {
        Compute_id240(streams);
    }
}
float4 Compute_id223(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id168;
    return CubeMap_id169.SampleLevel(LinearSampler_id140, direction, mipLevel);
}
float4 Compute_id218(float3 direction)
{
    return EvaluateSphericalHarmonics_id86(SphericalColors_id109, direction);
}
void PrepareEnvironmentLight_id90(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id273(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id204.SampleLevel(LinearSampler_id140, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id81(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id72(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id71(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id70(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id69(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id98.Load(streams.lightIndex_id96);
    streams.lightIndex_id96++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id103.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id103.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id103.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id103.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id77(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id61(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id60(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id59(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id58(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id98.Load(streams.lightIndex_id96);
    streams.lightIndex_id96++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id102.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id102.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id66(streams, pointLight);
}
void PrepareLightData_id65(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id92.y / (projectedDepth - ZProjection_id92.x);
    float2 texCoord = float2(streams.ScreenPosition_id89.x + 1, 1 - streams.ScreenPosition_id89.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id99 + ClusterDepthBias_id100), 0));
    streams.lightData_id95 = LightClusters_id97.Load(int4(texCoord * ClusterStride_id101, slice, 0));
    streams.lightIndex_id96 = streams.lightData_id95.x;
}
float Compute_id365(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id162(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id335(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id150(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id305(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id138(f0, streams.LdotH_id77);
}
float3 ComputeSpecularTextureProjection_id55(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id54(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id53(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id52(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id88[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id88[lightIndex].DirectionWS;
}
float Compute_id270(inout PS_STREAMS streams)
{
    Compute_id266(streams);
    return Compute_id267(streams);
}
float Compute_id258(inout PS_STREAMS streams)
{
    Compute_id254(streams);
    return Compute_id255(streams);
}
float4 Compute_id246(inout PS_STREAMS streams)
{
    Compute_id242(streams);
    return Compute_id243(streams);
}
void ResetStream_id165()
{
}
void AfterLightingAndShading_id422()
{
}
void AfterLightingAndShading_id403()
{
}
void PrepareEnvironmentLight_id236(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id233(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id90(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id170);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id218(sampleDirection).rgb * Intensity_id171 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id170);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id223(streams, sampleDirection).rgb * Intensity_id171 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id452(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id273(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id396(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id228(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id81(streams);
    float3 lightColor = AmbientLight_id104 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id199(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id69(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id70(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id71(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id72(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id203(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y >> 16;
}
int GetMaxLightCount_id202(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y >> 16;
}
void PrepareDirectLights_id197()
{
}
void PrepareDirectLight_id186(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id58(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id59(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id60(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id61(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id191(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y & 0xFFFF;
}
int GetMaxLightCount_id190(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y & 0xFFFF;
}
void PrepareDirectLights_id189(inout PS_STREAMS streams)
{
    PrepareLightData_id65(streams);
}
float3 ComputeDirectLightContribution_id451(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id305(streams, specularColor);
    float geometricShadowing = Compute_id335(streams);
    float normalDistribution = Compute_id365(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id395(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id203 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id175(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id52(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id53(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id54(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id55(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id177()
{
    return LightCount_id86;
}
int GetMaxLightCount_id178()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id173()
{
}
void PrepareForLightingAndShading_id419()
{
}
void PrepareForLightingAndShading_id400()
{
}
void PrepareMaterialForLightingAndShading_id164(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id163(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id41 = 0;
    streams.lightDirectionWS_id42 = 0;
    streams.lightColor_id43 = 0;
    streams.lightColorNdotL_id44 = 0;
    streams.lightSpecularColorNdotL_id45 = 0;
    streams.lightAttenuation_id46 = 1.0f;
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
    streams.lightDirectAmbientOcclusion_id50 = 1.0f;
    streams.NdotL_id49 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id272(inout PS_STREAMS streams)
{
    float x = Compute_id270(streams);
    return float4(x, x, x, x);
}
float4 Compute_id260(inout PS_STREAMS streams)
{
    float x = Compute_id258(streams);
    return float4(x, x, x, x);
}
float4 Compute_id248(inout PS_STREAMS streams)
{
    return Compute_id246(streams);
}
void ResetStream_id166(inout PS_STREAMS streams)
{
    ResetStream_id165();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id483(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id163(streams);
    PrepareMaterialForLightingAndShading_id164(streams);

    {
        PrepareForLightingAndShading_id400();
    }

    {
        PrepareForLightingAndShading_id419();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id173();
        const int maxLightCount = GetMaxLightCount_id178();
        int count = GetLightCount_id177();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id175(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id395(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id451(streams);
            }
        }
    }

    {
        PrepareDirectLights_id189(streams);
        const int maxLightCount = GetMaxLightCount_id190(streams);
        int count = GetLightCount_id191(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id186(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id395(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id451(streams);
            }
        }
    }

    {
        PrepareDirectLights_id197();
        const int maxLightCount = GetMaxLightCount_id202(streams);
        int count = GetLightCount_id203(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id199(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id395(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id451(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id228(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id396(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id452(streams);
        }
    }

    {
        PrepareEnvironmentLight_id233(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id396(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id452(streams);
        }
    }

    {
        PrepareEnvironmentLight_id236(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id396(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id452(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id203 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id403();
    }

    {
        AfterLightingAndShading_id422();
    }
}
void Compute_id467(inout PS_STREAMS streams)
{
    float metalness = Compute_id272(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id462(inout PS_STREAMS streams)
{
    float glossiness = Compute_id260(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id457(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id248(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id167(inout PS_STREAMS streams)
{
    ResetStream_id166(streams);
    streams.matNormal_id51 = float3(0, 0, 1);
    streams.matColorBase_id52 = 0.0f;
    streams.matDiffuse_id53 = 0.0f;
    streams.matDiffuseVisible_id69 = 0.0f;
    streams.matSpecular_id55 = 0.0f;
    streams.matSpecularVisible_id71 = 0.0f;
    streams.matSpecularIntensity_id56 = 1.0f;
    streams.matGlossiness_id54 = 0.0f;
    streams.alphaRoughness_id70 = 1.0f;
    streams.matAmbientOcclusion_id57 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id58 = 0.0f;
    streams.matCavity_id59 = 1.0f;
    streams.matCavityDiffuse_id60 = 0.0f;
    streams.matCavitySpecular_id61 = 0.0f;
    streams.matEmissive_id62 = 0.0f;
    streams.matEmissiveIntensity_id63 = 0.0f;
    streams.matScatteringStrength_id64 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id65 = 1.0f;
    streams.matAlphaBlendColor_id66 = 1.0f;
    streams.matAlphaDiscard_id67 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id49(inout PS_STREAMS streams)
{

    {
        Compute_id457(streams);
    }

    {
        Compute_id462(streams);
    }

    {
        Compute_id467(streams);
    }

    {
        Compute_id483(streams);
    }
}
void ResetStream_id48(inout PS_STREAMS streams)
{
    ResetStream_id167(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id22);
    streams.PositionH_id24 = streams.ShadingPosition_id0;
    streams.DepthVS_id23 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id22 = mul(streams.Position_id21, World_id32);
}
float4 Compute_id47()
{
    return MaterialIndex_id83;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id48(streams);
    Compute_id49(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
void PSMain_id1()
{
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id31(streams);
    streams.ColorTarget1_id3 = Compute_id47();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id17 = mul(streams.meshNormal_id16, (float3x3)WorldInverseTranspose_id34);
    streams.normalWS_id19 = streams.meshNormalWS_id17;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id20(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id22(streams);
    PSMain_id3(streams);
}
void VSMain_id19(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id21(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id89 = __input__.ScreenPosition_id89;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id89 /= streams.ScreenPosition_id89.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id19(streams);
    streams.ScreenPosition_id89 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id89 = streams.ScreenPosition_id89;
    return __output__;
}

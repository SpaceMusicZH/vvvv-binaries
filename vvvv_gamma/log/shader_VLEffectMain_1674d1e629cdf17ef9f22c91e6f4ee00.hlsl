/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, EnvironmentLight
@P StrideEffectBase.RenderTargetExtensions: mixin
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1328]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id180 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id182 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id184 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id185 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id188 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id189 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id190 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id191 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id192 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 32]
@C    InputValue_id196 => ShaderFX.InputValueFloat4
@C    InputValue_id204 => ShaderFX.InputValueFloat
@C    InputValue_id213 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1440]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
@C    NearClipPlane_id166 => Camera.NearClipPlane
@C    FarClipPlane_id167 => Camera.FarClipPlane
@C    ZProjection_id168 => Camera.ZProjection
@C    ViewSize_id169 => Camera.ViewSize
@C    AspectRatio_id170 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id84 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id86 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id88 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id89 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id151 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id152 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id153 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id154 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id155 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id156 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id163 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id175 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id176 => LightClustered.ClusterDepthBias
@C    ClusterStride_id177 => LightClustered.ClusterStride
@C    AmbientLight_id194 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id183 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id183 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id225 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id225 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id120 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id122 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id183 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id225 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
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
@S    ShadowMapReceiverDirectional => b81b909e86a10160b58697624ea36c97
@S    ShadowMapReceiverBase => ecd55bb03a327260ea2ea0fddfaff4b5
@S    ShadowMapGroup => 6cd78766a20ef1d6d95cbbe5eec432b6
@S    ShadowMapCommon => 53c84311eb33d99ade37ecb188ae5785
@S    ShadowMapFilterBase => e42061be9b71cb375d3566138e7d8b8d
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    ShadowMapFilterPcf => 1d20b8b1db946ed23a9d876bb8750e3c
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
@S    LightPointGroup => c44954bb5d4212f992552ae23b7fd1b8
@S    DirectLightGroupPerDraw => 800419991dc99542e48d2c03df6d1a4b
@S    ShadowMapReceiverPointCubeMap => 917296b86cabcfce241706e9fc4984f7
@S    LightSimpleAmbient => 1be2895cd80f1f25f0225844e19b3398
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
***************************
*****     Stages      *****
***************************
@G    Vertex => 761d55cce6e70b46a137e172b2136143
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
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  416 Size:    16 [unused]
//   int LightCount_id180;              // Offset:  432 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  448
//       float InvSquareRadius;         // Offset:  460
//       float3 Color;                  // Offset:  464
//
//   } Lights_id182;                    // Offset:  448 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id184; // Offset:  480 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id185;// Offset:  488 Size:     8 [unused]
//   float4x4 WorldToShadow_id188[6];   // Offset:  496 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id189[6];// Offset:  880 Size:   384 [unused]
//   float DepthBiases_id190;           // Offset: 1264 Size:     4 [unused]
//   float OffsetScales_id191;          // Offset: 1280 Size:     4 [unused]
//   float2 DepthParameters_id192;      // Offset: 1296 Size:     8 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1312 Size:    16 [unused]
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
//   float NearClipPlane_id166;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id167;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id168;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id169;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id170;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id84;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id86;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id88;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id89;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id151[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id152[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id153[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id154[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id155;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id156;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id163[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id175;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id176;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id177;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id194;         // Offset: 1408 Size:    12 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1424 Size:    16 [unused]
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID165_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id165.x; o3.y <- <VSMain return value>.ScreenPosition_id165.y; o3.z <- <VSMain return value>.ScreenPosition_id165.z; o3.w <- <VSMain return value>.ScreenPosition_id165.w; 
//   o2.x <- <VSMain return value>.DepthVS_id22; o2.y <- <VSMain return value>.normalWS_id18.x; o2.z <- <VSMain return value>.normalWS_id18.y; o2.w <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 1507 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_1674d1e629cdf17ef9f22c91e6f4ee00.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 1588
mov o0.xyzw, r0.xyzw

#line 1462
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1588
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1542
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1588
ret 
// Approximately 16 instruction slots used
@G    Pixel => 79898a3832045e4b98dd1561bf4e956e
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  416 Size:    16 [unused]
//   int LightCount_id180;              // Offset:  432 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  448
//       float InvSquareRadius;         // Offset:  460
//       float3 Color;                  // Offset:  464
//
//   } Lights_id182;                    // Offset:  448 Size:    28
//   float2 ShadowMapTextureSize_id184; // Offset:  480 Size:     8
//   float2 ShadowMapTextureTexelSize_id185;// Offset:  488 Size:     8
//   float4x4 WorldToShadow_id188[6];   // Offset:  496 Size:   384
//   float4x4 InverseWorldToShadow_id189[6];// Offset:  880 Size:   384 [unused]
//   float DepthBiases_id190;           // Offset: 1264 Size:     4
//   float OffsetScales_id191;          // Offset: 1280 Size:     4
//   float2 DepthParameters_id192;      // Offset: 1296 Size:     8
//   float4 _padding_PerDraw_Lighting;  // Offset: 1312 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id196;           // Offset:    0 Size:    16
//   float InputValue_id204;            // Offset:   16 Size:     4
//   float InputValue_id213;            // Offset:   20 Size:     4
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
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16
//   float NearClipPlane_id166;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id167;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id168;          // Offset:  360 Size:     8
//   float2 ViewSize_id169;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id170;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id84;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id86;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id88;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id89;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id151[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id152[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id153[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id154[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id155;           // Offset: 1296 Size:     4
//   float OffsetScales_id156;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id163[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id175;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id176;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id177;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id194;         // Offset: 1408 Size:    12
//   float4 _padding_PerView_Lighting;  // Offset: 1424 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id120               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id122  sampler_c      NA          NA             s1      1 
// ShadowMapTexture_id183            texture  float4          2d             t0      1 
// EnvironmentLightingDFG_LUT_id225    texture  float4          2d             t1      1 
// ShadowMapTexture_id87             texture  float4          2d             t2      1 
// LightClusters_id173               texture   uint2          3d             t3      1 
// LightIndices_id174                texture    uint         buf             t4      1 
// PointLights_id178                 texture  float4         buf             t5      1 
// SpotLights_id179                  texture  float4         buf             t6      1 
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID165_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[82], dynamicIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[89], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_temps 23
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id22; v2.y <- __input__.normalWS_id18.x; v2.z <- __input__.normalWS_id18.y; v2.w <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.ScreenPosition_id165.x; v3.y <- __input__.ScreenPosition_id165.y; v3.z <- __input__.ScreenPosition_id165.z; v3.w <- __input__.ScreenPosition_id165.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1569 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_1674d1e629cdf17ef9f22c91e6f4ee00.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id165.x; r0.y <- streams.ScreenPosition_id165.y

#line 1536
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1537
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1511
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id67.x; r2.y <- streams.viewWS_id67.y; r2.z <- streams.viewWS_id67.z

#line 1426
add r0.z, -cb1[1].x, l(1.000000)  // r0.z <- glossiness

#line 1418
add r3.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb1[1].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id54.x; r3.y <- streams.matSpecular_id54.y; r3.z <- streams.matSpecular_id54.z

#line 1419
mad r4.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r4.x <- streams.matDiffuse_id52.x; r4.y <- streams.matDiffuse_id52.y; r4.z <- streams.matDiffuse_id52.z

#line 1271
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z

#line 1228
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id71

#line 1229
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 1230
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id69

#line 827
dp2 r0.w, cb2[82].xxxx, cb2[28].zzzz

#line 819
mov r6.w, l(1.000000)

#line 1289
mov r1.w, r5.y  // r1.w <- streams.NdotV_id71
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id18.x; r7.y <- streams.normalWS_id18.y; r7.z <- streams.normalWS_id18.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id21.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id21.y; r8.y <- streams.PositionWS_id21.z
mov r8.zw, r2.xxxy  // r8.z <- streams.viewWS_id67.x; r8.w <- streams.viewWS_id67.y
mov r9.z, r2.z  // r9.z <- streams.viewWS_id67.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id68.x; r10.y <- streams.matDiffuseVisible_id68.y; r10.z <- streams.matDiffuseVisible_id68.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id70.x; r11.y <- streams.matSpecularVisible_id70.y; r11.z <- streams.matSpecularVisible_id70.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id69
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, v2.x  // r2.w <- streams.DepthVS_id22
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, l(1)
  breakc_nz r4.w

#line 1291
  ige r4.w, r3.w, cb2[25].x
  if_nz r4.w

#line 1293
    break 

#line 1294
  endif 

#line 1198
  dp3 r4.w, r7.xyzx, -cb2[26].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id48

#line 1014
  ishl r5.z, r3.w, l(2)  // r5.z <- cascadeIndexBase

#line 1021
  lt r5.w, cb2[r5.z + 83].x, r2.w

#line 1024
  and r5.w, r5.w, l(1)  // r5.w <- cascadeIndex

#line 1021
  bfi r13.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r3.wwww, l(1, 2, 0, 0)
  lt r9.w, cb2[r13.x + 83].x, r2.w

#line 1024
  movc r5.w, r9.w, l(2), r5.w

#line 1021
  lt r9.w, cb2[r13.y + 83].x, r2.w

#line 1024
  movc r5.w, r9.w, l(3), r5.w

#line 826
  add r10.w, -r4.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale

#line 827
  mul r10.w, r0.w, r10.w

#line 1029
  mov r13.x, r7.w
  mov r13.yz, r8.xxyx
  mad r6.xyz, r10.wwww, r7.xyzx, r13.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 819
  bfi r10.w, l(30), l(2), r3.w, r5.w
  ishl r12.w, r5.w, l(2)
  bfi r12.w, l(30), l(4), r3.w, r12.w
  dp4 r13.x, r6.xyzw, cb2[r12.w + 29].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r6.xyzw, cb2[r12.w + 30].xyzw  // r13.y <- shadowPosition.y
  dp4 r13.w, r6.xyzw, cb2[r12.w + 31].xyzw  // r13.w <- shadowPosition.z
  dp4 r12.w, r6.xyzw, cb2[r12.w + 32].xyzw  // r12.w <- shadowPosition.w

#line 820
  add r13.z, r13.w, -cb2[81].x  // r13.z <- shadowPosition.z

#line 821
  div r13.xyz, r13.xyzx, r12.wwww

#line 610
  mad r13.xy, r13.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 611
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- st.x; r13.y <- st.y

#line 612
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 613
  mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 419
  mad r14.zw, -r13.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r14.z <- uvW0.y; r14.w <- uvW0.x

#line 421
  mad r15.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.x <- uvW2.x; r15.y <- uvW2.y

#line 422
  mad r15.zw, -r13.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r15.zw, r15.zzzw, r14.wwwz
  add r16.xw, r15.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- uv0.x; r16.w <- uv0.y

#line 423
  add r15.zw, r13.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  mul r16.yz, r15.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.y <- uv1.y; r16.z <- uv1.x

#line 424
  div r13.xy, r13.xyxx, r15.xyxx
  add r17.xy, r13.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r17.x <- uv2.x; r17.y <- uv2.y

#line 425
  mul r12.w, r14.z, r14.w

#line 426
  mad r18.xyzw, r16.xwzw, cb2[28].zwzw, r14.xyxy

#line 430
  mov r17.zw, r16.wwwy

#line 428
  mul r13.xy, r14.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 429
  mad r19.xyzw, r16.xyzy, cb2[28].zwzw, r14.xyxy

#line 430
  mad r20.xyzw, r17.xzxw, cb2[28].zwzw, r14.xyxy

#line 431
  mov r16.y, r17.y
  mul r14.zw, r14.zzzw, r15.xxxy

#line 432
  mad r16.xyzw, r16.xyzy, cb2[28].zwzw, r14.xyxy
  mul r15.zw, r15.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 433
  mad r14.xy, r17.xyxx, cb2[28].zwzz, r14.xyxx
  mul r13.w, r15.y, r15.x

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.x, r18.xyxx, t2.xxxx, s1, r13.z  // r15.x <- <SampleTextureAndCompare_id64 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.y, r18.zwzz, t2.xxxx, s1, r13.z  // r15.y <- <SampleTextureAndCompare_id64 return value>

#line 719
  mul r13.x, r13.x, r15.y
  mad r12.w, r12.w, r15.x, r13.x  // r12.w <- shadow

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r20.xyxx, t2.xxxx, s1, r13.z  // r13.x <- <SampleTextureAndCompare_id64 return value>

#line 719
  mad r12.w, r14.z, r13.x, r12.w

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r19.xyxx, t2.xxxx, s1, r13.z

#line 719
  mad r12.w, r13.y, r13.x, r12.w

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r19.zwzz, t2.xxxx, s1, r13.z

#line 719
  mad r12.w, r13.x, l(49.000000), r12.w

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r20.zwzz, t2.xxxx, s1, r13.z

#line 719
  mad r12.w, r15.z, r13.x, r12.w

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r16.xyxx, t2.xxxx, s1, r13.z

#line 719
  mad r12.w, r14.w, r13.x, r12.w

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r16.zwzz, t2.xxxx, s1, r13.z

#line 719
  mad r12.w, r15.w, r13.x, r12.w

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r14.xyxx, t2.xxxx, s1, r13.z

#line 719
  mad r12.w, r13.w, r13.x, r12.w

#line 721
  mul r13.xyz, r12.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r13.z <- shadow

#line 1035
  ilt r13.w, l(0), r5.w
  if_nz r13.w

#line 1037
    iadd r13.w, r10.w, l(-1)
    add r13.w, -cb2[r13.w + 83].x, cb2[r10.w + 83].x  // r13.w <- splitSize

#line 1038
  else 
    mov r13.w, cb2[r10.w + 83].x  // r13.w <- splitSize
  endif 

#line 1039
  add r10.w, -r2.w, cb2[r10.w + 83].x
  div r10.w, r10.w, r13.w  // r10.w <- splitDist

#line 1040
  lt r13.w, r10.w, l(0.200000)
  if_nz r13.w

#line 1043
    if_nz r9.w

#line 1045
      mov r13.xyz, r13.zzzz  // r13.x <- shadow.x; r13.y <- shadow.y; r13.z <- shadow.z
    else 

#line 1042
      mul_sat r9.w, r10.w, l(5.000000)
      mad r10.w, r9.w, l(-2.000000), l(3.000000)
      mul r9.w, r9.w, r9.w
      mul r9.w, r9.w, r10.w  // r9.w <- lerpAmt

#line 819
      ishl r5.z, r5.z, l(2)
      imad r5.z, r5.w, l(4), r5.z
      iadd r5.z, r5.z, l(4)
      dp4 r14.x, r6.xyzw, cb2[r5.z + 29].xyzw  // r14.x <- shadowPosition.x
      dp4 r14.y, r6.xyzw, cb2[r5.z + 30].xyzw  // r14.y <- shadowPosition.y
      dp4 r5.w, r6.xyzw, cb2[r5.z + 31].xyzw  // r5.w <- shadowPosition.z
      dp4 r5.z, r6.xyzw, cb2[r5.z + 32].xyzw  // r5.z <- shadowPosition.w

#line 820
      add r14.z, r5.w, -cb2[81].x  // r14.z <- shadowPosition.z

#line 821
      div r6.xyz, r14.xyzx, r5.zzzz  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 610
      mad r5.zw, r6.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 611
      add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 612
      add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 613
      mul r6.xy, r6.xyxx, cb2[28].zwzz

#line 419
      mad r14.xy, -r5.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r14.x <- uvW0.y; r14.y <- uvW0.x

#line 421
      mad r14.zw, r5.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r14.z <- uvW2.x; r14.w <- uvW2.y

#line 422
      mad r15.xy, -r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r15.xy, r15.xyxx, r14.yxyy
      add r15.xw, r15.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r15.x <- uv0.x; r15.w <- uv0.y

#line 423
      add r16.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r15.yz, r16.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r15.y <- uv1.y; r15.z <- uv1.x

#line 424
      div r5.zw, r5.zzzw, r14.zzzw
      add r16.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- uv2.x; r16.y <- uv2.y

#line 433
      mul r5.zw, r14.xxxw, r14.yyyz

#line 426
      mad r17.xyzw, r15.xwzw, cb2[28].zwzw, r6.xyxy

#line 430
      mov r16.zw, r15.wwwy

#line 428
      mul r18.xy, r14.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 429
      mad r19.xyzw, r15.xyzy, cb2[28].zwzw, r6.xyxy

#line 430
      mad r20.xyzw, r16.xzxw, cb2[28].zwzw, r6.xyxy

#line 431
      mov r15.y, r16.y
      mul r14.xy, r14.xyxx, r14.zwzz

#line 432
      mad r15.xyzw, r15.xyzy, cb2[28].zwzw, r6.xyxy
      mul r16.zw, r14.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 433
      mad r6.xy, r16.xyxx, cb2[28].zwzz, r6.xyxx

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r17.xyxx, t2.xxxx, s1, r6.z  // r10.w <- <SampleTextureAndCompare_id64 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r17.zwzz, t2.xxxx, s1, r6.z  // r13.w <- <SampleTextureAndCompare_id64 return value>

#line 719
      mul r13.w, r13.w, r18.x
      mad r5.z, r5.z, r10.w, r13.w  // r5.z <- shadow

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r20.xyxx, t2.xxxx, s1, r6.z  // r10.w <- <SampleTextureAndCompare_id64 return value>

#line 719
      mad r5.z, r14.x, r10.w, r5.z

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r19.xyxx, t2.xxxx, s1, r6.z

#line 719
      mad r5.z, r18.y, r10.w, r5.z

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r19.zwzz, t2.xxxx, s1, r6.z

#line 719
      mad r5.z, r10.w, l(49.000000), r5.z

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r20.zwzz, t2.xxxx, s1, r6.z

#line 719
      mad r5.z, r16.z, r10.w, r5.z

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r15.xyxx, t2.xxxx, s1, r6.z

#line 719
      mad r5.z, r14.y, r10.w, r5.z

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r15.zwzz, t2.xxxx, s1, r6.z

#line 719
      mad r5.z, r16.w, r10.w, r5.z

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r6.xyxx, t2.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id64 return value>

#line 719
      mad r5.z, r5.w, r6.x, r5.z

#line 721
      mul r5.z, r5.z, l(0.006944)

#line 1049
      mad r5.w, r12.w, l(0.006944), -r5.z
      mad r13.xyz, r9.wwww, r5.wwww, r5.zzzz  // r13.x <- shadow.x; r13.y <- shadow.y; r13.z <- shadow.z

#line 1050
    endif 

#line 1051
  endif 

#line 1200
  mul r6.xyz, r13.xyzx, cb2[27].xyzx
  mul r6.xyz, r4.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id43.x; r6.y <- streams.lightColorNdotL_id43.y; r6.z <- streams.lightColorNdotL_id43.z

#line 1190
  mov r9.xy, r8.zwzz
  add r9.xyw, r9.xyxz, -cb2[26].xyxz
  dp3 r5.z, r9.xywx, r9.xywx
  rsq r5.z, r5.z
  mul r9.xyw, r5.zzzz, r9.xyxw  // r9.x <- streams.H_id74.x; r9.y <- streams.H_id74.y; r9.w <- streams.H_id74.z

#line 1191
  dp3_sat r5.z, r7.xyzx, r9.xywx  // r5.z <- streams.NdotH_id75

#line 1192
  dp3_sat r5.w, -cb2[26].xyzx, r9.xywx  // r5.w <- streams.LdotH_id76

#line 1186
  mul r9.xyw, r6.xyxz, r10.xyxz

#line 1299
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 689
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r10.w, r5.w, r5.w
  mul r10.w, r10.w, r10.w
  mul r5.w, r5.w, r10.w
  mad r13.xyz, r13.xyzx, r5.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id165 return value>.x; r13.y <- <FresnelSchlick_id165 return value>.y; r13.z <- <FresnelSchlick_id165 return value>.z

#line 684
  mul r5.w, r11.w, l(0.500000)  // r5.w <- k

#line 685
  mad r10.w, -r11.w, l(0.500000), l(1.000000)
  mad r12.w, r4.w, r10.w, r5.w
  div r12.w, r4.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id181 return value>
  mad r5.w, r1.w, r10.w, r5.w
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id181 return value>

#line 806
  mul r5.w, r5.w, r12.w
  mul r4.w, r1.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id183 return value>

#line 800
  mul r5.w, r11.w, r11.w  // r5.w <- alphaR2

#line 801
  mul r5.z, r5.z, r5.z
  mad r10.w, r11.w, r11.w, l(-1.000000)
  mad r5.z, r5.z, r10.w, l(1.000000)
  max r5.z, r5.z, l(0.000100)  // r5.z <- d

#line 802
  mul r5.z, r5.z, r5.z
  mul r5.z, r5.z, l(3.141593)
  div r5.z, r5.w, r5.z  // r5.z <- <NormalDistributionGGX_id195 return value>

#line 1180
  mul r13.xyz, r4.wwww, r13.xyzx
  mul r13.xyz, r5.zzzz, r13.xyzx
  mul r6.xyz, r6.xyzx, r13.xyzx

#line 1303
  mad r12.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1289
  iadd r3.w, r3.w, l(1)

#line 1305
endloop 

#line 986
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 987
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 988
mad r0.w, r0.w, cb2[86].y, cb2[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 989
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 988
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 989
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t3.xyzw  // r0.x <- streams.lightData_id171.x; r0.y <- streams.lightData_id171.y

#line 1168
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id236 return value>

#line 1313
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id18.x; r6.y <- streams.normalWS_id18.y; r6.z <- streams.normalWS_id18.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id21.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id21.y; r7.y <- streams.PositionWS_id21.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id67.x; r7.w <- streams.viewWS_id67.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id67.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id68.x; r9.y <- streams.matDiffuseVisible_id68.y; r9.z <- streams.matDiffuseVisible_id68.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id70.x; r10.y <- streams.matSpecularVisible_id70.y; r10.z <- streams.matSpecularVisible_id70.z
mov r10.w, r0.z  // r10.w <- streams.alphaRoughness_id69
mov r5.w, r5.y  // r5.w <- streams.NdotV_id71
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id172
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1315
  if_nz r2.w

#line 1317
    break 

#line 1318
  endif 

#line 973
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 974
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id172

#line 976
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t5.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 977
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t5.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 676
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 677
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 678
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 551
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 401
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 402
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 403
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id78 return value>

#line 552
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1154
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id48

#line 1156
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id43.x; r14.y <- streams.lightColorNdotL_id43.y; r14.z <- streams.lightColorNdotL_id43.z

#line 1190
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id74.x; r8.y <- streams.H_id74.y; r8.w <- streams.H_id74.z

#line 1191
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id75

#line 1192
  dp3_sat r4.w, r13.xyzx, r8.xywx  // r4.w <- streams.LdotH_id76

#line 1186
  mul r8.xyw, r9.xyxz, r14.xyxz

#line 1323
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r11.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 689
  add r13.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r10.xyzx  // r13.x <- <FresnelSchlick_id165 return value>.x; r13.y <- <FresnelSchlick_id165 return value>.y; r13.z <- <FresnelSchlick_id165 return value>.z

#line 684
  mul r4.w, r10.w, l(0.500000)  // r4.w <- k

#line 685
  mad r9.w, -r10.w, l(0.500000), l(1.000000)
  mad r11.w, r3.w, r9.w, r4.w
  div r11.w, r3.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id181 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id181 return value>

#line 806
  mul r4.w, r4.w, r11.w
  mul r3.w, r5.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id183 return value>

#line 800
  mul r4.w, r10.w, r10.w  // r4.w <- alphaR2

#line 801
  mul r2.w, r2.w, r2.w
  mad r9.w, r10.w, r10.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 802
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id195 return value>

#line 1180
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 1327
  mad r11.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1313
  iadd r1.w, r1.w, l(1)

#line 1329
endloop   // r5.z <- streams.lightIndex_id172

#line 1146
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id248 return value>

#line 1337
mov r6.xyz, r1.xyzx
mov r6.w, v0.x
mov r7.xy, v0.yzyy
mov r7.zw, r2.xxxy
mov r8.z, r2.z
mov r9.xyz, r4.xyzx
mov r10.xyz, r3.xyzx
mov r12.x, r0.z  // r12.x <- streams.alphaRoughness_id69
mov r12.z, r5.y  // r12.z <- streams.NdotV_id71
mov r13.xyz, r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.z  // r0.y <- streams.lightIndex_id172
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 1339
  if_nz r1.w

#line 1341
    break 

#line 1342
  endif 

#line 945
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t4.yzwx  // r1.w <- realLightIndex

#line 946
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id172

#line 948
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t6.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 951
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 949
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t6.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 950
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t6.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 951
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t6.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 663
  mov r18.x, r6.w
  mov r18.yz, r7.xxyx
  add r14.xyz, r14.xyzx, -r18.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 664
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 665
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 544
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 395
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 396
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 397
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id89 return value>

#line 545
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 536
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 537
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 538
  mul r2.w, r2.w, r2.w

#line 671
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1132
  dp3 r2.w, r6.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id48

#line 1134
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id43.x; r15.y <- streams.lightColorNdotL_id43.y; r15.z <- streams.lightColorNdotL_id43.z

#line 1190
  mov r8.xy, r7.zwzz
  add r8.xyw, r14.xyxz, r8.xyxz
  dp3 r1.w, r8.xywx, r8.xywx
  rsq r1.w, r1.w
  mul r8.xyw, r1.wwww, r8.xyxw  // r8.x <- streams.H_id74.x; r8.y <- streams.H_id74.y; r8.w <- streams.H_id74.z

#line 1191
  dp3_sat r1.w, r6.xyzx, r8.xywx  // r1.w <- streams.NdotH_id75

#line 1192
  dp3_sat r3.w, r14.xyzx, r8.xywx  // r3.w <- streams.LdotH_id76

#line 1186
  mul r8.xyw, r9.xyxz, r15.xyxz

#line 1347
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 689
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r14.xyz, r14.xyzx, r3.wwww, r10.xyzx  // r14.x <- <FresnelSchlick_id165 return value>.x; r14.y <- <FresnelSchlick_id165 return value>.y; r14.z <- <FresnelSchlick_id165 return value>.z

#line 684
  mul r3.w, r12.x, l(0.500000)  // r3.w <- k

#line 685
  mad r4.w, -r12.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id181 return value>
  mad r3.w, r12.z, r4.w, r3.w
  div r3.w, r12.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id181 return value>

#line 806
  mul r3.w, r3.w, r5.w
  mul r2.w, r12.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id183 return value>

#line 800
  mul r3.w, r12.x, r12.x  // r3.w <- alphaR2

#line 801
  mul r1.w, r1.w, r1.w
  mad r4.w, r12.x, r12.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 802
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id195 return value>

#line 1180
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r1.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1351
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1337
  iadd r0.w, r0.w, l(1)

#line 1353
endloop   // r0.y <- streams.lightIndex_id172

#line 760
dp2 r0.x, cb0[80].xxxx, cb0[30].zzzz

#line 906
mov r6.w, l(4)
mov r7.xz, l(0,0,2,0)

#line 912
mov r8.w, l(1.000000)

#line 1361
mov r9.xyz, r1.xyzx  // r9.x <- streams.normalWS_id18.x; r9.y <- streams.normalWS_id18.y; r9.z <- streams.normalWS_id18.z
mov r9.w, v0.x  // r9.w <- streams.PositionWS_id21.x
mov r10.xy, v0.yzyy  // r10.x <- streams.PositionWS_id21.y; r10.y <- streams.PositionWS_id21.z
mov r10.zw, r2.xxxy  // r10.z <- streams.viewWS_id67.x; r10.w <- streams.viewWS_id67.y
mov r11.z, r2.z  // r11.z <- streams.viewWS_id67.z
mov r12.xyz, r4.xyzx  // r12.x <- streams.matDiffuseVisible_id68.x; r12.y <- streams.matDiffuseVisible_id68.y; r12.z <- streams.matDiffuseVisible_id68.z
mov r14.xyz, r3.xyzx  // r14.x <- streams.matSpecularVisible_id70.x; r14.y <- streams.matSpecularVisible_id70.y; r14.z <- streams.matSpecularVisible_id70.z
mov r15.x, r0.z  // r15.x <- streams.alphaRoughness_id69
mov r15.z, r5.y  // r15.z <- streams.NdotV_id71
mov r16.xyz, r13.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r0.w, r0.y, l(1)
  breakc_nz r0.w

#line 1363
  ige r0.w, r0.y, cb0[27].x
  if_nz r0.w

#line 1365
    break 

#line 1366
  endif 

#line 655
  mov r17.x, r9.w
  mov r17.yz, r10.xxyx
  add r18.xyz, -r17.xyzx, cb0[28].xyzx  // r18.x <- lightVector.x; r18.y <- lightVector.y; r18.z <- lightVector.z

#line 656
  dp3 r0.w, r18.xyzx, r18.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength

#line 657
  div r18.xyz, r18.xyzx, r1.wwww  // r18.x <- lightVectorNorm.x; r18.y <- lightVectorNorm.y; r18.z <- lightVectorNorm.z

#line 530
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 389
  mul r0.w, r0.w, cb0[28].w  // r0.w <- factor

#line 390
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor

#line 391
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id100 return value>

#line 531
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 1110
  dp3 r1.w, r9.xyzx, r18.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id48

#line 884
  add r6.xyz, r17.xyzx, -cb0[28].xyzx  // r6.x <- lightDelta.x; r6.y <- lightDelta.y; r6.z <- lightDelta.z

#line 885
  dp3 r2.w, r6.xyzx, r6.xyzx
  sqrt r2.w, r2.w  // r2.w <- distanceToLight

#line 886
  div r19.xyz, r6.xyzx, r2.wwww  // r19.x <- direction.x; r19.y <- direction.y; r19.z <- direction.z

#line 888
  max r2.w, |r19.z|, |r19.y|
  max r2.w, r2.w, |r19.x|  // r2.w <- longestAxis

#line 897
  eq r5.zw, r2.wwww, |r19.xxxy|

#line 906
  mov r7.yw, r6.zzzx
  movc r6.xy, r5.wwww, r6.wyww, r7.xyxx  // r6.x <- faceIndex; r6.y <- lightSpaceZ
  movc r5.zw, r5.zzzz, r7.zzzw, r6.xxxy  // r5.z <- faceIndex; r5.w <- lightSpaceZ

#line 915
  add r2.w, |r5.w|, -cb0[79].x  // r2.w <- lightSpaceZ

#line 916
  div r2.w, cb0[81].y, r2.w
  add r2.w, r2.w, cb0[81].x  // r2.w <- depth

#line 917
  lt r3.w, r2.w, l(0.000000)
  lt r4.w, l(1.000000), r2.w
  or r3.w, r3.w, r4.w

#line 919
  if_z r3.w

#line 907
    lt r3.w, l(0.000000), r5.w
    lt r4.w, r5.w, l(0.000000)
    iadd r3.w, -r3.w, r4.w
    itof r3.w, r3.w  // r3.w <- lightSpaceZDirection

#line 908
    min r3.w, r3.w, l(0.000000)
    ftoi r3.w, -r3.w
    iadd r3.w, r3.w, r5.z  // r3.w <- faceIndex

#line 909
    imad r3.w, r0.y, l(6), r3.w

#line 759
    add r4.w, -r1.w, l(1.000000)
    max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 760
    mul r4.w, r0.x, r4.w

#line 911
    mad r8.xyz, r4.wwww, r9.xyzx, r17.xyzx  // r8.x <- positionWS.x; r8.y <- positionWS.y; r8.z <- positionWS.z

#line 912
    ishl r3.w, r3.w, l(2)
    dp4 r6.x, r8.xyzw, cb0[r3.w + 31].xyzw  // r6.x <- projectedPosition.x
    dp4 r6.y, r8.xyzw, cb0[r3.w + 32].xyzw  // r6.y <- projectedPosition.y
    dp4 r3.w, r8.xyzw, cb0[r3.w + 34].xyzw  // r3.w <- projectedPosition.w

#line 913
    div r5.zw, r6.xxxy, r3.wwww  // r5.z <- projectedPosition.x; r5.w <- projectedPosition.y

#line 634
    mad r5.zw, r5.zzzw, cb0[30].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
    round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 635
    add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 636
    add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 637
    mul r6.xy, r6.xyxx, cb0[30].zwzz

#line 327
    mad r7.yw, -r5.wwwz, l(0.000000, 3.000000, 0.000000, 3.000000), l(0.000000, 4.000000, 0.000000, 4.000000)  // r7.y <- uvW0.y; r7.w <- uvW0.x

#line 329
    mad r8.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r8.x <- uvW2.x; r8.y <- uvW2.y

#line 330
    mad r15.yw, -r5.zzzw, l(0.000000, 2.000000, 0.000000, 2.000000), l(0.000000, 3.000000, 0.000000, 3.000000)
    div r15.yw, r15.yyyw, r7.wwwy
    add r17.xw, r15.yyyw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- uv0.x; r17.w <- uv0.y

#line 331
    add r15.yw, r5.zzzw, l(0.000000, 3.000000, 0.000000, 3.000000)
    mul r17.yz, r15.wwyw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.y <- uv1.y; r17.z <- uv1.x

#line 332
    div r5.zw, r5.zzzw, r8.xxxy
    add r19.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r19.x <- uv2.x; r19.y <- uv2.y

#line 333
    mul r3.w, r7.y, r7.w

#line 334
    mad r20.xyzw, r17.xwzw, cb0[30].zwzw, r6.xyxy

#line 338
    mov r19.zw, r17.wwwy

#line 336
    mul r5.zw, r7.yyyw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 337
    mad r21.xyzw, r17.xyzy, cb0[30].zwzw, r6.xyxy

#line 338
    mad r22.xyzw, r19.xzxw, cb0[30].zwzw, r6.xyxy

#line 339
    mov r17.y, r19.y
    mul r7.yw, r7.yyyw, r8.xxxy

#line 340
    mad r17.xyzw, r17.xyzy, cb0[30].zwzw, r6.xyxy
    mul r15.yw, r8.xxxy, l(0.000000, 7.000000, 0.000000, 7.000000)

#line 341
    mad r6.xy, r19.xyxx, cb0[30].zwzz, r6.xyxx
    mul r4.w, r8.y, r8.x

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r20.xyxx, t0.xxxx, s1, r2.w  // r6.z <- <SampleTextureAndCompare_id112 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r20.zwzz, t0.xxxx, s1, r2.w  // r8.x <- <SampleTextureAndCompare_id112 return value>

#line 751
    mul r5.z, r5.z, r8.x
    mad r3.w, r3.w, r6.z, r5.z  // r3.w <- shadow

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r22.xyxx, t0.xxxx, s1, r2.w  // r5.z <- <SampleTextureAndCompare_id112 return value>

#line 751
    mad r3.w, r7.y, r5.z, r3.w

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r21.xyxx, t0.xxxx, s1, r2.w

#line 751
    mad r3.w, r5.w, r5.z, r3.w

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r21.zwzz, t0.xxxx, s1, r2.w

#line 751
    mad r3.w, r5.z, l(49.000000), r3.w

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r22.zwzz, t0.xxxx, s1, r2.w

#line 751
    mad r3.w, r15.y, r5.z, r3.w

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r17.xyxx, t0.xxxx, s1, r2.w

#line 751
    mad r3.w, r7.w, r5.z, r3.w

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r17.zwzz, t0.xxxx, s1, r2.w

#line 751
    mad r3.w, r15.w, r5.z, r3.w

#line 629
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r6.xyxx, t0.xxxx, s1, r2.w  // r2.w <- <SampleTextureAndCompare_id112 return value>

#line 751
    mad r2.w, r4.w, r2.w, r3.w  // r2.w <- shadow

#line 753
    mul r6.xyz, r2.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r6.z <- shadow

#line 920
  else   // Prior locations: r6.z <- lightDelta.z; r19.x <- direction.x; r19.y <- direction.y; r19.z <- direction.z; r5.z <- faceIndex; r2.w <- depth
    mov r6.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1112
  mul r8.xyz, r0.wwww, cb0[29].xyzx
  mul r6.xyz, r6.xyzx, r8.xyzx
  mul r6.xyz, r1.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id43.x; r6.y <- streams.lightColorNdotL_id43.y; r6.z <- streams.lightColorNdotL_id43.z

#line 1190
  mov r11.xy, r10.zwzz
  add r8.xyz, r18.xyzx, r11.xyzx
  dp3 r0.w, r8.xyzx, r8.xyzx
  rsq r0.w, r0.w
  mul r8.xyz, r0.wwww, r8.xyzx  // r8.x <- streams.H_id74.x; r8.y <- streams.H_id74.y; r8.z <- streams.H_id74.z

#line 1191
  dp3_sat r0.w, r9.xyzx, r8.xyzx  // r0.w <- streams.NdotH_id75

#line 1192
  dp3_sat r2.w, r18.xyzx, r8.xyzx  // r2.w <- streams.LdotH_id76

#line 1186
  mul r8.xyz, r6.xyzx, r12.xyzx

#line 1371
  mad r8.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r16.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 689
  add r11.xyw, -r14.xyxz, l(1.000000, 1.000000, 0.000000, 1.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r3.w, r2.w, r2.w
  mul r3.w, r3.w, r3.w
  mul r2.w, r2.w, r3.w
  mad r11.xyw, r11.xyxw, r2.wwww, r14.xyxz  // r11.x <- <FresnelSchlick_id165 return value>.x; r11.y <- <FresnelSchlick_id165 return value>.y; r11.w <- <FresnelSchlick_id165 return value>.z

#line 684
  mul r2.w, r15.x, l(0.500000)  // r2.w <- k

#line 685
  mad r3.w, -r15.x, l(0.500000), l(1.000000)
  mad r4.w, r1.w, r3.w, r2.w
  div r4.w, r1.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id181 return value>
  mad r2.w, r15.z, r3.w, r2.w
  div r2.w, r15.z, r2.w  // r2.w <- <VisibilityhSchlickGGX_id181 return value>

#line 806
  mul r2.w, r2.w, r4.w
  mul r1.w, r15.z, r1.w
  div r1.w, r2.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id183 return value>

#line 800
  mul r2.w, r15.x, r15.x  // r2.w <- alphaR2

#line 801
  mul r0.w, r0.w, r0.w
  mad r3.w, r15.x, r15.x, l(-1.000000)
  mad r0.w, r0.w, r3.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 802
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r2.w, r0.w  // r0.w <- <NormalDistributionGGX_id195 return value>

#line 1180
  mul r11.xyw, r1.wwww, r11.xyxw
  mul r11.xyw, r0.wwww, r11.xyxw
  mul r6.xyz, r6.xyzx, r11.xywx

#line 1375
  mad r16.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z

#line 1361
  iadd r0.y, r0.y, l(1)

#line 1377
endloop 

#line 864
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 865
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r5.xyxx, t1.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 866
mad r0.xyz, r3.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id320 return value>.x; r0.y <- <Compute_id320 return value>.y; r0.z <- <Compute_id320 return value>.z

#line 1093
mul r0.xyz, r0.xyzx, cb2[88].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id499 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id499 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id499 return value>.z

#line 1389
mad r0.xyz, r4.xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1404
mad o0.xyz, r16.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1573
mov o0.w, cb1[0].w
ret 
// Approximately 572 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id85 = 1;
const static int TCascadeCountBase_id149 = 4;
const static int TLightCountBase_id150 = 1;
const static int TCascadeCount_id157 = 4;
const static int TLightCount_id158 = 1;
const static bool TBlendCascades_id159 = true;
const static bool TDepthRangeAuto_id160 = true;
const static bool TCascadeDebug_id161 = false;
const static bool TComputeTransmittance_id162 = false;
const static int TFilterSize_id164 = 5;
const static int TMaxLightCount_id181 = 1;
const static int TLightCount_id187 = 1;
const static int TFilterSize_id193 = 5;
const static bool TInvert_id210 = true;
const static bool TIsEnergyConservative_id222 = false;
static const float PI_id224 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id165;
    float3 normalWS_id18;
    float4 PositionWS_id21;
    float DepthVS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id16;
    float3 viewWS_id67;
    float3 shadingColor_id72;
    float matBlend_id39;
    float3 matNormal_id50;
    float4 matColorBase_id51;
    float4 matDiffuse_id52;
    float3 matDiffuseVisible_id68;
    float3 matSpecular_id54;
    float3 matSpecularVisible_id70;
    float matSpecularIntensity_id55;
    float matGlossiness_id53;
    float alphaRoughness_id69;
    float matAmbientOcclusion_id56;
    float matAmbientOcclusionDirectLightingFactor_id57;
    float matCavity_id58;
    float matCavityDiffuse_id59;
    float matCavitySpecular_id60;
    float4 matEmissive_id61;
    float matEmissiveIntensity_id62;
    float matScatteringStrength_id63;
    float2 matDiffuseSpecularAlphaBlend_id64;
    float3 matAlphaBlendColor_id65;
    float matAlphaDiscard_id66;
    float shadingColorAlpha_id73;
    float4 Input_0_id195;
    float Input_1_id203;
    float Input_2_id212;
    float3 lightPositionWS_id40;
    float3 lightDirectionWS_id41;
    float3 lightColor_id42;
    float3 lightColorNdotL_id43;
    float3 lightSpecularColorNdotL_id44;
    float lightAttenuation_id45;
    float3 envLightDiffuseColor_id46;
    float3 envLightSpecularColor_id47;
    float lightDirectAmbientOcclusion_id49;
    float NdotL_id48;
    float NdotV_id71;
    float thicknessWS_id83;
    float3 shadowColor_id82;
    float3 H_id74;
    float NdotH_id75;
    float LdotH_id76;
    float VdotH_id77;
    uint2 lightData_id171;
    int lightIndex_id172;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id165 : SCREENPOSITION_ID165_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float4 PositionH_id23;
    float3 meshNormalWS_id16;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float DepthVS_id22;
    float3 normalWS_id18;
    float4 ScreenPosition_id165;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id165 : SCREENPOSITION_ID165_SEM;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
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
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
    float4 _padding_PerDraw_Default;
    int LightCount_id180;
    PointLightData Lights_id182[TMaxLightCount_id181];
    float2 ShadowMapTextureSize_id184;
    float2 ShadowMapTextureTexelSize_id185;
    float4x4 WorldToShadow_id188[TLightCount_id187 * 6];
    float4x4 InverseWorldToShadow_id189[TLightCount_id187 * 6];
    float DepthBiases_id190[TLightCount_id187];
    float OffsetScales_id191[TLightCount_id187];
    float2 DepthParameters_id192[TLightCount_id187];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id196;
    float InputValue_id204;
    float InputValue_id213;
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
    float NearClipPlane_id166 = 1.0f;
    float FarClipPlane_id167 = 100.0f;
    float2 ZProjection_id168;
    float2 ViewSize_id169;
    float AspectRatio_id170;
    float4 _padding_PerView_Default;
    int LightCount_id84;
    DirectionalLightData Lights_id86[TMaxLightCount_id85];
    float2 ShadowMapTextureSize_id88;
    float2 ShadowMapTextureTexelSize_id89;
    float4x4 WorldToShadowCascadeUV_id151[TCascadeCountBase_id149 * TLightCountBase_id150];
    float4x4 InverseWorldToShadowCascadeUV_id152[TCascadeCountBase_id149 * TLightCountBase_id150];
    float4x4 ViewMatrices_id153[TCascadeCountBase_id149 * TLightCountBase_id150];
    float2 DepthRanges_id154[TCascadeCountBase_id149 * TLightCountBase_id150];
    float DepthBiases_id155[TLightCountBase_id150];
    float OffsetScales_id156[TLightCountBase_id150];
    float CascadeDepthSplits_id163[TCascadeCount_id157 * TLightCount_id158];
    float ClusterDepthScale_id175;
    float ClusterDepthBias_id176;
    float2 ClusterStride_id177;
    float3 AmbientLight_id194;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id91;
    float2 Texture1TexelSize_id93;
    float2 Texture2TexelSize_id95;
    float2 Texture3TexelSize_id97;
    float2 Texture4TexelSize_id99;
    float2 Texture5TexelSize_id101;
    float2 Texture6TexelSize_id103;
    float2 Texture7TexelSize_id105;
    float2 Texture8TexelSize_id107;
    float2 Texture9TexelSize_id109;
};
Texture2D Texture0_id90;
Texture2D Texture1_id92;
Texture2D Texture2_id94;
Texture2D Texture3_id96;
Texture2D Texture4_id98;
Texture2D Texture5_id100;
Texture2D Texture6_id102;
Texture2D Texture7_id104;
Texture2D Texture8_id106;
Texture2D Texture9_id108;
TextureCube TextureCube0_id110;
TextureCube TextureCube1_id111;
TextureCube TextureCube2_id112;
TextureCube TextureCube3_id113;
Texture3D Texture3D0_id114;
Texture3D Texture3D1_id115;
Texture3D Texture3D2_id116;
Texture3D Texture3D3_id117;
SamplerState Sampler_id118;
SamplerState PointSampler_id119 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id120 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id121 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id122 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id123 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id124 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id125 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id126 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id127 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id128;
SamplerState Sampler1_id129;
SamplerState Sampler2_id130;
SamplerState Sampler3_id131;
SamplerState Sampler4_id132;
SamplerState Sampler5_id133;
SamplerState Sampler6_id134;
SamplerState Sampler7_id135;
SamplerState Sampler8_id136;
SamplerState Sampler9_id137;
Texture2D ShadowMapTexture_id183;
Texture2D EnvironmentLightingDFG_LUT_id225;
Texture2D ShadowMapTexture_id87;
Texture3D<uint2> LightClusters_id173;
Buffer<uint> LightIndices_id174;
Buffer<float4> PointLights_id178;
Buffer<float4> SpotLights_id179;
float4 Project_id105(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id56(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float Get3x3FilterKernel_id114(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id185, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id185, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id113(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id185, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id185, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id185, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id115(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id183.SampleLevel(LinearBorderSampler_id121, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id105(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id111(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id185, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id185, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id185, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id185, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id100(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id89(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id78(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id66(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id65(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id89, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id67(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id87.SampleLevel(LinearBorderSampler_id121, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id56(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id63(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id89, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id89, uvW3.x * uvW3.y);
    return 2704.0;
}
float SampleAndFilter_id119(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id184;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id185;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id113(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id115(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id118(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id105(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id105(float4(ShadowMapTextureTexelSize_id185.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id105(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id117(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id105(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id105(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id185.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id105(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id116()
{

    {
        return 3.5;
    }
}
float GetDistanceAttenuation_id102(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id100(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id91(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id90(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id89(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id80(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id78(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id71(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id88;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id89;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id65(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id67(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id70(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id56(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id56(float4(ShadowMapTextureTexelSize_id89.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id56(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id69(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id56(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id56(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id89.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id56(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id68()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id64(float2 position, float positionDepth)
{
    return ShadowMapTexture_id87.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id122, position, positionDepth);
}
void CalculatePCFKernelParameters_id62(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id88;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id89;
}
float Compute_id308()
{
    return InputValue_id213;
}
float Compute_id296()
{
    return InputValue_id204;
}
float4 Compute_id284()
{
    return InputValue_id196;
}
float SampleTextureAndCompare_id112(float2 position, float positionDepth)
{
    return ShadowMapTexture_id183.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id122, position, positionDepth);
}
void CalculatePCFKernelParameters_id110(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id184;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id185;
}
float FilterThickness_id106(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id118(GetFilterRadiusInPixels_id116(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id117(GetFilterRadiusInPixels_id116(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id119(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id101(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id102(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id92(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id90(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id91(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id79(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id80(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id181(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id165(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id58(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id70(GetFilterRadiusInPixels_id68(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id69(GetFilterRadiusInPixels_id68(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id71(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id57(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id62(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id65(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id64(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id311(inout PS_STREAMS streams)
{
    streams.Input_2_id212 = Compute_id308();
}
void Compute_id299(inout PS_STREAMS streams)
{
    streams.Input_1_id203 = Compute_id296();
}
void Compute_id287(inout PS_STREAMS streams)
{
    streams.Input_0_id195 = Compute_id284();
}
float FilterShadow_id109(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id110(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id113(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id112(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id108(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id185.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id107(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id106(positionWS, streams.meshNormalWS_id16, float2(0.0f, 1.0f), WorldToShadow_id188[cascadeIndex], InverseWorldToShadow_id189[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id103(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id101(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id93(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id92(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id82(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id79(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
float NormalDistributionGGX_id195(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id224 * d * d);
}
float VisibilitySmithSchlickGGX_id183(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id181(alphaR, nDotL) * VisibilityhSchlickGGX_id181(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id171(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id165(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id61(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id149;
    return FilterThickness_id58(pixelPositionWS, meshNormalWS, DepthRanges_id154[arrayIndex], WorldToShadowCascadeUV_id151[arrayIndex], InverseWorldToShadowCascadeUV_id152[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id60(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id151[cascadeIndex + lightIndex * TCascadeCountBase_id149]);
    shadowPosition.z -= DepthBiases_id155[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id57(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id59(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id89.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id314(inout PS_STREAMS streams)
{
    return streams.Input_2_id212;
}
void Compute_id313(inout PS_STREAMS streams)
{

    {
        Compute_id311(streams);
    }
}
float Compute_id302(inout PS_STREAMS streams)
{
    return streams.Input_1_id203;
}
void Compute_id301(inout PS_STREAMS streams)
{

    {
        Compute_id299(streams);
    }
}
float4 Compute_id290(inout PS_STREAMS streams)
{
    return streams.Input_0_id195;
}
void Compute_id289(inout PS_STREAMS streams)
{

    {
        Compute_id287(streams);
    }
}
float3 Compute_id320(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id225.SampleLevel(LinearSampler_id120, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id123(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float3 ComputeSpecularTextureProjection_id99(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id98(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id97(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id182[lightIndex].PositionWS.xyz;
    float3 lightDelta = positionWS.xyz - lightPosition;
    float distanceToLight = length(lightDelta);
    float3 direction = lightDelta / distanceToLight;
    float3 directionAbs = abs(direction);
    float longestAxis = max(directionAbs.x, max(directionAbs.y, directionAbs.z));
    int faceIndex;
    float lightSpaceZ;
    [flatten]
    if (directionAbs.x == longestAxis)
    {
        lightSpaceZ = lightDelta.x;
        faceIndex = 2;
    }
    else if (directionAbs.y == longestAxis)
    {
        lightSpaceZ = lightDelta.y;
        faceIndex = 4;
    }
    else
    {
        lightSpaceZ = lightDelta.z;
        faceIndex = 0;
    }
    float lightSpaceZDirection = sign(lightSpaceZ);
    faceIndex += int(-min(0.0, lightSpaceZDirection));
    int cascadeIndex = lightIndex * 6 + faceIndex;
    streams.thicknessWS_id83 = ComputeThickness_id107(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id108(OffsetScales_id191[lightIndex], streams.NdotL_id48, streams.normalWS_id18);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id188[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id190[lightIndex];
    float depth = DepthParameters_id192[lightIndex].x + (DepthParameters_id192[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id109(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id96(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id182[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id182[lightIndex].InvSquareRadius;
    data.Color = Lights_id182[lightIndex].Color;
    ProcessLight_id103(streams, data);
}
float3 ComputeSpecularTextureProjection_id88(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id87(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id86(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id85(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id174.Load(streams.lightIndex_id172);
    streams.lightIndex_id172++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id179.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id179.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id179.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id179.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id93(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id77(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id76(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id75(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id74(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id174.Load(streams.lightIndex_id172);
    streams.lightIndex_id172++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id178.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id178.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id82(streams, pointLight);
}
void PrepareLightData_id81(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id168.y / (projectedDepth - ZProjection_id168.x);
    float2 texCoord = float2(streams.ScreenPosition_id165.x + 1, 1 - streams.ScreenPosition_id165.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id175 + ClusterDepthBias_id176), 0));
    streams.lightData_id171 = LightClusters_id173.Load(int4(texCoord * ClusterStride_id177, slice, 0));
    streams.lightIndex_id172 = streams.lightData_id171.x;
}
float Compute_id412(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id195(streams.alphaRoughness_id69, streams.NdotH_id75);
}
float Compute_id382(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id183(streams.alphaRoughness_id69, streams.NdotL_id48, streams.NdotV_id71);
}
float3 Compute_id352(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id171(f0, streams.LdotH_id76);
}
float3 ComputeSpecularTextureProjection_id53(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id52(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id51(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id157;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id157 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id22 > CascadeDepthSplits_id163[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id59(OffsetScales_id156[lightIndex], streams.NdotL_id48, streams.normalWS_id18);
    if (cascadeIndex < TCascadeCount_id157)
    {
        shadow = ComputeShadowFromCascade_id60(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id163[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id163[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id22) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id157 - 1)
            {
            }
            else if (TBlendCascades_id159)
            {
                float nextShadow = ComputeShadowFromCascade_id60(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id83 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id50(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id42 = Lights_id86[lightIndex].Color;
    streams.lightDirectionWS_id41 = -Lights_id86[lightIndex].DirectionWS;
}
float Compute_id317(inout PS_STREAMS streams)
{
    Compute_id313(streams);
    return Compute_id314(streams);
}
float Compute_id305(inout PS_STREAMS streams)
{
    Compute_id301(streams);
    return Compute_id302(streams);
}
float4 Compute_id293(inout PS_STREAMS streams)
{
    Compute_id289(streams);
    return Compute_id290(streams);
}
void ResetStream_id198()
{
}
void AfterLightingAndShading_id469()
{
}
void AfterLightingAndShading_id450()
{
}
void PrepareEnvironmentLight_id283(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float3 ComputeEnvironmentLightContribution_id499(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id70;
    return Compute_id320(specularColor, streams.alphaRoughness_id69, streams.NdotV_id71) * streams.envLightSpecularColor_id47;
}
float3 ComputeEnvironmentLightContribution_id443(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id68;
    return diffuseColor * streams.envLightDiffuseColor_id46;
}
void PrepareEnvironmentLight_id280(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id123(streams);
    float3 lightColor = AmbientLight_id194 * streams.matAmbientOcclusion_id56;
    streams.envLightDiffuseColor_id46 = lightColor;
    streams.envLightSpecularColor_id47 = lightColor;
}
void PrepareDirectLight_id258(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id96(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id97(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id98(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id99(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id260()
{
    return LightCount_id180;
}
int GetMaxLightCount_id262()
{
    return TMaxLightCount_id181;
}
void PrepareDirectLights_id256()
{
}
void PrepareDirectLight_id245(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id85(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id86(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id87(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id88(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id249(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y >> 16;
}
int GetMaxLightCount_id248(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y >> 16;
}
void PrepareDirectLights_id243()
{
}
void PrepareDirectLight_id232(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id74(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id75(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id76(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id77(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id237(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y & 0xFFFF;
}
int GetMaxLightCount_id236(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y & 0xFFFF;
}
void PrepareDirectLights_id235(inout PS_STREAMS streams)
{
    PrepareLightData_id81(streams);
}
float3 ComputeDirectLightContribution_id498(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id70;
    float3 fresnel = Compute_id352(streams, specularColor);
    float geometricShadowing = Compute_id382(streams);
    float normalDistribution = Compute_id412(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id64.y;
}
float3 ComputeDirectLightContribution_id442(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id68;
    return diffuseColor / PI_id224 * streams.lightColorNdotL_id43 * streams.matDiffuseSpecularAlphaBlend_id64.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id74 = normalize(streams.viewWS_id67 + streams.lightDirectionWS_id41);
    streams.NdotH_id75 = saturate(dot(streams.normalWS_id18, streams.H_id74));
    streams.LdotH_id76 = saturate(dot(streams.lightDirectionWS_id41, streams.H_id74));
    streams.VdotH_id77 = streams.LdotH_id76;
}
void PrepareDirectLight_id208(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id50(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id51(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id52(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id53(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id210()
{
    return LightCount_id84;
}
int GetMaxLightCount_id211()
{
    return TMaxLightCount_id85;
}
void PrepareDirectLights_id206()
{
}
void PrepareForLightingAndShading_id466()
{
}
void PrepareForLightingAndShading_id447()
{
}
void PrepareMaterialForLightingAndShading_id197(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id49 = lerp(1.0, streams.matAmbientOcclusion_id56, streams.matAmbientOcclusionDirectLightingFactor_id57);
    streams.matDiffuseVisible_id68 = streams.matDiffuse_id52.rgb * lerp(1.0f, streams.matCavity_id58, streams.matCavityDiffuse_id59) * streams.matDiffuseSpecularAlphaBlend_id64.r * streams.matAlphaBlendColor_id65;
    streams.matSpecularVisible_id70 = streams.matSpecular_id54.rgb * streams.matSpecularIntensity_id55 * lerp(1.0f, streams.matCavity_id58, streams.matCavitySpecular_id60) * streams.matDiffuseSpecularAlphaBlend_id64.g * streams.matAlphaBlendColor_id65;
    streams.NdotV_id71 = max(dot(streams.normalWS_id18, streams.viewWS_id67), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id53;
    streams.alphaRoughness_id69 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id196(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id40 = 0;
    streams.lightDirectionWS_id41 = 0;
    streams.lightColor_id42 = 0;
    streams.lightColorNdotL_id43 = 0;
    streams.lightSpecularColorNdotL_id44 = 0;
    streams.lightAttenuation_id45 = 1.0f;
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
    streams.lightDirectAmbientOcclusion_id49 = 1.0f;
    streams.NdotL_id48 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id319(inout PS_STREAMS streams)
{
    float x = Compute_id317(streams);
    return float4(x, x, x, x);
}
float4 Compute_id307(inout PS_STREAMS streams)
{
    float x = Compute_id305(streams);
    return float4(x, x, x, x);
}
float4 Compute_id295(inout PS_STREAMS streams)
{
    return Compute_id293(streams);
}
void ResetStream_id199(inout PS_STREAMS streams)
{
    ResetStream_id198();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id530(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id50);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id196(streams);
    PrepareMaterialForLightingAndShading_id197(streams);

    {
        PrepareForLightingAndShading_id447();
    }

    {
        PrepareForLightingAndShading_id466();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id206();
        const int maxLightCount = GetMaxLightCount_id211();
        int count = GetLightCount_id210();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id208(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id442(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id498(streams);
            }
        }
    }

    {
        PrepareDirectLights_id235(streams);
        const int maxLightCount = GetMaxLightCount_id236(streams);
        int count = GetLightCount_id237(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id232(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id442(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id498(streams);
            }
        }
    }

    {
        PrepareDirectLights_id243();
        const int maxLightCount = GetMaxLightCount_id248(streams);
        int count = GetLightCount_id249(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id245(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id442(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id498(streams);
            }
        }
    }

    {
        PrepareDirectLights_id256();
        const int maxLightCount = GetMaxLightCount_id262();
        int count = GetLightCount_id260();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id258(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id442(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id498(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id280(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id443(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id499(streams);
        }
    }

    {
        PrepareEnvironmentLight_id283(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id443(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id499(streams);
        }
    }
    streams.shadingColor_id72 += directLightingContribution * PI_id224 + environmentLightingContribution;
    streams.shadingColorAlpha_id73 = streams.matDiffuse_id52.a;

    {
        AfterLightingAndShading_id450();
    }

    {
        AfterLightingAndShading_id469();
    }
}
void Compute_id514(inout PS_STREAMS streams)
{
    float metalness = Compute_id319(streams).r;
    streams.matSpecular_id54 = lerp(0.02, streams.matDiffuse_id52.rgb, metalness);
    streams.matDiffuse_id52.rgb = lerp(streams.matDiffuse_id52.rgb, 0, metalness);
}
void Compute_id509(inout PS_STREAMS streams)
{
    float glossiness = Compute_id307(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id53 = glossiness;
}
void Compute_id504(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id295(streams);
    streams.matDiffuse_id52 = colorBase;
    streams.matColorBase_id51 = colorBase;
}
void ResetStream_id200(inout PS_STREAMS streams)
{
    ResetStream_id199(streams);
    streams.matNormal_id50 = float3(0, 0, 1);
    streams.matColorBase_id51 = 0.0f;
    streams.matDiffuse_id52 = 0.0f;
    streams.matDiffuseVisible_id68 = 0.0f;
    streams.matSpecular_id54 = 0.0f;
    streams.matSpecularVisible_id70 = 0.0f;
    streams.matSpecularIntensity_id55 = 1.0f;
    streams.matGlossiness_id53 = 0.0f;
    streams.alphaRoughness_id69 = 1.0f;
    streams.matAmbientOcclusion_id56 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id57 = 0.0f;
    streams.matCavity_id58 = 1.0f;
    streams.matCavityDiffuse_id59 = 0.0f;
    streams.matCavitySpecular_id60 = 0.0f;
    streams.matEmissive_id61 = 0.0f;
    streams.matEmissiveIntensity_id62 = 0.0f;
    streams.matScatteringStrength_id63 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id64 = 1.0f;
    streams.matAlphaBlendColor_id65 = 1.0f;
    streams.matAlphaDiscard_id66 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id47(inout PS_STREAMS streams)
{

    {
        Compute_id504(streams);
    }

    {
        Compute_id509(streams);
    }

    {
        Compute_id514(streams);
    }

    {
        Compute_id530(streams);
    }
}
void ResetStream_id46(inout PS_STREAMS streams)
{
    ResetStream_id200(streams);
    streams.shadingColorAlpha_id73 = 1.0f;
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
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id67 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id72 = 0;
    ResetStream_id46(streams);
    Compute_id47(streams);
    return float4(streams.shadingColor_id72, streams.shadingColorAlpha_id73);
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
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
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
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id22 = __input__.DepthVS_id22;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.ScreenPosition_id165 = __input__.ScreenPosition_id165;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id165 /= streams.ScreenPosition_id165.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id19(streams);
    streams.ScreenPosition_id165 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.ScreenPosition_id165 = streams.ScreenPosition_id165;
    return __output__;
}

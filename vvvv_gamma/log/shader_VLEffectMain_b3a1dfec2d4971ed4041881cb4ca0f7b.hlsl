/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,3>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 800]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id83 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id182 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id184 => LightSpotGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id186 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id187 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id191 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    InverseWorldToShadowCascadeUV_id192 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[3]
@C    ViewMatrices_id193 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[3]
@C    DepthRanges_id194 => ShadowMapReceiverBase.DepthRanges.directLightGroups[3]
@C    DepthBiases_id195 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id196 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 32]
@C    InputValue_id213 => ShaderFX.InputValueFloat4
@C    InputValue_id221 => ShaderFX.InputValueFloat
@C    InputValue_id230 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id168 => Camera.NearClipPlane
@C    FarClipPlane_id169 => Camera.FarClipPlane
@C    ZProjection_id170 => Camera.ZProjection
@C    ViewSize_id171 => Camera.ViewSize
@C    AspectRatio_id172 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id86 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id88 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id90 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id91 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id153 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id154 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id155 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id156 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id157 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id158 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id165 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id177 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id178 => LightClustered.ClusterDepthBias
@C    ClusterStride_id179 => LightClustered.ClusterStride
@C    AmbientLight_id200 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id205 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id206 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id208 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id209 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id242 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id242 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id207 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id207 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id122 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id124 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id242 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id207 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    LightSpotGroup => 54b4c8984e82f7dd8c9ed33c2781287a
@S    DirectLightGroupPerDraw => 800419991dc99542e48d2c03df6d1a4b
@S    ShadowMapReceiverSpot => 4a4ea621e2cec32bf3ede8a92ceacd7b
@S    LightSimpleAmbient => 1be2895cd80f1f25f0225844e19b3398
@S    LightSkyboxShader => 7bdb9a65f0d95cff0eeaad64ebe19d64
@S    IComputeEnvironmentColor => 6a62dbc486c6d4dda67154b3aefa7236
@S    SphericalHarmonicsEnvironmentColor => e4af0f396494d26684557116612d99be
@S    SphericalHarmonicsUtils => daf3f722d099facfd735f53c731dd735
@S    RoughnessCubeMapEnvironmentColor => a00e41cfd6760a1623b985fedae4700d
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
@G    Vertex => 22731900f4ca88603809638a49572b4d
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
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id182;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id184;                    // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id186; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id187;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id191;// Offset:  544 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id192;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id193;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id194;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id195;           // Offset:  752 Size:     4 [unused]
//   float OffsetScales_id196;          // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
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
//   float NearClipPlane_id168;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id169;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id170;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id171;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id172;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id90;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id91;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id153[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id154[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id155[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id156[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id157;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id158;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id165[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id177;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id178;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id179;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id200;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id205[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id206;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id208;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id209;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
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
// SCREENPOSITION_ID167_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id167.x; o3.y <- <VSMain return value>.ScreenPosition_id167.y; o3.z <- <VSMain return value>.ScreenPosition_id167.z; o3.w <- <VSMain return value>.ScreenPosition_id167.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.normalWS_id19.x; o2.z <- <VSMain return value>.normalWS_id19.y; o2.w <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1481 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_b3a1dfec2d4971ed4041881cb4ca0f7b.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1568
mov o0.xyzw, r0.xyzw

#line 1436
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1568
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1521
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1568
ret 
// Approximately 16 instruction slots used
@G    Pixel => d3957b77f2534019b18e9ebcc2424203
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
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id182;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id184;                    // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id186; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id187;// Offset:  536 Size:     8
//   float4x4 WorldToShadowCascadeUV_id191;// Offset:  544 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id192;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id193;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id194;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id195;           // Offset:  752 Size:     4
//   float OffsetScales_id196;          // Offset:  768 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id213;           // Offset:    0 Size:    16
//   float InputValue_id221;            // Offset:   16 Size:     4
//   float InputValue_id230;            // Offset:   20 Size:     4
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
//   float NearClipPlane_id168;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id169;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id170;          // Offset:  360 Size:     8
//   float2 ViewSize_id171;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id172;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id90;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id91;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id153[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id154[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id155[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id156[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id157;           // Offset: 1296 Size:     4
//   float OffsetScales_id158;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id165[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id177;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id178;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id179;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id200;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id205[9];   // Offset: 1424 Size:   140
//   float MipCount_id206;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id208;          // Offset: 1568 Size:    64
//   float Intensity_id209;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id122               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id124  sampler_c      NA          NA             s1      1 
// ShadowMapTexture_id185            texture  float4          2d             t0      1 
// EnvironmentLightingDFG_LUT_id242    texture  float4          2d             t1      1 
// ShadowMapTexture_id89             texture  float4          2d             t2      1 
// LightClusters_id175               texture   uint2          3d             t3      1 
// LightIndices_id176                texture    uint         buf             t4      1 
// PointLights_id180                 texture  float4         buf             t5      1 
// SpotLights_id181                  texture  float4         buf             t6      1 
// CubeMap_id207                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID167_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_constantbuffer CB0[49], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texturecube (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 21
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; v2.y <- __input__.normalWS_id19.x; v2.z <- __input__.normalWS_id19.y; v2.w <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id167.x; v3.y <- __input__.ScreenPosition_id167.y; v3.z <- __input__.ScreenPosition_id167.z; v3.w <- __input__.ScreenPosition_id167.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1548 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_b3a1dfec2d4971ed4041881cb4ca0f7b.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id167.x; r0.y <- streams.ScreenPosition_id167.y

#line 1515
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1516
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1489
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id68.x; r3.y <- streams.viewWS_id68.y; r3.z <- streams.viewWS_id68.z

#line 1400
add r0.w, -cb1[1].x, l(1.000000)  // r0.w <- glossiness

#line 1392
add r4.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[1].yyyy, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id55.x; r4.y <- streams.matSpecular_id55.y; r4.z <- streams.matSpecular_id55.z

#line 1393
mad r5.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r5.x <- streams.matDiffuse_id53.x; r5.y <- streams.matDiffuse_id53.y; r5.z <- streams.matDiffuse_id53.z

#line 1233
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1190
dp3 r1.w, r1.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id72

#line 1191
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 1192
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id70

#line 1257
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 1160
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id49

#line 971
  lt r2.w, cb2[83].x, v2.x

#line 974
  and r2.w, r2.w, l(1)  // r2.w <- cascadeIndex

#line 971
  lt r3.w, cb2[84].x, v2.x

#line 974
  movc r2.w, r3.w, l(2), r2.w

#line 971
  lt r3.w, cb2[85].x, v2.x

#line 974
  movc r2.w, r3.w, l(3), r2.w

#line 789
  add r4.w, -r1.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 790
  mul r5.w, cb2[28].z, cb2[82].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 979
  mad r7.xyz, r4.wwww, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 782
  ishl r4.w, r2.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r4.w + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r4.w + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r5.w, r7.xyzw, cb2[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
  dp4 r6.z, r7.xyzw, cb2[r4.w + 32].xyzw  // r6.z <- shadowPosition.w

#line 783
  add r8.z, r5.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 784
  div r8.xyz, r8.xyzx, r6.zzzz

#line 573
  mad r6.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 574
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 575
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 576
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 388
  mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 389
  mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 391
  mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 390
  div r11.xy, r11.xyxx, r10.yxyy
  add r12.xw, r11.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r12.x <- uv0.x; r12.w <- uv0.y

#line 391
  div r11.xy, r11.zwzz, r9.xyxx
  add r12.yz, r11.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r12.y <- uv1.y; r12.z <- uv1.x

#line 392
  mad r11.xy, r6.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r9.wzww
  add r11.xw, r11.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 393
  div r6.zw, r6.zzzw, r10.zzzw
  add r13.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r13.x <- uv3.x; r13.y <- uv3.y

#line 395
  mad r14.xyzw, r12.xwzw, cb2[28].zwzw, r8.xyxy

#line 400
  mov r11.yz, r12.wwyw

#line 401
  mov r13.zw, r11.yyyz

#line 399
  mad r15.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy

#line 400
  mad r16.xyzw, r11.wywz, cb2[28].zwzw, r8.xyxy

#line 401
  mad r17.xyzw, r13.xzxw, cb2[28].zwzw, r8.xyxy

#line 402
  mov r12.y, r11.x
  mul r6.zw, -r9.wwwz, r10.xxxy

#line 403
  mad r18.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy
  mul r13.zw, r9.yyyx, -r9.wwwz

#line 404
  mad r19.xy, r11.wxww, cb2[28].zwzz, r8.xyxx
  mul r19.zw, r9.yyyz, r9.xxxw

#line 405
  mov r12.w, r13.x
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r8.xxxy

#line 407
  mov r11.xz, r12.xxzx

#line 406
  mov r11.y, r13.y
  mul r12.xz, r10.xxyx, -r10.zzwz

#line 407
  mad r20.xyzw, r11.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.xz, r9.yyxy, -r10.zzwz

#line 408
  mad r11.yw, r11.wwwy, cb2[28].zzzw, r8.xxxy
  mul r9.xyzw, r9.xyzw, r10.xyzw

#line 409
  mad r8.xy, r13.xyxx, cb2[28].zwzz, r8.xyxx
  mul r10.xy, r10.xwxx, r10.yzyy

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.xyxx, t2.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id68 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r14.zwzz, t2.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id68 return value>

#line 681
  mul r8.w, r8.w, r9.x
  mad r5.w, r10.x, r5.w, r8.w  // r5.w <- shadow

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r16.xyxx, t2.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id68 return value>

#line 681
  mad r5.w, r6.z, r8.w, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r17.xyxx, t2.xxxx, s1, r8.z  // r6.z <- <SampleTextureAndCompare_id68 return value>

#line 681
  mad r5.w, r12.x, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r15.xyxx, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r9.y, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r15.zwzz, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r19.z, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r16.zwzz, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r13.z, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r17.zwzz, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r11.x, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r18.xyxx, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r6.w, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r18.zwzz, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r13.w, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r19.xyxx, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r19.w, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r12.ywyy, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r9.z, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r20.xyxx, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r12.z, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r20.zwzz, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r11.z, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r11.ywyy, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r9.w, r6.z, r5.w

#line 568
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r8.xyxx, t2.xxxx, s1, r8.z

#line 681
  mad r5.w, r10.y, r6.z, r5.w

#line 683
  mul r8.xyz, r5.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r8.z <- shadow

#line 985
  ilt r6.z, l(0), r2.w
  if_nz r6.z

#line 987
    iadd r6.z, r2.w, l(-1)
    add r6.z, -cb2[r6.z + 83].x, cb2[r2.w + 83].x  // r6.z <- splitSize

#line 988
  else 
    mov r6.z, cb2[r2.w + 83].x  // r6.z <- splitSize
  endif 

#line 989
  add r2.w, -v2.x, cb2[r2.w + 83].x
  div r2.w, r2.w, r6.z  // r2.w <- splitDist

#line 990
  lt r6.z, r2.w, l(0.200000)
  if_nz r6.z

#line 993
    if_nz r3.w

#line 995
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 992
      mul_sat r2.w, r2.w, l(5.000000)
      mad r3.w, r2.w, l(-2.000000), l(3.000000)
      mul r2.w, r2.w, r2.w
      mul r2.w, r2.w, r3.w  // r2.w <- lerpAmt

#line 782
      dp4 r9.x, r7.xyzw, cb2[r4.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r4.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r3.w, r7.xyzw, cb2[r4.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r7.xyzw, cb2[r4.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 783
      add r9.z, r3.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 784
      div r7.xyz, r9.xyzx, r4.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 573
      mad r6.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r7.xy, r6.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 574
      add r6.zw, r6.zzzw, -r7.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 575
      add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 576
      mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 388
      mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 389
      mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 391
      mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 390
      div r11.xy, r11.xyxx, r10.yxyy
      add r12.xw, r11.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r12.x <- uv0.x; r12.w <- uv0.y

#line 391
      div r11.xy, r11.zwzz, r9.xyxx
      add r12.yz, r11.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r12.y <- uv1.y; r12.z <- uv1.x

#line 392
      mad r11.xy, r6.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r11.xy, r11.xyxx, r9.wzww
      add r11.xw, r11.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 393
      div r6.zw, r6.zzzw, r10.zzzw
      add r13.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r13.x <- uv3.x; r13.y <- uv3.y

#line 395
      mad r14.xyzw, r12.xwzw, cb2[28].zwzw, r7.xyxy

#line 400
      mov r11.yz, r12.wwyw

#line 401
      mov r13.zw, r11.yyyz

#line 399
      mad r15.xyzw, r12.xyzy, cb2[28].zwzw, r7.xyxy

#line 400
      mad r16.xyzw, r11.wywz, cb2[28].zwzw, r7.xyxy

#line 401
      mad r17.xyzw, r13.xzxw, cb2[28].zwzw, r7.xyxy

#line 402
      mov r12.y, r11.x
      mul r6.zw, -r9.wwwz, r10.xxxy

#line 403
      mad r18.xyzw, r12.xyzy, cb2[28].zwzw, r7.xyxy
      mul r13.zw, r9.yyyx, -r9.wwwz

#line 404
      mad r19.xy, r11.wxww, cb2[28].zwzz, r7.xyxx
      mul r19.zw, r9.yyyz, r9.xxxw

#line 405
      mov r12.w, r13.x
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r7.xxxy

#line 407
      mov r11.xz, r12.xxzx

#line 406
      mov r11.y, r13.y
      mul r12.xz, r10.xxyx, -r10.zzwz

#line 407
      mad r20.xyzw, r11.xyzy, cb2[28].zwzw, r7.xyxy
      mul r11.xz, r9.yyxy, -r10.zzwz

#line 408
      mad r11.yw, r11.wwwy, cb2[28].zzzw, r7.xxxy
      mul r9.xyzw, r9.xyzw, r10.xyzw

#line 409
      mad r7.xy, r13.xyxx, cb2[28].zwzz, r7.xyxx
      mul r10.xy, r10.xwxx, r10.yzyy

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.xyxx, t2.xxxx, s1, r7.z  // r3.w <- <SampleTextureAndCompare_id68 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.zwzz, t2.xxxx, s1, r7.z  // r4.w <- <SampleTextureAndCompare_id68 return value>

#line 681
      mul r4.w, r4.w, r9.x
      mad r3.w, r10.x, r3.w, r4.w  // r3.w <- shadow

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.xyxx, t2.xxxx, s1, r7.z  // r4.w <- <SampleTextureAndCompare_id68 return value>

#line 681
      mad r3.w, r6.z, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.xyxx, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r12.x, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.xyxx, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r9.y, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r19.z, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.zwzz, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r13.z, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.zwzz, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r11.x, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.xyxx, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r6.w, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.zwzz, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r13.w, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r19.xyxx, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r19.w, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r12.ywyy, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r9.z, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.xyxx, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r12.z, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.zwzz, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r11.z, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r11.ywyy, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r9.w, r4.w, r3.w

#line 568
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r7.xyxx, t2.xxxx, s1, r7.z

#line 681
      mad r3.w, r10.y, r4.w, r3.w

#line 683
      mul r3.w, r3.w, l(0.000370)

#line 999
      mad r4.w, r5.w, l(0.000370), -r3.w
      mad r8.xyz, r2.wwww, r4.wwww, r3.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 1000
    endif 

#line 1001
  endif 

#line 1162
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r1.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id44.x; r7.y <- streams.lightColorNdotL_id44.y; r7.z <- streams.lightColorNdotL_id44.z

#line 1152
  mad r8.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r2.w, r8.xyzx, r8.xyzx
  rsq r2.w, r2.w
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.H_id75.x; r8.y <- streams.H_id75.y; r8.z <- streams.H_id75.z

#line 1153
  dp3_sat r2.w, r1.xyzx, r8.xyzx  // r2.w <- streams.NdotH_id76

#line 1154
  dp3_sat r3.w, -cb2[26].xyzx, r8.xyzx  // r3.w <- streams.LdotH_id77

#line 1148
  mul r8.xyz, r5.xyzx, r7.xyzx

#line 651
  add r9.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r9.xyz, r9.xyzx, r3.wwww, r4.xyzx  // r9.x <- <FresnelSchlick_id180 return value>.x; r9.y <- <FresnelSchlick_id180 return value>.y; r9.z <- <FresnelSchlick_id180 return value>.z

#line 646
  mul r3.w, r0.w, l(0.500000)  // r3.w <- k

#line 647
  mad r4.w, -r0.w, l(0.500000), l(1.000000)
  mad r5.w, r1.w, r4.w, r3.w
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id196 return value>
  mad r3.w, r6.y, r4.w, r3.w
  div r3.w, r6.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id196 return value>

#line 769
  mul r3.w, r3.w, r5.w
  mul r1.w, r6.y, r1.w
  div r1.w, r3.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id198 return value>

#line 763
  mul r3.w, r0.w, r0.w  // r3.w <- alphaR2

#line 764
  mul r2.w, r2.w, r2.w
  mad r4.w, r0.w, r0.w, l(-1.000000)
  mad r2.w, r2.w, r4.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 765
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r3.w, r2.w  // r2.w <- <NormalDistributionGGX_id210 return value>

#line 1142
  mul r9.xyz, r1.wwww, r9.xyzx
  mul r9.xyz, r2.wwww, r9.xyzx
  mul r7.xyz, r7.xyzx, r9.xyzx

#line 1143
  mul r7.xyz, r7.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r7.x <- <ComputeDirectLightContribution_id538 return value>.x; r7.y <- <ComputeDirectLightContribution_id538 return value>.y; r7.z <- <ComputeDirectLightContribution_id538 return value>.z

#line 1265
  mad r7.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 1266
else 
  mov r7.xyz, l(0,0,0,0)  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
endif 

#line 936
add r1.w, v1.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 937
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 938
mad r1.w, r1.w, cb2[86].y, cb2[86].z
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r8.z, r1.w  // r8.z <- slice

#line 939
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r8.xy, r0.xyxx
mov r8.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r8.xyzw, t3.xyzw  // r0.x <- streams.lightData_id173.x; r0.y <- streams.lightData_id173.y

#line 1130
and r1.w, r0.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id251 return value>

#line 1275
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r8.w, v0.x  // r8.w <- streams.PositionWS_id22.x
mov r9.xy, v0.yzyy  // r9.x <- streams.PositionWS_id22.y; r9.y <- streams.PositionWS_id22.z
mov r9.zw, r3.xxxy  // r9.z <- streams.viewWS_id68.x; r9.w <- streams.viewWS_id68.y
mov r10.z, r3.z  // r10.z <- streams.viewWS_id68.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matDiffuseVisible_id69.x; r11.y <- streams.matDiffuseVisible_id69.y; r11.z <- streams.matDiffuseVisible_id69.z
mov r12.xyz, r4.xyzx  // r12.x <- streams.matSpecularVisible_id71.x; r12.y <- streams.matSpecularVisible_id71.y; r12.z <- streams.matSpecularVisible_id71.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id70
mov r6.w, r6.y  // r6.w <- streams.NdotV_id72
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id174
mov r13.xyz, r7.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r1.w
  breakc_nz r3.w

#line 1277
  if_nz r3.w

#line 1279
    break 

#line 1280
  endif 

#line 923
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r6.zzzz, t4.yzwx  // r3.w <- realLightIndex

#line 924
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id174

#line 926
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r4.wwww, t5.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 927
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r3.wwww, t5.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 638
  mov r16.x, r8.w
  mov r16.yz, r9.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 639
  dp3 r3.w, r14.xyzx, r14.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 640
  div r14.xyz, r14.xyzx, r4.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 514
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 334
  mul r3.w, r14.w, r3.w  // r3.w <- factor

#line 335
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 336
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id82 return value>

#line 515
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1116
  dp3 r4.w, r8.xyzx, r14.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 1118
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 1152
  mov r10.xy, r9.zwzz
  add r10.xyw, r14.xyxz, r10.xyxz
  dp3 r3.w, r10.xywx, r10.xywx
  rsq r3.w, r3.w
  mul r10.xyw, r3.wwww, r10.xyxw  // r10.x <- streams.H_id75.x; r10.y <- streams.H_id75.y; r10.w <- streams.H_id75.z

#line 1153
  dp3_sat r3.w, r8.xyzx, r10.xywx  // r3.w <- streams.NdotH_id76

#line 1154
  dp3_sat r5.w, r14.xyzx, r10.xywx  // r5.w <- streams.LdotH_id77

#line 1148
  mul r10.xyw, r11.xyxz, r15.xyxz

#line 1285
  mad r10.xyw, r10.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 651
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r7.w, r5.w, r5.w
  mul r7.w, r7.w, r7.w
  mul r5.w, r5.w, r7.w
  mad r14.xyz, r14.xyzx, r5.wwww, r12.xyzx  // r14.x <- <FresnelSchlick_id180 return value>.x; r14.y <- <FresnelSchlick_id180 return value>.y; r14.z <- <FresnelSchlick_id180 return value>.z

#line 646
  mul r5.w, r12.w, l(0.500000)  // r5.w <- k

#line 647
  mad r7.w, -r12.w, l(0.500000), l(1.000000)
  mad r11.w, r4.w, r7.w, r5.w
  div r11.w, r4.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id196 return value>
  mad r5.w, r6.w, r7.w, r5.w
  div r5.w, r6.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id196 return value>

#line 769
  mul r5.w, r5.w, r11.w
  mul r4.w, r6.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id198 return value>

#line 763
  mul r5.w, r12.w, r12.w  // r5.w <- alphaR2

#line 764
  mul r3.w, r3.w, r3.w
  mad r7.w, r12.w, r12.w, l(-1.000000)
  mad r3.w, r3.w, r7.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 765
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id210 return value>

#line 1142
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1289
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r10.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1275
  iadd r2.w, r2.w, l(1)

#line 1291
endloop   // r6.z <- streams.lightIndex_id174

#line 1108
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id263 return value>

#line 1299
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, v0.xyzx  // r8.x <- streams.PositionWS_id22.x; r8.y <- streams.PositionWS_id22.y; r8.z <- streams.PositionWS_id22.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id68.x; r9.y <- streams.viewWS_id68.y; r9.z <- streams.viewWS_id68.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r12.xyz, r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r14.x, r0.w  // r14.x <- streams.alphaRoughness_id70
mov r14.y, r6.y  // r14.y <- streams.NdotV_id72
mov r0.y, r6.z  // r0.y <- streams.lightIndex_id174
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 1301
  if_nz r2.w

#line 1303
    break 

#line 1304
  endif 

#line 895
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.yyyy, t4.yzwx  // r2.w <- realLightIndex

#line 896
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id174

#line 898
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r3.wwww, t6.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 901
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 899
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t6.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 900
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t6.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 901
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t6.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 625
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 626
  dp3 r2.w, r15.xyzx, r15.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 627
  div r15.xyz, r15.xyzx, r3.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 507
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 328
  mul r2.w, r16.w, r2.w  // r2.w <- factor

#line 329
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 330
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id93 return value>

#line 508
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 499
  dp3 r3.w, -r17.xyzx, r15.xyzx  // r3.w <- cd

#line 500
  mad_sat r3.w, r3.w, r16.x, r16.y  // r3.w <- attenuation

#line 501
  mul r3.w, r3.w, r3.w

#line 633
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1094
  dp3 r3.w, r7.xyzx, r15.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 1096
  mul r16.xyz, r2.wwww, r18.xyzx
  mul r16.xyz, r3.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id44.x; r16.y <- streams.lightColorNdotL_id44.y; r16.z <- streams.lightColorNdotL_id44.z

#line 1152
  add r17.xyz, r9.xyzx, r15.xyzx
  dp3 r2.w, r17.xyzx, r17.xyzx
  rsq r2.w, r2.w
  mul r17.xyz, r2.wwww, r17.xyzx  // r17.x <- streams.H_id75.x; r17.y <- streams.H_id75.y; r17.z <- streams.H_id75.z

#line 1153
  dp3_sat r2.w, r7.xyzx, r17.xyzx  // r2.w <- streams.NdotH_id76

#line 1154
  dp3_sat r4.w, r15.xyzx, r17.xyzx  // r4.w <- streams.LdotH_id77

#line 1148
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1309
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 651
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r17.xyz, r17.xyzx, r4.wwww, r11.xyzx  // r17.x <- <FresnelSchlick_id180 return value>.x; r17.y <- <FresnelSchlick_id180 return value>.y; r17.z <- <FresnelSchlick_id180 return value>.z

#line 646
  mul r4.w, r14.x, l(0.500000)  // r4.w <- k

#line 647
  mad r5.w, -r14.x, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r4.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id196 return value>
  mad r4.w, r14.y, r5.w, r4.w
  div r4.w, r14.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id196 return value>

#line 769
  mul r4.w, r4.w, r6.w
  mul r3.w, r14.y, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id198 return value>

#line 763
  mul r4.w, r14.x, r14.x  // r4.w <- alphaR2

#line 764
  mul r2.w, r2.w, r2.w
  mad r5.w, r14.x, r14.x, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 765
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id210 return value>

#line 1142
  mul r17.xyz, r3.wwww, r17.xyzx
  mul r17.xyz, r2.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1313
  mad r12.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1299
  iadd r1.w, r1.w, l(1)

#line 1315
endloop   // r0.y <- streams.lightIndex_id174

#line 1329
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 612
  add r7.xyz, -v0.xyzx, cb0[29].xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 613
  dp3 r0.x, r7.xyzx, r7.xyzx
  sqrt r0.y, r0.x  // r0.y <- lightVectorLength

#line 614
  div r7.xyz, r7.xyzx, r0.yyyy  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 493
  max r0.y, r0.x, l(0.000100)
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y  // r0.y <- attenuation

#line 322
  mul r0.x, r0.x, cb0[31].z  // r0.x <- factor

#line 323
  mad r0.x, -r0.x, r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)  // r0.x <- smoothFactor

#line 324
  mul r0.x, r0.x, r0.x  // r0.x <- <SmoothDistanceAttenuation_id104 return value>

#line 494
  mul r0.x, r0.x, r0.y  // r0.x <- attenuation

#line 485
  dp3 r0.y, -cb0[30].xyzx, r7.xyzx  // r0.y <- cd

#line 486
  mad_sat r0.y, r0.y, cb0[31].x, cb0[31].y  // r0.y <- attenuation

#line 487
  mul r0.y, r0.y, r0.y

#line 620
  mul r0.x, r0.y, r0.x  // r0.x <- attenuation

#line 1072
  dp3 r0.y, r1.xyzx, r7.xyzx
  max r0.y, r0.y, l(0.000100)  // r0.y <- streams.NdotL_id49

#line 733
  add r1.w, -r0.y, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- normalOffsetScale

#line 734
  mul r2.w, cb0[33].z, cb0[48].x
  dp2 r1.w, r2.wwww, r1.wwww

#line 862
  mad r8.xyz, r1.wwww, r1.xyzx, v0.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 726
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb0[34].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb0[35].xyzw  // r9.y <- shadowPosition.y
  dp4 r1.w, r8.xyzw, cb0[36].xyzw  // r1.w <- shadowPosition.z
  dp4 r2.w, r8.xyzw, cb0[37].xyzw  // r2.w <- shadowPosition.w

#line 727
  add r9.z, r1.w, -cb0[47].x  // r9.z <- shadowPosition.z

#line 728
  div r8.xyz, r9.xyzx, r2.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 478
  mad r6.zw, r8.xxxy, cb0[33].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 479
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 480
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 481
  mul r8.xy, r8.xyxx, cb0[33].zwzz

#line 414
  mad r9.xy, -r6.wzww, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 415
  mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW1.x; r9.w <- uvW1.y

#line 416
  add r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.zw, r10.xxxy, l(0.000000, 0.000000, -1.000000, -1.000000)  // r10.z <- uv0.x; r10.w <- uv0.y

#line 417
  div r6.zw, r6.zzzw, r9.zzzw
  add r10.xy, r6.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)  // r10.x <- uv1.x; r10.y <- uv1.y

#line 418
  mul r1.w, r9.x, r9.y

#line 419
  mad r11.xyzw, r10.zwxw, cb0[33].zwzw, r8.xyxy

#line 420
  mul r6.zw, r9.xxxy, r9.zzzw

#line 421
  mad r10.xyzw, r10.zyxy, cb0[33].zwzw, r8.xyxy
  mul r2.w, r9.w, r9.z

#line 445
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r11.xyxx, t0.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id118 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r11.zwzz, t0.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id118 return value>

#line 604
  mul r4.w, r4.w, r6.z
  mad r1.w, r1.w, r3.w, r4.w  // r1.w <- shadow

#line 445
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r10.xyxx, t0.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id118 return value>

#line 604
  mad r1.w, r6.w, r3.w, r1.w

#line 445
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r10.zwzz, t0.xxxx, s1, r8.z

#line 604
  mad r1.w, r2.w, r3.w, r1.w

#line 606
  mul r1.w, r1.w, l(0.062500)

#line 1074
  mul r8.xyz, r0.xxxx, cb0[32].xyzx
  mul r8.xyz, r1.wwww, r8.xyzx
  mul r8.xyz, r0.yyyy, r8.xyzx  // r8.x <- streams.lightColorNdotL_id44.x; r8.y <- streams.lightColorNdotL_id44.y; r8.z <- streams.lightColorNdotL_id44.z

#line 1152
  mad r2.xyz, r2.xyzx, r0.zzzz, r7.xyzx
  dp3 r0.x, r2.xyzx, r2.xyzx
  rsq r0.x, r0.x
  mul r2.xyz, r0.xxxx, r2.xyzx  // r2.x <- streams.H_id75.x; r2.y <- streams.H_id75.y; r2.z <- streams.H_id75.z

#line 1153
  dp3_sat r0.x, r1.xyzx, r2.xyzx  // r0.x <- streams.NdotH_id76

#line 1154
  dp3_sat r0.z, r7.xyzx, r2.xyzx  // r0.z <- streams.LdotH_id77

#line 1148
  mul r2.xyz, r5.xyzx, r8.xyzx

#line 1333
  mad r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 651
  add r7.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.z, -r0.z, l(1.000000)
  mul r1.w, r0.z, r0.z
  mul r1.w, r1.w, r1.w
  mul r0.z, r0.z, r1.w
  mad r7.xyz, r7.xyzx, r0.zzzz, r4.xyzx  // r7.x <- <FresnelSchlick_id180 return value>.x; r7.y <- <FresnelSchlick_id180 return value>.y; r7.z <- <FresnelSchlick_id180 return value>.z

#line 646
  mul r0.z, r0.w, l(0.500000)  // r0.z <- k

#line 647
  mad r1.w, -r0.w, l(0.500000), l(1.000000)
  mad r2.w, r0.y, r1.w, r0.z
  div r2.w, r0.y, r2.w  // r2.w <- <VisibilityhSchlickGGX_id196 return value>
  mad r0.z, r6.y, r1.w, r0.z
  div r0.z, r6.y, r0.z  // r0.z <- <VisibilityhSchlickGGX_id196 return value>

#line 769
  mul r0.z, r0.z, r2.w
  mul r0.y, r6.y, r0.y
  div r0.y, r0.z, r0.y  // r0.y <- <VisibilitySmithSchlickGGX_id198 return value>

#line 763
  mul r0.z, r0.w, r0.w  // r0.z <- alphaR2

#line 764
  mul r0.x, r0.x, r0.x
  mad r1.w, r0.w, r0.w, l(-1.000000)
  mad r0.x, r0.x, r1.w, l(1.000000)
  max r0.x, r0.x, l(0.000100)  // r0.x <- d

#line 765
  mul r0.x, r0.x, r0.x
  mul r0.x, r0.x, l(3.141593)
  div r0.x, r0.z, r0.x  // r0.x <- <NormalDistributionGGX_id210 return value>

#line 1142
  mul r7.xyz, r0.yyyy, r7.xyzx
  mul r0.xyz, r0.xxxx, r7.xyzx
  mul r0.xyz, r8.xyzx, r0.xyzx

#line 1337
  mad r12.xyz, r0.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1338
endif 

#line 842
sqrt r0.x, r0.w
add r6.x, -r0.x, l(1.000000)  // r6.x <- glossiness

#line 843
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r6.xyxx, t1.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 844
mad r0.yzw, r4.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id360 return value>.x; r0.z <- <Compute_id360 return value>.y; r0.w <- <Compute_id360 return value>.z

#line 1055
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id539 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id539 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id539 return value>.z

#line 1351
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1044
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[100].xyzx  // r3.w <- sampleDirection.z

#line 705
mul r4.x, r2.w, r2.w  // r4.x <- y2

#line 706
mul r4.y, r3.w, r3.w  // r4.y <- z2

#line 710
mad r6.xyz, cb2[90].xyzx, r2.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 711
mad r6.xyz, cb2[91].xyzx, -r3.wwww, r6.xyzx

#line 712
mad r6.xyz, cb2[92].xyzx, r1.wwww, r6.xyzx

#line 715
mul r7.xyz, r2.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r1.wwww, r6.xyzx

#line 716
mul r7.xyz, r2.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r3.wwww, r6.xyzx

#line 717
mad r2.w, r4.y, l(3.000000), l(-1.000000)
mad r4.yzw, cb2[95].xxyz, r2.wwww, r6.xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z

#line 718
mul r6.xyz, r1.wwww, cb2[96].xyzx
mad r4.yzw, r6.xxyz, -r3.wwww, r4.yyzw

#line 719
mad r1.w, r1.w, r1.w, -r4.x
mad r4.xyz, cb2[97].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 1046
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightDiffuseColor_id47.x; r4.y <- streams.envLightDiffuseColor_id47.y; r4.z <- streams.envLightDiffuseColor_id47.z

#line 1047
dp3 r1.w, -r3.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r3.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 1048
dp3 r3.x, r1.xyzx, cb2[98].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r1.xyzx, cb2[99].xyzx  // r3.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[100].xyzx  // r1.x <- sampleDirection.z

#line 1049
mov r3.z, -r1.x  // r3.z <- sampleDirection.z

#line 828
mul r0.x, r0.x, cb2[97].w  // r0.x <- mipLevel

#line 829
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r3.xyzx, t7.xyzw, s0, r0.x  // r1.x <- <Compute_id310 return value>.x; r1.y <- <Compute_id310 return value>.y; r1.z <- <Compute_id310 return value>.z

#line 1050
mul r1.xyz, r1.xyzx, cb2[102].xxxx  // r1.x <- streams.envLightSpecularColor_id48.x; r1.y <- streams.envLightSpecularColor_id48.y; r1.z <- streams.envLightSpecularColor_id48.z

#line 1359
mad r2.xyz, r5.xyzx, r4.xyzx, r2.xyzx

#line 1363
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1378
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1485
utof o1.xyzw, cb0[26].xxxx

#line 1553
mov o0.w, cb1[0].w
ret 
// Approximately 567 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id87 = 1;
const static int TCascadeCountBase_id151 = 4;
const static int TLightCountBase_id152 = 1;
const static int TCascadeCount_id159 = 4;
const static int TLightCount_id160 = 1;
const static bool TBlendCascades_id161 = true;
const static bool TDepthRangeAuto_id162 = true;
const static bool TCascadeDebug_id163 = false;
const static bool TComputeTransmittance_id164 = false;
const static int TFilterSize_id166 = 7;
const static int TMaxLightCount_id183 = 1;
const static int TCascadeCountBase_id189 = 1;
const static int TLightCountBase_id190 = 1;
const static bool TCascadeDebug_id198 = false;
const static int TFilterSize_id199 = 3;
const static int TOrder_id202 = 3;
const static int TOrder_id204 = 3;
const static bool TInvert_id227 = true;
const static bool TIsEnergyConservative_id239 = false;
static const float PI_id241 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id167;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float DepthVS_id23;
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
    float4 Input_0_id212;
    float Input_1_id220;
    float Input_2_id229;
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
    uint2 lightData_id173;
    int lightIndex_id174;
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
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id167 : SCREENPOSITION_ID167_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
    float3 normalWS_id19;
    float4 ScreenPosition_id167;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id167 : SCREENPOSITION_ID167_SEM;
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
    float4 _padding_PerDraw_Default;
    int LightCount_id182;
    SpotLightData Lights_id184[TMaxLightCount_id183];
    float2 ShadowMapTextureSize_id186;
    float2 ShadowMapTextureTexelSize_id187;
    float4x4 WorldToShadowCascadeUV_id191[TCascadeCountBase_id189 * TLightCountBase_id190];
    float4x4 InverseWorldToShadowCascadeUV_id192[TCascadeCountBase_id189 * TLightCountBase_id190];
    float4x4 ViewMatrices_id193[TCascadeCountBase_id189 * TLightCountBase_id190];
    float2 DepthRanges_id194[TCascadeCountBase_id189 * TLightCountBase_id190];
    float DepthBiases_id195[TLightCountBase_id190];
    float OffsetScales_id196[TLightCountBase_id190];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id213;
    float InputValue_id221;
    float InputValue_id230;
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
    float NearClipPlane_id168 = 1.0f;
    float FarClipPlane_id169 = 100.0f;
    float2 ZProjection_id170;
    float2 ViewSize_id171;
    float AspectRatio_id172;
    float4 _padding_PerView_Default;
    int LightCount_id86;
    DirectionalLightData Lights_id88[TMaxLightCount_id87];
    float2 ShadowMapTextureSize_id90;
    float2 ShadowMapTextureTexelSize_id91;
    float4x4 WorldToShadowCascadeUV_id153[TCascadeCountBase_id151 * TLightCountBase_id152];
    float4x4 InverseWorldToShadowCascadeUV_id154[TCascadeCountBase_id151 * TLightCountBase_id152];
    float4x4 ViewMatrices_id155[TCascadeCountBase_id151 * TLightCountBase_id152];
    float2 DepthRanges_id156[TCascadeCountBase_id151 * TLightCountBase_id152];
    float DepthBiases_id157[TLightCountBase_id152];
    float OffsetScales_id158[TLightCountBase_id152];
    float CascadeDepthSplits_id165[TCascadeCount_id159 * TLightCount_id160];
    float ClusterDepthScale_id177;
    float ClusterDepthBias_id178;
    float2 ClusterStride_id179;
    float3 AmbientLight_id200;
    float3 SphericalColors_id205[TOrder_id204 * TOrder_id204];
    float MipCount_id206;
    float4x4 SkyMatrix_id208;
    float Intensity_id209;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id93;
    float2 Texture1TexelSize_id95;
    float2 Texture2TexelSize_id97;
    float2 Texture3TexelSize_id99;
    float2 Texture4TexelSize_id101;
    float2 Texture5TexelSize_id103;
    float2 Texture6TexelSize_id105;
    float2 Texture7TexelSize_id107;
    float2 Texture8TexelSize_id109;
    float2 Texture9TexelSize_id111;
};
Texture2D Texture0_id92;
Texture2D Texture1_id94;
Texture2D Texture2_id96;
Texture2D Texture3_id98;
Texture2D Texture4_id100;
Texture2D Texture5_id102;
Texture2D Texture6_id104;
Texture2D Texture7_id106;
Texture2D Texture8_id108;
Texture2D Texture9_id110;
TextureCube TextureCube0_id112;
TextureCube TextureCube1_id113;
TextureCube TextureCube2_id114;
TextureCube TextureCube3_id115;
Texture3D Texture3D0_id116;
Texture3D Texture3D1_id117;
Texture3D Texture3D2_id118;
Texture3D Texture3D3_id119;
SamplerState Sampler_id120;
SamplerState PointSampler_id121 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id122 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id124 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id125 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id126 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id127 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id128 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id129 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id130;
SamplerState Sampler1_id131;
SamplerState Sampler2_id132;
SamplerState Sampler3_id133;
SamplerState Sampler4_id134;
SamplerState Sampler5_id135;
SamplerState Sampler6_id136;
SamplerState Sampler7_id137;
SamplerState Sampler8_id138;
SamplerState Sampler9_id139;
Texture2D ShadowMapTexture_id185;
Texture2D EnvironmentLightingDFG_LUT_id242;
Texture2D ShadowMapTexture_id89;
Texture3D<uint2> LightClusters_id175;
Buffer<uint> LightIndices_id176;
Buffer<float4> PointLights_id180;
Buffer<float4> SpotLights_id181;
TextureCube CubeMap_id207;
float4 Project_id60(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id104(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id93(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id82(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id70(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id69(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id91, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id71(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id89.SampleLevel(LinearBorderSampler_id123, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id60(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id67(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id91, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id91, uvW3.x * uvW3.y);
    return 2704.0;
}
float Get3x3FilterKernel_id120(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id187, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id187, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id119(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id187, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id187, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id187, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id118(float2 position, float positionDepth)
{
    return ShadowMapTexture_id185.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
float Get7x7FilterKernel_id117(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id187, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id187, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id187, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id187, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id116(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id186;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id187;
}
float GetAngularAttenuation_id106(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id105(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id104(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id95(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id94(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id93(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id84(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id82(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id75(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id90;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id91;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id67(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id71(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id74(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id60(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id60(float4(ShadowMapTextureTexelSize_id91.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id60(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id73(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id60(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id60(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id91.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id60(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id72()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id68(float2 position, float positionDepth)
{
    return ShadowMapTexture_id89.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
void CalculatePCFKernelParameters_id66(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id90;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id91;
}
float Compute_id348()
{
    return InputValue_id230;
}
float Compute_id336()
{
    return InputValue_id221;
}
float4 Compute_id324()
{
    return InputValue_id213;
}
float FilterShadow_id112(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id116(position, base_uv, st);

    {
        float3 kernel[4];
        float normalizationFactor = Get3x3FilterKernel_id120(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id118(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id107(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id105(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id106(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id96(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id94(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id95(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id83(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id84(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id196(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id180(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id62(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id74(GetFilterRadiusInPixels_id72(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id73(GetFilterRadiusInPixels_id72(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id75(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id61(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id66(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id67(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id68(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id351(inout PS_STREAMS streams)
{
    streams.Input_2_id229 = Compute_id348();
}
void Compute_id339(inout PS_STREAMS streams)
{
    streams.Input_1_id220 = Compute_id336();
}
void Compute_id327(inout PS_STREAMS streams)
{
    streams.Input_0_id212 = Compute_id324();
}
float4 EvaluateSphericalHarmonics_id134(float3 sphericalColors[TOrder_id202 * TOrder_id202], float3 direction)
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
float ComputeShadowFromCascade_id115(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id191[cascadeIndex + lightIndex * TCascadeCountBase_id189]);
    shadowPosition.z -= DepthBiases_id195[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id112(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id114(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id187.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id108(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id107(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id97(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id96(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id86(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id83(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id210(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id241 * d * d);
}
float VisibilitySmithSchlickGGX_id198(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id196(alphaR, nDotL) * VisibilityhSchlickGGX_id196(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id186(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id180(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id65(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id151;
    return FilterThickness_id62(pixelPositionWS, meshNormalWS, DepthRanges_id156[arrayIndex], WorldToShadowCascadeUV_id153[arrayIndex], InverseWorldToShadowCascadeUV_id154[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id64(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id153[cascadeIndex + lightIndex * TCascadeCountBase_id151]);
    shadowPosition.z -= DepthBiases_id157[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id61(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id63(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id91.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id354(inout PS_STREAMS streams)
{
    return streams.Input_2_id229;
}
void Compute_id353(inout PS_STREAMS streams)
{

    {
        Compute_id351(streams);
    }
}
float Compute_id342(inout PS_STREAMS streams)
{
    return streams.Input_1_id220;
}
void Compute_id341(inout PS_STREAMS streams)
{

    {
        Compute_id339(streams);
    }
}
float4 Compute_id330(inout PS_STREAMS streams)
{
    return streams.Input_0_id212;
}
void Compute_id329(inout PS_STREAMS streams)
{

    {
        Compute_id327(streams);
    }
}
float4 Compute_id310(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id206;
    return CubeMap_id207.SampleLevel(LinearSampler_id122, direction, mipLevel);
}
float4 Compute_id305(float3 direction)
{
    return EvaluateSphericalHarmonics_id134(SphericalColors_id205, direction);
}
void PrepareEnvironmentLight_id138(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id360(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id242.SampleLevel(LinearSampler_id122, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id129(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id103(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id102(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id101(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id114(OffsetScales_id196[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id115(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id85 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id100(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id184[lightIndex].PositionWS;
    data.DirectionWS = Lights_id184[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id184[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id184[lightIndex].Color;
    ProcessLight_id108(streams, data);
}
float3 ComputeSpecularTextureProjection_id92(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id91(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id90(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id89(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id176.Load(streams.lightIndex_id174);
    streams.lightIndex_id174++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id181.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id181.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id181.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id181.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id97(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id81(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id80(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id79(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id176.Load(streams.lightIndex_id174);
    streams.lightIndex_id174++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id180.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id180.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id86(streams, pointLight);
}
void PrepareLightData_id85(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id170.y / (projectedDepth - ZProjection_id170.x);
    float2 texCoord = float2(streams.ScreenPosition_id167.x + 1, 1 - streams.ScreenPosition_id167.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id177 + ClusterDepthBias_id178), 0));
    streams.lightData_id173 = LightClusters_id175.Load(int4(texCoord * ClusterStride_id179, slice, 0));
    streams.lightIndex_id174 = streams.lightData_id173.x;
}
float Compute_id452(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id210(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id422(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id198(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id392(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id186(f0, streams.LdotH_id77);
}
float3 ComputeSpecularTextureProjection_id57(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id56(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id55(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id159;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id159 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id165[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id63(OffsetScales_id158[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id159)
    {
        shadow = ComputeShadowFromCascade_id64(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id165[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id165[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id159 - 1)
            {
            }
            else if (TBlendCascades_id161)
            {
                float nextShadow = ComputeShadowFromCascade_id64(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id85 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id54(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id88[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id88[lightIndex].DirectionWS;
}
float Compute_id357(inout PS_STREAMS streams)
{
    Compute_id353(streams);
    return Compute_id354(streams);
}
float Compute_id345(inout PS_STREAMS streams)
{
    Compute_id341(streams);
    return Compute_id342(streams);
}
float4 Compute_id333(inout PS_STREAMS streams)
{
    Compute_id329(streams);
    return Compute_id330(streams);
}
void ResetStream_id213()
{
}
void AfterLightingAndShading_id509()
{
}
void AfterLightingAndShading_id490()
{
}
void PrepareEnvironmentLight_id323(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id320(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id138(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id208);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id305(sampleDirection).rgb * Intensity_id209 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id208);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id310(streams, sampleDirection).rgb * Intensity_id209 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id539(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id360(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id483(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id315(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id129(streams);
    float3 lightColor = AmbientLight_id200 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id272(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id100(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id101(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id102(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id103(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id274()
{
    return LightCount_id182;
}
int GetMaxLightCount_id275()
{
    return TMaxLightCount_id183;
}
void PrepareDirectLights_id270()
{
}
void PrepareDirectLight_id260(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id89(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id90(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id91(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id92(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id264(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
int GetMaxLightCount_id263(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
void PrepareDirectLights_id258()
{
}
void PrepareDirectLight_id247(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id79(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id80(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id81(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id252(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
int GetMaxLightCount_id251(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
void PrepareDirectLights_id250(inout PS_STREAMS streams)
{
    PrepareLightData_id85(streams);
}
float3 ComputeDirectLightContribution_id538(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id392(streams, specularColor);
    float geometricShadowing = Compute_id422(streams);
    float normalDistribution = Compute_id452(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id482(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id241 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id223(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id54(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id55(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id56(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id57(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id225()
{
    return LightCount_id86;
}
int GetMaxLightCount_id226()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id221()
{
}
void PrepareForLightingAndShading_id506()
{
}
void PrepareForLightingAndShading_id487()
{
}
void PrepareMaterialForLightingAndShading_id212(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id211(inout PS_STREAMS streams)
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
float4 Compute_id359(inout PS_STREAMS streams)
{
    float x = Compute_id357(streams);
    return float4(x, x, x, x);
}
float4 Compute_id347(inout PS_STREAMS streams)
{
    float x = Compute_id345(streams);
    return float4(x, x, x, x);
}
float4 Compute_id335(inout PS_STREAMS streams)
{
    return Compute_id333(streams);
}
void ResetStream_id214(inout PS_STREAMS streams)
{
    ResetStream_id213();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id570(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id211(streams);
    PrepareMaterialForLightingAndShading_id212(streams);

    {
        PrepareForLightingAndShading_id487();
    }

    {
        PrepareForLightingAndShading_id506();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id221();
        const int maxLightCount = GetMaxLightCount_id226();
        int count = GetLightCount_id225();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id223(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id482(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id538(streams);
            }
        }
    }

    {
        PrepareDirectLights_id250(streams);
        const int maxLightCount = GetMaxLightCount_id251(streams);
        int count = GetLightCount_id252(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id247(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id482(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id538(streams);
            }
        }
    }

    {
        PrepareDirectLights_id258();
        const int maxLightCount = GetMaxLightCount_id263(streams);
        int count = GetLightCount_id264(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id260(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id482(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id538(streams);
            }
        }
    }

    {
        PrepareDirectLights_id270();
        const int maxLightCount = GetMaxLightCount_id275();
        int count = GetLightCount_id274();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id272(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id482(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id538(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id315(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id483(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id539(streams);
        }
    }

    {
        PrepareEnvironmentLight_id320(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id483(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id539(streams);
        }
    }

    {
        PrepareEnvironmentLight_id323(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id483(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id539(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id241 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id490();
    }

    {
        AfterLightingAndShading_id509();
    }
}
void Compute_id554(inout PS_STREAMS streams)
{
    float metalness = Compute_id359(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id549(inout PS_STREAMS streams)
{
    float glossiness = Compute_id347(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id544(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id335(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id215(inout PS_STREAMS streams)
{
    ResetStream_id214(streams);
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
void Compute_id51(inout PS_STREAMS streams)
{

    {
        Compute_id544(streams);
    }

    {
        Compute_id549(streams);
    }

    {
        Compute_id554(streams);
    }

    {
        Compute_id570(streams);
    }
}
void ResetStream_id50(inout PS_STREAMS streams)
{
    ResetStream_id215(streams);
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
float4 Compute_id49()
{
    return MaterialIndex_id83;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id50(streams);
    Compute_id51(streams);
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
    streams.ColorTarget1_id3 = Compute_id49();
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
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id167 = __input__.ScreenPosition_id167;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id167 /= streams.ScreenPosition_id167.w;
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
    streams.ScreenPosition_id167 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id167 = streams.ScreenPosition_id167;
    return __output__;
}

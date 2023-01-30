/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<2>, ShadowMapReceiverPointCubeMap<2>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 2192]
@C    World_id33 => Transformation.World
@C    WorldInverse_id34 => Transformation.WorldInverse
@C    WorldInverseTranspose_id35 => Transformation.WorldInverseTranspose
@C    WorldView_id36 => Transformation.WorldView
@C    WorldViewInverse_id37 => Transformation.WorldViewInverse
@C    WorldViewProjection_id38 => Transformation.WorldViewProjection
@C    WorldScale_id39 => Transformation.WorldScale
@C    EyeMS_id40 => Transformation.EyeMS
@C    MaterialIndex_id84 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id183 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id185 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id187 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id188 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id191 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id192 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id193 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id194 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id195 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 32]
@C    InputValue_id210 => ShaderFX.InputValueFloat4
@C    InputValue_id218 => ShaderFX.InputValueFloat
@C    InputValue_id227 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id26 => Transformation.View
@C    ViewInverse_id27 => Transformation.ViewInverse
@C    Projection_id28 => Transformation.Projection
@C    ProjectionInverse_id29 => Transformation.ProjectionInverse
@C    ViewProjection_id30 => Transformation.ViewProjection
@C    ProjScreenRay_id31 => Transformation.ProjScreenRay
@C    Eye_id32 => Transformation.Eye
@C    NearClipPlane_id169 => Camera.NearClipPlane
@C    FarClipPlane_id170 => Camera.FarClipPlane
@C    ZProjection_id171 => Camera.ZProjection
@C    ViewSize_id172 => Camera.ViewSize
@C    AspectRatio_id173 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id87 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id89 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id91 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id92 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id154 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id155 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id156 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id157 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id158 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id159 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id166 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id178 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id179 => LightClustered.ClusterDepthBias
@C    ClusterStride_id180 => LightClustered.ClusterStride
@C    AmbientLight_id197 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id202 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id203 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id205 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id206 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id239 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id239 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id123 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id125 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id239 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    GBufferOutputNormals => 3e4e9266b2241214d3854561b81ccfc5
@S    NormalPack => af1a18518fb63b6295c012c18fe9f9c0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 575b0d8c413aca16a4eeab1c49524aa3
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id33;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id34;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id35;// Offset:  128 Size:    64
//   float4x4 WorldView_id36;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id37;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id38; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id39;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id40;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id84;           // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id183;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id185[2];                 // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id187; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id188;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadow_id191[12];  // Offset:  544 Size:   768 [unused]
//   float4x4 InverseWorldToShadow_id192[12];// Offset: 1312 Size:   768 [unused]
//   float DepthBiases_id193[2];        // Offset: 2080 Size:    20 [unused]
//   float OffsetScales_id194[2];       // Offset: 2112 Size:    20 [unused]
//   float2 DepthParameters_id195[2];   // Offset: 2144 Size:    24 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 2176 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id26;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id27;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id28;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id29;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id30;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id31;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id32;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id169;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id170;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id171;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id172;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id173;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id87;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id89;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id91;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id92;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id154[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id155[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id156[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id157[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id158;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id159;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id166[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id178;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id179;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id180;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id197;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id202[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id203;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id205;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id206;             // Offset: 1632 Size:     4 [unused]
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
// SCREENPOSITION_ID168_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id22.x; v0.y <- __input__.Position_id22.y; v0.z <- __input__.Position_id22.z; v0.w <- __input__.Position_id22.w; 
//   v1.x <- __input__.meshNormal_id17.x; v1.y <- __input__.meshNormal_id17.y; v1.z <- __input__.meshNormal_id17.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id168.x; o3.y <- <VSMain return value>.ScreenPosition_id168.y; o3.z <- <VSMain return value>.ScreenPosition_id168.z; o3.w <- <VSMain return value>.ScreenPosition_id168.w; 
//   o2.x <- <VSMain return value>.DepthVS_id24; o2.y <- <VSMain return value>.normalWS_id20.x; o2.z <- <VSMain return value>.normalWS_id20.y; o2.w <- <VSMain return value>.normalWS_id20.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id23.x; o0.y <- <VSMain return value>.PositionWS_id23.y; o0.z <- <VSMain return value>.PositionWS_id23.z; o0.w <- <VSMain return value>.PositionWS_id23.w
//
#line 1587 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_2c1847883234133a6733ac94e63e035d.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id23.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id23.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id23.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id23.w

#line 1680
mov o0.xyzw, r0.xyzw

#line 1538
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1680
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1632
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1680
ret 
// Approximately 16 instruction slots used
@G    Pixel => 8e0a65db53d12215bb71fabe8f3626d4
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id33;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id34;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id35;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id36;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id37;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id38; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id39;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id40;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id84;           // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id183;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id185[2];                 // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id187; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id188;// Offset:  536 Size:     8
//   float4x4 WorldToShadow_id191[12];  // Offset:  544 Size:   768
//   float4x4 InverseWorldToShadow_id192[12];// Offset: 1312 Size:   768 [unused]
//   float DepthBiases_id193[2];        // Offset: 2080 Size:    20
//   float OffsetScales_id194[2];       // Offset: 2112 Size:    20
//   float2 DepthParameters_id195[2];   // Offset: 2144 Size:    24
//   float4 _padding_PerDraw_Lighting;  // Offset: 2176 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id210;           // Offset:    0 Size:    16
//   float InputValue_id218;            // Offset:   16 Size:     4
//   float InputValue_id227;            // Offset:   20 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id26;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id27;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id28;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id29;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id30;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id31;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id32;                   // Offset:  336 Size:    16
//   float NearClipPlane_id169;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id170;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id171;          // Offset:  360 Size:     8
//   float2 ViewSize_id172;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id173;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id87;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id89;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id91;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id92;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id154[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id155[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id156[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id157[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id158;           // Offset: 1296 Size:     4
//   float OffsetScales_id159;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id166[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id178;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id179;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id180;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id197;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id202[9];   // Offset: 1424 Size:   140
//   float MipCount_id203;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id205;          // Offset: 1568 Size:    64
//   float Intensity_id206;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id123               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id125  sampler_c      NA          NA             s1      1 
// ShadowMapTexture_id186            texture  float4          2d             t0      1 
// EnvironmentLightingDFG_LUT_id239    texture  float4          2d             t1      1 
// ShadowMapTexture_id90             texture  float4          2d             t2      1 
// LightClusters_id176               texture   uint2          3d             t3      1 
// LightIndices_id177                texture    uint         buf             t4      1 
// PointLights_id181                 texture  float4         buf             t5      1 
// SpotLights_id182                  texture  float4         buf             t6      1 
// CubeMap_id204                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID168_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
// SV_Target                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[136], dynamicIndexed
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
dcl_output o2.xyzw
dcl_temps 23
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id23.x; v0.y <- __input__.PositionWS_id23.y; v0.z <- __input__.PositionWS_id23.z; v0.w <- __input__.PositionWS_id23.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id24; v2.y <- __input__.normalWS_id20.x; v2.z <- __input__.normalWS_id20.y; v2.w <- __input__.normalWS_id20.z; 
//   v3.x <- __input__.ScreenPosition_id168.x; v3.y <- __input__.ScreenPosition_id168.y; v3.z <- __input__.ScreenPosition_id168.z; v3.w <- __input__.ScreenPosition_id168.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1659 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_2c1847883234133a6733ac94e63e035d.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id168.x; r0.y <- streams.ScreenPosition_id168.y

#line 1626
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1627
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id20.x; r1.y <- streams.normalWS_id20.y; r1.z <- streams.normalWS_id20.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1599
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id69.x; r2.y <- streams.viewWS_id69.y; r2.z <- streams.viewWS_id69.z

#line 1502
add r0.z, -cb1[1].x, l(1.000000)  // r0.z <- glossiness

#line 1494
add r3.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb1[1].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id56.x; r3.y <- streams.matSpecular_id56.y; r3.z <- streams.matSpecular_id56.z

#line 1495
mad r4.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r4.x <- streams.matDiffuse_id54.x; r4.y <- streams.matDiffuse_id54.y; r4.z <- streams.matDiffuse_id54.z

#line 1335
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id20.x; r1.y <- streams.normalWS_id20.y; r1.z <- streams.normalWS_id20.z

#line 1292
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id73

#line 1293
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 1294
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id71

#line 864
dp2 r0.w, cb2[82].xxxx, cb2[28].zzzz

#line 856
mov r6.w, l(1.000000)

#line 1353
mov r1.w, r5.y  // r1.w <- streams.NdotV_id73
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id20.x; r7.y <- streams.normalWS_id20.y; r7.z <- streams.normalWS_id20.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id23.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id23.y; r8.y <- streams.PositionWS_id23.z
mov r8.zw, r2.xxxy  // r8.z <- streams.viewWS_id69.x; r8.w <- streams.viewWS_id69.y
mov r9.z, r2.z  // r9.z <- streams.viewWS_id69.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id70.x; r10.y <- streams.matDiffuseVisible_id70.y; r10.z <- streams.matDiffuseVisible_id70.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id72.x; r11.y <- streams.matSpecularVisible_id72.y; r11.z <- streams.matSpecularVisible_id72.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id71
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, v2.x  // r2.w <- streams.DepthVS_id24
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, l(1)
  breakc_nz r4.w

#line 1355
  ige r4.w, r3.w, cb2[25].x
  if_nz r4.w

#line 1357
    break 

#line 1358
  endif 

#line 1262
  dp3 r4.w, r7.xyzx, -cb2[26].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id50

#line 1066
  ishl r5.z, r3.w, l(2)  // r5.z <- cascadeIndexBase

#line 1073
  lt r5.w, cb2[r5.z + 83].x, r2.w

#line 1076
  and r5.w, r5.w, l(1)  // r5.w <- cascadeIndex

#line 1073
  bfi r13.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r3.wwww, l(1, 2, 0, 0)
  lt r9.w, cb2[r13.x + 83].x, r2.w

#line 1076
  movc r5.w, r9.w, l(2), r5.w

#line 1073
  lt r9.w, cb2[r13.y + 83].x, r2.w

#line 1076
  movc r5.w, r9.w, l(3), r5.w

#line 863
  add r10.w, -r4.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale

#line 864
  mul r10.w, r0.w, r10.w

#line 1081
  mov r13.x, r7.w
  mov r13.yz, r8.xxyx
  mad r6.xyz, r10.wwww, r7.xyzx, r13.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 856
  bfi r10.w, l(30), l(2), r3.w, r5.w
  ishl r12.w, r5.w, l(2)
  bfi r12.w, l(30), l(4), r3.w, r12.w
  dp4 r13.x, r6.xyzw, cb2[r12.w + 29].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r6.xyzw, cb2[r12.w + 30].xyzw  // r13.y <- shadowPosition.y
  dp4 r13.w, r6.xyzw, cb2[r12.w + 31].xyzw  // r13.w <- shadowPosition.z
  dp4 r12.w, r6.xyzw, cb2[r12.w + 32].xyzw  // r12.w <- shadowPosition.w

#line 857
  add r13.z, r13.w, -cb2[81].x  // r13.z <- shadowPosition.z

#line 858
  div r13.xyz, r13.xyzx, r12.wwww

#line 622
  mad r13.xy, r13.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 623
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- st.x; r13.y <- st.y

#line 624
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 625
  mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 431
  mad r14.zw, -r13.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r14.z <- uvW0.y; r14.w <- uvW0.x

#line 433
  mad r15.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.x <- uvW2.x; r15.y <- uvW2.y

#line 434
  mad r15.zw, -r13.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r15.zw, r15.zzzw, r14.wwwz
  add r16.xw, r15.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- uv0.x; r16.w <- uv0.y

#line 435
  add r15.zw, r13.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  mul r16.yz, r15.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.y <- uv1.y; r16.z <- uv1.x

#line 436
  div r13.xy, r13.xyxx, r15.xyxx
  add r17.xy, r13.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r17.x <- uv2.x; r17.y <- uv2.y

#line 437
  mul r12.w, r14.z, r14.w

#line 438
  mad r18.xyzw, r16.xwzw, cb2[28].zwzw, r14.xyxy

#line 442
  mov r17.zw, r16.wwwy

#line 440
  mul r13.xy, r14.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 441
  mad r19.xyzw, r16.xyzy, cb2[28].zwzw, r14.xyxy

#line 442
  mad r20.xyzw, r17.xzxw, cb2[28].zwzw, r14.xyxy

#line 443
  mov r16.y, r17.y
  mul r14.zw, r14.zzzw, r15.xxxy

#line 444
  mad r16.xyzw, r16.xyzy, cb2[28].zwzw, r14.xyxy
  mul r15.zw, r15.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 445
  mad r14.xy, r17.xyxx, cb2[28].zwzz, r14.xyxx
  mul r13.w, r15.y, r15.x

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.x, r18.xyxx, t2.xxxx, s1, r13.z  // r15.x <- <SampleTextureAndCompare_id73 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.y, r18.zwzz, t2.xxxx, s1, r13.z  // r15.y <- <SampleTextureAndCompare_id73 return value>

#line 731
  mul r13.x, r13.x, r15.y
  mad r12.w, r12.w, r15.x, r13.x  // r12.w <- shadow

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r20.xyxx, t2.xxxx, s1, r13.z  // r13.x <- <SampleTextureAndCompare_id73 return value>

#line 731
  mad r12.w, r14.z, r13.x, r12.w

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r19.xyxx, t2.xxxx, s1, r13.z

#line 731
  mad r12.w, r13.y, r13.x, r12.w

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r19.zwzz, t2.xxxx, s1, r13.z

#line 731
  mad r12.w, r13.x, l(49.000000), r12.w

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r20.zwzz, t2.xxxx, s1, r13.z

#line 731
  mad r12.w, r15.z, r13.x, r12.w

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r16.xyxx, t2.xxxx, s1, r13.z

#line 731
  mad r12.w, r14.w, r13.x, r12.w

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r16.zwzz, t2.xxxx, s1, r13.z

#line 731
  mad r12.w, r15.w, r13.x, r12.w

#line 617
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.x, r14.xyxx, t2.xxxx, s1, r13.z

#line 731
  mad r12.w, r13.w, r13.x, r12.w

#line 733
  mul r13.xyz, r12.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r13.z <- shadow

#line 1087
  ilt r13.w, l(0), r5.w
  if_nz r13.w

#line 1089
    iadd r13.w, r10.w, l(-1)
    add r13.w, -cb2[r13.w + 83].x, cb2[r10.w + 83].x  // r13.w <- splitSize

#line 1090
  else 
    mov r13.w, cb2[r10.w + 83].x  // r13.w <- splitSize
  endif 

#line 1091
  add r10.w, -r2.w, cb2[r10.w + 83].x
  div r10.w, r10.w, r13.w  // r10.w <- splitDist

#line 1092
  lt r13.w, r10.w, l(0.200000)
  if_nz r13.w

#line 1095
    if_nz r9.w

#line 1097
      mov r13.xyz, r13.zzzz  // r13.x <- shadow.x; r13.y <- shadow.y; r13.z <- shadow.z
    else 

#line 1094
      mul_sat r9.w, r10.w, l(5.000000)
      mad r10.w, r9.w, l(-2.000000), l(3.000000)
      mul r9.w, r9.w, r9.w
      mul r9.w, r9.w, r10.w  // r9.w <- lerpAmt

#line 856
      ishl r5.z, r5.z, l(2)
      imad r5.z, r5.w, l(4), r5.z
      iadd r5.z, r5.z, l(4)
      dp4 r14.x, r6.xyzw, cb2[r5.z + 29].xyzw  // r14.x <- shadowPosition.x
      dp4 r14.y, r6.xyzw, cb2[r5.z + 30].xyzw  // r14.y <- shadowPosition.y
      dp4 r5.w, r6.xyzw, cb2[r5.z + 31].xyzw  // r5.w <- shadowPosition.z
      dp4 r5.z, r6.xyzw, cb2[r5.z + 32].xyzw  // r5.z <- shadowPosition.w

#line 857
      add r14.z, r5.w, -cb2[81].x  // r14.z <- shadowPosition.z

#line 858
      div r6.xyz, r14.xyzx, r5.zzzz  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 622
      mad r5.zw, r6.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 623
      add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 624
      add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 625
      mul r6.xy, r6.xyxx, cb2[28].zwzz

#line 431
      mad r14.xy, -r5.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r14.x <- uvW0.y; r14.y <- uvW0.x

#line 433
      mad r14.zw, r5.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r14.z <- uvW2.x; r14.w <- uvW2.y

#line 434
      mad r15.xy, -r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r15.xy, r15.xyxx, r14.yxyy
      add r15.xw, r15.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r15.x <- uv0.x; r15.w <- uv0.y

#line 435
      add r16.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r15.yz, r16.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r15.y <- uv1.y; r15.z <- uv1.x

#line 436
      div r5.zw, r5.zzzw, r14.zzzw
      add r16.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- uv2.x; r16.y <- uv2.y

#line 445
      mul r5.zw, r14.xxxw, r14.yyyz

#line 438
      mad r17.xyzw, r15.xwzw, cb2[28].zwzw, r6.xyxy

#line 442
      mov r16.zw, r15.wwwy

#line 440
      mul r18.xy, r14.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 441
      mad r19.xyzw, r15.xyzy, cb2[28].zwzw, r6.xyxy

#line 442
      mad r20.xyzw, r16.xzxw, cb2[28].zwzw, r6.xyxy

#line 443
      mov r15.y, r16.y
      mul r14.xy, r14.xyxx, r14.zwzz

#line 444
      mad r15.xyzw, r15.xyzy, cb2[28].zwzw, r6.xyxy
      mul r16.zw, r14.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 445
      mad r6.xy, r16.xyxx, cb2[28].zwzz, r6.xyxx

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r17.xyxx, t2.xxxx, s1, r6.z  // r10.w <- <SampleTextureAndCompare_id73 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r17.zwzz, t2.xxxx, s1, r6.z  // r13.w <- <SampleTextureAndCompare_id73 return value>

#line 731
      mul r13.w, r13.w, r18.x
      mad r5.z, r5.z, r10.w, r13.w  // r5.z <- shadow

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r20.xyxx, t2.xxxx, s1, r6.z  // r10.w <- <SampleTextureAndCompare_id73 return value>

#line 731
      mad r5.z, r14.x, r10.w, r5.z

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r19.xyxx, t2.xxxx, s1, r6.z

#line 731
      mad r5.z, r18.y, r10.w, r5.z

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r19.zwzz, t2.xxxx, s1, r6.z

#line 731
      mad r5.z, r10.w, l(49.000000), r5.z

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r20.zwzz, t2.xxxx, s1, r6.z

#line 731
      mad r5.z, r16.z, r10.w, r5.z

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r15.xyxx, t2.xxxx, s1, r6.z

#line 731
      mad r5.z, r14.y, r10.w, r5.z

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r15.zwzz, t2.xxxx, s1, r6.z

#line 731
      mad r5.z, r16.w, r10.w, r5.z

#line 617
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r6.xyxx, t2.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id73 return value>

#line 731
      mad r5.z, r5.w, r6.x, r5.z

#line 733
      mul r5.z, r5.z, l(0.006944)

#line 1101
      mad r5.w, r12.w, l(0.006944), -r5.z
      mad r13.xyz, r9.wwww, r5.wwww, r5.zzzz  // r13.x <- shadow.x; r13.y <- shadow.y; r13.z <- shadow.z

#line 1102
    endif 

#line 1103
  endif 

#line 1264
  mul r6.xyz, r13.xyzx, cb2[27].xyzx
  mul r6.xyz, r4.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id45.x; r6.y <- streams.lightColorNdotL_id45.y; r6.z <- streams.lightColorNdotL_id45.z

#line 1254
  mov r9.xy, r8.zwzz
  add r9.xyw, r9.xyxz, -cb2[26].xyxz
  dp3 r5.z, r9.xywx, r9.xywx
  rsq r5.z, r5.z
  mul r9.xyw, r5.zzzz, r9.xyxw  // r9.x <- streams.H_id76.x; r9.y <- streams.H_id76.y; r9.w <- streams.H_id76.z

#line 1255
  dp3_sat r5.z, r7.xyzx, r9.xywx  // r5.z <- streams.NdotH_id77

#line 1256
  dp3_sat r5.w, -cb2[26].xyzx, r9.xywx  // r5.w <- streams.LdotH_id78

#line 1250
  mul r9.xyw, r6.xyxz, r10.xyxz

#line 1363
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 701
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r10.w, r5.w, r5.w
  mul r10.w, r10.w, r10.w
  mul r5.w, r5.w, r10.w
  mad r13.xyz, r13.xyzx, r5.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id183 return value>.x; r13.y <- <FresnelSchlick_id183 return value>.y; r13.z <- <FresnelSchlick_id183 return value>.z

#line 696
  mul r5.w, r11.w, l(0.500000)  // r5.w <- k

#line 697
  mad r10.w, -r11.w, l(0.500000), l(1.000000)
  mad r12.w, r4.w, r10.w, r5.w
  div r12.w, r4.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r5.w, r1.w, r10.w, r5.w
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id199 return value>

#line 843
  mul r5.w, r5.w, r12.w
  mul r4.w, r1.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 837
  mul r5.w, r11.w, r11.w  // r5.w <- alphaR2

#line 838
  mul r5.z, r5.z, r5.z
  mad r10.w, r11.w, r11.w, l(-1.000000)
  mad r5.z, r5.z, r10.w, l(1.000000)
  max r5.z, r5.z, l(0.000100)  // r5.z <- d

#line 839
  mul r5.z, r5.z, r5.z
  mul r5.z, r5.z, l(3.141593)
  div r5.z, r5.w, r5.z  // r5.z <- <NormalDistributionGGX_id213 return value>

#line 1244
  mul r13.xyz, r4.wwww, r13.xyzx
  mul r13.xyz, r5.zzzz, r13.xyzx
  mul r6.xyz, r6.xyzx, r13.xyzx

#line 1367
  mad r12.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1353
  iadd r3.w, r3.w, l(1)

#line 1369
endloop 

#line 1038
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 1039
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1040
mad r0.w, r0.w, cb2[86].y, cb2[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 1041
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 1040
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 1041
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t3.xyzw  // r0.x <- streams.lightData_id174.x; r0.y <- streams.lightData_id174.y

#line 1232
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id254 return value>

#line 1377
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id20.x; r6.y <- streams.normalWS_id20.y; r6.z <- streams.normalWS_id20.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id23.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id23.y; r7.y <- streams.PositionWS_id23.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id69.x; r7.w <- streams.viewWS_id69.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id69.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id70.x; r9.y <- streams.matDiffuseVisible_id70.y; r9.z <- streams.matDiffuseVisible_id70.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id72.x; r10.y <- streams.matSpecularVisible_id72.y; r10.z <- streams.matSpecularVisible_id72.z
mov r10.w, r0.z  // r10.w <- streams.alphaRoughness_id71
mov r5.w, r5.y  // r5.w <- streams.NdotV_id73
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id175
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1379
  if_nz r2.w

#line 1381
    break 

#line 1382
  endif 

#line 1025
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 1026
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id175

#line 1028
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t5.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 1029
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t5.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 688
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 689
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 690
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 563
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 413
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 414
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 415
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id87 return value>

#line 564
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1218
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id50

#line 1220
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id45.x; r14.y <- streams.lightColorNdotL_id45.y; r14.z <- streams.lightColorNdotL_id45.z

#line 1254
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id76.x; r8.y <- streams.H_id76.y; r8.w <- streams.H_id76.z

#line 1255
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id77

#line 1256
  dp3_sat r4.w, r13.xyzx, r8.xywx  // r4.w <- streams.LdotH_id78

#line 1250
  mul r8.xyw, r9.xyxz, r14.xyxz

#line 1387
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r11.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 701
  add r13.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r10.xyzx  // r13.x <- <FresnelSchlick_id183 return value>.x; r13.y <- <FresnelSchlick_id183 return value>.y; r13.z <- <FresnelSchlick_id183 return value>.z

#line 696
  mul r4.w, r10.w, l(0.500000)  // r4.w <- k

#line 697
  mad r9.w, -r10.w, l(0.500000), l(1.000000)
  mad r11.w, r3.w, r9.w, r4.w
  div r11.w, r3.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id199 return value>

#line 843
  mul r4.w, r4.w, r11.w
  mul r3.w, r5.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 837
  mul r4.w, r10.w, r10.w  // r4.w <- alphaR2

#line 838
  mul r2.w, r2.w, r2.w
  mad r9.w, r10.w, r10.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 839
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id213 return value>

#line 1244
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 1391
  mad r11.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1377
  iadd r1.w, r1.w, l(1)

#line 1393
endloop   // r5.z <- streams.lightIndex_id175

#line 1210
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id266 return value>

#line 1401
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id23.x; r6.y <- streams.PositionWS_id23.y; r6.z <- streams.PositionWS_id23.z
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id20.x; r7.y <- streams.normalWS_id20.y; r7.z <- streams.normalWS_id20.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.viewWS_id69.x; r8.y <- streams.viewWS_id69.y
mov r9.xyz, r4.xyzx
mov r10.xyz, r3.xyzx
mov r12.x, r0.z  // r12.x <- streams.alphaRoughness_id71
mov r12.z, r5.y  // r12.z <- streams.NdotV_id73
mov r13.xyz, r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.z  // r0.y <- streams.lightIndex_id175
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 1403
  if_nz r1.w

#line 1405
    break 

#line 1406
  endif 

#line 997
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t4.yzwx  // r1.w <- realLightIndex

#line 998
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id175

#line 1000
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t6.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 1003
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 1001
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t6.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 1002
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t6.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 1003
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t6.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 675
  add r14.xyz, -r6.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 676
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 677
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 556
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 407
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 408
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 409
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id98 return value>

#line 557
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 548
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 549
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 550
  mul r2.w, r2.w, r2.w

#line 683
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1196
  dp3 r2.w, r7.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id50

#line 1198
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id45.x; r15.y <- streams.lightColorNdotL_id45.y; r15.z <- streams.lightColorNdotL_id45.z

#line 1254
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id76.x; r16.y <- streams.H_id76.y; r16.z <- streams.H_id76.z

#line 1255
  dp3_sat r1.w, r7.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id77

#line 1256
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id78

#line 1250
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 1411
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 701
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id183 return value>.x; r16.y <- <FresnelSchlick_id183 return value>.y; r16.z <- <FresnelSchlick_id183 return value>.z

#line 696
  mul r3.w, r12.x, l(0.500000)  // r3.w <- k

#line 697
  mad r4.w, -r12.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r3.w, r12.z, r4.w, r3.w
  div r3.w, r12.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id199 return value>

#line 843
  mul r3.w, r3.w, r5.w
  mul r2.w, r12.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 837
  mul r3.w, r12.x, r12.x  // r3.w <- alphaR2

#line 838
  mul r1.w, r1.w, r1.w
  mad r4.w, r12.x, r12.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 839
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id213 return value>

#line 1244
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1415
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1401
  iadd r0.w, r0.w, l(1)

#line 1417
endloop   // r0.y <- streams.lightIndex_id175

#line 797
add r0.x, cb0[33].z, cb0[33].z

#line 958
mov r6.w, l(4)
mov r7.xz, l(0,0,2,0)

#line 964
mov r8.w, l(1.000000)

#line 1425
mov r9.xyz, v0.xyzx  // r9.x <- streams.PositionWS_id23.x; r9.y <- streams.PositionWS_id23.y; r9.z <- streams.PositionWS_id23.z
mov r10.xyz, r1.xyzx  // r10.x <- streams.normalWS_id20.x; r10.y <- streams.normalWS_id20.y; r10.z <- streams.normalWS_id20.z
mov r11.xyz, r2.xyzx  // r11.x <- streams.viewWS_id69.x; r11.y <- streams.viewWS_id69.y; r11.z <- streams.viewWS_id69.z
mov r12.xyz, r4.xyzx  // r12.x <- streams.matDiffuseVisible_id70.x; r12.y <- streams.matDiffuseVisible_id70.y; r12.z <- streams.matDiffuseVisible_id70.z
mov r14.xyz, r3.xyzx  // r14.x <- streams.matSpecularVisible_id72.x; r14.y <- streams.matSpecularVisible_id72.y; r14.z <- streams.matSpecularVisible_id72.z
mov r15.x, r0.z  // r15.x <- streams.alphaRoughness_id71
mov r15.z, r5.y  // r15.z <- streams.NdotV_id73
mov r16.xyz, r13.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r0.w, r0.y, l(2)
  breakc_nz r0.w

#line 1427
  ige r0.w, r0.y, cb0[28].x
  if_nz r0.w

#line 1429
    break 

#line 1430
  endif 

#line 977
  ishl r0.w, r0.y, l(1)

#line 667
  add r17.xyz, -r9.xyzx, cb0[r0.w + 29].xyzx  // r17.x <- lightVector.x; r17.y <- lightVector.y; r17.z <- lightVector.z

#line 668
  dp3 r1.w, r17.xyzx, r17.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 669
  div r17.xyz, r17.xyzx, r2.wwww  // r17.x <- lightVectorNorm.x; r17.y <- lightVectorNorm.y; r17.z <- lightVectorNorm.z

#line 542
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 401
  mul r1.w, r1.w, cb0[r0.w + 29].w  // r1.w <- factor

#line 402
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 403
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id109 return value>

#line 543
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1174
  dp3 r2.w, r10.xyzx, r17.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id50

#line 936
  add r6.xyz, r9.xyzx, -cb0[r0.w + 29].xyzx  // r6.x <- lightDelta.x; r6.y <- lightDelta.y; r6.z <- lightDelta.z

#line 937
  dp3 r3.w, r6.xyzx, r6.xyzx
  sqrt r3.w, r3.w  // r3.w <- distanceToLight

#line 938
  div r18.xyz, r6.xyzx, r3.wwww  // r18.x <- direction.x; r18.y <- direction.y; r18.z <- direction.z

#line 940
  max r3.w, |r18.z|, |r18.y|
  max r3.w, r3.w, |r18.x|  // r3.w <- longestAxis

#line 949
  eq r5.zw, r3.wwww, |r18.xxxy|

#line 958
  mov r7.yw, r6.zzzx
  movc r6.xy, r5.wwww, r6.wyww, r7.xyxx  // r6.x <- faceIndex; r6.y <- lightSpaceZ
  movc r5.zw, r5.zzzz, r7.zzzw, r6.xxxy  // r5.z <- faceIndex; r5.w <- lightSpaceZ

#line 967
  add r3.w, |r5.w|, -cb0[r0.y + 130].x  // r3.w <- lightSpaceZ

#line 968
  div r3.w, cb0[r0.y + 134].y, r3.w
  add r3.w, r3.w, cb0[r0.y + 134].x  // r3.w <- depth

#line 969
  lt r4.w, r3.w, l(0.000000)
  lt r6.x, l(1.000000), r3.w
  or r4.w, r4.w, r6.x

#line 971
  if_z r4.w

#line 959
    lt r4.w, l(0.000000), r5.w
    lt r5.w, r5.w, l(0.000000)
    iadd r4.w, -r4.w, r5.w
    itof r4.w, r4.w  // r4.w <- lightSpaceZDirection

#line 960
    min r4.w, r4.w, l(0.000000)
    ftoi r4.w, -r4.w
    iadd r4.w, r4.w, r5.z  // r4.w <- faceIndex

#line 961
    imad r4.w, r0.y, l(6), r4.w

#line 796
    add r5.z, -r2.w, l(1.000000)
    max r5.z, r5.z, l(0.000000)  // r5.z <- normalOffsetScale

#line 797
    mul r5.w, r0.x, cb0[r0.y + 132].x
    mul r5.z, r5.z, r5.w

#line 963
    mad r8.xyz, r5.zzzz, r10.xyzx, r9.xyzx  // r8.x <- positionWS.x; r8.y <- positionWS.y; r8.z <- positionWS.z

#line 964
    ishl r4.w, r4.w, l(2)
    dp4 r6.x, r8.xyzw, cb0[r4.w + 34].xyzw  // r6.x <- projectedPosition.x
    dp4 r6.y, r8.xyzw, cb0[r4.w + 35].xyzw  // r6.y <- projectedPosition.y
    dp4 r4.w, r8.xyzw, cb0[r4.w + 37].xyzw  // r4.w <- projectedPosition.w

#line 965
    div r5.zw, r6.xxxy, r4.wwww  // r5.z <- projectedPosition.x; r5.w <- projectedPosition.y

#line 646
    mad r5.zw, r5.zzzw, cb0[33].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
    round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 647
    add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 648
    add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 649
    mul r6.xy, r6.xyxx, cb0[33].zwzz

#line 339
    mad r7.yw, -r5.wwwz, l(0.000000, 3.000000, 0.000000, 3.000000), l(0.000000, 4.000000, 0.000000, 4.000000)  // r7.y <- uvW0.y; r7.w <- uvW0.x

#line 341
    mad r8.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r8.x <- uvW2.x; r8.y <- uvW2.y

#line 342
    mad r15.yw, -r5.zzzw, l(0.000000, 2.000000, 0.000000, 2.000000), l(0.000000, 3.000000, 0.000000, 3.000000)
    div r15.yw, r15.yyyw, r7.wwwy
    add r18.xw, r15.yyyw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 343
    add r15.yw, r5.zzzw, l(0.000000, 3.000000, 0.000000, 3.000000)
    mul r18.yz, r15.wwyw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 344
    div r5.zw, r5.zzzw, r8.xxxy
    add r19.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r19.x <- uv2.x; r19.y <- uv2.y

#line 345
    mul r4.w, r7.y, r7.w

#line 346
    mad r20.xyzw, r18.xwzw, cb0[33].zwzw, r6.xyxy

#line 350
    mov r19.zw, r18.wwwy

#line 348
    mul r5.zw, r7.yyyw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 349
    mad r21.xyzw, r18.xyzy, cb0[33].zwzw, r6.xyxy

#line 350
    mad r22.xyzw, r19.xzxw, cb0[33].zwzw, r6.xyxy

#line 351
    mov r18.y, r19.y
    mul r7.yw, r7.yyyw, r8.xxxy

#line 352
    mad r18.xyzw, r18.xyzy, cb0[33].zwzw, r6.xyxy
    mul r15.yw, r8.xxxy, l(0.000000, 7.000000, 0.000000, 7.000000)

#line 353
    mad r6.xy, r19.xyxx, cb0[33].zwzz, r6.xyxx
    mul r6.z, r8.y, r8.x

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r20.xyxx, t0.xxxx, s1, r3.w  // r8.x <- <SampleTextureAndCompare_id121 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.y, r20.zwzz, t0.xxxx, s1, r3.w  // r8.y <- <SampleTextureAndCompare_id121 return value>

#line 788
    mul r5.z, r5.z, r8.y
    mad r4.w, r4.w, r8.x, r5.z  // r4.w <- shadow

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r22.xyxx, t0.xxxx, s1, r3.w  // r5.z <- <SampleTextureAndCompare_id121 return value>

#line 788
    mad r4.w, r7.y, r5.z, r4.w

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r21.xyxx, t0.xxxx, s1, r3.w

#line 788
    mad r4.w, r5.w, r5.z, r4.w

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r21.zwzz, t0.xxxx, s1, r3.w

#line 788
    mad r4.w, r5.z, l(49.000000), r4.w

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r22.zwzz, t0.xxxx, s1, r3.w

#line 788
    mad r4.w, r15.y, r5.z, r4.w

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r18.xyxx, t0.xxxx, s1, r3.w

#line 788
    mad r4.w, r7.w, r5.z, r4.w

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r18.zwzz, t0.xxxx, s1, r3.w

#line 788
    mad r4.w, r15.w, r5.z, r4.w

#line 641
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r6.xyxx, t0.xxxx, s1, r3.w  // r3.w <- <SampleTextureAndCompare_id121 return value>

#line 788
    mad r3.w, r6.z, r3.w, r4.w  // r3.w <- shadow

#line 790
    mul r6.xyz, r3.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r6.z <- shadow

#line 972
  else   // Prior locations: r6.z <- lightDelta.z; r18.x <- direction.x; r18.y <- direction.y; r18.z <- direction.z; r5.z <- faceIndex; r3.w <- depth
    mov r6.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1176
  mul r8.xyz, r1.wwww, cb0[r0.w + 30].xyzx
  mul r6.xyz, r6.xyzx, r8.xyzx
  mul r6.xyz, r2.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id45.x; r6.y <- streams.lightColorNdotL_id45.y; r6.z <- streams.lightColorNdotL_id45.z

#line 1254
  add r8.xyz, r11.xyzx, r17.xyzx
  dp3 r0.w, r8.xyzx, r8.xyzx
  rsq r0.w, r0.w
  mul r8.xyz, r0.wwww, r8.xyzx  // r8.x <- streams.H_id76.x; r8.y <- streams.H_id76.y; r8.z <- streams.H_id76.z

#line 1255
  dp3_sat r0.w, r10.xyzx, r8.xyzx  // r0.w <- streams.NdotH_id77

#line 1256
  dp3_sat r1.w, r17.xyzx, r8.xyzx  // r1.w <- streams.LdotH_id78

#line 1250
  mul r8.xyz, r6.xyzx, r12.xyzx

#line 1435
  mad r8.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r16.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 701
  add r17.xyz, -r14.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r3.w, r1.w, r1.w
  mul r3.w, r3.w, r3.w
  mul r1.w, r1.w, r3.w
  mad r17.xyz, r17.xyzx, r1.wwww, r14.xyzx  // r17.x <- <FresnelSchlick_id183 return value>.x; r17.y <- <FresnelSchlick_id183 return value>.y; r17.z <- <FresnelSchlick_id183 return value>.z

#line 696
  mul r1.w, r15.x, l(0.500000)  // r1.w <- k

#line 697
  mad r3.w, -r15.x, l(0.500000), l(1.000000)
  mad r4.w, r2.w, r3.w, r1.w
  div r4.w, r2.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r1.w, r15.z, r3.w, r1.w
  div r1.w, r15.z, r1.w  // r1.w <- <VisibilityhSchlickGGX_id199 return value>

#line 843
  mul r1.w, r1.w, r4.w
  mul r2.w, r15.z, r2.w
  div r1.w, r1.w, r2.w  // r1.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 837
  mul r2.w, r15.x, r15.x  // r2.w <- alphaR2

#line 838
  mul r0.w, r0.w, r0.w
  mad r3.w, r15.x, r15.x, l(-1.000000)
  mad r0.w, r0.w, r3.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 839
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r2.w, r0.w  // r0.w <- <NormalDistributionGGX_id213 return value>

#line 1244
  mul r17.xyz, r1.wwww, r17.xyzx
  mul r17.xyz, r0.wwww, r17.xyzx
  mul r6.xyz, r6.xyzx, r17.xyzx

#line 1439
  mad r16.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z

#line 1425
  iadd r0.y, r0.y, l(1)

#line 1441
endloop 

#line 916
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 917
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t1.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 918
mad r0.yzw, r3.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id363 return value>.x; r0.z <- <Compute_id363 return value>.y; r0.w <- <Compute_id363 return value>.z

#line 1157
mul r3.xyz, r0.yzwy, cb2[88].xyzx  // r3.x <- <ComputeEnvironmentLightContribution_id542 return value>.x; r3.y <- <ComputeEnvironmentLightContribution_id542 return value>.y; r3.z <- <ComputeEnvironmentLightContribution_id542 return value>.z

#line 1453
mad r3.xyz, r4.xyzx, cb2[88].xyzx, r3.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 1146
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[100].xyzx  // r3.w <- sampleDirection.z

#line 755
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 756
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 760
mad r5.yzw, cb2[90].xxyz, r2.wwww, cb2[89].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 761
mad r5.yzw, cb2[91].xxyz, -r3.wwww, r5.yyzw

#line 762
mad r5.yzw, cb2[92].xxyz, r1.wwww, r5.yyzw

#line 765
mul r6.xyz, r2.wwww, cb2[93].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 766
mul r6.xyz, r2.wwww, cb2[94].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 767
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[95].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 768
mul r6.xyz, r1.wwww, cb2[96].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 769
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[97].xyzx, r1.wwww, r5.xyzx

#line 1148
mul r5.xyz, r5.xyzx, cb2[102].xxxx  // r5.x <- streams.envLightDiffuseColor_id48.x; r5.y <- streams.envLightDiffuseColor_id48.y; r5.z <- streams.envLightDiffuseColor_id48.z

#line 1149
dp3 r1.w, -r2.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r2.xyz, r1.xyzx, -r1.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 1150
dp3 r6.x, r2.xyzx, cb2[98].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r2.xyzx, cb2[99].xyzx  // r6.y <- sampleDirection.y
dp3 r1.w, r2.xyzx, cb2[100].xyzx  // r1.w <- sampleDirection.z

#line 1151
mov r6.z, -r1.w  // r6.z <- sampleDirection.z

#line 902
mul r0.x, r0.x, cb2[97].w  // r0.x <- mipLevel

#line 903
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r6.xyzx, t7.xyzw, s0, r0.x  // r2.x <- <Compute_id313 return value>.x; r2.y <- <Compute_id313 return value>.y; r2.z <- <Compute_id313 return value>.z

#line 1152
mul r2.xyz, r2.xyzx, cb2[102].xxxx  // r2.x <- streams.envLightSpecularColor_id49.x; r2.y <- streams.envLightSpecularColor_id49.y; r2.z <- streams.envLightSpecularColor_id49.z

#line 1461
mad r3.xyz, r4.xyzx, r5.xyzx, r3.xyzx

#line 1465
mad r0.xyz, r0.yzwy, r2.xyzx, r3.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1480
mad o0.xyz, r16.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1548
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1591
utof o2.xyzw, cb0[26].xxxx

#line 1665
mov o0.w, cb1[0].w
mov o1.w, l(1.000000)
ret 
// Approximately 598 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id88 = 1;
const static int TCascadeCountBase_id152 = 4;
const static int TLightCountBase_id153 = 1;
const static int TCascadeCount_id160 = 4;
const static int TLightCount_id161 = 1;
const static bool TBlendCascades_id162 = true;
const static bool TDepthRangeAuto_id163 = true;
const static bool TCascadeDebug_id164 = false;
const static bool TComputeTransmittance_id165 = false;
const static int TFilterSize_id167 = 5;
const static int TMaxLightCount_id184 = 2;
const static int TLightCount_id190 = 2;
const static int TFilterSize_id196 = 5;
const static int TOrder_id199 = 3;
const static int TOrder_id201 = 3;
const static bool TInvert_id224 = true;
const static bool TIsEnergyConservative_id236 = false;
static const float PI_id238 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id168;
    float3 normalWS_id20;
    float4 PositionWS_id23;
    float DepthVS_id24;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id18;
    float3 viewWS_id69;
    float3 shadingColor_id74;
    float matBlend_id41;
    float3 matNormal_id52;
    float4 matColorBase_id53;
    float4 matDiffuse_id54;
    float3 matDiffuseVisible_id70;
    float3 matSpecular_id56;
    float3 matSpecularVisible_id72;
    float matSpecularIntensity_id57;
    float matGlossiness_id55;
    float alphaRoughness_id71;
    float matAmbientOcclusion_id58;
    float matAmbientOcclusionDirectLightingFactor_id59;
    float matCavity_id60;
    float matCavityDiffuse_id61;
    float matCavitySpecular_id62;
    float4 matEmissive_id63;
    float matEmissiveIntensity_id64;
    float matScatteringStrength_id65;
    float2 matDiffuseSpecularAlphaBlend_id66;
    float3 matAlphaBlendColor_id67;
    float matAlphaDiscard_id68;
    float shadingColorAlpha_id75;
    float4 Input_0_id209;
    float Input_1_id217;
    float Input_2_id226;
    float3 lightPositionWS_id42;
    float3 lightDirectionWS_id43;
    float3 lightColor_id44;
    float3 lightColorNdotL_id45;
    float3 lightSpecularColorNdotL_id46;
    float lightAttenuation_id47;
    float3 envLightDiffuseColor_id48;
    float3 envLightSpecularColor_id49;
    float lightDirectAmbientOcclusion_id51;
    float NdotL_id50;
    float NdotV_id73;
    float thicknessWS_id86;
    float3 shadowColor_id85;
    float3 H_id76;
    float NdotH_id77;
    float LdotH_id78;
    float VdotH_id79;
    uint2 lightData_id174;
    int lightIndex_id175;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
    float4 ColorTarget2_id4;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
    float4 ColorTarget2_id4 : SV_Target2;
};
struct PS_INPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id24 : DEPTH_VS;
    float3 normalWS_id20 : NORMALWS;
    float4 ScreenPosition_id168 : SCREENPOSITION_ID168_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id22;
    float3 meshNormal_id17;
    float4 PositionH_id25;
    float3 meshNormalWS_id18;
    float4 PositionWS_id23;
    float4 ShadingPosition_id0;
    float DepthVS_id24;
    float3 normalWS_id20;
    float4 ScreenPosition_id168;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id24 : DEPTH_VS;
    float3 normalWS_id20 : NORMALWS;
    float4 ScreenPosition_id168 : SCREENPOSITION_ID168_SEM;
};
struct VS_INPUT 
{
    float4 Position_id22 : POSITION;
    float3 meshNormal_id17 : NORMAL;
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
    float4x4 World_id33;
    float4x4 WorldInverse_id34;
    float4x4 WorldInverseTranspose_id35;
    float4x4 WorldView_id36;
    float4x4 WorldViewInverse_id37;
    float4x4 WorldViewProjection_id38;
    float3 WorldScale_id39;
    float4 EyeMS_id40;
    uint MaterialIndex_id84;
    float4 _padding_PerDraw_Default;
    int LightCount_id183;
    PointLightData Lights_id185[TMaxLightCount_id184];
    float2 ShadowMapTextureSize_id187;
    float2 ShadowMapTextureTexelSize_id188;
    float4x4 WorldToShadow_id191[TLightCount_id190 * 6];
    float4x4 InverseWorldToShadow_id192[TLightCount_id190 * 6];
    float DepthBiases_id193[TLightCount_id190];
    float OffsetScales_id194[TLightCount_id190];
    float2 DepthParameters_id195[TLightCount_id190];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id210;
    float InputValue_id218;
    float InputValue_id227;
};
cbuffer PerView 
{
    float4x4 View_id26;
    float4x4 ViewInverse_id27;
    float4x4 Projection_id28;
    float4x4 ProjectionInverse_id29;
    float4x4 ViewProjection_id30;
    float2 ProjScreenRay_id31;
    float4 Eye_id32;
    float NearClipPlane_id169 = 1.0f;
    float FarClipPlane_id170 = 100.0f;
    float2 ZProjection_id171;
    float2 ViewSize_id172;
    float AspectRatio_id173;
    float4 _padding_PerView_Default;
    int LightCount_id87;
    DirectionalLightData Lights_id89[TMaxLightCount_id88];
    float2 ShadowMapTextureSize_id91;
    float2 ShadowMapTextureTexelSize_id92;
    float4x4 WorldToShadowCascadeUV_id154[TCascadeCountBase_id152 * TLightCountBase_id153];
    float4x4 InverseWorldToShadowCascadeUV_id155[TCascadeCountBase_id152 * TLightCountBase_id153];
    float4x4 ViewMatrices_id156[TCascadeCountBase_id152 * TLightCountBase_id153];
    float2 DepthRanges_id157[TCascadeCountBase_id152 * TLightCountBase_id153];
    float DepthBiases_id158[TLightCountBase_id153];
    float OffsetScales_id159[TLightCountBase_id153];
    float CascadeDepthSplits_id166[TCascadeCount_id160 * TLightCount_id161];
    float ClusterDepthScale_id178;
    float ClusterDepthBias_id179;
    float2 ClusterStride_id180;
    float3 AmbientLight_id197;
    float3 SphericalColors_id202[TOrder_id201 * TOrder_id201];
    float MipCount_id203;
    float4x4 SkyMatrix_id205;
    float Intensity_id206;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id94;
    float2 Texture1TexelSize_id96;
    float2 Texture2TexelSize_id98;
    float2 Texture3TexelSize_id100;
    float2 Texture4TexelSize_id102;
    float2 Texture5TexelSize_id104;
    float2 Texture6TexelSize_id106;
    float2 Texture7TexelSize_id108;
    float2 Texture8TexelSize_id110;
    float2 Texture9TexelSize_id112;
};
Texture2D Texture0_id93;
Texture2D Texture1_id95;
Texture2D Texture2_id97;
Texture2D Texture3_id99;
Texture2D Texture4_id101;
Texture2D Texture5_id103;
Texture2D Texture6_id105;
Texture2D Texture7_id107;
Texture2D Texture8_id109;
Texture2D Texture9_id111;
TextureCube TextureCube0_id113;
TextureCube TextureCube1_id114;
TextureCube TextureCube2_id115;
TextureCube TextureCube3_id116;
Texture3D Texture3D0_id117;
Texture3D Texture3D1_id118;
Texture3D Texture3D2_id119;
Texture3D Texture3D3_id120;
SamplerState Sampler_id121;
SamplerState PointSampler_id122 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id125 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id126 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id127 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id128 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id130 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id131;
SamplerState Sampler1_id132;
SamplerState Sampler2_id133;
SamplerState Sampler3_id134;
SamplerState Sampler4_id135;
SamplerState Sampler5_id136;
SamplerState Sampler6_id137;
SamplerState Sampler7_id138;
SamplerState Sampler8_id139;
SamplerState Sampler9_id140;
Texture2D ShadowMapTexture_id186;
Texture2D EnvironmentLightingDFG_LUT_id239;
Texture2D ShadowMapTexture_id90;
Texture3D<uint2> LightClusters_id176;
Buffer<uint> LightIndices_id177;
Buffer<float4> PointLights_id181;
Buffer<float4> SpotLights_id182;
TextureCube CubeMap_id204;
float4 Project_id114(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id65(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float Get3x3FilterKernel_id123(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id188, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id188, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id122(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id188, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id188, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id188, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id124(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id186.SampleLevel(LinearBorderSampler_id124, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id114(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id120(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id188, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id188, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id188, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id188, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id109(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id98(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id87(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id75(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id92, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id92, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id74(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id92, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id92, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id92, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id76(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id90.SampleLevel(LinearBorderSampler_id124, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id65(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id72(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id92, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id92, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id92, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id92, uvW3.x * uvW3.y);
    return 2704.0;
}
float SampleAndFilter_id128(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id187;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id188;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id122(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id124(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id127(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id114(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id114(float4(ShadowMapTextureTexelSize_id188.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id114(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id126(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id114(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id114(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id188.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id114(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id125()
{

    {
        return 3.5;
    }
}
float GetDistanceAttenuation_id111(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id109(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id100(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id99(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id98(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id89(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id87(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id80(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id91;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id92;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id74(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id76(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id79(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id65(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id65(float4(ShadowMapTextureTexelSize_id92.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id65(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id78(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id65(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id65(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id92.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id65(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id77()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id73(float2 position, float positionDepth)
{
    return ShadowMapTexture_id90.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
void CalculatePCFKernelParameters_id71(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id91;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id92;
}
float Compute_id351()
{
    return InputValue_id227;
}
float Compute_id339()
{
    return InputValue_id218;
}
float4 Compute_id327()
{
    return InputValue_id210;
}
float SampleTextureAndCompare_id121(float2 position, float positionDepth)
{
    return ShadowMapTexture_id186.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
void CalculatePCFKernelParameters_id119(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id187;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id188;
}
float FilterThickness_id115(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id127(GetFilterRadiusInPixels_id125(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id126(GetFilterRadiusInPixels_id125(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id128(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id110(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id111(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id101(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id99(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id100(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id88(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id89(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id199(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id183(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id67(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id79(GetFilterRadiusInPixels_id77(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id78(GetFilterRadiusInPixels_id77(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id80(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id66(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id71(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id74(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id73(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id354(inout PS_STREAMS streams)
{
    streams.Input_2_id226 = Compute_id351();
}
void Compute_id342(inout PS_STREAMS streams)
{
    streams.Input_1_id217 = Compute_id339();
}
void Compute_id330(inout PS_STREAMS streams)
{
    streams.Input_0_id209 = Compute_id327();
}
float4 EvaluateSphericalHarmonics_id137(float3 sphericalColors[TOrder_id199 * TOrder_id199], float3 direction)
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
float FilterShadow_id118(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id119(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id122(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id121(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id117(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id188.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id116(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id115(positionWS, streams.meshNormalWS_id18, float2(0.0f, 1.0f), WorldToShadow_id191[cascadeIndex], InverseWorldToShadow_id192[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id112(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id110(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id102(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id101(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id91(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id88(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
float NormalDistributionGGX_id213(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id238 * d * d);
}
float VisibilitySmithSchlickGGX_id201(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id199(alphaR, nDotL) * VisibilityhSchlickGGX_id199(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id189(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id183(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id70(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id152;
    return FilterThickness_id67(pixelPositionWS, meshNormalWS, DepthRanges_id157[arrayIndex], WorldToShadowCascadeUV_id154[arrayIndex], InverseWorldToShadowCascadeUV_id155[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id69(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id154[cascadeIndex + lightIndex * TCascadeCountBase_id152]);
    shadowPosition.z -= DepthBiases_id158[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id66(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id68(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id92.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id357(inout PS_STREAMS streams)
{
    return streams.Input_2_id226;
}
void Compute_id356(inout PS_STREAMS streams)
{

    {
        Compute_id354(streams);
    }
}
float Compute_id345(inout PS_STREAMS streams)
{
    return streams.Input_1_id217;
}
void Compute_id344(inout PS_STREAMS streams)
{

    {
        Compute_id342(streams);
    }
}
float4 Compute_id333(inout PS_STREAMS streams)
{
    return streams.Input_0_id209;
}
void Compute_id332(inout PS_STREAMS streams)
{

    {
        Compute_id330(streams);
    }
}
float4 Compute_id313(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id71;
    float mipLevel = sqrt(alpha) * MipCount_id203;
    return CubeMap_id204.SampleLevel(LinearSampler_id123, direction, mipLevel);
}
float4 Compute_id308(float3 direction)
{
    return EvaluateSphericalHarmonics_id137(SphericalColors_id202, direction);
}
void PrepareEnvironmentLight_id141(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
float3 Compute_id363(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id239.SampleLevel(LinearSampler_id123, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id132(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
float3 ComputeSpecularTextureProjection_id108(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id107(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id106(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id185[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id86 = ComputeThickness_id116(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id117(OffsetScales_id194[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id191[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id193[lightIndex];
    float depth = DepthParameters_id195[lightIndex].x + (DepthParameters_id195[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id118(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id105(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id185[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id185[lightIndex].InvSquareRadius;
    data.Color = Lights_id185[lightIndex].Color;
    ProcessLight_id112(streams, data);
}
float3 ComputeSpecularTextureProjection_id97(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id96(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id95(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id86 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id94(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id177.Load(streams.lightIndex_id175);
    streams.lightIndex_id175++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id182.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id182.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id182.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id182.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id102(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id86(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id85(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id84(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id86 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id83(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id177.Load(streams.lightIndex_id175);
    streams.lightIndex_id175++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id181.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id181.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id91(streams, pointLight);
}
void PrepareLightData_id90(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id171.y / (projectedDepth - ZProjection_id171.x);
    float2 texCoord = float2(streams.ScreenPosition_id168.x + 1, 1 - streams.ScreenPosition_id168.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id178 + ClusterDepthBias_id179), 0));
    streams.lightData_id174 = LightClusters_id176.Load(int4(texCoord * ClusterStride_id180, slice, 0));
    streams.lightIndex_id175 = streams.lightData_id174.x;
}
float Compute_id455(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id213(streams.alphaRoughness_id71, streams.NdotH_id77);
}
float Compute_id425(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id201(streams.alphaRoughness_id71, streams.NdotL_id50, streams.NdotV_id73);
}
float3 Compute_id395(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id189(f0, streams.LdotH_id78);
}
float3 ComputeSpecularTextureProjection_id62(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id61(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id60(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id160;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id160 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id24 > CascadeDepthSplits_id166[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id68(OffsetScales_id159[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    if (cascadeIndex < TCascadeCount_id160)
    {
        shadow = ComputeShadowFromCascade_id69(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id166[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id166[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id24) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id160 - 1)
            {
            }
            else if (TBlendCascades_id162)
            {
                float nextShadow = ComputeShadowFromCascade_id69(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id86 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id59(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id44 = Lights_id89[lightIndex].Color;
    streams.lightDirectionWS_id43 = -Lights_id89[lightIndex].DirectionWS;
}
float Compute_id360(inout PS_STREAMS streams)
{
    Compute_id356(streams);
    return Compute_id357(streams);
}
float Compute_id348(inout PS_STREAMS streams)
{
    Compute_id344(streams);
    return Compute_id345(streams);
}
float4 Compute_id336(inout PS_STREAMS streams)
{
    Compute_id332(streams);
    return Compute_id333(streams);
}
void ResetStream_id216()
{
}
void AfterLightingAndShading_id512()
{
}
void AfterLightingAndShading_id493()
{
}
void PrepareEnvironmentLight_id326(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
void PrepareEnvironmentLight_id323(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id141(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id58;
    float3 sampleDirection = mul(streams.normalWS_id20, (float3x3)SkyMatrix_id205);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id48 = Compute_id308(sampleDirection).rgb * Intensity_id206 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.x;
    sampleDirection = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id205);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id49 = Compute_id313(streams, sampleDirection).rgb * Intensity_id206 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeEnvironmentLightContribution_id542(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id72;
    return Compute_id363(specularColor, streams.alphaRoughness_id71, streams.NdotV_id73) * streams.envLightSpecularColor_id49;
}
float3 ComputeEnvironmentLightContribution_id486(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor * streams.envLightDiffuseColor_id48;
}
void PrepareEnvironmentLight_id318(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id132(streams);
    float3 lightColor = AmbientLight_id197 * streams.matAmbientOcclusion_id58;
    streams.envLightDiffuseColor_id48 = lightColor;
    streams.envLightSpecularColor_id49 = lightColor;
}
void PrepareDirectLight_id276(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id105(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id106(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id107(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id108(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id278()
{
    return LightCount_id183;
}
int GetMaxLightCount_id280()
{
    return TMaxLightCount_id184;
}
void PrepareDirectLights_id274()
{
}
void PrepareDirectLight_id263(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id94(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id95(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id96(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id97(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id267(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y >> 16;
}
int GetMaxLightCount_id266(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y >> 16;
}
void PrepareDirectLights_id261()
{
}
void PrepareDirectLight_id250(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id83(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id84(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id85(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id86(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id255(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y & 0xFFFF;
}
int GetMaxLightCount_id254(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y & 0xFFFF;
}
void PrepareDirectLights_id253(inout PS_STREAMS streams)
{
    PrepareLightData_id90(streams);
}
float3 ComputeDirectLightContribution_id541(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id72;
    float3 fresnel = Compute_id395(streams, specularColor);
    float geometricShadowing = Compute_id425(streams);
    float normalDistribution = Compute_id455(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeDirectLightContribution_id485(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor / PI_id238 * streams.lightColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id66.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id76 = normalize(streams.viewWS_id69 + streams.lightDirectionWS_id43);
    streams.NdotH_id77 = saturate(dot(streams.normalWS_id20, streams.H_id76));
    streams.LdotH_id78 = saturate(dot(streams.lightDirectionWS_id43, streams.H_id76));
    streams.VdotH_id79 = streams.LdotH_id78;
}
void PrepareDirectLight_id226(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id59(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id60(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id61(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id62(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id228()
{
    return LightCount_id87;
}
int GetMaxLightCount_id229()
{
    return TMaxLightCount_id88;
}
void PrepareDirectLights_id224()
{
}
void PrepareForLightingAndShading_id509()
{
}
void PrepareForLightingAndShading_id490()
{
}
void PrepareMaterialForLightingAndShading_id215(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id51 = lerp(1.0, streams.matAmbientOcclusion_id58, streams.matAmbientOcclusionDirectLightingFactor_id59);
    streams.matDiffuseVisible_id70 = streams.matDiffuse_id54.rgb * lerp(1.0f, streams.matCavity_id60, streams.matCavityDiffuse_id61) * streams.matDiffuseSpecularAlphaBlend_id66.r * streams.matAlphaBlendColor_id67;
    streams.matSpecularVisible_id72 = streams.matSpecular_id56.rgb * streams.matSpecularIntensity_id57 * lerp(1.0f, streams.matCavity_id60, streams.matCavitySpecular_id62) * streams.matDiffuseSpecularAlphaBlend_id66.g * streams.matAlphaBlendColor_id67;
    streams.NdotV_id73 = max(dot(streams.normalWS_id20, streams.viewWS_id69), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id55;
    streams.alphaRoughness_id71 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id214(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id42 = 0;
    streams.lightDirectionWS_id43 = 0;
    streams.lightColor_id44 = 0;
    streams.lightColorNdotL_id45 = 0;
    streams.lightSpecularColorNdotL_id46 = 0;
    streams.lightAttenuation_id47 = 1.0f;
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
    streams.lightDirectAmbientOcclusion_id51 = 1.0f;
    streams.NdotL_id50 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id362(inout PS_STREAMS streams)
{
    float x = Compute_id360(streams);
    return float4(x, x, x, x);
}
float4 Compute_id350(inout PS_STREAMS streams)
{
    float x = Compute_id348(streams);
    return float4(x, x, x, x);
}
float4 Compute_id338(inout PS_STREAMS streams)
{
    return Compute_id336(streams);
}
void ResetStream_id217(inout PS_STREAMS streams)
{
    ResetStream_id216();
    streams.matBlend_id41 = 0.0f;
}
void Compute_id573(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id52);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id20 = -streams.normalWS_id20;
    ResetLightStream_id214(streams);
    PrepareMaterialForLightingAndShading_id215(streams);

    {
        PrepareForLightingAndShading_id490();
    }

    {
        PrepareForLightingAndShading_id509();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id224();
        const int maxLightCount = GetMaxLightCount_id229();
        int count = GetLightCount_id228();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id226(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id485(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id541(streams);
            }
        }
    }

    {
        PrepareDirectLights_id253(streams);
        const int maxLightCount = GetMaxLightCount_id254(streams);
        int count = GetLightCount_id255(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id250(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id485(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id541(streams);
            }
        }
    }

    {
        PrepareDirectLights_id261();
        const int maxLightCount = GetMaxLightCount_id266(streams);
        int count = GetLightCount_id267(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id263(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id485(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id541(streams);
            }
        }
    }

    {
        PrepareDirectLights_id274();
        const int maxLightCount = GetMaxLightCount_id280();
        int count = GetLightCount_id278();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id276(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id485(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id541(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id318(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id486(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id542(streams);
        }
    }

    {
        PrepareEnvironmentLight_id323(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id486(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id542(streams);
        }
    }

    {
        PrepareEnvironmentLight_id326(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id486(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id542(streams);
        }
    }
    streams.shadingColor_id74 += directLightingContribution * PI_id238 + environmentLightingContribution;
    streams.shadingColorAlpha_id75 = streams.matDiffuse_id54.a;

    {
        AfterLightingAndShading_id493();
    }

    {
        AfterLightingAndShading_id512();
    }
}
void Compute_id557(inout PS_STREAMS streams)
{
    float metalness = Compute_id362(streams).r;
    streams.matSpecular_id56 = lerp(0.02, streams.matDiffuse_id54.rgb, metalness);
    streams.matDiffuse_id54.rgb = lerp(streams.matDiffuse_id54.rgb, 0, metalness);
}
void Compute_id552(inout PS_STREAMS streams)
{
    float glossiness = Compute_id350(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id55 = glossiness;
}
void Compute_id547(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id338(streams);
    streams.matDiffuse_id54 = colorBase;
    streams.matColorBase_id53 = colorBase;
}
void ResetStream_id218(inout PS_STREAMS streams)
{
    ResetStream_id217(streams);
    streams.matNormal_id52 = float3(0, 0, 1);
    streams.matColorBase_id53 = 0.0f;
    streams.matDiffuse_id54 = 0.0f;
    streams.matDiffuseVisible_id70 = 0.0f;
    streams.matSpecular_id56 = 0.0f;
    streams.matSpecularVisible_id72 = 0.0f;
    streams.matSpecularIntensity_id57 = 1.0f;
    streams.matGlossiness_id55 = 0.0f;
    streams.alphaRoughness_id71 = 1.0f;
    streams.matAmbientOcclusion_id58 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id59 = 0.0f;
    streams.matCavity_id60 = 1.0f;
    streams.matCavityDiffuse_id61 = 0.0f;
    streams.matCavitySpecular_id62 = 0.0f;
    streams.matEmissive_id63 = 0.0f;
    streams.matEmissiveIntensity_id64 = 0.0f;
    streams.matScatteringStrength_id65 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id66 = 1.0f;
    streams.matAlphaBlendColor_id67 = 1.0f;
    streams.matAlphaDiscard_id68 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id30);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
float3 EncodeNormal_id56(float3 n)
{
    return n * 0.5 + 0.5;
}
void Compute_id52(inout PS_STREAMS streams)
{

    {
        Compute_id547(streams);
    }

    {
        Compute_id552(streams);
    }

    {
        Compute_id557(streams);
    }

    {
        Compute_id573(streams);
    }
}
void ResetStream_id51(inout PS_STREAMS streams)
{
    ResetStream_id218(streams);
    streams.shadingColorAlpha_id75 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id23);
    streams.PositionH_id25 = streams.ShadingPosition_id0;
    streams.DepthVS_id24 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id23 = mul(streams.Position_id22, World_id33);
}
float4 Compute_id50()
{
    return MaterialIndex_id84;
}
float4 Compute_id49(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id56(streams.normalWS_id20), 1);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id69 = normalize(Eye_id32.xyz - streams.PositionWS_id23.xyz);
    streams.shadingColor_id74 = 0;
    ResetStream_id51(streams);
    Compute_id52(streams);
    return float4(streams.shadingColor_id74, streams.shadingColorAlpha_id75);
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
    streams.ColorTarget1_id3 = Compute_id49(streams);
    streams.ColorTarget2_id4 = Compute_id50();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id20, streams.normalWS_id20) > 0)
        streams.normalWS_id20 = normalize(streams.normalWS_id20);
    streams.meshNormalWS_id18 = streams.normalWS_id20;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id18 = mul(streams.meshNormal_id17, (float3x3)WorldInverseTranspose_id35);
    streams.normalWS_id20 = streams.meshNormalWS_id18;
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
    streams.PositionWS_id23 = __input__.PositionWS_id23;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id24 = __input__.DepthVS_id24;
    streams.normalWS_id20 = __input__.normalWS_id20;
    streams.ScreenPosition_id168 = __input__.ScreenPosition_id168;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id168 /= streams.ScreenPosition_id168.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id22 = __input__.Position_id22;
    streams.meshNormal_id17 = __input__.meshNormal_id17;
    VSMain_id19(streams);
    streams.ScreenPosition_id168 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id23 = streams.PositionWS_id23;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id24 = streams.DepthVS_id24;
    __output__.normalWS_id20 = streams.normalWS_id20;
    __output__.ScreenPosition_id168 = streams.ScreenPosition_id168;
    return __output__;
}

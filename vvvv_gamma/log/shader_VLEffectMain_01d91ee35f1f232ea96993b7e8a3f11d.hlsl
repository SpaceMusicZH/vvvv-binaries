/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat4<float4(1, 1, 1, 1)>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_0> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_0>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSpecularColorRoughness}, {ShadingColor3 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 800]
@C    World_id34 => Transformation.World
@C    WorldInverse_id35 => Transformation.WorldInverse
@C    WorldInverseTranspose_id36 => Transformation.WorldInverseTranspose
@C    WorldView_id37 => Transformation.WorldView
@C    WorldViewInverse_id38 => Transformation.WorldViewInverse
@C    WorldViewProjection_id39 => Transformation.WorldViewProjection
@C    WorldScale_id40 => Transformation.WorldScale
@C    EyeMS_id41 => Transformation.EyeMS
@C    MaterialIndex_id85 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id184 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id186 => LightSpotGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id188 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id189 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id193 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    InverseWorldToShadowCascadeUV_id194 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[3]
@C    ViewMatrices_id195 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[3]
@C    DepthRanges_id196 => ShadowMapReceiverBase.DepthRanges.directLightGroups[3]
@C    DepthBiases_id197 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id198 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    InputValue_id221 => ShaderFX.InputValueFloat
@C    InputValue_id230 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id27 => Transformation.View
@C    ViewInverse_id28 => Transformation.ViewInverse
@C    Projection_id29 => Transformation.Projection
@C    ProjectionInverse_id30 => Transformation.ProjectionInverse
@C    ViewProjection_id31 => Transformation.ViewProjection
@C    ProjScreenRay_id32 => Transformation.ProjScreenRay
@C    Eye_id33 => Transformation.Eye
@C    NearClipPlane_id170 => Camera.NearClipPlane
@C    FarClipPlane_id171 => Camera.FarClipPlane
@C    ZProjection_id172 => Camera.ZProjection
@C    ViewSize_id173 => Camera.ViewSize
@C    AspectRatio_id174 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id88 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id90 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id92 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id93 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id155 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id156 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id157 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id158 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id159 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id160 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id167 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id179 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id180 => LightClustered.ClusterDepthBias
@C    ClusterStride_id181 => LightClustered.ClusterStride
@C    AmbientLight_id202 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id207 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id208 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id210 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id211 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id242 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id242 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id209 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id209 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id124 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id126 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id242 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id209 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    ConstantFloat4 => e9b97e71cbd4f90387b1bba54856a4e9
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
@S    GBufferOutputSpecularColorRoughness => bffa7efe5b33b6017b4ec87d2c142a79
@S    Utilities => d8e15010fb2006b8edf6bdc952dd31f0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 6294774bf2f0bcadfc589a4b42753b29
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id34;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id35;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id36;// Offset:  128 Size:    64
//   float4x4 WorldView_id37;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id38;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id39; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id40;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id41;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id184;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id186;                    // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id188; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id189;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id193;// Offset:  544 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id194;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id195;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id196;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id197;           // Offset:  752 Size:     4 [unused]
//   float OffsetScales_id198;          // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id29;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id170;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id171;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id172;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id173;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id174;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id92;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id93;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id155[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id156[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id157[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id158[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id159;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id160;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id167[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id179;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id180;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id181;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id202;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id207[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id208;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id210;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id211;             // Offset: 1632 Size:     4 [unused]
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
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id23.x; v0.y <- __input__.Position_id23.y; v0.z <- __input__.Position_id23.z; v0.w <- __input__.Position_id23.w; 
//   v1.x <- __input__.meshNormal_id18.x; v1.y <- __input__.meshNormal_id18.y; v1.z <- __input__.meshNormal_id18.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id169.x; o3.y <- <VSMain return value>.ScreenPosition_id169.y; o3.z <- <VSMain return value>.ScreenPosition_id169.z; o3.w <- <VSMain return value>.ScreenPosition_id169.w; 
//   o2.x <- <VSMain return value>.DepthVS_id25; o2.y <- <VSMain return value>.normalWS_id21.x; o2.z <- <VSMain return value>.normalWS_id21.y; o2.w <- <VSMain return value>.normalWS_id21.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id24.x; o0.y <- <VSMain return value>.PositionWS_id24.y; o0.z <- <VSMain return value>.PositionWS_id24.z; o0.w <- <VSMain return value>.PositionWS_id24.w
//
#line 1485 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_01d91ee35f1f232ea96993b7e8a3f11d.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id24.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id24.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id24.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id24.w

#line 1584
mov o0.xyzw, r0.xyzw

#line 1436
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1584
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1535
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1584
ret 
// Approximately 16 instruction slots used
@G    Pixel => 5cab6b20c46c07d6095000c6f484e6e2
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id34;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id35;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id36;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id37;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id38;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id39; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id40;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id41;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id184;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id186;                    // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id188; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id189;// Offset:  536 Size:     8
//   float4x4 WorldToShadowCascadeUV_id193;// Offset:  544 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id194;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id195;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id196;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id197;           // Offset:  752 Size:     4
//   float OffsetScales_id198;          // Offset:  768 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float InputValue_id221;            // Offset:    0 Size:     4
//   float InputValue_id230;            // Offset:    4 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id29;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16
//   float NearClipPlane_id170;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id171;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id172;          // Offset:  360 Size:     8
//   float2 ViewSize_id173;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id174;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id92;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id93;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id155[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id156[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id157[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id158[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id159;           // Offset: 1296 Size:     4
//   float OffsetScales_id160;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id167[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id179;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id180;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id181;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id202;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id207[9];   // Offset: 1424 Size:   140
//   float MipCount_id208;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id210;          // Offset: 1568 Size:    64
//   float Intensity_id211;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id124               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id126  sampler_c      NA          NA             s1      1 
// ShadowMapTexture_id187            texture  float4          2d             t0      1 
// EnvironmentLightingDFG_LUT_id242    texture  float4          2d             t1      1 
// ShadowMapTexture_id91             texture  float4          2d             t2      1 
// LightClusters_id177               texture   uint2          3d             t3      1 
// LightIndices_id178                texture    uint         buf             t4      1 
// PointLights_id182                 texture  float4         buf             t5      1 
// SpotLights_id183                  texture  float4         buf             t6      1 
// CubeMap_id209                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xy w
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
// SV_Target                3   xyzw        3   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[49], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
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
dcl_output o3.xyzw
dcl_temps 20
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id24.x; v0.y <- __input__.PositionWS_id24.y; v0.z <- __input__.PositionWS_id24.z; v0.w <- __input__.PositionWS_id24.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id25; v2.y <- __input__.normalWS_id21.x; v2.z <- __input__.normalWS_id21.y; v2.w <- __input__.normalWS_id21.z; 
//   v3.x <- __input__.ScreenPosition_id169.x; v3.y <- __input__.ScreenPosition_id169.y; v3.z <- __input__.ScreenPosition_id169.z; v3.w <- __input__.ScreenPosition_id169.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1562 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_01d91ee35f1f232ea96993b7e8a3f11d.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id169.x; r0.y <- streams.ScreenPosition_id169.y

#line 1529
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1530
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1501
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id70.x; r3.y <- streams.viewWS_id70.y; r3.z <- streams.viewWS_id70.z

#line 1392
mad r0.w, cb1[0].y, l(0.980000), l(0.020000)  // r0.w <- streams.matSpecular_id57.x

#line 1393
add r4.xy, -cb1[0].xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)  // r4.y <- streams.matDiffuse_id55.x

#line 1233
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z

#line 1190
dp3 r1.w, r1.xyzx, r3.xyzx
max r5.y, r1.w, l(0.000100)  // r5.y <- streams.NdotV_id74

#line 1191
add r1.w, -r4.x, l(1.000000)  // r1.w <- roughness

#line 1192
mul r1.w, r1.w, r1.w
max r1.w, r1.w, l(0.001000)  // r1.w <- streams.alphaRoughness_id72

#line 1257
ilt r2.w, l(0), cb2[25].x
if_nz r2.w

#line 1160
  dp3 r2.w, r1.xyzx, -cb2[26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 971
  lt r3.w, cb2[83].x, v2.x

#line 974
  and r3.w, r3.w, l(1)  // r3.w <- cascadeIndex

#line 971
  lt r4.x, cb2[84].x, v2.x

#line 974
  movc r3.w, r4.x, l(2), r3.w

#line 971
  lt r4.x, cb2[85].x, v2.x

#line 974
  movc r3.w, r4.x, l(3), r3.w

#line 789
  add r4.z, -r2.w, l(1.000000)
  max r4.z, r4.z, l(0.000000)  // r4.z <- normalOffsetScale

#line 790
  mul r4.w, cb2[28].z, cb2[82].x
  dp2 r4.z, r4.wwww, r4.zzzz

#line 979
  mad r6.xyz, r4.zzzz, r1.xyzx, v0.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 782
  ishl r4.z, r3.w, l(2)
  mov r6.w, l(1.000000)
  dp4 r7.x, r6.xyzw, cb2[r4.z + 29].xyzw  // r7.x <- shadowPosition.x
  dp4 r7.y, r6.xyzw, cb2[r4.z + 30].xyzw  // r7.y <- shadowPosition.y
  dp4 r4.w, r6.xyzw, cb2[r4.z + 31].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.z, r6.xyzw, cb2[r4.z + 32].xyzw  // r5.z <- shadowPosition.w

#line 783
  add r7.z, r4.w, -cb2[81].x  // r7.z <- shadowPosition.z

#line 784
  div r7.xyz, r7.xyzx, r5.zzzz

#line 578
  mad r5.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r7.xy, r5.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 579
  add r5.zw, r5.zzzw, -r7.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 580
  add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 581
  mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 393
  mad r8.xyzw, r5.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r8.x <- uvW1.x; r8.y <- uvW1.y

#line 394
  mad r9.xyzw, r5.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 396
  mad r10.xyzw, r5.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 395
  div r10.xy, r10.xyxx, r9.yxyy
  add r11.xw, r10.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r11.x <- uv0.x; r11.w <- uv0.y

#line 396
  div r10.xy, r10.zwzz, r8.xyxx
  add r11.yz, r10.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r11.y <- uv1.y; r11.z <- uv1.x

#line 397
  mad r10.xy, r5.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r8.wzww
  add r10.xw, r10.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r10.x <- uv2.y; r10.w <- uv2.x

#line 398
  div r5.zw, r5.zzzw, r9.zzzw
  add r12.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r12.x <- uv3.x; r12.y <- uv3.y

#line 400
  mad r13.xyzw, r11.xwzw, cb2[28].zwzw, r7.xyxy

#line 405
  mov r10.yz, r11.wwyw

#line 406
  mov r12.zw, r10.yyyz

#line 404
  mad r14.xyzw, r11.xyzy, cb2[28].zwzw, r7.xyxy

#line 405
  mad r15.xyzw, r10.wywz, cb2[28].zwzw, r7.xyxy

#line 406
  mad r16.xyzw, r12.xzxw, cb2[28].zwzw, r7.xyxy

#line 407
  mov r11.y, r10.x
  mul r5.zw, -r8.wwwz, r9.xxxy

#line 408
  mad r17.xyzw, r11.xyzy, cb2[28].zwzw, r7.xyxy
  mul r12.zw, r8.yyyx, -r8.wwwz

#line 409
  mad r18.xy, r10.wxww, cb2[28].zwzz, r7.xyxx
  mul r18.zw, r8.yyyz, r8.xxxw

#line 410
  mov r11.w, r12.x
  mad r11.yw, r11.wwwy, cb2[28].zzzw, r7.xxxy

#line 412
  mov r10.xz, r11.xxzx

#line 411
  mov r10.y, r12.y
  mul r11.xz, r9.xxyx, -r9.zzwz

#line 412
  mad r19.xyzw, r10.xyzy, cb2[28].zwzw, r7.xyxy
  mul r10.xz, r8.yyxy, -r9.zzwz

#line 413
  mad r10.yw, r10.wwwy, cb2[28].zzzw, r7.xxxy
  mul r8.xyzw, r8.xyzw, r9.xyzw

#line 414
  mad r7.xy, r12.xyxx, cb2[28].zwzz, r7.xyxx
  mul r9.xy, r9.xwxx, r9.yzyy

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r13.xyxx, t2.xxxx, s1, r7.z  // r4.w <- <SampleTextureAndCompare_id79 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r13.zwzz, t2.xxxx, s1, r7.z  // r7.w <- <SampleTextureAndCompare_id79 return value>

#line 682
  mul r7.w, r7.w, r8.x
  mad r4.w, r9.x, r4.w, r7.w  // r4.w <- shadow

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r15.xyxx, t2.xxxx, s1, r7.z  // r7.w <- <SampleTextureAndCompare_id79 return value>

#line 682
  mad r4.w, r5.z, r7.w, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r16.xyxx, t2.xxxx, s1, r7.z  // r5.z <- <SampleTextureAndCompare_id79 return value>

#line 682
  mad r4.w, r11.x, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r14.xyxx, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r8.y, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r14.zwzz, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r18.z, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r15.zwzz, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r12.z, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r16.zwzz, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r10.x, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r17.xyxx, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r5.w, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r17.zwzz, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r12.w, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r18.xyxx, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r18.w, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r11.ywyy, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r8.z, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r19.xyxx, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r11.z, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r19.zwzz, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r10.z, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r10.ywyy, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r8.w, r5.z, r4.w

#line 573
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r7.xyxx, t2.xxxx, s1, r7.z

#line 682
  mad r4.w, r9.y, r5.z, r4.w

#line 684
  mul r7.xyz, r4.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r7.z <- shadow

#line 985
  ilt r5.z, l(0), r3.w
  if_nz r5.z

#line 987
    iadd r5.z, r3.w, l(-1)
    add r5.z, -cb2[r5.z + 83].x, cb2[r3.w + 83].x  // r5.z <- splitSize

#line 988
  else 
    mov r5.z, cb2[r3.w + 83].x  // r5.z <- splitSize
  endif 

#line 989
  add r3.w, -v2.x, cb2[r3.w + 83].x
  div r3.w, r3.w, r5.z  // r3.w <- splitDist

#line 990
  lt r5.z, r3.w, l(0.200000)
  if_nz r5.z

#line 993
    if_nz r4.x

#line 995
      mov r7.xyz, r7.zzzz  // r7.x <- shadow.x; r7.y <- shadow.y; r7.z <- shadow.z
    else 

#line 992
      mul_sat r3.w, r3.w, l(5.000000)
      mad r4.x, r3.w, l(-2.000000), l(3.000000)
      mul r3.w, r3.w, r3.w
      mul r3.w, r3.w, r4.x  // r3.w <- lerpAmt

#line 782
      dp4 r8.x, r6.xyzw, cb2[r4.z + 33].xyzw  // r8.x <- shadowPosition.x
      dp4 r8.y, r6.xyzw, cb2[r4.z + 34].xyzw  // r8.y <- shadowPosition.y
      dp4 r4.x, r6.xyzw, cb2[r4.z + 35].xyzw  // r4.x <- shadowPosition.z
      dp4 r4.z, r6.xyzw, cb2[r4.z + 36].xyzw  // r4.z <- shadowPosition.w

#line 783
      add r8.z, r4.x, -cb2[81].x  // r8.z <- shadowPosition.z

#line 784
      div r6.xyz, r8.xyzx, r4.zzzz  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 578
      mad r4.xz, r6.xxyx, cb2[28].xxyx, l(0.500000, 0.000000, 0.500000, 0.000000)
      round_ni r5.zw, r4.xxxz  // r5.z <- base_uv.x; r5.w <- base_uv.y

#line 579
      add r4.xz, r4.xxzx, -r5.zzwz  // r4.x <- st.x; r4.z <- st.y

#line 580
      add r5.zw, r5.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)

#line 581
      mul r5.zw, r5.zzzw, cb2[28].zzzw

#line 393
      mad r8.xyzw, r4.xzzx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r8.x <- uvW1.x; r8.y <- uvW1.y

#line 394
      mad r9.xyzw, r4.zxxz, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 396
      mad r10.xyzw, r4.xzxz, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 395
      div r6.xy, r10.xyxx, r9.yxyy
      add r11.xw, r6.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r11.x <- uv0.x; r11.w <- uv0.y

#line 396
      div r6.xy, r10.zwzz, r8.xyxx
      add r11.yz, r6.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r11.y <- uv1.y; r11.z <- uv1.x

#line 397
      mad r6.xy, r4.xzxx, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r6.xy, r6.xyxx, r8.wzww
      add r10.xw, r6.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r10.x <- uv2.y; r10.w <- uv2.x

#line 398
      div r4.xz, r4.xxzx, r9.zzwz
      add r12.xy, r4.xzxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r12.x <- uv3.x; r12.y <- uv3.y

#line 400
      mad r13.xyzw, r11.xwzw, cb2[28].zwzw, r5.zwzw

#line 405
      mov r10.yz, r11.wwyw

#line 406
      mov r12.zw, r10.yyyz

#line 404
      mad r14.xyzw, r11.xyzy, cb2[28].zwzw, r5.zwzw

#line 405
      mad r15.xyzw, r10.wywz, cb2[28].zwzw, r5.zwzw

#line 406
      mad r16.xyzw, r12.xzxw, cb2[28].zwzw, r5.zwzw

#line 407
      mov r11.y, r10.x
      mul r4.xz, -r8.wwzw, r9.xxyx

#line 408
      mad r17.xyzw, r11.xyzy, cb2[28].zwzw, r5.zwzw
      mul r6.xy, r8.yxyy, -r8.wzww

#line 409
      mad r12.zw, r10.wwwx, cb2[28].zzzw, r5.zzzw
      mul r18.xy, r8.yzyy, r8.xwxx

#line 410
      mov r11.w, r12.x
      mad r11.yw, r11.wwwy, cb2[28].zzzw, r5.zzzw

#line 412
      mov r10.xz, r11.xxzx

#line 411
      mov r10.y, r12.y
      mul r11.xz, r9.xxyx, -r9.zzwz

#line 412
      mad r19.xyzw, r10.xyzy, cb2[28].zwzw, r5.zwzw
      mul r10.xz, r8.yyxy, -r9.zzwz

#line 413
      mad r10.yw, r10.wwwy, cb2[28].zzzw, r5.zzzw
      mul r8.xyzw, r8.xyzw, r9.xyzw

#line 414
      mad r5.zw, r12.xxxy, cb2[28].zzzw, r5.zzzw
      mul r9.xy, r9.xwxx, r9.yzyy

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r13.xyxx, t2.xxxx, s1, r6.z  // r6.w <- <SampleTextureAndCompare_id79 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r13.zwzz, t2.xxxx, s1, r6.z  // r7.w <- <SampleTextureAndCompare_id79 return value>

#line 682
      mul r7.w, r7.w, r8.x
      mad r6.w, r9.x, r6.w, r7.w  // r6.w <- shadow

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r15.xyxx, t2.xxxx, s1, r6.z  // r7.w <- <SampleTextureAndCompare_id79 return value>

#line 682
      mad r4.x, r4.x, r7.w, r6.w  // r4.x <- shadow

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r16.xyxx, t2.xxxx, s1, r6.z  // r6.w <- <SampleTextureAndCompare_id79 return value>

#line 682
      mad r4.x, r11.x, r6.w, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r14.xyxx, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r8.y, r6.w, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r14.zwzz, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r18.x, r6.w, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r15.zwzz, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r6.x, r6.w, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r16.zwzz, t2.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id79 return value>

#line 682
      mad r4.x, r10.x, r6.x, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r17.xyxx, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r4.z, r6.x, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r17.zwzz, t2.xxxx, s1, r6.z  // r4.z <- <SampleTextureAndCompare_id79 return value>

#line 682
      mad r4.x, r6.y, r4.z, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r12.zwzz, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r18.y, r4.z, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r11.ywyy, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r8.z, r4.z, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r19.xyxx, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r11.z, r4.z, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r19.zwzz, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r10.z, r4.z, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r10.ywyy, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r8.w, r4.z, r4.x

#line 573
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r5.zwzz, t2.xxxx, s1, r6.z

#line 682
      mad r4.x, r9.y, r4.z, r4.x

#line 684
      mul r4.x, r4.x, l(0.000370)

#line 999
      mad r4.z, r4.w, l(0.000370), -r4.x
      mad r7.xyz, r3.wwww, r4.zzzz, r4.xxxx  // r7.x <- shadow.x; r7.y <- shadow.y; r7.z <- shadow.z

#line 1000
    endif 

#line 1001
  endif 

#line 1162
  mul r4.xzw, r7.xxyz, cb2[27].xxyz
  mul r4.xzw, r2.wwww, r4.xxzw  // r4.x <- streams.lightColorNdotL_id46.x; r4.z <- streams.lightColorNdotL_id46.y; r4.w <- streams.lightColorNdotL_id46.z

#line 1152
  mad r6.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r3.w, r6.xyzx, r6.xyzx
  rsq r3.w, r3.w
  mul r6.xyz, r3.wwww, r6.xyzx  // r6.x <- streams.H_id77.x; r6.y <- streams.H_id77.y; r6.z <- streams.H_id77.z

#line 1153
  dp3_sat r3.w, r1.xyzx, r6.xyzx  // r3.w <- streams.NdotH_id78

#line 1154
  dp3_sat r5.z, -cb2[26].xyzx, r6.xyzx  // r5.z <- streams.LdotH_id79

#line 1148
  mul r5.w, r4.y, l(0.318310)

#line 652
  add r6.x, -r0.w, l(1.000000)
  add r5.z, -r5.z, l(1.000000)
  mul r6.y, r5.z, r5.z
  mul r6.y, r6.y, r6.y
  mul r5.z, r5.z, r6.y
  mad r5.z, r6.x, r5.z, r0.w  // r5.z <- <FresnelSchlick_id191 return value>.x

#line 647
  mul r6.x, r1.w, l(0.500000)  // r6.x <- k

#line 648
  mad r6.y, -r1.w, l(0.500000), l(1.000000)
  mad r6.z, r2.w, r6.y, r6.x
  div r6.z, r2.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id207 return value>
  mad r6.x, r5.y, r6.y, r6.x
  div r6.x, r5.y, r6.x  // r6.x <- <VisibilityhSchlickGGX_id207 return value>

#line 769
  mul r6.x, r6.x, r6.z
  mul r2.w, r5.y, r2.w
  div r2.w, r6.x, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id209 return value>

#line 763
  mul r6.x, r1.w, r1.w  // r6.x <- alphaR2

#line 764
  mul r3.w, r3.w, r3.w
  mad r6.y, r1.w, r1.w, l(-1.000000)
  mad r3.w, r3.w, r6.y, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 765
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r6.x, r3.w  // r3.w <- <NormalDistributionGGX_id221 return value>

#line 1142
  mul r2.w, r2.w, r5.z
  mul r2.w, r3.w, r2.w
  mul r2.w, r2.w, l(0.250000)  // r2.w <- reflected.x

#line 1143
  mul r6.xyz, r4.xzwx, r2.wwww  // r6.x <- <ComputeDirectLightContribution_id546 return value>.x; r6.y <- <ComputeDirectLightContribution_id546 return value>.y; r6.z <- <ComputeDirectLightContribution_id546 return value>.z

#line 1265
  mad r4.xzw, r5.wwww, r4.xxzw, r6.xxyz  // r4.x <- directLightingContribution.x; r4.z <- directLightingContribution.y; r4.w <- directLightingContribution.z

#line 1266
else 
  mov r4.xzw, l(0,0,0,0)  // r4.x <- directLightingContribution.x; r4.z <- directLightingContribution.y; r4.w <- directLightingContribution.z
endif 

#line 936
add r2.w, v1.z, -cb2[22].z
div r2.w, cb2[22].w, r2.w  // r2.w <- depth

#line 937
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 938
mad r2.w, r2.w, cb2[86].y, cb2[86].z
log r2.w, r2.w
max r2.w, r2.w, l(0.000000)
ftoi r6.z, r2.w  // r6.z <- slice

#line 939
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r6.xy, r0.xyxx
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t3.xyzw  // r0.x <- streams.lightData_id175.x; r0.y <- streams.lightData_id175.y

#line 1130
and r2.w, r0.y, l(0x0000ffff)  // r2.w <- <GetMaxLightCount_id262 return value>

#line 1275
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id24.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id24.y; r7.y <- streams.PositionWS_id24.z
mov r7.zw, r3.xxxy  // r7.z <- streams.viewWS_id70.x; r7.w <- streams.viewWS_id70.y
mov r8.z, r3.z  // r8.z <- streams.viewWS_id70.z
mov r9.xyz, r4.yyyy  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r10.xyz, r0.wwww  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r10.w, r1.w  // r10.w <- streams.alphaRoughness_id72
mov r5.w, r5.y  // r5.w <- streams.NdotV_id74
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id176
mov r11.xyz, r4.xzwx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r8.w, r3.w, r2.w
  breakc_nz r8.w

#line 1277
  if_nz r8.w

#line 1279
    break 

#line 1280
  endif 

#line 923
  ld_indexable(buffer)(uint,uint,uint,uint) r8.w, r5.zzzz, t4.yzwx  // r8.w <- realLightIndex

#line 924
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id176

#line 926
  ishl r9.w, r8.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r12.xyzw, r9.wwww, t5.xyzw  // r12.x <- pointLight1.x; r12.y <- pointLight1.y; r12.z <- pointLight1.z; r12.w <- pointLight1.w

#line 927
  bfi r8.w, l(31), l(1), r8.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r8.wwww, t5.xyzw  // r13.x <- pointLight2.x; r13.y <- pointLight2.y; r13.z <- pointLight2.z

#line 639
  mov r14.x, r6.w
  mov r14.yz, r7.xxyx
  add r12.xyz, r12.xyzx, -r14.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 640
  dp3 r8.w, r12.xyzx, r12.xyzx
  sqrt r9.w, r8.w  // r9.w <- lightVectorLength

#line 641
  div r12.xyz, r12.xyzx, r9.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 519
  max r9.w, r8.w, l(0.000100)
  div r9.w, l(1.000000, 1.000000, 1.000000, 1.000000), r9.w  // r9.w <- attenuation

#line 339
  mul r8.w, r12.w, r8.w  // r8.w <- factor

#line 340
  mad r8.w, -r8.w, r8.w, l(1.000000)
  max r8.w, r8.w, l(0.000000)  // r8.w <- smoothFactor

#line 341
  mul r8.w, r8.w, r8.w  // r8.w <- <SmoothDistanceAttenuation_id93 return value>

#line 520
  mul r8.w, r8.w, r9.w  // r8.w <- attenuation

#line 1116
  dp3 r9.w, r6.xyzx, r12.xyzx
  max r9.w, r9.w, l(0.000100)  // r9.w <- streams.NdotL_id51

#line 1118
  mul r13.xyz, r8.wwww, r13.xyzx
  mul r13.xyz, r9.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id46.x; r13.y <- streams.lightColorNdotL_id46.y; r13.z <- streams.lightColorNdotL_id46.z

#line 1152
  mov r8.xy, r7.zwzz
  add r8.xyw, r12.xyxz, r8.xyxz
  dp3 r11.w, r8.xywx, r8.xywx
  rsq r11.w, r11.w
  mul r8.xyw, r8.xyxw, r11.wwww  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.w <- streams.H_id77.z

#line 1153
  dp3_sat r11.w, r6.xyzx, r8.xywx  // r11.w <- streams.NdotH_id78

#line 1154
  dp3_sat r8.x, r12.xyzx, r8.xywx  // r8.x <- streams.LdotH_id79

#line 1148
  mul r12.xyz, r9.xyzx, r13.xyzx

#line 1285
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 652
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.x, -r8.x, l(1.000000)
  mul r8.y, r8.x, r8.x
  mul r8.y, r8.y, r8.y
  mul r8.x, r8.y, r8.x
  mad r8.xyw, r14.xyxz, r8.xxxx, r10.xyxz  // r8.x <- <FresnelSchlick_id191 return value>.x; r8.y <- <FresnelSchlick_id191 return value>.y; r8.w <- <FresnelSchlick_id191 return value>.z

#line 647
  mul r12.w, r10.w, l(0.500000)  // r12.w <- k

#line 648
  mad r13.w, -r10.w, l(0.500000), l(1.000000)
  mad r14.x, r9.w, r13.w, r12.w
  div r14.x, r9.w, r14.x  // r14.x <- <VisibilityhSchlickGGX_id207 return value>
  mad r12.w, r5.w, r13.w, r12.w
  div r12.w, r5.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id207 return value>

#line 769
  mul r12.w, r12.w, r14.x
  mul r9.w, r5.w, r9.w
  div r9.w, r12.w, r9.w  // r9.w <- <VisibilitySmithSchlickGGX_id209 return value>

#line 763
  mul r12.w, r10.w, r10.w  // r12.w <- alphaR2

#line 764
  mul r11.w, r11.w, r11.w
  mad r13.w, r10.w, r10.w, l(-1.000000)
  mad r11.w, r11.w, r13.w, l(1.000000)
  max r11.w, r11.w, l(0.000100)  // r11.w <- d

#line 765
  mul r11.w, r11.w, r11.w
  mul r11.w, r11.w, l(3.141593)
  div r11.w, r12.w, r11.w  // r11.w <- <NormalDistributionGGX_id221 return value>

#line 1142
  mul r8.xyw, r8.xyxw, r9.wwww
  mul r8.xyw, r11.wwww, r8.xyxw
  mul r8.xyw, r13.xyxz, r8.xyxw

#line 1289
  mad r11.xyz, r8.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1275
  iadd r3.w, r3.w, l(1)

#line 1291
endloop   // r5.z <- streams.lightIndex_id176

#line 1108
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id274 return value>

#line 1299
mov r4.xzw, r1.xxyz  // r4.x <- streams.normalWS_id21.x; r4.z <- streams.normalWS_id21.y; r4.w <- streams.normalWS_id21.z
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id24.x; r6.y <- streams.PositionWS_id24.y; r6.z <- streams.PositionWS_id24.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.viewWS_id70.x; r7.y <- streams.viewWS_id70.y; r7.z <- streams.viewWS_id70.z
mov r8.xyz, r4.yyyy  // r8.x <- streams.matDiffuseVisible_id71.x; r8.y <- streams.matDiffuseVisible_id71.y; r8.z <- streams.matDiffuseVisible_id71.z
mov r9.xyz, r0.wwww  // r9.x <- streams.matSpecularVisible_id73.x; r9.y <- streams.matSpecularVisible_id73.y; r9.z <- streams.matSpecularVisible_id73.z
mov r10.xyz, r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r0.y, r1.w  // r0.y <- streams.alphaRoughness_id72
mov r2.w, r5.y  // r2.w <- streams.NdotV_id74
mov r3.w, r5.z  // r3.w <- streams.lightIndex_id176
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.w, r5.w, r0.x
  breakc_nz r6.w

#line 1301
  if_nz r6.w

#line 1303
    break 

#line 1304
  endif 

#line 895
  ld_indexable(buffer)(uint,uint,uint,uint) r6.w, r3.wwww, t4.yzwx  // r6.w <- realLightIndex

#line 896
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id176

#line 898
  ishl r7.w, r6.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r7.wwww, t6.xyzw  // r12.x <- spotLight1.x; r12.y <- spotLight1.y; r12.z <- spotLight1.z

#line 901
  bfi r13.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r6.wwww, l(1, 2, 3, 0)

#line 899
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r13.xxxx, t6.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z

#line 900
  ld_indexable(buffer)(float,float,float,float) r13.xyw, r13.yyyy, t6.xywz  // r13.x <- spotLight3.x; r13.y <- spotLight3.y; r13.w <- spotLight3.z

#line 901
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r13.zzzz, t6.xyzw  // r15.x <- spotLight4.x; r15.y <- spotLight4.y; r15.z <- spotLight4.z

#line 626
  add r12.xyz, -r6.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 627
  dp3 r6.w, r12.xyzx, r12.xyzx
  sqrt r7.w, r6.w  // r7.w <- lightVectorLength

#line 628
  div r12.xyz, r12.xyzx, r7.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 512
  max r7.w, r6.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 333
  mul r6.w, r13.w, r6.w  // r6.w <- factor

#line 334
  mad r6.w, -r6.w, r6.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- smoothFactor

#line 335
  mul r6.w, r6.w, r6.w  // r6.w <- <SmoothDistanceAttenuation_id104 return value>

#line 513
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 504
  dp3 r7.w, -r14.xyzx, r12.xyzx  // r7.w <- cd

#line 505
  mad_sat r7.w, r7.w, r13.x, r13.y  // r7.w <- attenuation

#line 506
  mul r7.w, r7.w, r7.w

#line 634
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 1094
  dp3 r7.w, r4.xzwx, r12.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id51

#line 1096
  mul r13.xyz, r6.wwww, r15.xyzx
  mul r13.xyz, r7.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id46.x; r13.y <- streams.lightColorNdotL_id46.y; r13.z <- streams.lightColorNdotL_id46.z

#line 1152
  add r14.xyz, r7.xyzx, r12.xyzx
  dp3 r6.w, r14.xyzx, r14.xyzx
  rsq r6.w, r6.w
  mul r14.xyz, r6.wwww, r14.xyzx  // r14.x <- streams.H_id77.x; r14.y <- streams.H_id77.y; r14.z <- streams.H_id77.z

#line 1153
  dp3_sat r6.w, r4.xzwx, r14.xyzx  // r6.w <- streams.NdotH_id78

#line 1154
  dp3_sat r8.w, r12.xyzx, r14.xyzx  // r8.w <- streams.LdotH_id79

#line 1148
  mul r12.xyz, r8.xyzx, r13.xyzx

#line 1309
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 652
  add r14.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.w, r8.w, r8.w
  mul r9.w, r9.w, r9.w
  mul r8.w, r8.w, r9.w
  mad r14.xyz, r14.xyzx, r8.wwww, r9.xyzx  // r14.x <- <FresnelSchlick_id191 return value>.x; r14.y <- <FresnelSchlick_id191 return value>.y; r14.z <- <FresnelSchlick_id191 return value>.z

#line 647
  mul r8.w, r0.y, l(0.500000)  // r8.w <- k

#line 648
  mad r9.w, -r0.y, l(0.500000), l(1.000000)
  mad r10.w, r7.w, r9.w, r8.w
  div r10.w, r7.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id207 return value>
  mad r8.w, r2.w, r9.w, r8.w
  div r8.w, r2.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id207 return value>

#line 769
  mul r8.w, r8.w, r10.w
  mul r7.w, r2.w, r7.w
  div r7.w, r8.w, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id209 return value>

#line 763
  mul r8.w, r0.y, r0.y  // r8.w <- alphaR2

#line 764
  mul r6.w, r6.w, r6.w
  mad r9.w, r0.y, r0.y, l(-1.000000)
  mad r6.w, r6.w, r9.w, l(1.000000)
  max r6.w, r6.w, l(0.000100)  // r6.w <- d

#line 765
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r6.w, r8.w, r6.w  // r6.w <- <NormalDistributionGGX_id221 return value>

#line 1142
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r14.xyz, r6.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 1313
  mad r10.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 1299
  iadd r5.w, r5.w, l(1)

#line 1315
endloop   // r3.w <- streams.lightIndex_id176

#line 1329
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 613
  add r4.xzw, -v0.xxyz, cb0[29].xxyz  // r4.x <- lightVector.x; r4.z <- lightVector.y; r4.w <- lightVector.z

#line 614
  dp3 r0.x, r4.xzwx, r4.xzwx
  sqrt r0.y, r0.x  // r0.y <- lightVectorLength

#line 615
  div r4.xzw, r4.xxzw, r0.yyyy  // r4.x <- lightVectorNorm.x; r4.z <- lightVectorNorm.y; r4.w <- lightVectorNorm.z

#line 498
  max r0.y, r0.x, l(0.000100)
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y  // r0.y <- attenuation

#line 327
  mul r0.x, r0.x, cb0[31].z  // r0.x <- factor

#line 328
  mad r0.x, -r0.x, r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)  // r0.x <- smoothFactor

#line 329
  mul r0.x, r0.x, r0.x  // r0.x <- <SmoothDistanceAttenuation_id115 return value>

#line 499
  mul r0.x, r0.x, r0.y  // r0.x <- attenuation

#line 490
  dp3 r0.y, -cb0[30].xyzx, r4.xzwx  // r0.y <- cd

#line 491
  mad_sat r0.y, r0.y, cb0[31].x, cb0[31].y  // r0.y <- attenuation

#line 492
  mul r0.y, r0.y, r0.y

#line 621
  mul r0.x, r0.y, r0.x  // r0.x <- attenuation

#line 1072
  dp3 r0.y, r1.xyzx, r4.xzwx
  max r0.y, r0.y, l(0.000100)  // r0.y <- streams.NdotL_id51

#line 733
  add r2.w, -r0.y, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- normalOffsetScale

#line 734
  mul r3.w, cb0[33].z, cb0[48].x
  dp2 r2.w, r3.wwww, r2.wwww

#line 862
  mad r6.xyz, r2.wwww, r1.xyzx, v0.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 726
  mov r6.w, l(1.000000)
  dp4 r7.x, r6.xyzw, cb0[34].xyzw  // r7.x <- shadowPosition.x
  dp4 r7.y, r6.xyzw, cb0[35].xyzw  // r7.y <- shadowPosition.y
  dp4 r2.w, r6.xyzw, cb0[36].xyzw  // r2.w <- shadowPosition.z
  dp4 r3.w, r6.xyzw, cb0[37].xyzw  // r3.w <- shadowPosition.w

#line 727
  add r7.z, r2.w, -cb0[47].x  // r7.z <- shadowPosition.z

#line 728
  div r6.xyz, r7.xyzx, r3.wwww  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 483
  mad r5.zw, r6.xxxy, cb0[33].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 484
  add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 485
  add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 486
  mul r6.xy, r6.xyxx, cb0[33].zwzz

#line 431
  mad r7.xy, -r5.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r7.x <- uvW0.y; r7.y <- uvW0.x

#line 433
  mad r7.zw, r5.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r7.z <- uvW2.x; r7.w <- uvW2.y

#line 434
  mad r8.xy, -r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r8.xy, r8.xyxx, r7.yxyy
  add r8.xw, r8.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r8.x <- uv0.x; r8.w <- uv0.y

#line 435
  add r9.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r8.yz, r9.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r8.y <- uv1.y; r8.z <- uv1.x

#line 436
  div r5.zw, r5.zzzw, r7.zzzw
  add r9.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r9.x <- uv2.x; r9.y <- uv2.y

#line 437
  mul r2.w, r7.x, r7.y

#line 438
  mad r11.xyzw, r8.xwzw, cb0[33].zwzw, r6.xyxy

#line 442
  mov r9.zw, r8.wwwy

#line 440
  mul r5.zw, r7.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 441
  mad r12.xyzw, r8.xyzy, cb0[33].zwzw, r6.xyxy

#line 442
  mad r13.xyzw, r9.xzxw, cb0[33].zwzw, r6.xyxy

#line 443
  mov r8.y, r9.y
  mul r7.xy, r7.xyxx, r7.zwzz

#line 444
  mad r8.xyzw, r8.xyzy, cb0[33].zwzw, r6.xyxy
  mul r9.zw, r7.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 445
  mad r6.xy, r9.xyxx, cb0[33].zwzz, r6.xyxx
  mul r3.w, r7.w, r7.z

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r11.xyxx, t0.xxxx, s1, r6.z  // r6.w <- <SampleTextureAndCompare_id129 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r11.zwzz, t0.xxxx, s1, r6.z  // r7.z <- <SampleTextureAndCompare_id129 return value>

#line 605
  mul r5.z, r5.z, r7.z
  mad r2.w, r2.w, r6.w, r5.z  // r2.w <- shadow

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r13.xyxx, t0.xxxx, s1, r6.z  // r5.z <- <SampleTextureAndCompare_id129 return value>

#line 605
  mad r2.w, r7.x, r5.z, r2.w

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r12.xyxx, t0.xxxx, s1, r6.z

#line 605
  mad r2.w, r5.w, r5.z, r2.w

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r12.zwzz, t0.xxxx, s1, r6.z

#line 605
  mad r2.w, r5.z, l(49.000000), r2.w

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r13.zwzz, t0.xxxx, s1, r6.z

#line 605
  mad r2.w, r9.z, r5.z, r2.w

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r8.xyxx, t0.xxxx, s1, r6.z

#line 605
  mad r2.w, r7.y, r5.z, r2.w

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r8.zwzz, t0.xxxx, s1, r6.z

#line 605
  mad r2.w, r9.w, r5.z, r2.w

#line 450
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r6.xyxx, t0.xxxx, s1, r6.z

#line 605
  mad r2.w, r3.w, r5.z, r2.w

#line 607
  mul r2.w, r2.w, l(0.006944)

#line 1074
  mul r6.xyz, r0.xxxx, cb0[32].xyzx
  mul r6.xyz, r2.wwww, r6.xyzx
  mul r6.xyz, r0.yyyy, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1152
  mad r2.xyz, r2.xyzx, r0.zzzz, r4.xzwx
  dp3 r0.x, r2.xyzx, r2.xyzx
  rsq r0.x, r0.x
  mul r2.xyz, r0.xxxx, r2.xyzx  // r2.x <- streams.H_id77.x; r2.y <- streams.H_id77.y; r2.z <- streams.H_id77.z

#line 1153
  dp3_sat r0.x, r1.xyzx, r2.xyzx  // r0.x <- streams.NdotH_id78

#line 1154
  dp3_sat r0.z, r4.xzwx, r2.xyzx  // r0.z <- streams.LdotH_id79

#line 1148
  mul r2.x, r4.y, l(0.318310)

#line 1333
  mad r2.xyz, r2.xxxx, r6.xyzx, r10.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 652
  add r2.w, -r0.w, l(1.000000)
  add r0.z, -r0.z, l(1.000000)
  mul r3.w, r0.z, r0.z
  mul r3.w, r3.w, r3.w
  mul r0.z, r0.z, r3.w
  mad r0.z, r2.w, r0.z, r0.w  // r0.z <- <FresnelSchlick_id191 return value>.x

#line 647
  mul r2.w, r1.w, l(0.500000)  // r2.w <- k

#line 648
  mad r3.w, -r1.w, l(0.500000), l(1.000000)
  mad r4.x, r0.y, r3.w, r2.w
  div r4.x, r0.y, r4.x  // r4.x <- <VisibilityhSchlickGGX_id207 return value>
  mad r2.w, r5.y, r3.w, r2.w
  div r2.w, r5.y, r2.w  // r2.w <- <VisibilityhSchlickGGX_id207 return value>

#line 769
  mul r2.w, r2.w, r4.x
  mul r0.y, r5.y, r0.y
  div r0.y, r2.w, r0.y  // r0.y <- <VisibilitySmithSchlickGGX_id209 return value>

#line 763
  mul r2.w, r1.w, r1.w  // r2.w <- alphaR2

#line 764
  mul r0.x, r0.x, r0.x
  mad r3.w, r1.w, r1.w, l(-1.000000)
  mad r0.x, r0.x, r3.w, l(1.000000)
  max r0.x, r0.x, l(0.000100)  // r0.x <- d

#line 1142
  mul r0.xy, r0.xyxx, r0.xzxx

#line 765
  mul r0.x, r0.x, l(3.141593)
  div r0.x, r2.w, r0.x  // r0.x <- <NormalDistributionGGX_id221 return value>

#line 1142
  mul r0.x, r0.x, r0.y
  mul r0.x, r0.x, l(0.250000)  // r0.x <- reflected.x

#line 1337
  mad r10.xyz, r0.xxxx, r6.xyzx, r2.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 1338
endif 

#line 842
sqrt r0.x, r1.w
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 843
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t1.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 844
mad r0.y, r0.w, r0.y, r0.z  // r0.y <- <Compute_id368 return value>.x

#line 1055
mul r2.xyz, r0.yyyy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id547 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id547 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id547 return value>.z

#line 1351
mad r2.xyz, r4.yyyy, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1044
dp3 r0.z, r1.xyzx, cb2[98].xyzx  // r0.z <- sampleDirection.x
dp3 r0.w, r1.xyzx, cb2[99].xyzx  // r0.w <- sampleDirection.y
dp3 r1.w, r1.xyzx, cb2[100].xyzx  // r1.w <- sampleDirection.z

#line 705
mul r2.w, r0.w, r0.w  // r2.w <- y2

#line 706
mul r3.w, r1.w, r1.w  // r3.w <- z2

#line 710
mad r4.xzw, cb2[90].xxyz, r0.wwww, cb2[89].xxyz  // r4.x <- color.x; r4.z <- color.y; r4.w <- color.z

#line 711
mad r4.xzw, cb2[91].xxyz, -r1.wwww, r4.xxzw

#line 712
mad r4.xzw, cb2[92].xxyz, r0.zzzz, r4.xxzw

#line 715
mul r5.xyz, r0.wwww, cb2[93].xyzx
mad r4.xzw, r5.xxyz, r0.zzzz, r4.xxzw

#line 716
mul r5.xyz, r0.wwww, cb2[94].xyzx
mad r4.xzw, r5.xxyz, -r1.wwww, r4.xxzw

#line 717
mad r0.w, r3.w, l(3.000000), l(-1.000000)
mad r4.xzw, cb2[95].xxyz, r0.wwww, r4.xxzw

#line 718
mul r5.xyz, r0.zzzz, cb2[96].xyzx
mad r4.xzw, r5.xxyz, -r1.wwww, r4.xxzw

#line 719
mad r0.z, r0.z, r0.z, -r2.w
mad r4.xzw, cb2[97].xxyz, r0.zzzz, r4.xxzw

#line 1046
mul r4.xzw, r4.xxzw, cb2[102].xxxx  // r4.x <- streams.envLightDiffuseColor_id49.x; r4.z <- streams.envLightDiffuseColor_id49.y; r4.w <- streams.envLightDiffuseColor_id49.z

#line 1047
dp3 r0.z, -r3.xyzx, r1.xyzx
add r0.z, r0.z, r0.z
mad r3.xyz, r1.xyzx, -r0.zzzz, -r3.xyzx  // r3.x <- sampleDirection.x; r3.y <- sampleDirection.y; r3.z <- sampleDirection.z

#line 1048
dp3 r5.x, r3.xyzx, cb2[98].xyzx  // r5.x <- sampleDirection.x
dp3 r5.y, r3.xyzx, cb2[99].xyzx  // r5.y <- sampleDirection.y
dp3 r0.z, r3.xyzx, cb2[100].xyzx  // r0.z <- sampleDirection.z

#line 1049
mov r5.z, -r0.z  // r5.z <- sampleDirection.z

#line 828
mul r0.z, r0.x, cb2[97].w  // r0.z <- mipLevel

#line 829
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r5.xyzx, t7.xyzw, s0, r0.z  // r3.x <- <Compute_id321 return value>.x; r3.y <- <Compute_id321 return value>.y; r3.z <- <Compute_id321 return value>.z

#line 1050
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightSpecularColor_id50.x; r3.y <- streams.envLightSpecularColor_id50.y; r3.z <- streams.envLightSpecularColor_id50.z

#line 1359
mad r2.xyz, r4.yyyy, r4.xzwx, r2.xyzx

#line 1363
mad r0.yzw, r0.yyyy, r3.xxyz, r2.xxyz  // r0.y <- environmentLightingContribution.x; r0.z <- environmentLightingContribution.y; r0.w <- environmentLightingContribution.z

#line 1378
mad o0.xyz, r10.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.yzwy

#line 1446
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1489
utof o3.xyzw, cb0[26].xxxx

#line 1569
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mad o2.xyz, cb1[0].yyyy, l(0.980000, 0.980000, 0.980000, 0.000000), l(0.020000, 0.020000, 0.020000, 0.000000)
mov o2.w, r0.x
ret 
// Approximately 587 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id89 = 1;
const static int TCascadeCountBase_id153 = 4;
const static int TLightCountBase_id154 = 1;
const static int TCascadeCount_id161 = 4;
const static int TLightCount_id162 = 1;
const static bool TBlendCascades_id163 = true;
const static bool TDepthRangeAuto_id164 = true;
const static bool TCascadeDebug_id165 = false;
const static bool TComputeTransmittance_id166 = false;
const static int TFilterSize_id168 = 7;
const static int TMaxLightCount_id185 = 1;
const static int TCascadeCountBase_id191 = 1;
const static int TLightCountBase_id192 = 1;
const static bool TCascadeDebug_id200 = false;
const static int TFilterSize_id201 = 5;
const static int TOrder_id204 = 3;
const static int TOrder_id206 = 3;
const static float4 Value_id215 = float4(1, 1, 1, 1);
const static bool TInvert_id227 = true;
const static bool TIsEnergyConservative_id239 = false;
static const float PI_id241 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id169;
    float3 normalWS_id21;
    float4 PositionWS_id24;
    float DepthVS_id25;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id19;
    float3 viewWS_id70;
    float3 shadingColor_id75;
    float matBlend_id42;
    float3 matNormal_id53;
    float4 matColorBase_id54;
    float4 matDiffuse_id55;
    float3 matDiffuseVisible_id71;
    float3 matSpecular_id57;
    float3 matSpecularVisible_id73;
    float matSpecularIntensity_id58;
    float matGlossiness_id56;
    float alphaRoughness_id72;
    float matAmbientOcclusion_id59;
    float matAmbientOcclusionDirectLightingFactor_id60;
    float matCavity_id61;
    float matCavityDiffuse_id62;
    float matCavitySpecular_id63;
    float4 matEmissive_id64;
    float matEmissiveIntensity_id65;
    float matScatteringStrength_id66;
    float2 matDiffuseSpecularAlphaBlend_id67;
    float3 matAlphaBlendColor_id68;
    float matAlphaDiscard_id69;
    float shadingColorAlpha_id76;
    float Input_0_id220;
    float Input_1_id229;
    float3 lightPositionWS_id43;
    float3 lightDirectionWS_id44;
    float3 lightColor_id45;
    float3 lightColorNdotL_id46;
    float3 lightSpecularColorNdotL_id47;
    float lightAttenuation_id48;
    float3 envLightDiffuseColor_id49;
    float3 envLightSpecularColor_id50;
    float lightDirectAmbientOcclusion_id52;
    float NdotL_id51;
    float NdotV_id74;
    float thicknessWS_id87;
    float3 shadowColor_id86;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id175;
    int lightIndex_id176;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
    float4 ColorTarget2_id4;
    float4 ColorTarget3_id5;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
    float4 ColorTarget2_id4 : SV_Target2;
    float4 ColorTarget3_id5 : SV_Target3;
};
struct PS_INPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id23;
    float3 meshNormal_id18;
    float4 PositionH_id26;
    float3 meshNormalWS_id19;
    float4 PositionWS_id24;
    float4 ShadingPosition_id0;
    float DepthVS_id25;
    float3 normalWS_id21;
    float4 ScreenPosition_id169;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
};
struct VS_INPUT 
{
    float4 Position_id23 : POSITION;
    float3 meshNormal_id18 : NORMAL;
};
typedef uint Half2;
typedef uint2 Half4;
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
    float4x4 World_id34;
    float4x4 WorldInverse_id35;
    float4x4 WorldInverseTranspose_id36;
    float4x4 WorldView_id37;
    float4x4 WorldViewInverse_id38;
    float4x4 WorldViewProjection_id39;
    float3 WorldScale_id40;
    float4 EyeMS_id41;
    uint MaterialIndex_id85;
    float4 _padding_PerDraw_Default;
    int LightCount_id184;
    SpotLightData Lights_id186[TMaxLightCount_id185];
    float2 ShadowMapTextureSize_id188;
    float2 ShadowMapTextureTexelSize_id189;
    float4x4 WorldToShadowCascadeUV_id193[TCascadeCountBase_id191 * TLightCountBase_id192];
    float4x4 InverseWorldToShadowCascadeUV_id194[TCascadeCountBase_id191 * TLightCountBase_id192];
    float4x4 ViewMatrices_id195[TCascadeCountBase_id191 * TLightCountBase_id192];
    float2 DepthRanges_id196[TCascadeCountBase_id191 * TLightCountBase_id192];
    float DepthBiases_id197[TLightCountBase_id192];
    float OffsetScales_id198[TLightCountBase_id192];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float InputValue_id221;
    float InputValue_id230;
};
cbuffer PerView 
{
    float4x4 View_id27;
    float4x4 ViewInverse_id28;
    float4x4 Projection_id29;
    float4x4 ProjectionInverse_id30;
    float4x4 ViewProjection_id31;
    float2 ProjScreenRay_id32;
    float4 Eye_id33;
    float NearClipPlane_id170 = 1.0f;
    float FarClipPlane_id171 = 100.0f;
    float2 ZProjection_id172;
    float2 ViewSize_id173;
    float AspectRatio_id174;
    float4 _padding_PerView_Default;
    int LightCount_id88;
    DirectionalLightData Lights_id90[TMaxLightCount_id89];
    float2 ShadowMapTextureSize_id92;
    float2 ShadowMapTextureTexelSize_id93;
    float4x4 WorldToShadowCascadeUV_id155[TCascadeCountBase_id153 * TLightCountBase_id154];
    float4x4 InverseWorldToShadowCascadeUV_id156[TCascadeCountBase_id153 * TLightCountBase_id154];
    float4x4 ViewMatrices_id157[TCascadeCountBase_id153 * TLightCountBase_id154];
    float2 DepthRanges_id158[TCascadeCountBase_id153 * TLightCountBase_id154];
    float DepthBiases_id159[TLightCountBase_id154];
    float OffsetScales_id160[TLightCountBase_id154];
    float CascadeDepthSplits_id167[TCascadeCount_id161 * TLightCount_id162];
    float ClusterDepthScale_id179;
    float ClusterDepthBias_id180;
    float2 ClusterStride_id181;
    float3 AmbientLight_id202;
    float3 SphericalColors_id207[TOrder_id206 * TOrder_id206];
    float MipCount_id208;
    float4x4 SkyMatrix_id210;
    float Intensity_id211;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id95;
    float2 Texture1TexelSize_id97;
    float2 Texture2TexelSize_id99;
    float2 Texture3TexelSize_id101;
    float2 Texture4TexelSize_id103;
    float2 Texture5TexelSize_id105;
    float2 Texture6TexelSize_id107;
    float2 Texture7TexelSize_id109;
    float2 Texture8TexelSize_id111;
    float2 Texture9TexelSize_id113;
};
Texture2D Texture0_id94;
Texture2D Texture1_id96;
Texture2D Texture2_id98;
Texture2D Texture3_id100;
Texture2D Texture4_id102;
Texture2D Texture5_id104;
Texture2D Texture6_id106;
Texture2D Texture7_id108;
Texture2D Texture8_id110;
Texture2D Texture9_id112;
TextureCube TextureCube0_id114;
TextureCube TextureCube1_id115;
TextureCube TextureCube2_id116;
TextureCube TextureCube3_id117;
Texture3D Texture3D0_id118;
Texture3D Texture3D1_id119;
Texture3D Texture3D2_id120;
Texture3D Texture3D3_id121;
SamplerState Sampler_id122;
SamplerState PointSampler_id123 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id125 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id126 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id127 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id128 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id130 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id131 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id132;
SamplerState Sampler1_id133;
SamplerState Sampler2_id134;
SamplerState Sampler3_id135;
SamplerState Sampler4_id136;
SamplerState Sampler5_id137;
SamplerState Sampler6_id138;
SamplerState Sampler7_id139;
SamplerState Sampler8_id140;
SamplerState Sampler9_id141;
Texture2D ShadowMapTexture_id187;
Texture2D EnvironmentLightingDFG_LUT_id242;
Texture2D ShadowMapTexture_id91;
Texture3D<uint2> LightClusters_id177;
Buffer<uint> LightIndices_id178;
Buffer<float4> PointLights_id182;
Buffer<float4> SpotLights_id183;
TextureCube CubeMap_id209;
float4 Project_id71(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id115(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
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
float Get3x3FilterKernel_id81(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id80(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id93, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id82(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id91.SampleLevel(LinearBorderSampler_id125, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id71(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id78(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id93, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id93, uvW3.x * uvW3.y);
    return 2704.0;
}
float Get3x3FilterKernel_id131(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id189, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id189, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id130(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id189, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id189, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id189, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id129(float2 position, float positionDepth)
{
    return ShadowMapTexture_id187.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
float Get7x7FilterKernel_id128(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id189, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id189, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id189, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id189, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id127(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id188;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id189;
}
float GetAngularAttenuation_id117(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id116(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id115(d2, lightInvSquareRadius);
    return attenuation;
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
float GetDistanceAttenuation_id95(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id93(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id86(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id92;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id93;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id78(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id82(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id85(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id71(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id71(float4(ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id71(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id84(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id71(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id71(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id71(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id83()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id79(float2 position, float positionDepth)
{
    return ShadowMapTexture_id91.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
void CalculatePCFKernelParameters_id77(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id92;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id93;
}
float Compute_id356()
{
    return InputValue_id230;
}
float Compute_id344()
{
    return InputValue_id221;
}
float FilterShadow_id123(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id127(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id130(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id129(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id118(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id116(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id117(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
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
float ComputeAttenuation_id94(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id95(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id207(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id191(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id73(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id85(GetFilterRadiusInPixels_id83(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id84(GetFilterRadiusInPixels_id83(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id86(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id72(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id77(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id78(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id79(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id359(inout PS_STREAMS streams)
{
    streams.Input_1_id229 = Compute_id356();
}
void Compute_id347(inout PS_STREAMS streams)
{
    streams.Input_0_id220 = Compute_id344();
}
void Compute_id335()
{
}
float4 EvaluateSphericalHarmonics_id145(float3 sphericalColors[TOrder_id204 * TOrder_id204], float3 direction)
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
float ComputeShadowFromCascade_id126(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id193[cascadeIndex + lightIndex * TCascadeCountBase_id191]);
    shadowPosition.z -= DepthBiases_id197[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id123(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id125(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id189.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id119(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id118(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id108(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id107(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id97(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id94(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id221(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id241 * d * d);
}
float VisibilitySmithSchlickGGX_id209(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id207(alphaR, nDotL) * VisibilityhSchlickGGX_id207(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id197(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id191(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id76(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id153;
    return FilterThickness_id73(pixelPositionWS, meshNormalWS, DepthRanges_id158[arrayIndex], WorldToShadowCascadeUV_id155[arrayIndex], InverseWorldToShadowCascadeUV_id156[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id75(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id155[cascadeIndex + lightIndex * TCascadeCountBase_id153]);
    shadowPosition.z -= DepthBiases_id159[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id72(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id74(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id93.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id362(inout PS_STREAMS streams)
{
    return streams.Input_1_id229;
}
void Compute_id361(inout PS_STREAMS streams)
{

    {
        Compute_id359(streams);
    }
}
float Compute_id350(inout PS_STREAMS streams)
{
    return streams.Input_0_id220;
}
void Compute_id349(inout PS_STREAMS streams)
{

    {
        Compute_id347(streams);
    }
}
float4 Compute_id338()
{
    return Value_id215;
}
void Compute_id337()
{

    {
        Compute_id335();
    }
}
float4 Compute_id321(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id208;
    return CubeMap_id209.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id316(float3 direction)
{
    return EvaluateSphericalHarmonics_id145(SphericalColors_id207, direction);
}
void PrepareEnvironmentLight_id149(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id368(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id242.SampleLevel(LinearSampler_id124, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id140(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id114(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id113(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id112(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id125(OffsetScales_id198[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float3 shadow = ComputeShadowFromCascade_id126(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id87 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id111(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id186[lightIndex].PositionWS;
    data.DirectionWS = Lights_id186[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id186[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id186[lightIndex].Color;
    ProcessLight_id119(streams, data);
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
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id100(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id183.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id183.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id183.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id183.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id108(streams, spotLight);
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
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id89(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id182.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id182.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id97(streams, pointLight);
}
void PrepareLightData_id96(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id172.y / (projectedDepth - ZProjection_id172.x);
    float2 texCoord = float2(streams.ScreenPosition_id169.x + 1, 1 - streams.ScreenPosition_id169.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id179 + ClusterDepthBias_id180), 0));
    streams.lightData_id175 = LightClusters_id177.Load(int4(texCoord * ClusterStride_id181, slice, 0));
    streams.lightIndex_id176 = streams.lightData_id175.x;
}
float Compute_id460(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id221(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id430(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id209(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id400(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id197(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id68(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id67(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id66(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id161;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id161 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id25 > CascadeDepthSplits_id167[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id74(OffsetScales_id160[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    if (cascadeIndex < TCascadeCount_id161)
    {
        shadow = ComputeShadowFromCascade_id75(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id167[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id167[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id25) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id161 - 1)
            {
            }
            else if (TBlendCascades_id163)
            {
                float nextShadow = ComputeShadowFromCascade_id75(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id87 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id65(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id90[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id90[lightIndex].DirectionWS;
}
float Compute_id365(inout PS_STREAMS streams)
{
    Compute_id361(streams);
    return Compute_id362(streams);
}
float Compute_id353(inout PS_STREAMS streams)
{
    Compute_id349(streams);
    return Compute_id350(streams);
}
float4 Compute_id341()
{
    Compute_id337();
    return Compute_id338();
}
void ResetStream_id224()
{
}
void AfterLightingAndShading_id517()
{
}
void AfterLightingAndShading_id498()
{
}
void PrepareEnvironmentLight_id334(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id331(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id149(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id210);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id316(sampleDirection).rgb * Intensity_id211 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id210);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id321(streams, sampleDirection).rgb * Intensity_id211 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id547(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id368(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id491(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id326(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id140(streams);
    float3 lightColor = AmbientLight_id202 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id283(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id111(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id112(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id113(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id114(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id285()
{
    return LightCount_id184;
}
int GetMaxLightCount_id286()
{
    return TMaxLightCount_id185;
}
void PrepareDirectLights_id281()
{
}
void PrepareDirectLight_id271(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id100(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id101(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id102(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id103(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id275(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
int GetMaxLightCount_id274(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
void PrepareDirectLights_id269()
{
}
void PrepareDirectLight_id258(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id89(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id90(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id91(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id92(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id263(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
int GetMaxLightCount_id262(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
void PrepareDirectLights_id261(inout PS_STREAMS streams)
{
    PrepareLightData_id96(streams);
}
float3 ComputeDirectLightContribution_id546(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id400(streams, specularColor);
    float geometricShadowing = Compute_id430(streams);
    float normalDistribution = Compute_id460(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id490(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id241 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id234(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id65(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id66(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id67(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id68(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id236()
{
    return LightCount_id88;
}
int GetMaxLightCount_id237()
{
    return TMaxLightCount_id89;
}
void PrepareDirectLights_id232()
{
}
void PrepareForLightingAndShading_id514()
{
}
void PrepareForLightingAndShading_id495()
{
}
void PrepareMaterialForLightingAndShading_id223(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id222(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id43 = 0;
    streams.lightDirectionWS_id44 = 0;
    streams.lightColor_id45 = 0;
    streams.lightColorNdotL_id46 = 0;
    streams.lightSpecularColorNdotL_id47 = 0;
    streams.lightAttenuation_id48 = 1.0f;
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
    streams.lightDirectAmbientOcclusion_id52 = 1.0f;
    streams.NdotL_id51 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id367(inout PS_STREAMS streams)
{
    float x = Compute_id365(streams);
    return float4(x, x, x, x);
}
float4 Compute_id355(inout PS_STREAMS streams)
{
    float x = Compute_id353(streams);
    return float4(x, x, x, x);
}
float4 Compute_id343()
{
    return Compute_id341();
}
void ResetStream_id225(inout PS_STREAMS streams)
{
    ResetStream_id224();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id578(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id222(streams);
    PrepareMaterialForLightingAndShading_id223(streams);

    {
        PrepareForLightingAndShading_id495();
    }

    {
        PrepareForLightingAndShading_id514();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id232();
        const int maxLightCount = GetMaxLightCount_id237();
        int count = GetLightCount_id236();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id234(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id490(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id546(streams);
            }
        }
    }

    {
        PrepareDirectLights_id261(streams);
        const int maxLightCount = GetMaxLightCount_id262(streams);
        int count = GetLightCount_id263(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id258(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id490(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id546(streams);
            }
        }
    }

    {
        PrepareDirectLights_id269();
        const int maxLightCount = GetMaxLightCount_id274(streams);
        int count = GetLightCount_id275(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id271(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id490(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id546(streams);
            }
        }
    }

    {
        PrepareDirectLights_id281();
        const int maxLightCount = GetMaxLightCount_id286();
        int count = GetLightCount_id285();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id283(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id490(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id546(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id326(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id491(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id547(streams);
        }
    }

    {
        PrepareEnvironmentLight_id331(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id491(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id547(streams);
        }
    }

    {
        PrepareEnvironmentLight_id334(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id491(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id547(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id241 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id498();
    }

    {
        AfterLightingAndShading_id517();
    }
}
void Compute_id562(inout PS_STREAMS streams)
{
    float metalness = Compute_id367(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id557(inout PS_STREAMS streams)
{
    float glossiness = Compute_id355(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id552(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id343();
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id226(inout PS_STREAMS streams)
{
    ResetStream_id225(streams);
    streams.matNormal_id53 = float3(0, 0, 1);
    streams.matColorBase_id54 = 0.0f;
    streams.matDiffuse_id55 = 0.0f;
    streams.matDiffuseVisible_id71 = 0.0f;
    streams.matSpecular_id57 = 0.0f;
    streams.matSpecularVisible_id73 = 0.0f;
    streams.matSpecularIntensity_id58 = 1.0f;
    streams.matGlossiness_id56 = 0.0f;
    streams.alphaRoughness_id72 = 1.0f;
    streams.matAmbientOcclusion_id59 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id60 = 0.0f;
    streams.matCavity_id61 = 1.0f;
    streams.matCavityDiffuse_id62 = 0.0f;
    streams.matCavitySpecular_id63 = 0.0f;
    streams.matEmissive_id64 = 0.0f;
    streams.matEmissiveIntensity_id65 = 0.0f;
    streams.matScatteringStrength_id66 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id67 = 1.0f;
    streams.matAlphaBlendColor_id68 = 1.0f;
    streams.matAlphaDiscard_id69 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id31);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
float3 EncodeNormal_id59(float3 n)
{
    return n * 0.5 + 0.5;
}
void Compute_id55(inout PS_STREAMS streams)
{

    {
        Compute_id552(streams);
    }

    {
        Compute_id557(streams);
    }

    {
        Compute_id562(streams);
    }

    {
        Compute_id578(streams);
    }
}
void ResetStream_id54(inout PS_STREAMS streams)
{
    ResetStream_id226(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id24);
    streams.PositionH_id26 = streams.ShadingPosition_id0;
    streams.DepthVS_id25 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id24 = mul(streams.Position_id23, World_id34);
}
float4 Compute_id53()
{
    return MaterialIndex_id85;
}
float4 Compute_id52(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id73, sqrt(streams.alphaRoughness_id72));
}
float4 Compute_id51(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id59(streams.normalWS_id21), 1);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id54(streams);
    Compute_id55(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
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
    streams.ColorTarget1_id3 = Compute_id51(streams);
    streams.ColorTarget2_id4 = Compute_id52(streams);
    streams.ColorTarget3_id5 = Compute_id53();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id21, streams.normalWS_id21) > 0)
        streams.normalWS_id21 = normalize(streams.normalWS_id21);
    streams.meshNormalWS_id19 = streams.normalWS_id21;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id19 = mul(streams.meshNormal_id18, (float3x3)WorldInverseTranspose_id36);
    streams.normalWS_id21 = streams.meshNormalWS_id19;
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
    streams.PositionWS_id24 = __input__.PositionWS_id24;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id25 = __input__.DepthVS_id25;
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.ScreenPosition_id169 = __input__.ScreenPosition_id169;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id169 /= streams.ScreenPosition_id169.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    __output__.ColorTarget3_id5 = streams.ColorTarget3_id5;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id23 = __input__.Position_id23;
    streams.meshNormal_id18 = __input__.meshNormal_id18;
    VSMain_id19(streams);
    streams.ScreenPosition_id169 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id24 = streams.PositionWS_id24;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id25 = streams.DepthVS_id25;
    __output__.normalWS_id21 = streams.normalWS_id21;
    __output__.ScreenPosition_id169 = streams.ScreenPosition_id169;
    return __output__;
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,7>, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSpecularColorRoughness}, {ShadingColor3 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1664]
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
@C    Lights_id186 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id188 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id189 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id192 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id193 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id194 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id195 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id196 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    LightCount_id198 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id200 => LightSpotGroup.Lights.directLightGroups[4]
@C    ShadowMapTextureSize_id202 => ShadowMap.TextureSize.directLightGroups[4]
@C    ShadowMapTextureTexelSize_id203 => ShadowMap.TextureTexelSize.directLightGroups[4]
@C    WorldToShadowCascadeUV_id207 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[4]
@C    InverseWorldToShadowCascadeUV_id208 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[4]
@C    ViewMatrices_id209 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[4]
@C    DepthRanges_id210 => ShadowMapReceiverBase.DepthRanges.directLightGroups[4]
@C    DepthBiases_id211 => ShadowMapReceiverBase.DepthBiases.directLightGroups[4]
@C    OffsetScales_id212 => ShadowMapReceiverBase.OffsetScales.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 32]
@C    InputValue_id229 => ShaderFX.InputValueFloat4
@C    InputValue_id237 => ShaderFX.InputValueFloat
@C    InputValue_id246 => ShaderFX.InputValueFloat.i1
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
@C    AmbientLight_id216 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id221 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id222 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id224 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id225 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id201 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id201 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id258 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id258 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    CubeMap_id223 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id223 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id124 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id126 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id201 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id258 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (3-3)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: Pixel, Slot: (4-4)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: Pixel, Slot: (5-5)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (6-6)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (7-7)]
@R    CubeMap_id223 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (8-8)]
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
@S    LightSpotGroup => 54b4c8984e82f7dd8c9ed33c2781287a
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
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id186;                    // Offset:  464 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id188; // Offset:  496 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id189;// Offset:  504 Size:     8 [unused]
//   float4x4 WorldToShadow_id192[6];   // Offset:  512 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id193[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id194;           // Offset: 1280 Size:     4 [unused]
//   float OffsetScales_id195;          // Offset: 1296 Size:     4 [unused]
//   float2 DepthParameters_id196;      // Offset: 1312 Size:     8 [unused]
//   int LightCount_id198;              // Offset: 1320 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id200;                    // Offset: 1328 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id202; // Offset: 1392 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id203;// Offset: 1400 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id207;// Offset: 1408 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id208;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id209;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id210;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id211;           // Offset: 1616 Size:     4 [unused]
//   float OffsetScales_id212;          // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
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
//   float3 AmbientLight_id216;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id221[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id222;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id224;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id225;             // Offset: 1632 Size:     4 [unused]
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
#line 1826 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_8fbf2f4f9ed9289668d05e048d3f55b1.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id24.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id24.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id24.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id24.w

#line 1925
mov o0.xyzw, r0.xyzw

#line 1777
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1925
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1876
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1925
ret 
// Approximately 16 instruction slots used
@G    Pixel => d1b023a2a1998c6431d753073e89fc1f
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
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id186;                    // Offset:  464 Size:    28
//   float2 ShadowMapTextureSize_id188; // Offset:  496 Size:     8
//   float2 ShadowMapTextureTexelSize_id189;// Offset:  504 Size:     8
//   float4x4 WorldToShadow_id192[6];   // Offset:  512 Size:   384
//   float4x4 InverseWorldToShadow_id193[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id194;           // Offset: 1280 Size:     4
//   float OffsetScales_id195;          // Offset: 1296 Size:     4
//   float2 DepthParameters_id196;      // Offset: 1312 Size:     8
//   int LightCount_id198;              // Offset: 1320 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id200;                    // Offset: 1328 Size:    60
//   float2 ShadowMapTextureSize_id202; // Offset: 1392 Size:     8
//   float2 ShadowMapTextureTexelSize_id203;// Offset: 1400 Size:     8
//   float4x4 WorldToShadowCascadeUV_id207;// Offset: 1408 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id208;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id209;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id210;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id211;           // Offset: 1616 Size:     4
//   float OffsetScales_id212;          // Offset: 1632 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id229;           // Offset:    0 Size:    16
//   float InputValue_id237;            // Offset:   16 Size:     4
//   float InputValue_id246;            // Offset:   20 Size:     4
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
//   float3 AmbientLight_id216;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id221[9];   // Offset: 1424 Size:   140
//   float MipCount_id222;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id224;          // Offset: 1568 Size:    64
//   float Intensity_id225;             // Offset: 1632 Size:     4
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
// ShadowMapTexture_id201            texture  float4          2d             t1      1 
// EnvironmentLightingDFG_LUT_id258    texture  float4          2d             t2      1 
// ShadowMapTexture_id91             texture  float4          2d             t3      1 
// LightClusters_id177               texture   uint2          3d             t4      1 
// LightIndices_id178                texture    uint         buf             t5      1 
// PointLights_id182                 texture  float4         buf             t6      1 
// SpotLights_id183                  texture  float4         buf             t7      1 
// CubeMap_id223                     texture  float4        cube             t8      1 
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
dcl_constantbuffer CB0[103], dynamicIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture3d (uint,uint,uint,uint) t4
dcl_resource_buffer (uint,uint,uint,uint) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_resource_texturecube (float,float,float,float) t8
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
dcl_temps 28
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
#line 1903 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_8fbf2f4f9ed9289668d05e048d3f55b1.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id169.x; r0.y <- streams.ScreenPosition_id169.y

#line 1870
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1871
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1842
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id70.x; r2.y <- streams.viewWS_id70.y; r2.z <- streams.viewWS_id70.z

#line 1741
add r0.z, -cb1[1].x, l(1.000000)  // r0.z <- glossiness

#line 1733
add r3.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb1[1].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id57.x; r3.y <- streams.matSpecular_id57.y; r3.z <- streams.matSpecular_id57.z

#line 1734
mad r4.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r4.x <- streams.matDiffuse_id55.x; r4.y <- streams.matDiffuse_id55.y; r4.z <- streams.matDiffuse_id55.z

#line 1550
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z

#line 1507
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id74

#line 1508
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 1509
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id72

#line 1028
dp2 r0.w, cb2[82].xxxx, cb2[28].zzzz

#line 1020
mov r6.w, l(1.000000)

#line 1568
mov r1.w, r5.y  // r1.w <- streams.NdotV_id74
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id21.x; r7.y <- streams.normalWS_id21.y; r7.z <- streams.normalWS_id21.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id24.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id24.y; r8.y <- streams.PositionWS_id24.z
mov r8.zw, r2.xxxy  // r8.z <- streams.viewWS_id70.x; r8.w <- streams.viewWS_id70.y
mov r9.z, r2.z  // r9.z <- streams.viewWS_id70.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id72
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, v2.x  // r2.w <- streams.DepthVS_id25
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.z, r4.w, l(1)
  breakc_nz r5.z

#line 1570
  ige r5.z, r4.w, cb2[25].x
  if_nz r5.z

#line 1572
    break 

#line 1573
  endif 

#line 1477
  dp3 r5.z, r7.xyzx, -cb2[26].xyzx
  max r5.z, r5.z, l(0.000100)  // r5.z <- streams.NdotL_id51

#line 1259
  ishl r5.w, r4.w, l(2)  // r5.w <- cascadeIndexBase

#line 1266
  lt r9.w, cb2[r5.w + 83].x, r2.w

#line 1269
  and r9.w, r9.w, l(1)  // r9.w <- cascadeIndex

#line 1266
  bfi r13.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r4.wwww, l(1, 2, 0, 0)
  lt r10.w, cb2[r13.x + 83].x, r2.w

#line 1269
  movc r9.w, r10.w, l(2), r9.w

#line 1266
  lt r10.w, cb2[r13.y + 83].x, r2.w

#line 1269
  movc r9.w, r10.w, l(3), r9.w

#line 1027
  add r12.w, -r5.z, l(1.000000)
  max r12.w, r12.w, l(0.000000)  // r12.w <- normalOffsetScale

#line 1028
  mul r12.w, r0.w, r12.w

#line 1274
  mov r13.x, r7.w
  mov r13.yz, r8.xxyx
  mad r6.xyz, r12.wwww, r7.xyzx, r13.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 1020
  bfi r12.w, l(30), l(2), r4.w, r9.w
  ishl r13.x, r9.w, l(2)
  bfi r13.x, l(30), l(4), r4.w, r13.x
  dp4 r14.x, r6.xyzw, cb2[r13.x + 29].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r6.xyzw, cb2[r13.x + 30].xyzw  // r14.y <- shadowPosition.y
  dp4 r13.y, r6.xyzw, cb2[r13.x + 31].xyzw  // r13.y <- shadowPosition.z
  dp4 r13.x, r6.xyzw, cb2[r13.x + 32].xyzw  // r13.x <- shadowPosition.w

#line 1021
  add r14.z, r13.y, -cb2[81].x  // r14.z <- shadowPosition.z

#line 1022
  div r13.xyz, r14.xyzx, r13.xxxx  // r13.x <- shadowPosition.x; r13.y <- shadowPosition.y; r13.z <- shadowPosition.z

#line 733
  mad r13.xy, r13.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 734
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- st.x; r13.y <- st.y

#line 735
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 736
  mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 493
  mad r15.xyzw, r13.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r15.x <- uvW1.x; r15.y <- uvW1.y

#line 494
  mad r16.xyzw, r13.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r16.x <- uvW0.y; r16.y <- uvW0.x

#line 496
  mad r17.xyzw, r13.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 495
  div r14.zw, r17.xxxy, r16.yyyx
  add r18.xw, r14.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 496
  div r14.zw, r17.zzzw, r15.xxxy
  add r18.yz, r14.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 497
  mad r14.zw, r13.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
  div r14.zw, r14.zzzw, r15.wwwz
  add r17.xw, r14.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r17.x <- uv2.y; r17.w <- uv2.x

#line 498
  div r13.xy, r13.xyxx, r16.zwzz
  add r19.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r19.x <- uv3.x; r19.y <- uv3.y

#line 500
  mad r20.xyzw, r18.xwzw, cb2[28].zwzw, r14.xyxy

#line 505
  mov r17.yz, r18.wwyw

#line 506
  mov r19.zw, r17.yyyz

#line 504
  mad r21.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy

#line 505
  mad r22.xyzw, r17.wywz, cb2[28].zwzw, r14.xyxy

#line 506
  mad r23.xyzw, r19.xzxw, cb2[28].zwzw, r14.xyxy

#line 507
  mov r18.y, r17.x
  mul r13.xy, -r15.wzww, r16.xyxx

#line 508
  mad r24.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy
  mul r14.zw, r15.yyyx, -r15.wwwz

#line 509
  mad r19.zw, r17.wwwx, cb2[28].zzzw, r14.xxxy
  mul r25.xy, r15.yzyy, r15.xwxx

#line 510
  mov r18.w, r19.x
  mad r18.yw, r18.wwwy, cb2[28].zzzw, r14.xxxy

#line 512
  mov r17.xz, r18.xxzx

#line 511
  mov r17.y, r19.y
  mul r18.xz, r16.xxyx, -r16.zzwz

#line 512
  mad r26.xyzw, r17.xyzy, cb2[28].zwzw, r14.xyxy
  mul r17.xz, r15.yyxy, -r16.zzwz

#line 513
  mad r17.yw, r17.wwwy, cb2[28].zzzw, r14.xxxy
  mul r15.xyzw, r15.xyzw, r16.xyzw

#line 514
  mad r14.xy, r19.xyxx, cb2[28].zwzz, r14.xyxx
  mul r16.xy, r16.xwxx, r16.yzyy

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r20.xyxx, t3.xxxx, s1, r13.z  // r13.w <- <SampleTextureAndCompare_id79 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r16.z, r20.zwzz, t3.xxxx, s1, r13.z  // r16.z <- <SampleTextureAndCompare_id79 return value>

#line 875
  mul r15.x, r15.x, r16.z
  mad r13.w, r16.x, r13.w, r15.x  // r13.w <- shadow

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.x, r22.xyxx, t3.xxxx, s1, r13.z  // r15.x <- <SampleTextureAndCompare_id79 return value>

#line 875
  mad r13.x, r13.x, r15.x, r13.w  // r13.x <- shadow

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r23.xyxx, t3.xxxx, s1, r13.z  // r13.w <- <SampleTextureAndCompare_id79 return value>

#line 875
  mad r13.x, r18.x, r13.w, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r21.xyxx, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r15.y, r13.w, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r21.zwzz, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r25.x, r13.w, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r22.zwzz, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r14.z, r13.w, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r23.zwzz, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r17.x, r13.w, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r24.xyxx, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r13.y, r13.w, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r24.zwzz, t3.xxxx, s1, r13.z  // r13.y <- <SampleTextureAndCompare_id79 return value>

#line 875
  mad r13.x, r14.w, r13.y, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r19.zwzz, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r25.y, r13.y, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r18.ywyy, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r15.z, r13.y, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r26.xyxx, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r18.z, r13.y, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r26.zwzz, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r17.z, r13.y, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r17.ywyy, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r15.w, r13.y, r13.x

#line 728
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r14.xyxx, t3.xxxx, s1, r13.z

#line 875
  mad r13.x, r16.y, r13.y, r13.x

#line 877
  mul r13.yzw, r13.xxxx, l(0.000000, 0.000370, 0.000370, 0.000370)  // r13.w <- shadow

#line 1280
  ilt r14.x, l(0), r9.w
  if_nz r14.x

#line 1282
    iadd r14.x, r12.w, l(-1)
    add r14.x, -cb2[r14.x + 83].x, cb2[r12.w + 83].x  // r14.x <- splitSize

#line 1283
  else 
    mov r14.x, cb2[r12.w + 83].x  // r14.x <- splitSize
  endif 

#line 1284
  add r12.w, -r2.w, cb2[r12.w + 83].x
  div r12.w, r12.w, r14.x  // r12.w <- splitDist

#line 1285
  lt r14.x, r12.w, l(0.200000)
  if_nz r14.x

#line 1288
    if_nz r10.w

#line 1290
      mov r13.yzw, r13.wwww  // r13.y <- shadow.x; r13.z <- shadow.y; r13.w <- shadow.z
    else 

#line 1287
      mul_sat r10.w, r12.w, l(5.000000)
      mad r12.w, r10.w, l(-2.000000), l(3.000000)
      mul r10.w, r10.w, r10.w
      mul r10.w, r10.w, r12.w  // r10.w <- lerpAmt

#line 1020
      ishl r5.w, r5.w, l(2)
      imad r5.w, r9.w, l(4), r5.w
      iadd r5.w, r5.w, l(4)
      dp4 r14.x, r6.xyzw, cb2[r5.w + 29].xyzw  // r14.x <- shadowPosition.x
      dp4 r14.y, r6.xyzw, cb2[r5.w + 30].xyzw  // r14.y <- shadowPosition.y
      dp4 r9.w, r6.xyzw, cb2[r5.w + 31].xyzw  // r9.w <- shadowPosition.z
      dp4 r5.w, r6.xyzw, cb2[r5.w + 32].xyzw  // r5.w <- shadowPosition.w

#line 1021
      add r14.z, r9.w, -cb2[81].x  // r14.z <- shadowPosition.z

#line 1022
      div r6.xyz, r14.xyzx, r5.wwww  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 733
      mad r6.xy, r6.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r14.xy, r6.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 734
      add r6.xy, r6.xyxx, -r14.xyxx  // r6.x <- st.x; r6.y <- st.y

#line 735
      add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 736
      mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 493
      mad r15.xyzw, r6.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r15.x <- uvW1.x; r15.y <- uvW1.y

#line 494
      mad r16.xyzw, r6.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r16.x <- uvW0.y; r16.y <- uvW0.x

#line 496
      mad r17.xyzw, r6.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 495
      div r14.zw, r17.xxxy, r16.yyyx
      add r18.xw, r14.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 496
      div r14.zw, r17.zzzw, r15.xxxy
      add r18.yz, r14.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 497
      mad r14.zw, r6.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r14.zw, r14.zzzw, r15.wwwz
      add r17.xw, r14.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r17.x <- uv2.y; r17.w <- uv2.x

#line 498
      div r6.xy, r6.xyxx, r16.zwzz
      add r19.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r19.x <- uv3.x; r19.y <- uv3.y

#line 500
      mad r20.xyzw, r18.xwzw, cb2[28].zwzw, r14.xyxy

#line 505
      mov r17.yz, r18.wwyw

#line 506
      mov r19.zw, r17.yyyz

#line 504
      mad r21.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy

#line 505
      mad r22.xyzw, r17.wywz, cb2[28].zwzw, r14.xyxy

#line 506
      mad r23.xyzw, r19.xzxw, cb2[28].zwzw, r14.xyxy

#line 507
      mov r18.y, r17.x
      mul r6.xy, -r15.wzww, r16.xyxx

#line 508
      mad r24.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy
      mul r14.zw, r15.yyyx, -r15.wwwz

#line 509
      mad r19.zw, r17.wwwx, cb2[28].zzzw, r14.xxxy
      mul r25.xy, r15.yzyy, r15.xwxx

#line 510
      mov r18.w, r19.x
      mad r18.yw, r18.wwwy, cb2[28].zzzw, r14.xxxy

#line 512
      mov r17.xz, r18.xxzx

#line 511
      mov r17.y, r19.y
      mul r18.xz, r16.xxyx, -r16.zzwz

#line 512
      mad r26.xyzw, r17.xyzy, cb2[28].zwzw, r14.xyxy
      mul r17.xz, r15.yyxy, -r16.zzwz

#line 513
      mad r17.yw, r17.wwwy, cb2[28].zzzw, r14.xxxy
      mul r15.xyzw, r15.xyzw, r16.xyzw

#line 514
      mad r14.xy, r19.xyxx, cb2[28].zwzz, r14.xyxx
      mul r16.xy, r16.xwxx, r16.yzyy

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.xyxx, t3.xxxx, s1, r6.z  // r5.w <- <SampleTextureAndCompare_id79 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r20.zwzz, t3.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id79 return value>

#line 875
      mul r9.w, r9.w, r15.x
      mad r5.w, r16.x, r5.w, r9.w  // r5.w <- shadow

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r22.xyxx, t3.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id79 return value>

#line 875
      mad r5.w, r6.x, r9.w, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r23.xyxx, t3.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id79 return value>

#line 875
      mad r5.w, r18.x, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r21.xyxx, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r15.y, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r21.zwzz, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r25.x, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r22.zwzz, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r14.z, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r23.zwzz, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r17.x, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r24.xyxx, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r6.y, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r24.zwzz, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r14.w, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r19.zwzz, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r25.y, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r18.ywyy, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r15.z, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r26.xyxx, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r18.z, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r26.zwzz, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r17.z, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r17.ywyy, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r15.w, r6.x, r5.w

#line 728
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r14.xyxx, t3.xxxx, s1, r6.z

#line 875
      mad r5.w, r16.y, r6.x, r5.w

#line 877
      mul r5.w, r5.w, l(0.000370)

#line 1294
      mad r6.x, r13.x, l(0.000370), -r5.w
      mad r13.yzw, r10.wwww, r6.xxxx, r5.wwww  // r13.y <- shadow.x; r13.z <- shadow.y; r13.w <- shadow.z

#line 1295
    endif 

#line 1296
  endif 

#line 1479
  mul r6.xyz, r13.yzwy, cb2[27].xyzx
  mul r6.xyz, r5.zzzz, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1469
  mov r9.xy, r8.zwzz
  add r9.xyw, r9.xyxz, -cb2[26].xyxz
  dp3 r5.w, r9.xywx, r9.xywx
  rsq r5.w, r5.w
  mul r9.xyw, r5.wwww, r9.xyxw  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.w <- streams.H_id77.z

#line 1470
  dp3_sat r5.w, r7.xyzx, r9.xywx  // r5.w <- streams.NdotH_id78

#line 1471
  dp3_sat r9.x, -cb2[26].xyzx, r9.xywx  // r9.x <- streams.LdotH_id79

#line 1465
  mul r13.xyz, r6.xyzx, r10.xyzx

#line 1578
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 845
  add r14.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.x, -r9.x, l(1.000000)
  mul r9.y, r9.x, r9.x
  mul r9.y, r9.y, r9.y
  mul r9.x, r9.y, r9.x
  mad r9.xyw, r14.xyxz, r9.xxxx, r11.xyxz  // r9.x <- <FresnelSchlick_id217 return value>.x; r9.y <- <FresnelSchlick_id217 return value>.y; r9.w <- <FresnelSchlick_id217 return value>.z

#line 840
  mul r10.w, r11.w, l(0.500000)  // r10.w <- k

#line 841
  mad r12.w, -r11.w, l(0.500000), l(1.000000)
  mad r13.w, r5.z, r12.w, r10.w
  div r13.w, r5.z, r13.w  // r13.w <- <VisibilityhSchlickGGX_id233 return value>
  mad r10.w, r1.w, r12.w, r10.w
  div r10.w, r1.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id233 return value>

#line 1007
  mul r10.w, r10.w, r13.w
  mul r5.z, r1.w, r5.z
  div r5.z, r10.w, r5.z  // r5.z <- <VisibilitySmithSchlickGGX_id235 return value>

#line 1001
  mul r10.w, r11.w, r11.w  // r10.w <- alphaR2

#line 1002
  mul r5.w, r5.w, r5.w
  mad r12.w, r11.w, r11.w, l(-1.000000)
  mad r5.w, r5.w, r12.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 1003
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r10.w, r5.w  // r5.w <- <NormalDistributionGGX_id247 return value>

#line 1459
  mul r9.xyw, r5.zzzz, r9.xyxw
  mul r9.xyw, r5.wwww, r9.xyxw
  mul r6.xyz, r6.xyzx, r9.xywx

#line 1582
  mad r12.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1568
  iadd r4.w, r4.w, l(1)

#line 1584
endloop 

#line 1231
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 1232
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1233
mad r0.w, r0.w, cb2[86].y, cb2[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 1234
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 1233
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 1234
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t4.xyzw  // r0.x <- streams.lightData_id175.x; r0.y <- streams.lightData_id175.y

#line 1447
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id288 return value>

#line 1592
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id24.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id24.y; r7.y <- streams.PositionWS_id24.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id70.x; r7.w <- streams.viewWS_id70.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id70.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r10.w, r0.z  // r10.w <- streams.alphaRoughness_id72
mov r5.w, r5.y  // r5.w <- streams.NdotV_id74
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id176
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1594
  if_nz r2.w

#line 1596
    break 

#line 1597
  endif 

#line 1218
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t5.yzwx  // r2.w <- realLightIndex

#line 1219
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id176

#line 1221
  ishl r4.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r4.wwww, t6.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 1222
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t6.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 832
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 833
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r4.w, r2.w  // r4.w <- lightVectorLength

#line 834
  div r13.xyz, r13.xyzx, r4.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 674
  max r4.w, r2.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 439
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 440
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 441
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id93 return value>

#line 675
  mul r2.w, r2.w, r4.w  // r2.w <- attenuation

#line 1433
  dp3 r4.w, r6.xyzx, r13.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 1435
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1469
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.w <- streams.H_id77.z

#line 1470
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id78

#line 1471
  dp3_sat r8.x, r13.xyzx, r8.xywx  // r8.x <- streams.LdotH_id79

#line 1465
  mul r13.xyz, r9.xyzx, r14.xyzx

#line 1602
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 845
  add r15.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.x, -r8.x, l(1.000000)
  mul r8.y, r8.x, r8.x
  mul r8.y, r8.y, r8.y
  mul r8.x, r8.y, r8.x
  mad r8.xyw, r15.xyxz, r8.xxxx, r10.xyxz  // r8.x <- <FresnelSchlick_id217 return value>.x; r8.y <- <FresnelSchlick_id217 return value>.y; r8.w <- <FresnelSchlick_id217 return value>.z

#line 840
  mul r9.w, r10.w, l(0.500000)  // r9.w <- k

#line 841
  mad r11.w, -r10.w, l(0.500000), l(1.000000)
  mad r12.w, r4.w, r11.w, r9.w
  div r12.w, r4.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id233 return value>
  mad r9.w, r5.w, r11.w, r9.w
  div r9.w, r5.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id233 return value>

#line 1007
  mul r9.w, r9.w, r12.w
  mul r4.w, r5.w, r4.w
  div r4.w, r9.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id235 return value>

#line 1001
  mul r9.w, r10.w, r10.w  // r9.w <- alphaR2

#line 1002
  mul r2.w, r2.w, r2.w
  mad r11.w, r10.w, r10.w, l(-1.000000)
  mad r2.w, r2.w, r11.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 1003
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r9.w, r2.w  // r2.w <- <NormalDistributionGGX_id247 return value>

#line 1459
  mul r8.xyw, r4.wwww, r8.xyxw
  mul r8.xyw, r2.wwww, r8.xyxw
  mul r8.xyw, r14.xyxz, r8.xyxw

#line 1606
  mad r11.xyz, r8.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1592
  iadd r1.w, r1.w, l(1)

#line 1608
endloop   // r5.z <- streams.lightIndex_id176

#line 1425
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id300 return value>

#line 1616
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id24.x; r6.y <- streams.PositionWS_id24.y; r6.z <- streams.PositionWS_id24.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.matSpecularVisible_id73.x; r7.y <- streams.matSpecularVisible_id73.y; r7.z <- streams.matSpecularVisible_id73.z
mov r7.w, r0.z  // r7.w <- streams.alphaRoughness_id72
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id21.x; r8.y <- streams.normalWS_id21.y; r8.z <- streams.normalWS_id21.z
mov r9.xyz, r2.xyzx  // r9.z <- streams.viewWS_id70.z; r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r12.xyz, r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r0.yw, r5.yyyz  // r0.y <- streams.NdotV_id74; r0.w <- streams.lightIndex_id176
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 1618
  if_nz r2.w

#line 1620
    break 

#line 1621
  endif 

#line 1190
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.wwww, t5.yzwx  // r2.w <- realLightIndex

#line 1191
  iadd r0.w, r0.w, l(1)  // r0.w <- streams.lightIndex_id176

#line 1193
  ishl r4.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r4.wwww, t7.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 1196
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 1194
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t7.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z

#line 1195
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t7.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z

#line 1196
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t7.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 819
  add r13.xyz, -r6.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 820
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r4.w, r2.w  // r4.w <- lightVectorLength

#line 821
  div r13.xyz, r13.xyzx, r4.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 667
  max r4.w, r2.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 433
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 434
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 435
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id104 return value>

#line 668
  mul r2.w, r2.w, r4.w  // r2.w <- attenuation

#line 659
  dp3 r4.w, -r15.xyzx, r13.xyzx  // r4.w <- cd

#line 660
  mad_sat r4.w, r4.w, r14.x, r14.y  // r4.w <- attenuation

#line 661
  mul r4.w, r4.w, r4.w

#line 827
  mul r2.w, r2.w, r4.w  // r2.w <- attenuation

#line 1411
  dp3 r4.w, r8.xyzx, r13.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 1413
  mul r14.xyz, r2.wwww, r16.xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1469
  add r15.xyz, r9.xyzx, r13.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1470
  dp3_sat r2.w, r8.xyzx, r15.xyzx  // r2.w <- streams.NdotH_id78

#line 1471
  dp3_sat r5.w, r13.xyzx, r15.xyzx  // r5.w <- streams.LdotH_id79

#line 1465
  mul r13.xyz, r10.xyzx, r14.xyzx

#line 1626
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 845
  add r15.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r15.xyz, r15.xyzx, r5.wwww, r7.xyzx  // r15.x <- <FresnelSchlick_id217 return value>.x; r15.y <- <FresnelSchlick_id217 return value>.y; r15.z <- <FresnelSchlick_id217 return value>.z

#line 840
  mul r5.w, r7.w, l(0.500000)  // r5.w <- k

#line 841
  mad r6.w, -r7.w, l(0.500000), l(1.000000)
  mad r8.w, r4.w, r6.w, r5.w
  div r8.w, r4.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id233 return value>
  mad r5.w, r0.y, r6.w, r5.w
  div r5.w, r0.y, r5.w  // r5.w <- <VisibilityhSchlickGGX_id233 return value>

#line 1007
  mul r5.w, r5.w, r8.w
  mul r4.w, r0.y, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id235 return value>

#line 1001
  mul r5.w, r7.w, r7.w  // r5.w <- alphaR2

#line 1002
  mul r2.w, r2.w, r2.w
  mad r6.w, r7.w, r7.w, l(-1.000000)
  mad r2.w, r2.w, r6.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 1003
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r5.w, r2.w  // r2.w <- <NormalDistributionGGX_id247 return value>

#line 1459
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1630
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1616
  iadd r1.w, r1.w, l(1)

#line 1632
endloop   // r0.w <- streams.lightIndex_id176

#line 961
dp2 r0.x, cb0[81].xxxx, cb0[31].zzzz

#line 1151
mov r6.w, l(4)
mov r7.xz, l(0,0,2,0)

#line 1157
mov r8.w, l(1.000000)

#line 1640
mov r9.xyz, v0.xyzx  // r9.x <- streams.PositionWS_id24.x; r9.y <- streams.PositionWS_id24.y; r9.z <- streams.PositionWS_id24.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r10.w, r0.z  // r10.w <- streams.alphaRoughness_id72
mov r11.xyz, r1.xyzx  // r11.x <- streams.normalWS_id21.x; r11.y <- streams.normalWS_id21.y; r11.z <- streams.normalWS_id21.z
mov r13.xyz, r2.xyzx  // r13.x <- streams.viewWS_id70.x; r13.y <- streams.viewWS_id70.y; r13.z <- streams.viewWS_id70.z
mov r14.xyz, r4.xyzx  // r14.x <- streams.matDiffuseVisible_id71.x; r14.y <- streams.matDiffuseVisible_id71.y; r14.z <- streams.matDiffuseVisible_id71.z
mov r15.xyz, r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z
mov r0.y, r5.y
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(1)
  breakc_nz r1.w

#line 1642
  ige r1.w, r0.w, cb0[28].x
  if_nz r1.w

#line 1644
    break 

#line 1645
  endif 

#line 811
  add r16.xyz, -r9.xyzx, cb0[29].xyzx  // r16.x <- lightVector.x; r16.y <- lightVector.y; r16.z <- lightVector.z

#line 812
  dp3 r1.w, r16.xyzx, r16.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 813
  div r16.xyz, r16.xyzx, r2.wwww  // r16.x <- lightVectorNorm.x; r16.y <- lightVectorNorm.y; r16.z <- lightVectorNorm.z

#line 653
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 427
  mul r1.w, r1.w, cb0[29].w  // r1.w <- factor

#line 428
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 429
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id115 return value>

#line 654
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1389
  dp3 r2.w, r11.xyzx, r16.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 1129
  add r6.xyz, r9.xyzx, -cb0[29].xyzx  // r6.x <- lightDelta.x; r6.y <- lightDelta.y; r6.z <- lightDelta.z

#line 1130
  dp3 r4.w, r6.xyzx, r6.xyzx
  sqrt r4.w, r4.w  // r4.w <- distanceToLight

#line 1131
  div r17.xyz, r6.xyzx, r4.wwww  // r17.x <- direction.x; r17.y <- direction.y; r17.z <- direction.z

#line 1133
  max r4.w, |r17.z|, |r17.y|
  max r4.w, r4.w, |r17.x|  // r4.w <- longestAxis

#line 1142
  eq r5.zw, r4.wwww, |r17.xxxy|

#line 1151
  mov r7.yw, r6.zzzx
  movc r6.xy, r5.wwww, r6.wyww, r7.xyxx  // r6.x <- faceIndex; r6.y <- lightSpaceZ
  movc r5.zw, r5.zzzz, r7.zzzw, r6.xxxy  // r5.z <- faceIndex; r5.w <- lightSpaceZ

#line 1160
  add r4.w, |r5.w|, -cb0[80].x  // r4.w <- lightSpaceZ

#line 1161
  div r4.w, cb0[82].y, r4.w
  add r4.w, r4.w, cb0[82].x  // r4.w <- depth

#line 1162
  lt r6.x, r4.w, l(0.000000)
  lt r6.y, l(1.000000), r4.w
  or r6.x, r6.y, r6.x

#line 1164
  if_z r6.x

#line 1152
    lt r6.x, l(0.000000), r5.w
    lt r5.w, r5.w, l(0.000000)
    iadd r5.w, -r6.x, r5.w
    itof r5.w, r5.w  // r5.w <- lightSpaceZDirection

#line 1153
    min r5.w, r5.w, l(0.000000)
    ftoi r5.w, -r5.w
    iadd r5.z, r5.w, r5.z

#line 1154
    imad r5.z, r0.w, l(6), r5.z

#line 960
    add r5.w, -r2.w, l(1.000000)
    max r5.w, r5.w, l(0.000000)  // r5.w <- normalOffsetScale

#line 961
    mul r5.w, r0.x, r5.w

#line 1156
    mad r8.xyz, r5.wwww, r11.xyzx, r9.xyzx  // r8.x <- positionWS.x; r8.y <- positionWS.y; r8.z <- positionWS.z

#line 1157
    ishl r5.z, r5.z, l(2)
    dp4 r6.x, r8.xyzw, cb0[r5.z + 32].xyzw  // r6.x <- projectedPosition.x
    dp4 r6.y, r8.xyzw, cb0[r5.z + 33].xyzw  // r6.y <- projectedPosition.y
    dp4 r5.z, r8.xyzw, cb0[r5.z + 35].xyzw  // r5.z <- projectedPosition.w

#line 1158
    div r5.zw, r6.xxxy, r5.zzzz  // r5.z <- projectedPosition.x; r5.w <- projectedPosition.y

#line 790
    mad r5.zw, r5.zzzw, cb0[31].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
    round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 791
    add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 792
    add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 793
    mul r6.xy, r6.xyxx, cb0[31].zwzz

#line 401
    mad r17.xyzw, r5.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r17.x <- uvW1.x; r17.y <- uvW1.y

#line 402
    mad r18.xyzw, r5.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r18.x <- uvW0.y; r18.y <- uvW0.x

#line 404
    mad r19.xyzw, r5.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 403
    div r7.yw, r19.xxxy, r18.yyyx
    add r20.xw, r7.yyyw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r20.x <- uv0.x; r20.w <- uv0.y

#line 404
    div r7.yw, r19.zzzw, r17.xxxy
    add r20.yz, r7.wwyw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r20.y <- uv1.y; r20.z <- uv1.x

#line 405
    mad r7.yw, r5.zzzw, l(0.000000, 7.000000, 0.000000, 7.000000), l(0.000000, 5.000000, 0.000000, 5.000000)
    div r7.yw, r7.yyyw, r17.wwwz
    add r19.xw, r7.wwwy, l(1.000000, 0.000000, 0.000000, 1.000000)  // r19.x <- uv2.y; r19.w <- uv2.x

#line 406
    div r5.zw, r5.zzzw, r18.zzzw
    add r21.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r21.x <- uv3.x; r21.y <- uv3.y

#line 408
    mad r22.xyzw, r20.xwzw, cb0[31].zwzw, r6.xyxy

#line 413
    mov r19.yz, r20.wwyw

#line 414
    mov r21.zw, r19.yyyz

#line 412
    mad r23.xyzw, r20.xyzy, cb0[31].zwzw, r6.xyxy

#line 413
    mad r24.xyzw, r19.wywz, cb0[31].zwzw, r6.xyxy

#line 414
    mad r25.xyzw, r21.xzxw, cb0[31].zwzw, r6.xyxy

#line 415
    mov r20.y, r19.x
    mul r5.zw, -r17.wwwz, r18.xxxy

#line 416
    mad r26.xyzw, r20.xyzy, cb0[31].zwzw, r6.xyxy
    mul r7.yw, r17.yyyx, -r17.wwwz

#line 417
    mad r8.xy, r19.wxww, cb0[31].zwzz, r6.xyxx
    mul r21.zw, r17.yyyz, r17.xxxw

#line 418
    mov r20.w, r21.x
    mad r20.yw, r20.wwwy, cb0[31].zzzw, r6.xxxy

#line 420
    mov r19.xz, r20.xxzx

#line 419
    mov r19.y, r21.y
    mul r20.xz, r18.xxyx, -r18.zzwz

#line 420
    mad r27.xyzw, r19.xyzy, cb0[31].zwzw, r6.xyxy
    mul r19.xz, r17.yyxy, -r18.zzwz

#line 421
    mad r19.yw, r19.wwwy, cb0[31].zzzw, r6.xxxy
    mul r17.xyzw, r17.xyzw, r18.xyzw

#line 422
    mad r6.xy, r21.xyxx, cb0[31].zwzz, r6.xyxx
    mul r18.xy, r18.xwxx, r18.yzyy

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r22.xyxx, t0.xxxx, s1, r4.w  // r6.z <- <SampleTextureAndCompare_id127 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r22.zwzz, t0.xxxx, s1, r4.w  // r8.z <- <SampleTextureAndCompare_id127 return value>

#line 952
    mul r8.z, r8.z, r17.x
    mad r6.z, r18.x, r6.z, r8.z  // r6.z <- shadow

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r24.xyxx, t0.xxxx, s1, r4.w  // r8.z <- <SampleTextureAndCompare_id127 return value>

#line 952
    mad r5.z, r5.z, r8.z, r6.z  // r5.z <- shadow

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r25.xyxx, t0.xxxx, s1, r4.w  // r6.z <- <SampleTextureAndCompare_id127 return value>

#line 952
    mad r5.z, r20.x, r6.z, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r23.xyxx, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r17.y, r6.z, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r23.zwzz, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r21.z, r6.z, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r24.zwzz, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r7.y, r6.z, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r25.zwzz, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r19.x, r6.z, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r26.xyxx, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r5.w, r6.z, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r26.zwzz, t0.xxxx, s1, r4.w  // r5.w <- <SampleTextureAndCompare_id127 return value>

#line 952
    mad r5.z, r7.w, r5.w, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r8.xyxx, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r21.w, r5.w, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.ywyy, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r17.z, r5.w, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r27.xyxx, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r20.z, r5.w, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r27.zwzz, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r19.z, r5.w, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r19.ywyy, t0.xxxx, s1, r4.w

#line 952
    mad r5.z, r17.w, r5.w, r5.z

#line 785
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r6.xyxx, t0.xxxx, s1, r4.w  // r4.w <- <SampleTextureAndCompare_id127 return value>

#line 952
    mad r4.w, r18.y, r4.w, r5.z  // r4.w <- shadow

#line 954
    mul r6.xyz, r4.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r6.z <- shadow

#line 1165
  else   // Prior locations: r6.z <- lightDelta.z; r17.x <- direction.x; r17.y <- direction.y; r17.z <- direction.z; r5.z <- faceIndex; r4.w <- depth
    mov r6.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1391
  mul r8.xyz, r1.wwww, cb0[30].xyzx
  mul r6.xyz, r6.xyzx, r8.xyzx
  mul r6.xyz, r2.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1469
  add r8.xyz, r13.xyzx, r16.xyzx
  dp3 r1.w, r8.xyzx, r8.xyzx
  rsq r1.w, r1.w
  mul r8.xyz, r1.wwww, r8.xyzx  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.z <- streams.H_id77.z

#line 1470
  dp3_sat r1.w, r11.xyzx, r8.xyzx  // r1.w <- streams.NdotH_id78

#line 1471
  dp3_sat r4.w, r16.xyzx, r8.xyzx  // r4.w <- streams.LdotH_id79

#line 1465
  mul r8.xyz, r6.xyzx, r14.xyzx

#line 1650
  mad r8.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r15.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 845
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.z, r4.w, r4.w
  mul r5.z, r5.z, r5.z
  mul r4.w, r4.w, r5.z
  mad r16.xyz, r16.xyzx, r4.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id217 return value>.x; r16.y <- <FresnelSchlick_id217 return value>.y; r16.z <- <FresnelSchlick_id217 return value>.z

#line 840
  mul r4.w, r10.w, l(0.500000)  // r4.w <- k

#line 841
  mad r5.z, -r10.w, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r5.z, r4.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id233 return value>
  mad r4.w, r0.y, r5.z, r4.w
  div r4.w, r0.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id233 return value>

#line 1007
  mul r4.w, r4.w, r5.w
  mul r2.w, r0.y, r2.w
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id235 return value>

#line 1001
  mul r4.w, r10.w, r10.w  // r4.w <- alphaR2

#line 1002
  mul r1.w, r1.w, r1.w
  mad r5.z, r10.w, r10.w, l(-1.000000)
  mad r1.w, r1.w, r5.z, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 1003
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r4.w, r1.w  // r1.w <- <NormalDistributionGGX_id247 return value>

#line 1459
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r6.xyz, r6.xyzx, r16.xyzx

#line 1654
  mad r15.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 1640
  iadd r0.w, r0.w, l(1)

#line 1656
endloop 

#line 928
dp2 r0.x, cb0[102].xxxx, cb0[87].zzzz

#line 920
mov r6.w, l(1.000000)

#line 1664
mov r7.xyz, v0.xyzx  // r7.x <- streams.PositionWS_id24.x; r7.y <- streams.PositionWS_id24.y; r7.z <- streams.PositionWS_id24.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matSpecularVisible_id73.x; r8.y <- streams.matSpecularVisible_id73.y; r8.z <- streams.matSpecularVisible_id73.z
mov r8.w, r0.z  // r8.w <- streams.alphaRoughness_id72
mov r9.xyz, r1.xyzx  // r9.x <- streams.normalWS_id21.x; r9.y <- streams.normalWS_id21.y; r9.z <- streams.normalWS_id21.z
mov r10.xyz, r2.xyzx  // r10.x <- streams.viewWS_id70.x; r10.y <- streams.viewWS_id70.y; r10.z <- streams.viewWS_id70.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matDiffuseVisible_id71.x; r11.y <- streams.matDiffuseVisible_id71.y; r11.z <- streams.matDiffuseVisible_id71.z
mov r12.xyz, r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r0.y, r5.y
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(1)
  breakc_nz r1.w

#line 1666
  ige r1.w, r0.w, cb0[82].z
  if_nz r1.w

#line 1668
    break 

#line 1669
  endif 

#line 772
  add r13.xyz, -r7.xyzx, cb0[83].xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 773
  dp3 r1.w, r13.xyzx, r13.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 774
  div r13.xyz, r13.xyzx, r2.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 598
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 347
  mul r1.w, r1.w, cb0[85].z  // r1.w <- factor

#line 348
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 349
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id141 return value>

#line 599
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 590
  dp3 r2.w, -cb0[84].xyzx, r13.xyzx  // r2.w <- cd

#line 591
  mad_sat r2.w, r2.w, cb0[85].x, cb0[85].y  // r2.w <- attenuation

#line 592
  mul r2.w, r2.w, r2.w

#line 780
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1367
  dp3 r2.w, r9.xyzx, r13.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 927
  add r4.w, -r2.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 928
  mul r4.w, r0.x, r4.w

#line 1100
  mad r6.xyz, r4.wwww, r9.xyzx, r7.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 920
  dp4 r14.x, r6.xyzw, cb0[88].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r6.xyzw, cb0[89].xyzw  // r14.y <- shadowPosition.y
  dp4 r4.w, r6.xyzw, cb0[90].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.z, r6.xyzw, cb0[91].xyzw  // r5.z <- shadowPosition.w

#line 921
  add r14.z, r4.w, -cb0[101].x  // r14.z <- shadowPosition.z

#line 922
  div r6.xyz, r14.xyzx, r5.zzzz  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 583
  mad r5.zw, r6.xxxy, cb0[87].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 584
  add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 585
  add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 586
  mul r6.xy, r6.xyxx, cb0[87].zwzz

#line 531
  mad r14.xy, -r5.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r14.x <- uvW0.y; r14.y <- uvW0.x

#line 533
  mad r14.zw, r5.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r14.z <- uvW2.x; r14.w <- uvW2.y

#line 534
  mad r16.xy, -r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r16.xy, r16.xyxx, r14.yxyy
  add r16.xw, r16.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- uv0.x; r16.w <- uv0.y

#line 535
  add r17.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r16.yz, r17.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.y <- uv1.y; r16.z <- uv1.x

#line 536
  div r5.zw, r5.zzzw, r14.zzzw
  add r17.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r17.x <- uv2.x; r17.y <- uv2.y

#line 537
  mul r4.w, r14.x, r14.y

#line 538
  mad r18.xyzw, r16.xwzw, cb0[87].zwzw, r6.xyxy

#line 542
  mov r17.zw, r16.wwwy

#line 540
  mul r5.zw, r14.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 541
  mad r19.xyzw, r16.xyzy, cb0[87].zwzw, r6.xyxy

#line 542
  mad r20.xyzw, r17.xzxw, cb0[87].zwzw, r6.xyxy

#line 543
  mov r16.y, r17.y
  mul r14.xy, r14.xyxx, r14.zwzz

#line 544
  mad r16.xyzw, r16.xyzy, cb0[87].zwzw, r6.xyxy
  mul r17.zw, r14.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 545
  mad r6.xy, r17.xyxx, cb0[87].zwzz, r6.xyxx
  mul r7.w, r14.w, r14.z

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r18.xyxx, t1.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id155 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r18.zwzz, t1.xxxx, s1, r6.z  // r10.w <- <SampleTextureAndCompare_id155 return value>

#line 764
  mul r5.z, r5.z, r10.w
  mad r4.w, r4.w, r9.w, r5.z  // r4.w <- shadow

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r20.xyxx, t1.xxxx, s1, r6.z  // r5.z <- <SampleTextureAndCompare_id155 return value>

#line 764
  mad r4.w, r14.x, r5.z, r4.w

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r19.xyxx, t1.xxxx, s1, r6.z

#line 764
  mad r4.w, r5.w, r5.z, r4.w

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r19.zwzz, t1.xxxx, s1, r6.z

#line 764
  mad r4.w, r5.z, l(49.000000), r4.w

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r20.zwzz, t1.xxxx, s1, r6.z

#line 764
  mad r4.w, r17.z, r5.z, r4.w

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r16.xyxx, t1.xxxx, s1, r6.z

#line 764
  mad r4.w, r14.y, r5.z, r4.w

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r16.zwzz, t1.xxxx, s1, r6.z

#line 764
  mad r4.w, r17.w, r5.z, r4.w

#line 550
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r6.xyxx, t1.xxxx, s1, r6.z

#line 764
  mad r4.w, r7.w, r5.z, r4.w

#line 766
  mul r4.w, r4.w, l(0.006944)

#line 1369
  mul r6.xyz, r1.wwww, cb0[86].xyzx
  mul r6.xyz, r4.wwww, r6.xyzx
  mul r6.xyz, r2.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1469
  add r14.xyz, r10.xyzx, r13.xyzx
  dp3 r1.w, r14.xyzx, r14.xyzx
  rsq r1.w, r1.w
  mul r14.xyz, r1.wwww, r14.xyzx  // r14.x <- streams.H_id77.x; r14.y <- streams.H_id77.y; r14.z <- streams.H_id77.z

#line 1470
  dp3_sat r1.w, r9.xyzx, r14.xyzx  // r1.w <- streams.NdotH_id78

#line 1471
  dp3_sat r4.w, r13.xyzx, r14.xyzx  // r4.w <- streams.LdotH_id79

#line 1465
  mul r13.xyz, r6.xyzx, r11.xyzx

#line 1674
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 845
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.z, r4.w, r4.w
  mul r5.z, r5.z, r5.z
  mul r4.w, r4.w, r5.z
  mad r14.xyz, r14.xyzx, r4.wwww, r8.xyzx  // r14.x <- <FresnelSchlick_id217 return value>.x; r14.y <- <FresnelSchlick_id217 return value>.y; r14.z <- <FresnelSchlick_id217 return value>.z

#line 840
  mul r4.w, r8.w, l(0.500000)  // r4.w <- k

#line 841
  mad r5.z, -r8.w, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r5.z, r4.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id233 return value>
  mad r4.w, r0.y, r5.z, r4.w
  div r4.w, r0.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id233 return value>

#line 1007
  mul r4.w, r4.w, r5.w
  mul r2.w, r0.y, r2.w
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id235 return value>

#line 1001
  mul r4.w, r8.w, r8.w  // r4.w <- alphaR2

#line 1002
  mul r1.w, r1.w, r1.w
  mad r5.z, r8.w, r8.w, l(-1.000000)
  mad r1.w, r1.w, r5.z, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 1003
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r4.w, r1.w  // r1.w <- <NormalDistributionGGX_id247 return value>

#line 1459
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r1.wwww, r14.xyzx
  mul r6.xyz, r6.xyzx, r14.xyzx

#line 1678
  mad r12.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1664
  iadd r0.w, r0.w, l(1)

#line 1680
endloop 

#line 1080
sqrt r3.w, r0.z
add r5.x, -r3.w, l(1.000000)  // r5.x <- glossiness

#line 1081
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r5.xyxx, t2.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 1082
mad r0.xyz, r3.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id423 return value>.x; r0.y <- <Compute_id423 return value>.y; r0.z <- <Compute_id423 return value>.z

#line 1350
mul r5.xyz, r0.xyzx, cb2[88].xyzx  // r5.x <- <ComputeEnvironmentLightContribution_id602 return value>.x; r5.y <- <ComputeEnvironmentLightContribution_id602 return value>.y; r5.z <- <ComputeEnvironmentLightContribution_id602 return value>.z

#line 1692
mad r5.xyz, r4.xyzx, cb2[88].xyzx, r5.xyzx  // r5.x <- environmentLightingContribution.x; r5.y <- environmentLightingContribution.y; r5.z <- environmentLightingContribution.z

#line 1339
dp3 r0.w, r1.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r1.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 899
mul r4.w, r1.w, r1.w  // r4.w <- y2

#line 900
mul r5.w, r2.w, r2.w  // r5.w <- z2

#line 904
mad r6.xyz, cb2[90].xyzx, r1.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 905
mad r6.xyz, cb2[91].xyzx, -r2.wwww, r6.xyzx

#line 906
mad r6.xyz, cb2[92].xyzx, r0.wwww, r6.xyzx

#line 909
mul r7.xyz, r1.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r0.wwww, r6.xyzx

#line 910
mul r7.xyz, r1.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 911
mad r1.w, r5.w, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[95].xyzx, r1.wwww, r6.xyzx

#line 912
mul r7.xyz, r0.wwww, cb2[96].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 913
mad r0.w, r0.w, r0.w, -r4.w
mad r6.xyz, cb2[97].xyzx, r0.wwww, r6.xyzx

#line 1341
mul r6.xyz, r6.xyzx, cb2[102].xxxx  // r6.x <- streams.envLightDiffuseColor_id49.x; r6.y <- streams.envLightDiffuseColor_id49.y; r6.z <- streams.envLightDiffuseColor_id49.z

#line 1342
dp3 r0.w, -r2.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r2.xyz, r1.xyzx, -r0.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 1343
dp3 r7.x, r2.xyzx, cb2[98].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r2.xyzx, cb2[99].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r2.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 1344
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 1066
mul r0.w, r3.w, cb2[97].w  // r0.w <- mipLevel

#line 1067
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r7.xyzx, t8.xyzw, s0, r0.w  // r2.x <- <Compute_id373 return value>.x; r2.y <- <Compute_id373 return value>.y; r2.z <- <Compute_id373 return value>.z

#line 1345
mul r2.xyz, r2.xyzx, cb2[102].xxxx  // r2.x <- streams.envLightSpecularColor_id50.x; r2.y <- streams.envLightSpecularColor_id50.y; r2.z <- streams.envLightSpecularColor_id50.z

#line 1700
mad r4.xyz, r4.xyzx, r6.xyzx, r5.xyzx  // r4.x <- environmentLightingContribution.x; r4.y <- environmentLightingContribution.y; r4.z <- environmentLightingContribution.z

#line 1704
mad r0.xyz, r0.xyzx, r2.xyzx, r4.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1719
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1787
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1830
utof o3.xyzw, cb0[26].xxxx

#line 1910
mov o0.w, cb1[0].w
mov o1.w, l(1.000000)
mov o2.xyzw, r3.xyzw
ret 
// Approximately 811 instruction slots used
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
const static int TLightCount_id191 = 1;
const static int TFilterSize_id197 = 7;
const static int TMaxLightCount_id199 = 1;
const static int TCascadeCountBase_id205 = 1;
const static int TLightCountBase_id206 = 1;
const static bool TCascadeDebug_id214 = false;
const static int TFilterSize_id215 = 5;
const static int TOrder_id218 = 3;
const static int TOrder_id220 = 3;
const static bool TInvert_id243 = true;
const static bool TIsEnergyConservative_id255 = false;
static const float PI_id257 = 3.14159265358979323846;
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
    float4 Input_0_id228;
    float Input_1_id236;
    float Input_2_id245;
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
    PointLightData Lights_id186[TMaxLightCount_id185];
    float2 ShadowMapTextureSize_id188;
    float2 ShadowMapTextureTexelSize_id189;
    float4x4 WorldToShadow_id192[TLightCount_id191 * 6];
    float4x4 InverseWorldToShadow_id193[TLightCount_id191 * 6];
    float DepthBiases_id194[TLightCount_id191];
    float OffsetScales_id195[TLightCount_id191];
    float2 DepthParameters_id196[TLightCount_id191];
    int LightCount_id198;
    SpotLightData Lights_id200[TMaxLightCount_id199];
    float2 ShadowMapTextureSize_id202;
    float2 ShadowMapTextureTexelSize_id203;
    float4x4 WorldToShadowCascadeUV_id207[TCascadeCountBase_id205 * TLightCountBase_id206];
    float4x4 InverseWorldToShadowCascadeUV_id208[TCascadeCountBase_id205 * TLightCountBase_id206];
    float4x4 ViewMatrices_id209[TCascadeCountBase_id205 * TLightCountBase_id206];
    float2 DepthRanges_id210[TCascadeCountBase_id205 * TLightCountBase_id206];
    float DepthBiases_id211[TLightCountBase_id206];
    float OffsetScales_id212[TLightCountBase_id206];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id229;
    float InputValue_id237;
    float InputValue_id246;
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
    float3 AmbientLight_id216;
    float3 SphericalColors_id221[TOrder_id220 * TOrder_id220];
    float MipCount_id222;
    float4x4 SkyMatrix_id224;
    float Intensity_id225;
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
Texture2D ShadowMapTexture_id201;
Texture2D EnvironmentLightingDFG_LUT_id258;
Texture2D ShadowMapTexture_id91;
Texture3D<uint2> LightClusters_id177;
Buffer<uint> LightIndices_id178;
Buffer<float4> PointLights_id182;
Buffer<float4> SpotLights_id183;
TextureCube CubeMap_id223;
float4 Project_id120(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id71(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id141(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id129(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id128(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id130(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id187.SampleLevel(LinearBorderSampler_id125, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id120(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id126(float2 base_uv, float2 st, out float3 kernel[16])
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
float Get3x3FilterKernel_id157(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id203, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id203, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id203, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id203, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id156(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id203, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id203, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id203, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id203, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id203, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id203, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id203, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id203, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id203, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id155(float2 position, float positionDepth)
{
    return ShadowMapTexture_id201.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
float Get7x7FilterKernel_id154(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id203, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id203, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id203, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id203, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id203, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id203, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id203, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id203, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id203, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id203, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id203, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id203, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id203, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id203, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id203, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id203, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id153(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id202;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id203;
}
float GetAngularAttenuation_id143(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id142(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id141(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id134(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id188;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id189;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id126(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id130(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id133(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id120(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id120(float4(ShadowMapTextureTexelSize_id189.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id120(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id132(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id120(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id120(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id189.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id120(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id131()
{

    {
        return 4.5;
    }
}
float GetDistanceAttenuation_id117(float lightVectorLength, float lightInvSquareRadius)
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
float Compute_id411()
{
    return InputValue_id246;
}
float Compute_id399()
{
    return InputValue_id237;
}
float4 Compute_id387()
{
    return InputValue_id229;
}
float FilterShadow_id149(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id153(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id156(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id155(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id144(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id142(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id143(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float SampleTextureAndCompare_id127(float2 position, float positionDepth)
{
    return ShadowMapTexture_id187.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
void CalculatePCFKernelParameters_id125(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id188;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id189;
}
float FilterThickness_id121(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id133(GetFilterRadiusInPixels_id131(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id132(GetFilterRadiusInPixels_id131(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id134(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id116(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id117(lightVectorLength, lightInvSquareRadius);
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
float VisibilityhSchlickGGX_id233(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id217(float3 f0, float3 f90, float lOrVDotH)
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
void Compute_id414(inout PS_STREAMS streams)
{
    streams.Input_2_id245 = Compute_id411();
}
void Compute_id402(inout PS_STREAMS streams)
{
    streams.Input_1_id236 = Compute_id399();
}
void Compute_id390(inout PS_STREAMS streams)
{
    streams.Input_0_id228 = Compute_id387();
}
float4 EvaluateSphericalHarmonics_id171(float3 sphericalColors[TOrder_id218 * TOrder_id218], float3 direction)
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
float ComputeShadowFromCascade_id152(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id207[cascadeIndex + lightIndex * TCascadeCountBase_id205]);
    shadowPosition.z -= DepthBiases_id211[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id149(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id151(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id203.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id145(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id144(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float FilterShadow_id124(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id125(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id126(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id127(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id123(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id189.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id122(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id121(positionWS, streams.meshNormalWS_id19, float2(0.0f, 1.0f), WorldToShadow_id192[cascadeIndex], InverseWorldToShadow_id193[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id118(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id116(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
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
float NormalDistributionGGX_id247(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id257 * d * d);
}
float VisibilitySmithSchlickGGX_id235(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id233(alphaR, nDotL) * VisibilityhSchlickGGX_id233(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id223(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id217(f0, 1.0f, lOrVDotH);
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
float Compute_id417(inout PS_STREAMS streams)
{
    return streams.Input_2_id245;
}
void Compute_id416(inout PS_STREAMS streams)
{

    {
        Compute_id414(streams);
    }
}
float Compute_id405(inout PS_STREAMS streams)
{
    return streams.Input_1_id236;
}
void Compute_id404(inout PS_STREAMS streams)
{

    {
        Compute_id402(streams);
    }
}
float4 Compute_id393(inout PS_STREAMS streams)
{
    return streams.Input_0_id228;
}
void Compute_id392(inout PS_STREAMS streams)
{

    {
        Compute_id390(streams);
    }
}
float4 Compute_id373(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id222;
    return CubeMap_id223.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id368(float3 direction)
{
    return EvaluateSphericalHarmonics_id171(SphericalColors_id221, direction);
}
void PrepareEnvironmentLight_id175(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id423(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id258.SampleLevel(LinearSampler_id124, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id166(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id140(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id139(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id138(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id151(OffsetScales_id212[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float3 shadow = ComputeShadowFromCascade_id152(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id87 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id137(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id200[lightIndex].PositionWS;
    data.DirectionWS = Lights_id200[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id200[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id200[lightIndex].Color;
    ProcessLight_id145(streams, data);
}
float3 ComputeSpecularTextureProjection_id114(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id113(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id112(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id186[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id87 = ComputeThickness_id122(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id123(OffsetScales_id195[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id192[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id194[lightIndex];
    float depth = DepthParameters_id196[lightIndex].x + (DepthParameters_id196[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id124(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id111(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id186[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id186[lightIndex].InvSquareRadius;
    data.Color = Lights_id186[lightIndex].Color;
    ProcessLight_id118(streams, data);
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
float Compute_id515(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id247(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id485(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id235(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id455(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id223(f0, streams.LdotH_id79);
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
float Compute_id420(inout PS_STREAMS streams)
{
    Compute_id416(streams);
    return Compute_id417(streams);
}
float Compute_id408(inout PS_STREAMS streams)
{
    Compute_id404(streams);
    return Compute_id405(streams);
}
float4 Compute_id396(inout PS_STREAMS streams)
{
    Compute_id392(streams);
    return Compute_id393(streams);
}
void ResetStream_id250()
{
}
void AfterLightingAndShading_id572()
{
}
void AfterLightingAndShading_id553()
{
}
void PrepareEnvironmentLight_id386(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id383(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id175(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id224);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id368(sampleDirection).rgb * Intensity_id225 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id224);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id373(streams, sampleDirection).rgb * Intensity_id225 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id602(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id423(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id546(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id378(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id166(streams);
    float3 lightColor = AmbientLight_id216 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id335(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id137(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id138(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id139(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id140(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id337()
{
    return LightCount_id198;
}
int GetMaxLightCount_id338()
{
    return TMaxLightCount_id199;
}
void PrepareDirectLights_id333()
{
}
void PrepareDirectLight_id310(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id312()
{
    return LightCount_id184;
}
int GetMaxLightCount_id314()
{
    return TMaxLightCount_id185;
}
void PrepareDirectLights_id308()
{
}
void PrepareDirectLight_id297(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id301(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
int GetMaxLightCount_id300(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
void PrepareDirectLights_id295()
{
}
void PrepareDirectLight_id284(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id289(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
int GetMaxLightCount_id288(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
void PrepareDirectLights_id287(inout PS_STREAMS streams)
{
    PrepareLightData_id96(streams);
}
float3 ComputeDirectLightContribution_id601(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id455(streams, specularColor);
    float geometricShadowing = Compute_id485(streams);
    float normalDistribution = Compute_id515(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id545(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id257 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id260(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id262()
{
    return LightCount_id88;
}
int GetMaxLightCount_id263()
{
    return TMaxLightCount_id89;
}
void PrepareDirectLights_id258()
{
}
void PrepareForLightingAndShading_id569()
{
}
void PrepareForLightingAndShading_id550()
{
}
void PrepareMaterialForLightingAndShading_id249(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id248(inout PS_STREAMS streams)
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
float4 Compute_id422(inout PS_STREAMS streams)
{
    float x = Compute_id420(streams);
    return float4(x, x, x, x);
}
float4 Compute_id410(inout PS_STREAMS streams)
{
    float x = Compute_id408(streams);
    return float4(x, x, x, x);
}
float4 Compute_id398(inout PS_STREAMS streams)
{
    return Compute_id396(streams);
}
void ResetStream_id251(inout PS_STREAMS streams)
{
    ResetStream_id250();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id633(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id248(streams);
    PrepareMaterialForLightingAndShading_id249(streams);

    {
        PrepareForLightingAndShading_id550();
    }

    {
        PrepareForLightingAndShading_id569();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id258();
        const int maxLightCount = GetMaxLightCount_id263();
        int count = GetLightCount_id262();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id260(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id545(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id601(streams);
            }
        }
    }

    {
        PrepareDirectLights_id287(streams);
        const int maxLightCount = GetMaxLightCount_id288(streams);
        int count = GetLightCount_id289(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id284(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id545(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id601(streams);
            }
        }
    }

    {
        PrepareDirectLights_id295();
        const int maxLightCount = GetMaxLightCount_id300(streams);
        int count = GetLightCount_id301(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id297(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id545(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id601(streams);
            }
        }
    }

    {
        PrepareDirectLights_id308();
        const int maxLightCount = GetMaxLightCount_id314();
        int count = GetLightCount_id312();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id310(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id545(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id601(streams);
            }
        }
    }

    {
        PrepareDirectLights_id333();
        const int maxLightCount = GetMaxLightCount_id338();
        int count = GetLightCount_id337();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id335(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id545(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id601(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id378(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id546(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id602(streams);
        }
    }

    {
        PrepareEnvironmentLight_id383(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id546(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id602(streams);
        }
    }

    {
        PrepareEnvironmentLight_id386(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id546(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id602(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id257 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id553();
    }

    {
        AfterLightingAndShading_id572();
    }
}
void Compute_id617(inout PS_STREAMS streams)
{
    float metalness = Compute_id422(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id612(inout PS_STREAMS streams)
{
    float glossiness = Compute_id410(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id607(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id398(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id252(inout PS_STREAMS streams)
{
    ResetStream_id251(streams);
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
        Compute_id607(streams);
    }

    {
        Compute_id612(streams);
    }

    {
        Compute_id617(streams);
    }

    {
        Compute_id633(streams);
    }
}
void ResetStream_id54(inout PS_STREAMS streams)
{
    ResetStream_id252(streams);
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

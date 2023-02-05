/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,5>, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1664]
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
@C    LightCount_id197 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id199 => LightSpotGroup.Lights.directLightGroups[4]
@C    ShadowMapTextureSize_id201 => ShadowMap.TextureSize.directLightGroups[4]
@C    ShadowMapTextureTexelSize_id202 => ShadowMap.TextureTexelSize.directLightGroups[4]
@C    WorldToShadowCascadeUV_id206 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[4]
@C    InverseWorldToShadowCascadeUV_id207 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[4]
@C    ViewMatrices_id208 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[4]
@C    DepthRanges_id209 => ShadowMapReceiverBase.DepthRanges.directLightGroups[4]
@C    DepthBiases_id210 => ShadowMapReceiverBase.DepthBiases.directLightGroups[4]
@C    OffsetScales_id211 => ShadowMapReceiverBase.OffsetScales.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 32]
@C    InputValue_id228 => ShaderFX.InputValueFloat4
@C    InputValue_id236 => ShaderFX.InputValueFloat
@C    InputValue_id245 => ShaderFX.InputValueFloat.i1
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
@C    AmbientLight_id215 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id220 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id221 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id223 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id224 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id257 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id257 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    CubeMap_id222 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id222 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id123 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id125 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id257 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (3-3)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: Pixel, Slot: (4-4)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: Pixel, Slot: (5-5)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (6-6)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (7-7)]
@R    CubeMap_id222 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (8-8)]
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
//   } Lights_id185;                    // Offset:  464 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id187; // Offset:  496 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id188;// Offset:  504 Size:     8 [unused]
//   float4x4 WorldToShadow_id191[6];   // Offset:  512 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id192[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id193;           // Offset: 1280 Size:     4 [unused]
//   float OffsetScales_id194;          // Offset: 1296 Size:     4 [unused]
//   float2 DepthParameters_id195;      // Offset: 1312 Size:     8 [unused]
//   int LightCount_id197;              // Offset: 1320 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id199;                    // Offset: 1328 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id201; // Offset: 1392 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id202;// Offset: 1400 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id206;// Offset: 1408 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id207;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id208;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id209;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id210;           // Offset: 1616 Size:     4 [unused]
//   float OffsetScales_id211;          // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
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
//   float3 AmbientLight_id215;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id220[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id221;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id223;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id224;             // Offset: 1632 Size:     4 [unused]
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
#line 1821 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_51303aba0f35b49b4b3bef9196d0ba9c.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id23.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id23.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id23.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id23.w

#line 1914
mov o0.xyzw, r0.xyzw

#line 1772
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1914
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1866
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1914
ret 
// Approximately 16 instruction slots used
@G    Pixel => 97362fc4bb813deeb61bb0e4eaae7956
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
//   } Lights_id185;                    // Offset:  464 Size:    28
//   float2 ShadowMapTextureSize_id187; // Offset:  496 Size:     8
//   float2 ShadowMapTextureTexelSize_id188;// Offset:  504 Size:     8
//   float4x4 WorldToShadow_id191[6];   // Offset:  512 Size:   384
//   float4x4 InverseWorldToShadow_id192[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id193;           // Offset: 1280 Size:     4
//   float OffsetScales_id194;          // Offset: 1296 Size:     4
//   float2 DepthParameters_id195;      // Offset: 1312 Size:     8
//   int LightCount_id197;              // Offset: 1320 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id199;                    // Offset: 1328 Size:    60
//   float2 ShadowMapTextureSize_id201; // Offset: 1392 Size:     8
//   float2 ShadowMapTextureTexelSize_id202;// Offset: 1400 Size:     8
//   float4x4 WorldToShadowCascadeUV_id206;// Offset: 1408 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id207;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id208;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id209;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id210;           // Offset: 1616 Size:     4
//   float OffsetScales_id211;          // Offset: 1632 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id228;           // Offset:    0 Size:    16
//   float InputValue_id236;            // Offset:   16 Size:     4
//   float InputValue_id245;            // Offset:   20 Size:     4
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
//   float3 AmbientLight_id215;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id220[9];   // Offset: 1424 Size:   140
//   float MipCount_id221;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id223;          // Offset: 1568 Size:    64
//   float Intensity_id224;             // Offset: 1632 Size:     4
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
// ShadowMapTexture_id200            texture  float4          2d             t1      1 
// EnvironmentLightingDFG_LUT_id257    texture  float4          2d             t2      1 
// ShadowMapTexture_id90             texture  float4          2d             t3      1 
// LightClusters_id176               texture   uint2          3d             t4      1 
// LightIndices_id177                texture    uint         buf             t5      1 
// PointLights_id181                 texture  float4         buf             t6      1 
// SpotLights_id182                  texture  float4         buf             t7      1 
// CubeMap_id222                     texture  float4        cube             t8      1 
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
dcl_temps 19
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
#line 1893 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_51303aba0f35b49b4b3bef9196d0ba9c.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id168.x; r0.y <- streams.ScreenPosition_id168.y

#line 1860
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1861
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id20.x; r1.y <- streams.normalWS_id20.y; r1.z <- streams.normalWS_id20.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1833
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id69.x; r3.y <- streams.viewWS_id69.y; r3.z <- streams.viewWS_id69.z

#line 1736
add r0.w, -cb1[1].x, l(1.000000)  // r0.w <- glossiness

#line 1728
add r4.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[1].yyyy, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id56.x; r4.y <- streams.matSpecular_id56.y; r4.z <- streams.matSpecular_id56.z

#line 1729
mad r5.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r5.x <- streams.matDiffuse_id54.x; r5.y <- streams.matDiffuse_id54.y; r5.z <- streams.matDiffuse_id54.z

#line 1545
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id20.x; r1.y <- streams.normalWS_id20.y; r1.z <- streams.normalWS_id20.z

#line 1502
dp3 r1.w, r1.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id73

#line 1503
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 1504
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id71

#line 1569
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 1472
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id50

#line 1261
  lt r2.w, cb2[83].x, v2.x

#line 1264
  and r2.w, r2.w, l(1)  // r2.w <- cascadeIndex

#line 1261
  lt r3.w, cb2[84].x, v2.x

#line 1264
  movc r2.w, r3.w, l(2), r2.w

#line 1261
  lt r3.w, cb2[85].x, v2.x

#line 1264
  movc r2.w, r3.w, l(3), r2.w

#line 1022
  add r4.w, -r1.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 1023
  mul r5.w, cb2[28].z, cb2[82].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 1269
  mad r7.xyz, r4.wwww, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 1015
  ishl r4.w, r2.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r4.w + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r4.w + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r5.w, r7.xyzw, cb2[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
  dp4 r6.z, r7.xyzw, cb2[r4.w + 32].xyzw  // r6.z <- shadowPosition.w

#line 1016
  add r8.z, r5.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 1017
  div r8.xyz, r8.xyzx, r6.zzzz

#line 728
  mad r6.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 729
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 730
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 731
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 452
  mad r9.xy, -r6.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 454
  mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 455
  mad r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 456
  add r11.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 457
  div r6.zw, r6.zzzw, r9.zzzw
  add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 458
  mul r5.w, r9.x, r9.y

#line 459
  mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r8.xyxy

#line 463
  mov r11.zw, r10.wwwy

#line 461
  mul r6.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 462
  mad r13.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy

#line 463
  mad r14.xyzw, r11.xzxw, cb2[28].zwzw, r8.xyxy

#line 464
  mov r10.y, r11.y
  mul r9.xy, r9.xyxx, r9.zwzz

#line 465
  mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 466
  mad r8.xy, r11.xyxx, cb2[28].zwzz, r8.xyxx
  mul r8.w, r9.w, r9.z

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.z, r12.xyxx, t3.xxxx, s1, r8.z  // r9.z <- <SampleTextureAndCompare_id74 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r12.zwzz, t3.xxxx, s1, r8.z  // r9.w <- <SampleTextureAndCompare_id74 return value>

#line 870
  mul r6.z, r6.z, r9.w
  mad r5.w, r5.w, r9.z, r6.z  // r5.w <- shadow

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.xyxx, t3.xxxx, s1, r8.z  // r6.z <- <SampleTextureAndCompare_id74 return value>

#line 870
  mad r5.w, r9.x, r6.z, r5.w

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.xyxx, t3.xxxx, s1, r8.z

#line 870
  mad r5.w, r6.w, r6.z, r5.w

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.zwzz, t3.xxxx, s1, r8.z

#line 870
  mad r5.w, r6.z, l(49.000000), r5.w

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.zwzz, t3.xxxx, s1, r8.z

#line 870
  mad r5.w, r11.z, r6.z, r5.w

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t3.xxxx, s1, r8.z

#line 870
  mad r5.w, r9.y, r6.z, r5.w

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.zwzz, t3.xxxx, s1, r8.z

#line 870
  mad r5.w, r11.w, r6.z, r5.w

#line 723
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r8.xyxx, t3.xxxx, s1, r8.z

#line 870
  mad r5.w, r8.w, r6.z, r5.w

#line 872
  mul r8.xyz, r5.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r8.z <- shadow

#line 1275
  ilt r6.z, l(0), r2.w
  if_nz r6.z

#line 1277
    iadd r6.z, r2.w, l(-1)
    add r6.z, -cb2[r6.z + 83].x, cb2[r2.w + 83].x  // r6.z <- splitSize

#line 1278
  else 
    mov r6.z, cb2[r2.w + 83].x  // r6.z <- splitSize
  endif 

#line 1279
  add r2.w, -v2.x, cb2[r2.w + 83].x
  div r2.w, r2.w, r6.z  // r2.w <- splitDist

#line 1280
  lt r6.z, r2.w, l(0.200000)
  if_nz r6.z

#line 1283
    if_nz r3.w

#line 1285
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 1282
      mul_sat r2.w, r2.w, l(5.000000)
      mad r3.w, r2.w, l(-2.000000), l(3.000000)
      mul r2.w, r2.w, r2.w
      mul r2.w, r2.w, r3.w  // r2.w <- lerpAmt

#line 1015
      dp4 r9.x, r7.xyzw, cb2[r4.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r4.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r3.w, r7.xyzw, cb2[r4.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r7.xyzw, cb2[r4.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 1016
      add r9.z, r3.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 1017
      div r7.xyz, r9.xyzx, r4.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 728
      mad r6.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r7.xy, r6.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 729
      add r6.zw, r6.zzzw, -r7.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 730
      add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 731
      mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 452
      mad r9.xy, -r6.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 454
      mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 455
      mad r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r10.xy, r10.xyxx, r9.yxyy
      add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 456
      add r11.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 457
      div r6.zw, r6.zzzw, r9.zzzw
      add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 458
      mul r3.w, r9.x, r9.y

#line 459
      mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r7.xyxy

#line 463
      mov r11.zw, r10.wwwy

#line 461
      mul r6.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 462
      mad r13.xyzw, r10.xyzy, cb2[28].zwzw, r7.xyxy

#line 463
      mad r14.xyzw, r11.xzxw, cb2[28].zwzw, r7.xyxy

#line 464
      mov r10.y, r11.y
      mul r9.xy, r9.xyxx, r9.zwzz

#line 465
      mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r7.xyxy
      mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 466
      mad r7.xy, r11.xyxx, cb2[28].zwzz, r7.xyxx
      mul r4.w, r9.w, r9.z

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r12.xyxx, t3.xxxx, s1, r7.z  // r7.w <- <SampleTextureAndCompare_id74 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r12.zwzz, t3.xxxx, s1, r7.z  // r8.w <- <SampleTextureAndCompare_id74 return value>

#line 870
      mul r6.z, r6.z, r8.w
      mad r3.w, r3.w, r7.w, r6.z  // r3.w <- shadow

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.xyxx, t3.xxxx, s1, r7.z  // r6.z <- <SampleTextureAndCompare_id74 return value>

#line 870
      mad r3.w, r9.x, r6.z, r3.w

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.xyxx, t3.xxxx, s1, r7.z

#line 870
      mad r3.w, r6.w, r6.z, r3.w

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.zwzz, t3.xxxx, s1, r7.z

#line 870
      mad r3.w, r6.z, l(49.000000), r3.w

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.zwzz, t3.xxxx, s1, r7.z

#line 870
      mad r3.w, r11.z, r6.z, r3.w

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t3.xxxx, s1, r7.z

#line 870
      mad r3.w, r9.y, r6.z, r3.w

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.zwzz, t3.xxxx, s1, r7.z

#line 870
      mad r3.w, r11.w, r6.z, r3.w

#line 723
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r7.xyxx, t3.xxxx, s1, r7.z

#line 870
      mad r3.w, r4.w, r6.z, r3.w

#line 872
      mul r3.w, r3.w, l(0.006944)

#line 1289
      mad r4.w, r5.w, l(0.006944), -r3.w
      mad r8.xyz, r2.wwww, r4.wwww, r3.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 1290
    endif 

#line 1291
  endif 

#line 1474
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r1.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id45.x; r7.y <- streams.lightColorNdotL_id45.y; r7.z <- streams.lightColorNdotL_id45.z

#line 1464
  mad r8.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r2.w, r8.xyzx, r8.xyzx
  rsq r2.w, r2.w
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.H_id76.x; r8.y <- streams.H_id76.y; r8.z <- streams.H_id76.z

#line 1465
  dp3_sat r2.w, r1.xyzx, r8.xyzx  // r2.w <- streams.NdotH_id77

#line 1466
  dp3_sat r3.w, -cb2[26].xyzx, r8.xyzx  // r3.w <- streams.LdotH_id78

#line 1460
  mul r8.xyz, r5.xyzx, r7.xyzx

#line 840
  add r9.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r9.xyz, r9.xyzx, r3.wwww, r4.xyzx  // r9.x <- <FresnelSchlick_id212 return value>.x; r9.y <- <FresnelSchlick_id212 return value>.y; r9.z <- <FresnelSchlick_id212 return value>.z

#line 835
  mul r3.w, r0.w, l(0.500000)  // r3.w <- k

#line 836
  mad r4.w, -r0.w, l(0.500000), l(1.000000)
  mad r5.w, r1.w, r4.w, r3.w
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r3.w, r6.y, r4.w, r3.w
  div r3.w, r6.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id228 return value>

#line 1002
  mul r3.w, r3.w, r5.w
  mul r1.w, r6.y, r1.w
  div r1.w, r3.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 996
  mul r3.w, r0.w, r0.w  // r3.w <- alphaR2

#line 997
  mul r2.w, r2.w, r2.w
  mad r4.w, r0.w, r0.w, l(-1.000000)
  mad r2.w, r2.w, r4.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 998
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r3.w, r2.w  // r2.w <- <NormalDistributionGGX_id242 return value>

#line 1454
  mul r9.xyz, r1.wwww, r9.xyzx
  mul r9.xyz, r2.wwww, r9.xyzx
  mul r7.xyz, r7.xyzx, r9.xyzx

#line 1455
  mul r7.xyz, r7.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r7.x <- <ComputeDirectLightContribution_id596 return value>.x; r7.y <- <ComputeDirectLightContribution_id596 return value>.y; r7.z <- <ComputeDirectLightContribution_id596 return value>.z

#line 1577
  mad r7.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 1578
else 
  mov r7.xyz, l(0,0,0,0)  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
endif 

#line 1226
add r1.w, v1.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 1227
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1228
mad r1.w, r1.w, cb2[86].y, cb2[86].z
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r8.z, r1.w  // r8.z <- slice

#line 1229
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r8.xy, r0.xyxx
mov r8.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r8.xyzw, t4.xyzw  // r0.x <- streams.lightData_id174.x; r0.y <- streams.lightData_id174.y

#line 1442
and r1.w, r0.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id283 return value>

#line 1587
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id20.x; r8.y <- streams.normalWS_id20.y; r8.z <- streams.normalWS_id20.z
mov r8.w, v0.x  // r8.w <- streams.PositionWS_id23.x
mov r9.xy, v0.yzyy  // r9.x <- streams.PositionWS_id23.y; r9.y <- streams.PositionWS_id23.z
mov r9.zw, r3.xxxy  // r9.z <- streams.viewWS_id69.x; r9.w <- streams.viewWS_id69.y
mov r10.z, r3.z  // r10.z <- streams.viewWS_id69.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matDiffuseVisible_id70.x; r11.y <- streams.matDiffuseVisible_id70.y; r11.z <- streams.matDiffuseVisible_id70.z
mov r12.xyz, r4.xyzx  // r12.x <- streams.matSpecularVisible_id72.x; r12.y <- streams.matSpecularVisible_id72.y; r12.z <- streams.matSpecularVisible_id72.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id71
mov r6.w, r6.y  // r6.w <- streams.NdotV_id73
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id175
mov r13.xyz, r7.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r1.w
  breakc_nz r3.w

#line 1589
  if_nz r3.w

#line 1591
    break 

#line 1592
  endif 

#line 1213
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r6.zzzz, t5.yzwx  // r3.w <- realLightIndex

#line 1214
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id175

#line 1216
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r4.wwww, t6.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 1217
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r3.wwww, t6.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 827
  mov r16.x, r8.w
  mov r16.yz, r9.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 828
  dp3 r3.w, r14.xyzx, r14.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 829
  div r14.xyz, r14.xyzx, r4.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 669
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 434
  mul r3.w, r14.w, r3.w  // r3.w <- factor

#line 435
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 436
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id88 return value>

#line 670
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1428
  dp3 r4.w, r8.xyzx, r14.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id50

#line 1430
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id45.x; r15.y <- streams.lightColorNdotL_id45.y; r15.z <- streams.lightColorNdotL_id45.z

#line 1464
  mov r10.xy, r9.zwzz
  add r10.xyw, r14.xyxz, r10.xyxz
  dp3 r3.w, r10.xywx, r10.xywx
  rsq r3.w, r3.w
  mul r10.xyw, r3.wwww, r10.xyxw  // r10.x <- streams.H_id76.x; r10.y <- streams.H_id76.y; r10.w <- streams.H_id76.z

#line 1465
  dp3_sat r3.w, r8.xyzx, r10.xywx  // r3.w <- streams.NdotH_id77

#line 1466
  dp3_sat r5.w, r14.xyzx, r10.xywx  // r5.w <- streams.LdotH_id78

#line 1460
  mul r10.xyw, r11.xyxz, r15.xyxz

#line 1597
  mad r10.xyw, r10.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 840
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r7.w, r5.w, r5.w
  mul r7.w, r7.w, r7.w
  mul r5.w, r5.w, r7.w
  mad r14.xyz, r14.xyzx, r5.wwww, r12.xyzx  // r14.x <- <FresnelSchlick_id212 return value>.x; r14.y <- <FresnelSchlick_id212 return value>.y; r14.z <- <FresnelSchlick_id212 return value>.z

#line 835
  mul r5.w, r12.w, l(0.500000)  // r5.w <- k

#line 836
  mad r7.w, -r12.w, l(0.500000), l(1.000000)
  mad r11.w, r4.w, r7.w, r5.w
  div r11.w, r4.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r5.w, r6.w, r7.w, r5.w
  div r5.w, r6.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id228 return value>

#line 1002
  mul r5.w, r5.w, r11.w
  mul r4.w, r6.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 996
  mul r5.w, r12.w, r12.w  // r5.w <- alphaR2

#line 997
  mul r3.w, r3.w, r3.w
  mad r7.w, r12.w, r12.w, l(-1.000000)
  mad r3.w, r3.w, r7.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 998
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id242 return value>

#line 1454
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1601
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r10.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1587
  iadd r2.w, r2.w, l(1)

#line 1603
endloop   // r6.z <- streams.lightIndex_id175

#line 1420
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id295 return value>

#line 1611
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id20.x; r7.y <- streams.normalWS_id20.y; r7.z <- streams.normalWS_id20.z
mov r8.xyz, v0.xyzx  // r8.x <- streams.PositionWS_id23.x; r8.y <- streams.PositionWS_id23.y; r8.z <- streams.PositionWS_id23.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id69.x; r9.y <- streams.viewWS_id69.y; r9.z <- streams.viewWS_id69.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id70.x; r10.y <- streams.matDiffuseVisible_id70.y; r10.z <- streams.matDiffuseVisible_id70.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id72.x; r11.y <- streams.matSpecularVisible_id72.y; r11.z <- streams.matSpecularVisible_id72.z
mov r12.xyz, r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r14.x, r0.w  // r14.x <- streams.alphaRoughness_id71
mov r14.y, r6.y  // r14.y <- streams.NdotV_id73
mov r0.y, r6.z  // r0.y <- streams.lightIndex_id175
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 1613
  if_nz r2.w

#line 1615
    break 

#line 1616
  endif 

#line 1185
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.yyyy, t5.yzwx  // r2.w <- realLightIndex

#line 1186
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id175

#line 1188
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r3.wwww, t7.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 1191
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 1189
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t7.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 1190
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t7.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 1191
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t7.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 814
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 815
  dp3 r2.w, r15.xyzx, r15.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 816
  div r15.xyz, r15.xyzx, r3.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 662
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 428
  mul r2.w, r16.w, r2.w  // r2.w <- factor

#line 429
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 430
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id99 return value>

#line 663
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 654
  dp3 r3.w, -r17.xyzx, r15.xyzx  // r3.w <- cd

#line 655
  mad_sat r3.w, r3.w, r16.x, r16.y  // r3.w <- attenuation

#line 656
  mul r3.w, r3.w, r3.w

#line 822
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1406
  dp3 r3.w, r7.xyzx, r15.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id50

#line 1408
  mul r16.xyz, r2.wwww, r18.xyzx
  mul r16.xyz, r3.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id45.x; r16.y <- streams.lightColorNdotL_id45.y; r16.z <- streams.lightColorNdotL_id45.z

#line 1464
  add r17.xyz, r9.xyzx, r15.xyzx
  dp3 r2.w, r17.xyzx, r17.xyzx
  rsq r2.w, r2.w
  mul r17.xyz, r2.wwww, r17.xyzx  // r17.x <- streams.H_id76.x; r17.y <- streams.H_id76.y; r17.z <- streams.H_id76.z

#line 1465
  dp3_sat r2.w, r7.xyzx, r17.xyzx  // r2.w <- streams.NdotH_id77

#line 1466
  dp3_sat r4.w, r15.xyzx, r17.xyzx  // r4.w <- streams.LdotH_id78

#line 1460
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1621
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 840
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r17.xyz, r17.xyzx, r4.wwww, r11.xyzx  // r17.x <- <FresnelSchlick_id212 return value>.x; r17.y <- <FresnelSchlick_id212 return value>.y; r17.z <- <FresnelSchlick_id212 return value>.z

#line 835
  mul r4.w, r14.x, l(0.500000)  // r4.w <- k

#line 836
  mad r5.w, -r14.x, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r4.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r4.w, r14.y, r5.w, r4.w
  div r4.w, r14.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id228 return value>

#line 1002
  mul r4.w, r4.w, r6.w
  mul r3.w, r14.y, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 996
  mul r4.w, r14.x, r14.x  // r4.w <- alphaR2

#line 997
  mul r2.w, r2.w, r2.w
  mad r5.w, r14.x, r14.x, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 998
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id242 return value>

#line 1454
  mul r17.xyz, r3.wwww, r17.xyzx
  mul r17.xyz, r2.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1625
  mad r12.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1611
  iadd r1.w, r1.w, l(1)

#line 1627
endloop   // r0.y <- streams.lightIndex_id175

#line 1641
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 806
  add r7.xyz, -v0.xyzx, cb0[29].xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 807
  dp3 r0.x, r7.xyzx, r7.xyzx
  sqrt r0.y, r0.x  // r0.y <- lightVectorLength

#line 808
  div r7.xyz, r7.xyzx, r0.yyyy  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 648
  max r0.y, r0.x, l(0.000100)
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y  // r0.y <- attenuation

#line 422
  mul r0.x, r0.x, cb0[29].w  // r0.x <- factor

#line 423
  mad r0.x, -r0.x, r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)  // r0.x <- smoothFactor

#line 424
  mul r0.x, r0.x, r0.x  // r0.x <- <SmoothDistanceAttenuation_id110 return value>

#line 649
  mul r0.x, r0.x, r0.y  // r0.x <- attenuation

#line 1384
  dp3 r0.y, r1.xyzx, r7.xyzx
  max r0.y, r0.y, l(0.000100)  // r0.y <- streams.NdotL_id50

#line 1124
  add r8.xyz, v0.xyzx, -cb0[29].xyzx  // r8.x <- lightDelta.x; r8.y <- lightDelta.y; r8.z <- lightDelta.z

#line 1125
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r1.w, r1.w  // r1.w <- distanceToLight

#line 1126
  div r9.xyz, r8.xyzx, r1.wwww  // r9.x <- direction.x; r9.y <- direction.y; r9.z <- direction.z

#line 1128
  max r1.w, |r9.z|, |r9.y|
  max r1.w, r1.w, |r9.x|  // r1.w <- longestAxis

#line 1137
  eq r6.zw, r1.wwww, |r9.xxxy|

#line 1146
  mov r8.w, l(4)
  mov r9.xz, l(0,0,2,0)
  mov r9.yw, r8.zzzx
  movc r8.xy, r6.wwww, r8.wyww, r9.xyxx  // r8.x <- faceIndex; r8.y <- lightSpaceZ
  movc r6.zw, r6.zzzz, r9.zzzw, r8.xxxy  // r6.z <- faceIndex; r6.w <- lightSpaceZ

#line 1155
  add r1.w, |r6.w|, -cb0[80].x  // r1.w <- lightSpaceZ

#line 1156
  div r1.w, cb0[82].y, r1.w
  add r1.w, r1.w, cb0[82].x  // r1.w <- depth

#line 1157
  lt r2.w, r1.w, l(0.000000)
  lt r3.w, l(1.000000), r1.w
  or r2.w, r2.w, r3.w

#line 1159
  if_z r2.w

#line 1147
    lt r2.w, l(0.000000), r6.w
    lt r3.w, r6.w, l(0.000000)
    iadd r2.w, -r2.w, r3.w
    itof r2.w, r2.w  // r2.w <- lightSpaceZDirection

#line 1148
    min r2.w, r2.w, l(0.000000)
    ftoi r2.w, -r2.w
    iadd r2.w, r2.w, r6.z  // r2.w <- faceIndex

#line 955
    add r3.w, -r0.y, l(1.000000)
    max r3.w, r3.w, l(0.000000)  // r3.w <- normalOffsetScale

#line 956
    mul r4.w, cb0[31].z, cb0[81].x
    dp2 r3.w, r4.wwww, r3.wwww

#line 1151
    mad r8.xyz, r3.wwww, r1.xyzx, v0.xyzx  // r8.x <- positionWS.x; r8.y <- positionWS.y; r8.z <- positionWS.z

#line 1152
    ishl r2.w, r2.w, l(2)
    mov r8.w, l(1.000000)
    dp4 r9.x, r8.xyzw, cb0[r2.w + 32].xyzw  // r9.x <- projectedPosition.x
    dp4 r9.y, r8.xyzw, cb0[r2.w + 33].xyzw  // r9.y <- projectedPosition.y
    dp4 r2.w, r8.xyzw, cb0[r2.w + 35].xyzw  // r2.w <- projectedPosition.w

#line 1153
    div r6.zw, r9.xxxy, r2.wwww  // r6.z <- projectedPosition.x; r6.w <- projectedPosition.y

#line 785
    mad r6.zw, r6.zzzw, cb0[31].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
    round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 786
    add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 787
    add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 788
    mul r8.xy, r8.xyxx, cb0[31].zwzz

#line 360
    mad r8.zw, -r6.wwwz, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r8.z <- uvW0.y; r8.w <- uvW0.x

#line 362
    mad r9.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uvW2.x; r9.y <- uvW2.y

#line 363
    mad r9.zw, -r6.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
    div r9.zw, r9.zzzw, r8.wwwz
    add r10.xw, r9.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 364
    add r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000)
    mul r10.yz, r9.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 365
    div r6.zw, r6.zzzw, r9.xxxy
    add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 366
    mul r2.w, r8.z, r8.w

#line 367
    mad r13.xyzw, r10.xwzw, cb0[31].zwzw, r8.xyxy

#line 371
    mov r11.zw, r10.wwwy

#line 369
    mul r6.zw, r8.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 370
    mad r14.xyzw, r10.xyzy, cb0[31].zwzw, r8.xyxy

#line 371
    mad r15.xyzw, r11.xzxw, cb0[31].zwzw, r8.xyxy

#line 372
    mov r10.y, r11.y
    mul r8.zw, r8.zzzw, r9.xxxy

#line 373
    mad r10.xyzw, r10.xyzy, cb0[31].zwzw, r8.xyxy
    mul r9.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 374
    mad r8.xy, r11.xyxx, cb0[31].zwzz, r8.xyxx
    mul r3.w, r9.y, r9.x

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r13.xyxx, t0.xxxx, s1, r1.w  // r4.w <- <SampleTextureAndCompare_id122 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r13.zwzz, t0.xxxx, s1, r1.w  // r5.w <- <SampleTextureAndCompare_id122 return value>

#line 947
    mul r5.w, r5.w, r6.z
    mad r2.w, r2.w, r4.w, r5.w  // r2.w <- shadow

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.xyxx, t0.xxxx, s1, r1.w  // r4.w <- <SampleTextureAndCompare_id122 return value>

#line 947
    mad r2.w, r8.z, r4.w, r2.w

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.xyxx, t0.xxxx, s1, r1.w

#line 947
    mad r2.w, r6.w, r4.w, r2.w

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.zwzz, t0.xxxx, s1, r1.w

#line 947
    mad r2.w, r4.w, l(49.000000), r2.w

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t0.xxxx, s1, r1.w

#line 947
    mad r2.w, r9.z, r4.w, r2.w

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r10.xyxx, t0.xxxx, s1, r1.w

#line 947
    mad r2.w, r8.w, r4.w, r2.w

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r10.zwzz, t0.xxxx, s1, r1.w

#line 947
    mad r2.w, r9.w, r4.w, r2.w

#line 780
    sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r8.xyxx, t0.xxxx, s1, r1.w  // r1.w <- <SampleTextureAndCompare_id122 return value>

#line 947
    mad r1.w, r3.w, r1.w, r2.w  // r1.w <- shadow

#line 949
    mul r8.xyz, r1.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r8.z <- shadow

#line 1160
  else   // Prior locations: r10.x <- streams.matDiffuseVisible_id70.x; r10.y <- streams.matDiffuseVisible_id70.y; r10.z <- streams.matDiffuseVisible_id70.z; r11.x <- streams.matSpecularVisible_id72.x; r11.y <- streams.matSpecularVisible_id72.y; r11.z <- streams.matSpecularVisible_id72.z; r14.x <- streams.alphaRoughness_id71; r14.y <- streams.NdotV_id73; r8.z <- lightDelta.z; r6.z <- faceIndex; r1.w <- depth
    mov r8.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1386
  mul r9.xyz, r0.xxxx, cb0[30].xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx
  mul r8.xyz, r0.yyyy, r8.xyzx  // r8.x <- streams.lightColorNdotL_id45.x; r8.y <- streams.lightColorNdotL_id45.y; r8.z <- streams.lightColorNdotL_id45.z

#line 1464
  mad r9.xyz, r2.xyzx, r0.zzzz, r7.xyzx
  dp3 r0.x, r9.xyzx, r9.xyzx
  rsq r0.x, r0.x
  mul r9.xyz, r0.xxxx, r9.xyzx  // r9.x <- streams.H_id76.x; r9.y <- streams.H_id76.y; r9.z <- streams.H_id76.z

#line 1465
  dp3_sat r0.x, r1.xyzx, r9.xyzx  // r0.x <- streams.NdotH_id77

#line 1466
  dp3_sat r1.w, r7.xyzx, r9.xyzx  // r1.w <- streams.LdotH_id78

#line 1460
  mul r7.xyz, r5.xyzx, r8.xyzx

#line 1645
  mad r7.xyz, r7.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 840
  add r9.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r2.w, r1.w, r1.w
  mul r2.w, r2.w, r2.w
  mul r1.w, r1.w, r2.w
  mad r9.xyz, r9.xyzx, r1.wwww, r4.xyzx  // r9.x <- <FresnelSchlick_id212 return value>.x; r9.y <- <FresnelSchlick_id212 return value>.y; r9.z <- <FresnelSchlick_id212 return value>.z

#line 835
  mul r1.w, r0.w, l(0.500000)  // r1.w <- k

#line 836
  mad r2.w, -r0.w, l(0.500000), l(1.000000)
  mad r3.w, r0.y, r2.w, r1.w
  div r3.w, r0.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r1.w, r6.y, r2.w, r1.w
  div r1.w, r6.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id228 return value>

#line 1002
  mul r1.w, r1.w, r3.w
  mul r0.y, r6.y, r0.y
  div r0.y, r1.w, r0.y  // r0.y <- <VisibilitySmithSchlickGGX_id230 return value>

#line 996
  mul r1.w, r0.w, r0.w  // r1.w <- alphaR2

#line 997
  mul r0.x, r0.x, r0.x
  mad r2.w, r0.w, r0.w, l(-1.000000)
  mad r0.x, r0.x, r2.w, l(1.000000)
  max r0.x, r0.x, l(0.000100)  // r0.x <- d

#line 998
  mul r0.x, r0.x, r0.x
  mul r0.x, r0.x, l(3.141593)
  div r0.x, r1.w, r0.x  // r0.x <- <NormalDistributionGGX_id242 return value>

#line 1454
  mul r9.xyz, r0.yyyy, r9.xyzx
  mul r9.xyz, r0.xxxx, r9.xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx

#line 1649
  mad r12.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r7.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1650
endif 

#line 1665
ilt r0.x, l(0), cb0[82].z
if_nz r0.x

#line 767
  add r7.xyz, -v0.xyzx, cb0[83].xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 768
  dp3 r0.x, r7.xyzx, r7.xyzx
  sqrt r0.y, r0.x  // r0.y <- lightVectorLength

#line 769
  div r7.xyz, r7.xyzx, r0.yyyy  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 593
  max r0.y, r0.x, l(0.000100)
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y  // r0.y <- attenuation

#line 342
  mul r0.x, r0.x, cb0[85].z  // r0.x <- factor

#line 343
  mad r0.x, -r0.x, r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)  // r0.x <- smoothFactor

#line 344
  mul r0.x, r0.x, r0.x  // r0.x <- <SmoothDistanceAttenuation_id136 return value>

#line 594
  mul r0.x, r0.x, r0.y  // r0.x <- attenuation

#line 585
  dp3 r0.y, -cb0[84].xyzx, r7.xyzx  // r0.y <- cd

#line 586
  mad_sat r0.y, r0.y, cb0[85].x, cb0[85].y  // r0.y <- attenuation

#line 587
  mul r0.y, r0.y, r0.y

#line 775
  mul r0.x, r0.y, r0.x  // r0.x <- attenuation

#line 1362
  dp3 r0.y, r1.xyzx, r7.xyzx
  max r0.y, r0.y, l(0.000100)  // r0.y <- streams.NdotL_id50

#line 922
  add r1.w, -r0.y, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- normalOffsetScale

#line 923
  mul r2.w, cb0[87].z, cb0[102].x
  dp2 r1.w, r2.wwww, r1.wwww

#line 1095
  mad r8.xyz, r1.wwww, r1.xyzx, v0.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 915
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb0[88].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb0[89].xyzw  // r9.y <- shadowPosition.y
  dp4 r1.w, r8.xyzw, cb0[90].xyzw  // r1.w <- shadowPosition.z
  dp4 r2.w, r8.xyzw, cb0[91].xyzw  // r2.w <- shadowPosition.w

#line 916
  add r9.z, r1.w, -cb0[101].x  // r9.z <- shadowPosition.z

#line 917
  div r8.xyz, r9.xyzx, r2.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 578
  mad r6.zw, r8.xxxy, cb0[87].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 579
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 580
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 581
  mul r8.xy, r8.xyxx, cb0[87].zwzz

#line 526
  mad r9.xy, -r6.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 528
  mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 529
  mad r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 530
  add r11.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 531
  div r6.zw, r6.zzzw, r9.zzzw
  add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 532
  mul r1.w, r9.x, r9.y

#line 533
  mad r13.xyzw, r10.xwzw, cb0[87].zwzw, r8.xyxy

#line 537
  mov r11.zw, r10.wwwy

#line 535
  mul r6.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 536
  mad r14.xyzw, r10.xyzy, cb0[87].zwzw, r8.xyxy

#line 537
  mad r15.xyzw, r11.xzxw, cb0[87].zwzw, r8.xyxy

#line 538
  mov r10.y, r11.y
  mul r9.xy, r9.xyxx, r9.zwzz

#line 539
  mad r10.xyzw, r10.xyzy, cb0[87].zwzw, r8.xyxy
  mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 540
  mad r8.xy, r11.xyxx, cb0[87].zwzz, r8.xyxx
  mul r2.w, r9.w, r9.z

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r13.xyxx, t1.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id150 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r13.zwzz, t1.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id150 return value>

#line 759
  mul r4.w, r4.w, r6.z
  mad r1.w, r1.w, r3.w, r4.w  // r1.w <- shadow

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.xyxx, t1.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id150 return value>

#line 759
  mad r1.w, r9.x, r3.w, r1.w

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.xyxx, t1.xxxx, s1, r8.z

#line 759
  mad r1.w, r6.w, r3.w, r1.w

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.zwzz, t1.xxxx, s1, r8.z

#line 759
  mad r1.w, r3.w, l(49.000000), r1.w

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.zwzz, t1.xxxx, s1, r8.z

#line 759
  mad r1.w, r11.z, r3.w, r1.w

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r10.xyxx, t1.xxxx, s1, r8.z

#line 759
  mad r1.w, r9.y, r3.w, r1.w

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r10.zwzz, t1.xxxx, s1, r8.z

#line 759
  mad r1.w, r11.w, r3.w, r1.w

#line 545
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r8.xyxx, t1.xxxx, s1, r8.z

#line 759
  mad r1.w, r2.w, r3.w, r1.w

#line 761
  mul r1.w, r1.w, l(0.006944)

#line 1364
  mul r8.xyz, r0.xxxx, cb0[86].xyzx
  mul r8.xyz, r1.wwww, r8.xyzx
  mul r8.xyz, r0.yyyy, r8.xyzx  // r8.x <- streams.lightColorNdotL_id45.x; r8.y <- streams.lightColorNdotL_id45.y; r8.z <- streams.lightColorNdotL_id45.z

#line 1464
  mad r2.xyz, r2.xyzx, r0.zzzz, r7.xyzx
  dp3 r0.x, r2.xyzx, r2.xyzx
  rsq r0.x, r0.x
  mul r2.xyz, r0.xxxx, r2.xyzx  // r2.x <- streams.H_id76.x; r2.y <- streams.H_id76.y; r2.z <- streams.H_id76.z

#line 1465
  dp3_sat r0.x, r1.xyzx, r2.xyzx  // r0.x <- streams.NdotH_id77

#line 1466
  dp3_sat r0.z, r7.xyzx, r2.xyzx  // r0.z <- streams.LdotH_id78

#line 1460
  mul r2.xyz, r5.xyzx, r8.xyzx

#line 1669
  mad r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 840
  add r7.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.z, -r0.z, l(1.000000)
  mul r1.w, r0.z, r0.z
  mul r1.w, r1.w, r1.w
  mul r0.z, r0.z, r1.w
  mad r7.xyz, r7.xyzx, r0.zzzz, r4.xyzx  // r7.x <- <FresnelSchlick_id212 return value>.x; r7.y <- <FresnelSchlick_id212 return value>.y; r7.z <- <FresnelSchlick_id212 return value>.z

#line 835
  mul r0.z, r0.w, l(0.500000)  // r0.z <- k

#line 836
  mad r1.w, -r0.w, l(0.500000), l(1.000000)
  mad r2.w, r0.y, r1.w, r0.z
  div r2.w, r0.y, r2.w  // r2.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r0.z, r6.y, r1.w, r0.z
  div r0.z, r6.y, r0.z  // r0.z <- <VisibilityhSchlickGGX_id228 return value>

#line 1002
  mul r0.z, r0.z, r2.w
  mul r0.y, r6.y, r0.y
  div r0.y, r0.z, r0.y  // r0.y <- <VisibilitySmithSchlickGGX_id230 return value>

#line 996
  mul r0.z, r0.w, r0.w  // r0.z <- alphaR2

#line 997
  mul r0.x, r0.x, r0.x
  mad r1.w, r0.w, r0.w, l(-1.000000)
  mad r0.x, r0.x, r1.w, l(1.000000)
  max r0.x, r0.x, l(0.000100)  // r0.x <- d

#line 998
  mul r0.x, r0.x, r0.x
  mul r0.x, r0.x, l(3.141593)
  div r0.x, r0.z, r0.x  // r0.x <- <NormalDistributionGGX_id242 return value>

#line 1454
  mul r7.xyz, r0.yyyy, r7.xyzx
  mul r0.xyz, r0.xxxx, r7.xyzx
  mul r0.xyz, r8.xyzx, r0.xyzx

#line 1673
  mad r12.xyz, r0.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1674
endif 

#line 1075
sqrt r0.x, r0.w
add r6.x, -r0.x, l(1.000000)  // r6.x <- glossiness

#line 1076
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r6.xyxx, t2.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 1077
mad r0.yzw, r4.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id418 return value>.x; r0.z <- <Compute_id418 return value>.y; r0.w <- <Compute_id418 return value>.z

#line 1345
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id597 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id597 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id597 return value>.z

#line 1687
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1334
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[100].xyzx  // r3.w <- sampleDirection.z

#line 894
mul r4.x, r2.w, r2.w  // r4.x <- y2

#line 895
mul r4.y, r3.w, r3.w  // r4.y <- z2

#line 899
mad r6.xyz, cb2[90].xyzx, r2.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 900
mad r6.xyz, cb2[91].xyzx, -r3.wwww, r6.xyzx

#line 901
mad r6.xyz, cb2[92].xyzx, r1.wwww, r6.xyzx

#line 904
mul r7.xyz, r2.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r1.wwww, r6.xyzx

#line 905
mul r7.xyz, r2.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r3.wwww, r6.xyzx

#line 906
mad r2.w, r4.y, l(3.000000), l(-1.000000)
mad r4.yzw, cb2[95].xxyz, r2.wwww, r6.xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z

#line 907
mul r6.xyz, r1.wwww, cb2[96].xyzx
mad r4.yzw, r6.xxyz, -r3.wwww, r4.yyzw

#line 908
mad r1.w, r1.w, r1.w, -r4.x
mad r4.xyz, cb2[97].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 1336
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightDiffuseColor_id48.x; r4.y <- streams.envLightDiffuseColor_id48.y; r4.z <- streams.envLightDiffuseColor_id48.z

#line 1337
dp3 r1.w, -r3.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r3.xyz, r1.xyzx, -r1.wwww, -r3.xyzx  // r3.x <- sampleDirection.x; r3.y <- sampleDirection.y; r3.z <- sampleDirection.z

#line 1338
dp3 r6.x, r3.xyzx, cb2[98].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r3.xyzx, cb2[99].xyzx  // r6.y <- sampleDirection.y
dp3 r1.w, r3.xyzx, cb2[100].xyzx  // r1.w <- sampleDirection.z

#line 1339
mov r6.z, -r1.w  // r6.z <- sampleDirection.z

#line 1061
mul r0.x, r0.x, cb2[97].w  // r0.x <- mipLevel

#line 1062
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r6.xyzx, t8.xyzw, s0, r0.x  // r3.x <- <Compute_id368 return value>.x; r3.y <- <Compute_id368 return value>.y; r3.z <- <Compute_id368 return value>.z

#line 1340
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightSpecularColor_id49.x; r3.y <- streams.envLightSpecularColor_id49.y; r3.z <- streams.envLightSpecularColor_id49.z

#line 1695
mad r2.xyz, r5.xyzx, r4.xyzx, r2.xyzx

#line 1699
mad r0.xyz, r0.yzwy, r3.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1714
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1782
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1825
utof o2.xyzw, cb0[26].xxxx

#line 1899
mov o0.w, cb1[0].w
mov o1.w, l(1.000000)
ret 
// Approximately 671 instruction slots used
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
const static int TMaxLightCount_id184 = 1;
const static int TLightCount_id190 = 1;
const static int TFilterSize_id196 = 5;
const static int TMaxLightCount_id198 = 1;
const static int TCascadeCountBase_id204 = 1;
const static int TLightCountBase_id205 = 1;
const static bool TCascadeDebug_id213 = false;
const static int TOrder_id217 = 3;
const static int TOrder_id219 = 3;
const static bool TInvert_id242 = true;
const static bool TIsEnergyConservative_id254 = false;
static const float PI_id256 = 3.14159265358979323846;
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
    float4 Input_0_id227;
    float Input_1_id235;
    float Input_2_id244;
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
    int LightCount_id197;
    SpotLightData Lights_id199[TMaxLightCount_id198];
    float2 ShadowMapTextureSize_id201;
    float2 ShadowMapTextureTexelSize_id202;
    float4x4 WorldToShadowCascadeUV_id206[TCascadeCountBase_id204 * TLightCountBase_id205];
    float4x4 InverseWorldToShadowCascadeUV_id207[TCascadeCountBase_id204 * TLightCountBase_id205];
    float4x4 ViewMatrices_id208[TCascadeCountBase_id204 * TLightCountBase_id205];
    float2 DepthRanges_id209[TCascadeCountBase_id204 * TLightCountBase_id205];
    float DepthBiases_id210[TLightCountBase_id205];
    float OffsetScales_id211[TLightCountBase_id205];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id228;
    float InputValue_id236;
    float InputValue_id245;
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
    float3 AmbientLight_id215;
    float3 SphericalColors_id220[TOrder_id219 * TOrder_id219];
    float MipCount_id221;
    float4x4 SkyMatrix_id223;
    float Intensity_id224;
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
Texture2D ShadowMapTexture_id200;
Texture2D EnvironmentLightingDFG_LUT_id257;
Texture2D ShadowMapTexture_id90;
Texture3D<uint2> LightClusters_id176;
Buffer<uint> LightIndices_id177;
Buffer<float4> PointLights_id181;
Buffer<float4> SpotLights_id182;
TextureCube CubeMap_id222;
float4 Project_id115(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id66(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id136(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id124(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id123(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id125(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id186.SampleLevel(LinearBorderSampler_id124, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id115(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id121(float2 base_uv, float2 st, out float3 kernel[16])
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
float SmoothDistanceAttenuation_id110(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id99(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id88(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id76(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id75(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id77(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id90.SampleLevel(LinearBorderSampler_id124, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id66(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id73(float2 base_uv, float2 st, out float3 kernel[16])
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
float Get3x3FilterKernel_id152(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id202, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id202, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id202, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id202, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id151(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id202, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id202, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id202, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id202, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id202, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id202, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id202, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id202, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id202, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id150(float2 position, float positionDepth)
{
    return ShadowMapTexture_id200.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
float Get7x7FilterKernel_id149(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id202, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id202, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id202, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id202, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id202, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id202, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id202, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id202, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id202, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id202, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id202, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id202, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id202, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id202, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id202, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id202, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id148(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id201;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id202;
}
float GetAngularAttenuation_id138(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id137(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id136(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id129(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id187;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id188;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id123(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id125(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id128(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id115(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id115(float4(ShadowMapTextureTexelSize_id188.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id115(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id127(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id115(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id115(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id188.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id115(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id126()
{

    {
        return 3.5;
    }
}
float GetDistanceAttenuation_id112(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id110(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id101(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id100(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id99(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id90(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id88(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id81(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id91;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id92;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id75(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id77(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id80(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id66(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id66(float4(ShadowMapTextureTexelSize_id92.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id66(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id79(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id66(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id66(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id92.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id66(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id78()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id74(float2 position, float positionDepth)
{
    return ShadowMapTexture_id90.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
void CalculatePCFKernelParameters_id72(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id91;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id92;
}
float Compute_id406()
{
    return InputValue_id245;
}
float Compute_id394()
{
    return InputValue_id236;
}
float4 Compute_id382()
{
    return InputValue_id228;
}
float FilterShadow_id144(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id148(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id151(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id150(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id139(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id137(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id138(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float SampleTextureAndCompare_id122(float2 position, float positionDepth)
{
    return ShadowMapTexture_id186.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
void CalculatePCFKernelParameters_id120(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id187;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id188;
}
float FilterThickness_id116(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id128(GetFilterRadiusInPixels_id126(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id127(GetFilterRadiusInPixels_id126(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id129(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id111(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id112(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id102(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id100(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id101(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id89(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id90(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id228(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id212(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id68(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id80(GetFilterRadiusInPixels_id78(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id79(GetFilterRadiusInPixels_id78(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id81(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id67(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id72(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id75(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id74(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id409(inout PS_STREAMS streams)
{
    streams.Input_2_id244 = Compute_id406();
}
void Compute_id397(inout PS_STREAMS streams)
{
    streams.Input_1_id235 = Compute_id394();
}
void Compute_id385(inout PS_STREAMS streams)
{
    streams.Input_0_id227 = Compute_id382();
}
float4 EvaluateSphericalHarmonics_id166(float3 sphericalColors[TOrder_id217 * TOrder_id217], float3 direction)
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
float ComputeShadowFromCascade_id147(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id206[cascadeIndex + lightIndex * TCascadeCountBase_id204]);
    shadowPosition.z -= DepthBiases_id210[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id144(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id146(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id202.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id140(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id139(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
float FilterShadow_id119(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id120(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id123(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id122(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id118(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id188.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id117(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id116(positionWS, streams.meshNormalWS_id18, float2(0.0f, 1.0f), WorldToShadow_id191[cascadeIndex], InverseWorldToShadow_id192[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id113(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id111(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id103(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id102(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id92(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id89(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
float NormalDistributionGGX_id242(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id256 * d * d);
}
float VisibilitySmithSchlickGGX_id230(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id228(alphaR, nDotL) * VisibilityhSchlickGGX_id228(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id218(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id212(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id71(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id152;
    return FilterThickness_id68(pixelPositionWS, meshNormalWS, DepthRanges_id157[arrayIndex], WorldToShadowCascadeUV_id154[arrayIndex], InverseWorldToShadowCascadeUV_id155[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id70(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id154[cascadeIndex + lightIndex * TCascadeCountBase_id152]);
    shadowPosition.z -= DepthBiases_id158[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id67(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id69(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id92.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id412(inout PS_STREAMS streams)
{
    return streams.Input_2_id244;
}
void Compute_id411(inout PS_STREAMS streams)
{

    {
        Compute_id409(streams);
    }
}
float Compute_id400(inout PS_STREAMS streams)
{
    return streams.Input_1_id235;
}
void Compute_id399(inout PS_STREAMS streams)
{

    {
        Compute_id397(streams);
    }
}
float4 Compute_id388(inout PS_STREAMS streams)
{
    return streams.Input_0_id227;
}
void Compute_id387(inout PS_STREAMS streams)
{

    {
        Compute_id385(streams);
    }
}
float4 Compute_id368(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id71;
    float mipLevel = sqrt(alpha) * MipCount_id221;
    return CubeMap_id222.SampleLevel(LinearSampler_id123, direction, mipLevel);
}
float4 Compute_id363(float3 direction)
{
    return EvaluateSphericalHarmonics_id166(SphericalColors_id220, direction);
}
void PrepareEnvironmentLight_id170(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
float3 Compute_id418(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id257.SampleLevel(LinearSampler_id123, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id161(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
float3 ComputeSpecularTextureProjection_id135(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id134(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id133(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id146(OffsetScales_id211[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    float3 shadow = ComputeShadowFromCascade_id147(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id86 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id132(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id199[lightIndex].PositionWS;
    data.DirectionWS = Lights_id199[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id199[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id199[lightIndex].Color;
    ProcessLight_id140(streams, data);
}
float3 ComputeSpecularTextureProjection_id109(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id108(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id107(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
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
    streams.thicknessWS_id86 = ComputeThickness_id117(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id118(OffsetScales_id194[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id191[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id193[lightIndex];
    float depth = DepthParameters_id195[lightIndex].x + (DepthParameters_id195[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id119(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id106(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id185[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id185[lightIndex].InvSquareRadius;
    data.Color = Lights_id185[lightIndex].Color;
    ProcessLight_id113(streams, data);
}
float3 ComputeSpecularTextureProjection_id98(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id97(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id96(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id86 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id95(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id103(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id87(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id86(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id85(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id86 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id84(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id177.Load(streams.lightIndex_id175);
    streams.lightIndex_id175++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id181.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id181.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id92(streams, pointLight);
}
void PrepareLightData_id91(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id171.y / (projectedDepth - ZProjection_id171.x);
    float2 texCoord = float2(streams.ScreenPosition_id168.x + 1, 1 - streams.ScreenPosition_id168.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id178 + ClusterDepthBias_id179), 0));
    streams.lightData_id174 = LightClusters_id176.Load(int4(texCoord * ClusterStride_id180, slice, 0));
    streams.lightIndex_id175 = streams.lightData_id174.x;
}
float Compute_id510(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id242(streams.alphaRoughness_id71, streams.NdotH_id77);
}
float Compute_id480(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id230(streams.alphaRoughness_id71, streams.NdotL_id50, streams.NdotV_id73);
}
float3 Compute_id450(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id218(f0, streams.LdotH_id78);
}
float3 ComputeSpecularTextureProjection_id63(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id62(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id61(inout PS_STREAMS streams, float3 position, int lightIndex)
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
    shadowPosition += GetShadowPositionOffset_id69(OffsetScales_id159[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    if (cascadeIndex < TCascadeCount_id160)
    {
        shadow = ComputeShadowFromCascade_id70(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id70(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id86 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id60(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id44 = Lights_id89[lightIndex].Color;
    streams.lightDirectionWS_id43 = -Lights_id89[lightIndex].DirectionWS;
}
float Compute_id415(inout PS_STREAMS streams)
{
    Compute_id411(streams);
    return Compute_id412(streams);
}
float Compute_id403(inout PS_STREAMS streams)
{
    Compute_id399(streams);
    return Compute_id400(streams);
}
float4 Compute_id391(inout PS_STREAMS streams)
{
    Compute_id387(streams);
    return Compute_id388(streams);
}
void ResetStream_id245()
{
}
void AfterLightingAndShading_id567()
{
}
void AfterLightingAndShading_id548()
{
}
void PrepareEnvironmentLight_id381(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
void PrepareEnvironmentLight_id378(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id170(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id58;
    float3 sampleDirection = mul(streams.normalWS_id20, (float3x3)SkyMatrix_id223);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id48 = Compute_id363(sampleDirection).rgb * Intensity_id224 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.x;
    sampleDirection = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id223);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id49 = Compute_id368(streams, sampleDirection).rgb * Intensity_id224 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeEnvironmentLightContribution_id597(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id72;
    return Compute_id418(specularColor, streams.alphaRoughness_id71, streams.NdotV_id73) * streams.envLightSpecularColor_id49;
}
float3 ComputeEnvironmentLightContribution_id541(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor * streams.envLightDiffuseColor_id48;
}
void PrepareEnvironmentLight_id373(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id161(streams);
    float3 lightColor = AmbientLight_id215 * streams.matAmbientOcclusion_id58;
    streams.envLightDiffuseColor_id48 = lightColor;
    streams.envLightSpecularColor_id49 = lightColor;
}
void PrepareDirectLight_id330(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id132(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id133(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id134(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id135(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id332()
{
    return LightCount_id197;
}
int GetMaxLightCount_id333()
{
    return TMaxLightCount_id198;
}
void PrepareDirectLights_id328()
{
}
void PrepareDirectLight_id305(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id106(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id107(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id108(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id109(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id307()
{
    return LightCount_id183;
}
int GetMaxLightCount_id309()
{
    return TMaxLightCount_id184;
}
void PrepareDirectLights_id303()
{
}
void PrepareDirectLight_id292(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id95(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id96(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id97(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id98(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id296(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y >> 16;
}
int GetMaxLightCount_id295(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y >> 16;
}
void PrepareDirectLights_id290()
{
}
void PrepareDirectLight_id279(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id84(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id85(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id86(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id87(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id284(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y & 0xFFFF;
}
int GetMaxLightCount_id283(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y & 0xFFFF;
}
void PrepareDirectLights_id282(inout PS_STREAMS streams)
{
    PrepareLightData_id91(streams);
}
float3 ComputeDirectLightContribution_id596(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id72;
    float3 fresnel = Compute_id450(streams, specularColor);
    float geometricShadowing = Compute_id480(streams);
    float normalDistribution = Compute_id510(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeDirectLightContribution_id540(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor / PI_id256 * streams.lightColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id66.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id76 = normalize(streams.viewWS_id69 + streams.lightDirectionWS_id43);
    streams.NdotH_id77 = saturate(dot(streams.normalWS_id20, streams.H_id76));
    streams.LdotH_id78 = saturate(dot(streams.lightDirectionWS_id43, streams.H_id76));
    streams.VdotH_id79 = streams.LdotH_id78;
}
void PrepareDirectLight_id255(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id60(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id61(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id62(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id63(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id257()
{
    return LightCount_id87;
}
int GetMaxLightCount_id258()
{
    return TMaxLightCount_id88;
}
void PrepareDirectLights_id253()
{
}
void PrepareForLightingAndShading_id564()
{
}
void PrepareForLightingAndShading_id545()
{
}
void PrepareMaterialForLightingAndShading_id244(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id51 = lerp(1.0, streams.matAmbientOcclusion_id58, streams.matAmbientOcclusionDirectLightingFactor_id59);
    streams.matDiffuseVisible_id70 = streams.matDiffuse_id54.rgb * lerp(1.0f, streams.matCavity_id60, streams.matCavityDiffuse_id61) * streams.matDiffuseSpecularAlphaBlend_id66.r * streams.matAlphaBlendColor_id67;
    streams.matSpecularVisible_id72 = streams.matSpecular_id56.rgb * streams.matSpecularIntensity_id57 * lerp(1.0f, streams.matCavity_id60, streams.matCavitySpecular_id62) * streams.matDiffuseSpecularAlphaBlend_id66.g * streams.matAlphaBlendColor_id67;
    streams.NdotV_id73 = max(dot(streams.normalWS_id20, streams.viewWS_id69), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id55;
    streams.alphaRoughness_id71 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id243(inout PS_STREAMS streams)
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
float4 Compute_id417(inout PS_STREAMS streams)
{
    float x = Compute_id415(streams);
    return float4(x, x, x, x);
}
float4 Compute_id405(inout PS_STREAMS streams)
{
    float x = Compute_id403(streams);
    return float4(x, x, x, x);
}
float4 Compute_id393(inout PS_STREAMS streams)
{
    return Compute_id391(streams);
}
void ResetStream_id246(inout PS_STREAMS streams)
{
    ResetStream_id245();
    streams.matBlend_id41 = 0.0f;
}
void Compute_id628(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id52);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id20 = -streams.normalWS_id20;
    ResetLightStream_id243(streams);
    PrepareMaterialForLightingAndShading_id244(streams);

    {
        PrepareForLightingAndShading_id545();
    }

    {
        PrepareForLightingAndShading_id564();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id253();
        const int maxLightCount = GetMaxLightCount_id258();
        int count = GetLightCount_id257();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id255(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id540(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id596(streams);
            }
        }
    }

    {
        PrepareDirectLights_id282(streams);
        const int maxLightCount = GetMaxLightCount_id283(streams);
        int count = GetLightCount_id284(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id279(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id540(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id596(streams);
            }
        }
    }

    {
        PrepareDirectLights_id290();
        const int maxLightCount = GetMaxLightCount_id295(streams);
        int count = GetLightCount_id296(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id292(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id540(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id596(streams);
            }
        }
    }

    {
        PrepareDirectLights_id303();
        const int maxLightCount = GetMaxLightCount_id309();
        int count = GetLightCount_id307();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id305(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id540(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id596(streams);
            }
        }
    }

    {
        PrepareDirectLights_id328();
        const int maxLightCount = GetMaxLightCount_id333();
        int count = GetLightCount_id332();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id330(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id540(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id596(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id373(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id541(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id597(streams);
        }
    }

    {
        PrepareEnvironmentLight_id378(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id541(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id597(streams);
        }
    }

    {
        PrepareEnvironmentLight_id381(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id541(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id597(streams);
        }
    }
    streams.shadingColor_id74 += directLightingContribution * PI_id256 + environmentLightingContribution;
    streams.shadingColorAlpha_id75 = streams.matDiffuse_id54.a;

    {
        AfterLightingAndShading_id548();
    }

    {
        AfterLightingAndShading_id567();
    }
}
void Compute_id612(inout PS_STREAMS streams)
{
    float metalness = Compute_id417(streams).r;
    streams.matSpecular_id56 = lerp(0.02, streams.matDiffuse_id54.rgb, metalness);
    streams.matDiffuse_id54.rgb = lerp(streams.matDiffuse_id54.rgb, 0, metalness);
}
void Compute_id607(inout PS_STREAMS streams)
{
    float glossiness = Compute_id405(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id55 = glossiness;
}
void Compute_id602(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id393(streams);
    streams.matDiffuse_id54 = colorBase;
    streams.matColorBase_id53 = colorBase;
}
void ResetStream_id247(inout PS_STREAMS streams)
{
    ResetStream_id246(streams);
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
float3 EncodeNormal_id57(float3 n)
{
    return n * 0.5 + 0.5;
}
void Compute_id53(inout PS_STREAMS streams)
{

    {
        Compute_id602(streams);
    }

    {
        Compute_id607(streams);
    }

    {
        Compute_id612(streams);
    }

    {
        Compute_id628(streams);
    }
}
void ResetStream_id52(inout PS_STREAMS streams)
{
    ResetStream_id247(streams);
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
float4 Compute_id51()
{
    return MaterialIndex_id84;
}
float4 Compute_id50(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id57(streams.normalWS_id20), 1);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id69 = normalize(Eye_id32.xyz - streams.PositionWS_id23.xyz);
    streams.shadingColor_id74 = 0;
    ResetStream_id52(streams);
    Compute_id53(streams);
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
    streams.ColorTarget1_id3 = Compute_id50(streams);
    streams.ColorTarget2_id4 = Compute_id51();
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

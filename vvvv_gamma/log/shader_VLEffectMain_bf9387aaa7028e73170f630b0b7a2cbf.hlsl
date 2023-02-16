/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.ModelTransformUsage: 2
@P StrideEffectBase.HasInstancing: True
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMGridMeshSelector_ShaderFX [{ShadingColor0 = ComputeColor}]
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSpecularColorRoughness}, {ShadingColor3 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id34 => Transformation.World
@C    WorldInverse_id35 => Transformation.WorldInverse
@C    WorldInverseTranspose_id36 => Transformation.WorldInverseTranspose
@C    WorldView_id37 => Transformation.WorldView
@C    WorldViewInverse_id38 => Transformation.WorldViewInverse
@C    WorldViewProjection_id39 => Transformation.WorldViewProjection
@C    WorldScale_id40 => Transformation.WorldScale
@C    EyeMS_id41 => Transformation.EyeMS
@C    MaterialIndex_id147 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    MeshIndex_id145 => SMGridMeshSelector_ShaderFX.MeshIndex
@C    InputValue_id209 => ShaderFX.InputValueFloat
@C    InputValue_id218 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id27 => Transformation.View
@C    ViewInverse_id28 => Transformation.ViewInverse
@C    Projection_id29 => Transformation.Projection
@C    ProjectionInverse_id30 => Transformation.ProjectionInverse
@C    ViewProjection_id31 => Transformation.ViewProjection
@C    ProjScreenRay_id32 => Transformation.ProjScreenRay
@C    Eye_id33 => Transformation.Eye
@C    NearClipPlane_id174 => Camera.NearClipPlane
@C    FarClipPlane_id175 => Camera.FarClipPlane
@C    ZProjection_id176 => Camera.ZProjection
@C    ViewSize_id177 => Camera.ViewSize
@C    AspectRatio_id178 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id150 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id152 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id154 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id155 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id159 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id160 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id161 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id162 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id163 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id164 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id171 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id183 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id184 => LightClustered.ClusterDepthBias
@C    ClusterStride_id185 => LightClustered.ClusterStride
@C    AmbientLight_id188 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id193 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id194 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id196 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id197 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id42 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id42 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id43 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id43 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id146 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id146 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id201 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id201 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id230 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id230 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id153 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id153 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id181 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id181 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id182 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id182 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id186 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id186 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id187 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id187 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id195 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id195 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id42 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    InstanceWorldInverse_id43 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
@R    ParticlesBuffer_id146 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: Vertex, Slot: (2-2)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Vertex, Slot: (1-1)]
@R    PerView => PerView [Stage: Vertex, Slot: (2-2)]
@R    LinearSampler_id117 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id119 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ParticlesBuffer_id201 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id230 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id153 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id181 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id182 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id186 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id187 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id195 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    SMGridMeshSelector_ShaderFX => 19b1ef34fb398a3aa79ae25149b83614
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    LightDirectionalGroup => 4b30b0154f396d93fd98b65dbdd2fe7f
@S    DirectLightGroupPerView => dba9b0c7c0e05b5469cf8940cc91d69c
@S    LightDirectional => 0e45e8c12e5e36d4bb0df5d5b2739bb1
@S    ShadowMapReceiverDirectional => b81b909e86a10160b58697624ea36c97
@S    ShadowMapReceiverBase => ecd55bb03a327260ea2ea0fddfaff4b5
@S    ShadowMapGroup => 6cd78766a20ef1d6d95cbbe5eec432b6
@S    ShadowMapCommon => 53c84311eb33d99ade37ecb188ae5785
@S    ShadowMapFilterBase => e42061be9b71cb375d3566138e7d8b8d
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
@G    Vertex => 5b29e63e3a988f8e2da7c988d07eca2c
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
//   float4x4 WorldInverse_id35;        // Offset:   64 Size:    64
//   float4x4 WorldInverseTranspose_id36;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id37;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id38;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id39; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id40;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id41;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id147;          // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id145;              // Offset:    0 Size:     4
//   float InputValue_id209;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id218;            // Offset:    8 Size:     4 [unused]
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
//   float NearClipPlane_id174;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id175;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id176;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id177;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id178;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id150;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id152;                    // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id154; // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id155;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id159[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id160[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id161[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id162[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id163;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id164;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id171[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id183;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id184;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id185;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id188;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id193[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id194;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id196;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id197;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for InstanceWorld_id42
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
// Resource bind info for InstanceWorldInverse_id43
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
// Resource bind info for ParticlesBuffer_id146
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
// InstanceWorld_id42                texture  struct         r/o             t0      1 
// InstanceWorldInverse_id43         texture  struct         r/o             t1      1 
// ParticlesBuffer_id146             texture  struct         r/o             t2      1 
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID173_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
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
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.x
dcl_temps 10
//
// Initial variable locations:
//   v0.x <- __input__.Position_id23.x; v0.y <- __input__.Position_id23.y; v0.z <- __input__.Position_id23.z; v0.w <- __input__.Position_id23.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id18.x; v2.y <- __input__.meshNormal_id18.y; v2.z <- __input__.meshNormal_id18.z; 
//   o4.x <- <VSMain return value>.InstanceID_id13; 
//   o3.x <- <VSMain return value>.ScreenPosition_id173.x; o3.y <- <VSMain return value>.ScreenPosition_id173.y; o3.z <- <VSMain return value>.ScreenPosition_id173.z; o3.w <- <VSMain return value>.ScreenPosition_id173.w; 
//   o2.x <- <VSMain return value>.DepthVS_id25; o2.y <- <VSMain return value>.normalWS_id21.x; o2.z <- <VSMain return value>.normalWS_id21.y; o2.w <- <VSMain return value>.normalWS_id21.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id24.x; o0.y <- <VSMain return value>.PositionWS_id24.y; o0.z <- <VSMain return value>.PositionWS_id24.z; o0.w <- <VSMain return value>.PositionWS_id24.w
//
#line 1264 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_bf9387aaa7028e73170f630b0b7a2cbf.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v1.x, l(60), t2.xxxx
ftou r0.x, r0.x  // r0.x <- m

#line 1265
ieq r0.x, r0.x, cb1[0].x
if_nz r0.x

#line 1229
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

#line 1266
endif   // r5.x <- <GetInstanceWorld_id38 return value>._m03; r5.y <- <GetInstanceWorld_id38 return value>._m13; r5.z <- <GetInstanceWorld_id38 return value>._m23; r5.w <- <GetInstanceWorld_id38 return value>._m33

#line 1267
if_z r0.x
  mov r6.xyzw, l(0,0,0,0)
  mov r7.xyzw, l(0,0,0,0)
  mov r8.xyzw, l(0,0,0,0)
  mov r5.xyzw, l(0,0,0,0)
endif 

#line 1297
dp4 r1.x, v0.xyzw, r6.xyzw  // r1.x <- streams.PositionWS_id24.x
dp4 r1.y, v0.xyzw, r7.xyzw  // r1.y <- streams.PositionWS_id24.y
dp4 r1.z, v0.xyzw, r8.xyzw  // r1.z <- streams.PositionWS_id24.z
dp4 r1.w, v0.xyzw, r5.xyzw  // r1.w <- streams.PositionWS_id24.w

#line 1257
dp4 r2.x, r1.xyzw, cb2[16].xyzw  // r2.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r2.y, r1.xyzw, cb2[17].xyzw  // r2.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r2.z, r1.xyzw, cb2[18].xyzw  // r2.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r2.w, r1.xyzw, cb2[19].xyzw  // r2.w <- <ComputeShadingPosition_id11 return value>.w

#line 1321
if_nz r0.x

#line 1283
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

#line 1322
  mov r5.x, r0.y  // r5.x <- <GetInstanceWorldInverse_id39 return value>._m00
  mov r5.y, r3.x  // r5.y <- <GetInstanceWorldInverse_id39 return value>._m01
  mov r5.z, r4.x  // r5.z <- <GetInstanceWorldInverse_id39 return value>._m02
  mov r6.x, r0.z  // r6.x <- <GetInstanceWorldInverse_id39 return value>._m10
  mov r6.y, r3.y  // r6.y <- <GetInstanceWorldInverse_id39 return value>._m11
  mov r6.z, r4.y  // r6.z <- <GetInstanceWorldInverse_id39 return value>._m12
  mov r4.x, r0.w  // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20
  mov r4.y, r3.z
endif   // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20; r4.y <- <GetInstanceWorldInverse_id39 return value>._m21; r4.z <- <GetInstanceWorldInverse_id39 return value>._m22

#line 1323
if_z r0.x
  mov r5.xyz, l(0,0,0,0)
  mov r6.xyz, l(0,0,0,0)
  mov r4.xyz, l(0,0,0,0)
endif 

#line 1350
dp3 o2.y, r5.xyzx, v2.xyzx
dp3 o2.z, r6.xyzx, v2.xyzx
dp3 o2.w, r4.xyzx, v2.xyzx

#line 1402
mov o0.xyzw, r1.xyzw
mov o1.xyzw, r2.xyzw
mov o2.x, r2.w
mov o3.xyzw, r2.xyzw
mov o4.x, v1.x
ret 
// Approximately 93 instruction slots used
@G    Pixel => 29e111af047e2dca46d1322e57165936
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
//   uint MaterialIndex_id147;          // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id145;              // Offset:    0 Size:     4 [unused]
//   float InputValue_id209;            // Offset:    4 Size:     4
//   float InputValue_id218;            // Offset:    8 Size:     4
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
//   float NearClipPlane_id174;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id175;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id176;          // Offset:  360 Size:     8
//   float2 ViewSize_id177;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id178;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id150;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id152;                    // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id154; // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id155;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id159[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id160[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id161[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id162[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id163;           // Offset: 1296 Size:     4
//   float OffsetScales_id164;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id171[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id183;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id184;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id185;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id188;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id193[9];   // Offset: 1424 Size:   140
//   float MipCount_id194;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id196;          // Offset: 1568 Size:    64
//   float Intensity_id197;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id201
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
// LinearSampler_id117               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id119  sampler_c      NA          NA             s1      1 
// ParticlesBuffer_id201             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id230    texture  float4          2d             t1      1 
// ShadowMapTexture_id153            texture  float4          2d             t2      1 
// LightClusters_id181               texture   uint2          3d             t3      1 
// LightIndices_id182                texture    uint         buf             t4      1 
// PointLights_id186                 texture  float4         buf             t5      1 
// SpotLights_id187                  texture  float4         buf             t6      1 
// CubeMap_id195                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID173_SEM     0   xyzw        3     NONE   float   xy w
// SV_InstanceID            0   x           4     NONE    uint   x   
// SV_IsFrontFace           0   x           5    FFACE    uint   x   
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
dcl_constantbuffer CB0[27], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_structured t0, 64
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
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_temps 27
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id24.x; v0.y <- __input__.PositionWS_id24.y; v0.z <- __input__.PositionWS_id24.z; v0.w <- __input__.PositionWS_id24.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id25; v2.y <- __input__.normalWS_id21.x; v2.z <- __input__.normalWS_id21.y; v2.w <- __input__.normalWS_id21.z; 
//   v3.x <- __input__.ScreenPosition_id173.x; v3.y <- __input__.ScreenPosition_id173.y; v3.z <- __input__.ScreenPosition_id173.z; v3.w <- __input__.ScreenPosition_id173.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1378 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_bf9387aaa7028e73170f630b0b7a2cbf.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id173.x; r0.y <- streams.ScreenPosition_id173.y

#line 1344
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1345
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1275
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id72.x; r2.y <- streams.viewWS_id72.y; r2.z <- streams.viewWS_id72.z

#line 508
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v4.x, l(48), t0.xyzx  // r3.x <- p.Col.x; r3.y <- p.Col.y; r3.z <- p.Col.z

#line 1193
add r0.z, -cb1[0].y, l(1.000000)  // r0.z <- glossiness

#line 1185
add r4.xyz, r3.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].zzzz, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id59.x; r4.y <- streams.matSpecular_id59.y; r4.z <- streams.matSpecular_id59.z

#line 1186
mad r3.xyz, cb1[0].zzzz, -r3.xyzx, r3.xyzx  // r3.x <- streams.matDiffuse_id57.x; r3.y <- streams.matDiffuse_id57.y; r3.z <- streams.matDiffuse_id57.z

#line 1050
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z

#line 1007
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id76

#line 1008
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 1009
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id74

#line 658
dp2 r0.w, cb2[82].xxxx, cb2[28].zzzz

#line 650
mov r6.w, l(1.000000)

#line 1068
mov r1.w, r5.y  // r1.w <- streams.NdotV_id76
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id21.x; r7.y <- streams.normalWS_id21.y; r7.z <- streams.normalWS_id21.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id24.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id24.y; r8.y <- streams.PositionWS_id24.z
mov r8.zw, r2.xxxy  // r8.z <- streams.viewWS_id72.x; r8.w <- streams.viewWS_id72.y
mov r9.z, r2.z  // r9.z <- streams.viewWS_id72.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id73.x; r10.y <- streams.matDiffuseVisible_id73.y; r10.z <- streams.matDiffuseVisible_id73.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id75.x; r11.y <- streams.matSpecularVisible_id75.y; r11.z <- streams.matSpecularVisible_id75.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id74
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, v2.x  // r2.w <- streams.DepthVS_id25
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r5.z, r3.w, l(1)
  breakc_nz r5.z

#line 1070
  ige r5.z, r3.w, cb2[25].x
  if_nz r5.z

#line 1072
    break 

#line 1073
  endif 

#line 977
  dp3 r5.z, r7.xyzx, -cb2[26].xyzx
  max r5.z, r5.z, l(0.000100)  // r5.z <- streams.NdotL_id53

#line 803
  ishl r5.w, r3.w, l(2)  // r5.w <- cascadeIndexBase

#line 810
  lt r9.w, cb2[r5.w + 83].x, r2.w

#line 813
  and r9.w, r9.w, l(1)  // r9.w <- cascadeIndex

#line 810
  bfi r13.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r3.wwww, l(1, 2, 0, 0)
  lt r10.w, cb2[r13.x + 83].x, r2.w

#line 813
  movc r9.w, r10.w, l(2), r9.w

#line 810
  lt r10.w, cb2[r13.y + 83].x, r2.w

#line 813
  movc r9.w, r10.w, l(3), r9.w

#line 657
  add r12.w, -r5.z, l(1.000000)
  max r12.w, r12.w, l(0.000000)  // r12.w <- normalOffsetScale

#line 658
  mul r12.w, r0.w, r12.w

#line 818
  mov r13.x, r7.w
  mov r13.yz, r8.xxyx
  mad r6.xyz, r12.wwww, r7.xyzx, r13.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 650
  bfi r12.w, l(30), l(2), r3.w, r9.w
  ishl r13.x, r9.w, l(2)
  bfi r13.x, l(30), l(4), r3.w, r13.x
  dp4 r14.x, r6.xyzw, cb2[r13.x + 29].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r6.xyzw, cb2[r13.x + 30].xyzw  // r14.y <- shadowPosition.y
  dp4 r13.y, r6.xyzw, cb2[r13.x + 31].xyzw  // r13.y <- shadowPosition.z
  dp4 r13.x, r6.xyzw, cb2[r13.x + 32].xyzw  // r13.x <- shadowPosition.w

#line 651
  add r14.z, r13.y, -cb2[81].x  // r14.z <- shadowPosition.z

#line 652
  div r13.xyz, r14.xyzx, r13.xxxx  // r13.x <- shadowPosition.x; r13.y <- shadowPosition.y; r13.z <- shadowPosition.z

#line 492
  mad r13.xy, r13.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 493
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- st.x; r13.y <- st.y

#line 494
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 495
  mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 392
  mad r15.xyzw, r13.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r15.x <- uvW1.x; r15.y <- uvW1.y

#line 393
  mad r16.xyzw, r13.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r16.x <- uvW0.y; r16.y <- uvW0.x

#line 395
  mad r17.xyzw, r13.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 394
  div r14.zw, r17.xxxy, r16.yyyx
  add r18.xw, r14.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 395
  div r14.zw, r17.zzzw, r15.xxxy
  add r18.yz, r14.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 396
  mad r14.zw, r13.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
  div r14.zw, r14.zzzw, r15.wwwz
  add r17.xw, r14.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r17.x <- uv2.y; r17.w <- uv2.x

#line 397
  div r13.xy, r13.xyxx, r16.zwzz
  add r19.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r19.x <- uv3.x; r19.y <- uv3.y

#line 399
  mad r20.xyzw, r18.xwzw, cb2[28].zwzw, r14.xyxy

#line 404
  mov r17.yz, r18.wwyw

#line 405
  mov r19.zw, r17.yyyz

#line 403
  mad r21.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy

#line 404
  mad r22.xyzw, r17.wywz, cb2[28].zwzw, r14.xyxy

#line 405
  mad r23.xyzw, r19.xzxw, cb2[28].zwzw, r14.xyxy

#line 406
  mov r18.y, r17.x
  mul r13.xy, -r15.wzww, r16.xyxx

#line 407
  mad r24.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy
  mul r14.zw, r15.yyyx, -r15.wwwz

#line 408
  mad r19.zw, r17.wwwx, cb2[28].zzzw, r14.xxxy
  mul r25.xy, r15.yzyy, r15.xwxx

#line 409
  mov r18.w, r19.x
  mad r18.yw, r18.wwwy, cb2[28].zzzw, r14.xxxy

#line 411
  mov r17.xz, r18.xxzx

#line 410
  mov r17.y, r19.y
  mul r18.xz, r16.xxyx, -r16.zzwz

#line 411
  mad r26.xyzw, r17.xyzy, cb2[28].zwzw, r14.xyxy
  mul r17.xz, r15.yyxy, -r16.zzwz

#line 412
  mad r17.yw, r17.wwwy, cb2[28].zzzw, r14.xxxy
  mul r15.xyzw, r15.xyzw, r16.xyzw

#line 413
  mad r14.xy, r19.xyxx, cb2[28].zwzz, r14.xyxx
  mul r16.xy, r16.xwxx, r16.yzyy

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r20.xyxx, t2.xxxx, s1, r13.z  // r13.w <- <SampleTextureAndCompare_id86 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r16.z, r20.zwzz, t2.xxxx, s1, r13.z  // r16.z <- <SampleTextureAndCompare_id86 return value>

#line 569
  mul r15.x, r15.x, r16.z
  mad r13.w, r16.x, r13.w, r15.x  // r13.w <- shadow

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.x, r22.xyxx, t2.xxxx, s1, r13.z  // r15.x <- <SampleTextureAndCompare_id86 return value>

#line 569
  mad r13.x, r13.x, r15.x, r13.w  // r13.x <- shadow

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r23.xyxx, t2.xxxx, s1, r13.z  // r13.w <- <SampleTextureAndCompare_id86 return value>

#line 569
  mad r13.x, r18.x, r13.w, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r21.xyxx, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r15.y, r13.w, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r21.zwzz, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r25.x, r13.w, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r22.zwzz, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r14.z, r13.w, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r23.zwzz, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r17.x, r13.w, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r24.xyxx, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r13.y, r13.w, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r24.zwzz, t2.xxxx, s1, r13.z  // r13.y <- <SampleTextureAndCompare_id86 return value>

#line 569
  mad r13.x, r14.w, r13.y, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r19.zwzz, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r25.y, r13.y, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r18.ywyy, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r15.z, r13.y, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r26.xyxx, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r18.z, r13.y, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r26.zwzz, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r17.z, r13.y, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r17.ywyy, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r15.w, r13.y, r13.x

#line 487
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r14.xyxx, t2.xxxx, s1, r13.z

#line 569
  mad r13.x, r16.y, r13.y, r13.x

#line 571
  mul r13.yzw, r13.xxxx, l(0.000000, 0.000370, 0.000370, 0.000370)  // r13.w <- shadow

#line 824
  ilt r14.x, l(0), r9.w
  if_nz r14.x

#line 826
    iadd r14.x, r12.w, l(-1)
    add r14.x, -cb2[r14.x + 83].x, cb2[r12.w + 83].x  // r14.x <- splitSize

#line 827
  else 
    mov r14.x, cb2[r12.w + 83].x  // r14.x <- splitSize
  endif 

#line 828
  add r12.w, -r2.w, cb2[r12.w + 83].x
  div r12.w, r12.w, r14.x  // r12.w <- splitDist

#line 829
  lt r14.x, r12.w, l(0.200000)
  if_nz r14.x

#line 832
    if_nz r10.w

#line 834
      mov r13.yzw, r13.wwww  // r13.y <- shadow.x; r13.z <- shadow.y; r13.w <- shadow.z
    else 

#line 831
      mul_sat r10.w, r12.w, l(5.000000)
      mad r12.w, r10.w, l(-2.000000), l(3.000000)
      mul r10.w, r10.w, r10.w
      mul r10.w, r10.w, r12.w  // r10.w <- lerpAmt

#line 650
      ishl r5.w, r5.w, l(2)
      imad r5.w, r9.w, l(4), r5.w
      iadd r5.w, r5.w, l(4)
      dp4 r14.x, r6.xyzw, cb2[r5.w + 29].xyzw  // r14.x <- shadowPosition.x
      dp4 r14.y, r6.xyzw, cb2[r5.w + 30].xyzw  // r14.y <- shadowPosition.y
      dp4 r9.w, r6.xyzw, cb2[r5.w + 31].xyzw  // r9.w <- shadowPosition.z
      dp4 r5.w, r6.xyzw, cb2[r5.w + 32].xyzw  // r5.w <- shadowPosition.w

#line 651
      add r14.z, r9.w, -cb2[81].x  // r14.z <- shadowPosition.z

#line 652
      div r6.xyz, r14.xyzx, r5.wwww  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 492
      mad r6.xy, r6.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r14.xy, r6.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 493
      add r6.xy, r6.xyxx, -r14.xyxx  // r6.x <- st.x; r6.y <- st.y

#line 494
      add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 495
      mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 392
      mad r15.xyzw, r6.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r15.x <- uvW1.x; r15.y <- uvW1.y

#line 393
      mad r16.xyzw, r6.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r16.x <- uvW0.y; r16.y <- uvW0.x

#line 395
      mad r17.xyzw, r6.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 394
      div r14.zw, r17.xxxy, r16.yyyx
      add r18.xw, r14.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 395
      div r14.zw, r17.zzzw, r15.xxxy
      add r18.yz, r14.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 396
      mad r14.zw, r6.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r14.zw, r14.zzzw, r15.wwwz
      add r17.xw, r14.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r17.x <- uv2.y; r17.w <- uv2.x

#line 397
      div r6.xy, r6.xyxx, r16.zwzz
      add r19.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r19.x <- uv3.x; r19.y <- uv3.y

#line 399
      mad r20.xyzw, r18.xwzw, cb2[28].zwzw, r14.xyxy

#line 404
      mov r17.yz, r18.wwyw

#line 405
      mov r19.zw, r17.yyyz

#line 403
      mad r21.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy

#line 404
      mad r22.xyzw, r17.wywz, cb2[28].zwzw, r14.xyxy

#line 405
      mad r23.xyzw, r19.xzxw, cb2[28].zwzw, r14.xyxy

#line 406
      mov r18.y, r17.x
      mul r6.xy, -r15.wzww, r16.xyxx

#line 407
      mad r24.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy
      mul r14.zw, r15.yyyx, -r15.wwwz

#line 408
      mad r19.zw, r17.wwwx, cb2[28].zzzw, r14.xxxy
      mul r25.xy, r15.yzyy, r15.xwxx

#line 409
      mov r18.w, r19.x
      mad r18.yw, r18.wwwy, cb2[28].zzzw, r14.xxxy

#line 411
      mov r17.xz, r18.xxzx

#line 410
      mov r17.y, r19.y
      mul r18.xz, r16.xxyx, -r16.zzwz

#line 411
      mad r26.xyzw, r17.xyzy, cb2[28].zwzw, r14.xyxy
      mul r17.xz, r15.yyxy, -r16.zzwz

#line 412
      mad r17.yw, r17.wwwy, cb2[28].zzzw, r14.xxxy
      mul r15.xyzw, r15.xyzw, r16.xyzw

#line 413
      mad r14.xy, r19.xyxx, cb2[28].zwzz, r14.xyxx
      mul r16.xy, r16.xwxx, r16.yzyy

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.xyxx, t2.xxxx, s1, r6.z  // r5.w <- <SampleTextureAndCompare_id86 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r20.zwzz, t2.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id86 return value>

#line 569
      mul r9.w, r9.w, r15.x
      mad r5.w, r16.x, r5.w, r9.w  // r5.w <- shadow

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r22.xyxx, t2.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id86 return value>

#line 569
      mad r5.w, r6.x, r9.w, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r23.xyxx, t2.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id86 return value>

#line 569
      mad r5.w, r18.x, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r21.xyxx, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r15.y, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r21.zwzz, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r25.x, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r22.zwzz, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r14.z, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r23.zwzz, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r17.x, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r24.xyxx, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r6.y, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r24.zwzz, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r14.w, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r19.zwzz, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r25.y, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r18.ywyy, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r15.z, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r26.xyxx, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r18.z, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r26.zwzz, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r17.z, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r17.ywyy, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r15.w, r6.x, r5.w

#line 487
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r14.xyxx, t2.xxxx, s1, r6.z

#line 569
      mad r5.w, r16.y, r6.x, r5.w

#line 571
      mul r5.w, r5.w, l(0.000370)

#line 838
      mad r6.x, r13.x, l(0.000370), -r5.w
      mad r13.yzw, r10.wwww, r6.xxxx, r5.wwww  // r13.y <- shadow.x; r13.z <- shadow.y; r13.w <- shadow.z

#line 839
    endif 

#line 840
  endif 

#line 979
  mul r6.xyz, r13.yzwy, cb2[27].xyzx
  mul r6.xyz, r5.zzzz, r6.xyzx  // r6.x <- streams.lightColorNdotL_id48.x; r6.y <- streams.lightColorNdotL_id48.y; r6.z <- streams.lightColorNdotL_id48.z

#line 969
  mov r9.xy, r8.zwzz
  add r9.xyw, r9.xyxz, -cb2[26].xyxz
  dp3 r5.w, r9.xywx, r9.xywx
  rsq r5.w, r5.w
  mul r9.xyw, r5.wwww, r9.xyxw  // r9.x <- streams.H_id79.x; r9.y <- streams.H_id79.y; r9.w <- streams.H_id79.z

#line 970
  dp3_sat r5.w, r7.xyzx, r9.xywx  // r5.w <- streams.NdotH_id80

#line 971
  dp3_sat r9.x, -cb2[26].xyzx, r9.xywx  // r9.x <- streams.LdotH_id81

#line 965
  mul r13.xyz, r6.xyzx, r10.xyzx

#line 1078
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 539
  add r14.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.x, -r9.x, l(1.000000)
  mul r9.y, r9.x, r9.x
  mul r9.y, r9.y, r9.y
  mul r9.x, r9.y, r9.x
  mad r9.xyw, r14.xyxz, r9.xxxx, r11.xyxz  // r9.x <- <FresnelSchlick_id170 return value>.x; r9.y <- <FresnelSchlick_id170 return value>.y; r9.w <- <FresnelSchlick_id170 return value>.z

#line 534
  mul r10.w, r11.w, l(0.500000)  // r10.w <- k

#line 535
  mad r12.w, -r11.w, l(0.500000), l(1.000000)
  mad r13.w, r5.z, r12.w, r10.w
  div r13.w, r5.z, r13.w  // r13.w <- <VisibilityhSchlickGGX_id186 return value>
  mad r10.w, r1.w, r12.w, r10.w
  div r10.w, r1.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id186 return value>

#line 637
  mul r10.w, r10.w, r13.w
  mul r5.z, r1.w, r5.z
  div r5.z, r10.w, r5.z  // r5.z <- <VisibilitySmithSchlickGGX_id188 return value>

#line 631
  mul r10.w, r11.w, r11.w  // r10.w <- alphaR2

#line 632
  mul r5.w, r5.w, r5.w
  mad r12.w, r11.w, r11.w, l(-1.000000)
  mad r5.w, r5.w, r12.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 633
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r10.w, r5.w  // r5.w <- <NormalDistributionGGX_id200 return value>

#line 959
  mul r9.xyw, r5.zzzz, r9.xyxw
  mul r9.xyw, r5.wwww, r9.xyxw
  mul r6.xyz, r6.xyzx, r9.xywx

#line 1082
  mad r12.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1068
  iadd r3.w, r3.w, l(1)

#line 1084
endloop 

#line 775
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 776
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 777
mad r0.w, r0.w, cb2[86].y, cb2[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 778
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 777
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 778
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t3.xyzw  // r0.x <- streams.lightData_id179.x; r0.y <- streams.lightData_id179.y

#line 947
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id241 return value>

#line 1092
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id24.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id24.y; r7.y <- streams.PositionWS_id24.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id72.x; r7.w <- streams.viewWS_id72.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id72.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matDiffuseVisible_id73.x; r9.y <- streams.matDiffuseVisible_id73.y; r9.z <- streams.matDiffuseVisible_id73.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id75.x; r10.y <- streams.matSpecularVisible_id75.y; r10.z <- streams.matSpecularVisible_id75.z
mov r10.w, r0.z  // r10.w <- streams.alphaRoughness_id74
mov r5.w, r5.y  // r5.w <- streams.NdotV_id76
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id180
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1094
  if_nz r2.w

#line 1096
    break 

#line 1097
  endif 

#line 762
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 763
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id180

#line 765
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t5.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 766
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t5.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 526
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 527
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 528
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 433
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 338
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 339
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 340
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id100 return value>

#line 434
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 933
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id53

#line 935
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id48.x; r14.y <- streams.lightColorNdotL_id48.y; r14.z <- streams.lightColorNdotL_id48.z

#line 969
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id79.x; r8.y <- streams.H_id79.y; r8.w <- streams.H_id79.z

#line 970
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id80

#line 971
  dp3_sat r8.x, r13.xyzx, r8.xywx  // r8.x <- streams.LdotH_id81

#line 965
  mul r13.xyz, r9.xyzx, r14.xyzx

#line 1102
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 539
  add r15.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.x, -r8.x, l(1.000000)
  mul r8.y, r8.x, r8.x
  mul r8.y, r8.y, r8.y
  mul r8.x, r8.y, r8.x
  mad r8.xyw, r15.xyxz, r8.xxxx, r10.xyxz  // r8.x <- <FresnelSchlick_id170 return value>.x; r8.y <- <FresnelSchlick_id170 return value>.y; r8.w <- <FresnelSchlick_id170 return value>.z

#line 534
  mul r9.w, r10.w, l(0.500000)  // r9.w <- k

#line 535
  mad r11.w, -r10.w, l(0.500000), l(1.000000)
  mad r12.w, r3.w, r11.w, r9.w
  div r12.w, r3.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id186 return value>
  mad r9.w, r5.w, r11.w, r9.w
  div r9.w, r5.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id186 return value>

#line 637
  mul r9.w, r9.w, r12.w
  mul r3.w, r5.w, r3.w
  div r3.w, r9.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id188 return value>

#line 631
  mul r9.w, r10.w, r10.w  // r9.w <- alphaR2

#line 632
  mul r2.w, r2.w, r2.w
  mad r11.w, r10.w, r10.w, l(-1.000000)
  mad r2.w, r2.w, r11.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 633
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r9.w, r2.w  // r2.w <- <NormalDistributionGGX_id200 return value>

#line 959
  mul r8.xyw, r3.wwww, r8.xyxw
  mul r8.xyw, r2.wwww, r8.xyxw
  mul r8.xyw, r14.xyxz, r8.xyxw

#line 1106
  mad r11.xyz, r8.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1092
  iadd r1.w, r1.w, l(1)

#line 1108
endloop   // r5.z <- streams.lightIndex_id180

#line 925
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id253 return value>

#line 1116
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id24.x; r6.y <- streams.PositionWS_id24.y; r6.z <- streams.PositionWS_id24.z
mov r7.xyz, r4.xyzx  // r7.x <- streams.matSpecularVisible_id75.x; r7.y <- streams.matSpecularVisible_id75.y; r7.z <- streams.matSpecularVisible_id75.z
mov r7.w, r0.z  // r7.w <- streams.alphaRoughness_id74
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id21.x; r8.y <- streams.normalWS_id21.y; r8.z <- streams.normalWS_id21.z
mov r9.xyz, r2.xyzx  // r9.z <- streams.viewWS_id72.z; r9.x <- streams.viewWS_id72.x; r9.y <- streams.viewWS_id72.y
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id73.x; r10.y <- streams.matDiffuseVisible_id73.y; r10.z <- streams.matDiffuseVisible_id73.z
mov r12.xyz, r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r0.yw, r5.yyyz  // r0.y <- streams.NdotV_id76; r0.w <- streams.lightIndex_id180
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 1118
  if_nz r2.w

#line 1120
    break 

#line 1121
  endif 

#line 734
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.wwww, t4.yzwx  // r2.w <- realLightIndex

#line 735
  iadd r0.w, r0.w, l(1)  // r0.w <- streams.lightIndex_id180

#line 737
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r3.wwww, t6.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 740
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 738
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t6.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z

#line 739
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t6.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z

#line 740
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t6.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 513
  add r13.xyz, -r6.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 514
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 515
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 426
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 332
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 333
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 334
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id111 return value>

#line 427
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 418
  dp3 r3.w, -r15.xyzx, r13.xyzx  // r3.w <- cd

#line 419
  mad_sat r3.w, r3.w, r14.x, r14.y  // r3.w <- attenuation

#line 420
  mul r3.w, r3.w, r3.w

#line 521
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 911
  dp3 r3.w, r8.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id53

#line 913
  mul r14.xyz, r2.wwww, r16.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id48.x; r14.y <- streams.lightColorNdotL_id48.y; r14.z <- streams.lightColorNdotL_id48.z

#line 969
  add r15.xyz, r9.xyzx, r13.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id79.x; r15.y <- streams.H_id79.y; r15.z <- streams.H_id79.z

#line 970
  dp3_sat r2.w, r8.xyzx, r15.xyzx  // r2.w <- streams.NdotH_id80

#line 971
  dp3_sat r5.w, r13.xyzx, r15.xyzx  // r5.w <- streams.LdotH_id81

#line 965
  mul r13.xyz, r10.xyzx, r14.xyzx

#line 1126
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 539
  add r15.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r15.xyz, r15.xyzx, r5.wwww, r7.xyzx  // r15.x <- <FresnelSchlick_id170 return value>.x; r15.y <- <FresnelSchlick_id170 return value>.y; r15.z <- <FresnelSchlick_id170 return value>.z

#line 534
  mul r5.w, r7.w, l(0.500000)  // r5.w <- k

#line 535
  mad r6.w, -r7.w, l(0.500000), l(1.000000)
  mad r8.w, r3.w, r6.w, r5.w
  div r8.w, r3.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id186 return value>
  mad r5.w, r0.y, r6.w, r5.w
  div r5.w, r0.y, r5.w  // r5.w <- <VisibilityhSchlickGGX_id186 return value>

#line 637
  mul r5.w, r5.w, r8.w
  mul r3.w, r0.y, r3.w
  div r3.w, r5.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id188 return value>

#line 631
  mul r5.w, r7.w, r7.w  // r5.w <- alphaR2

#line 632
  mul r2.w, r2.w, r2.w
  mad r6.w, r7.w, r7.w, l(-1.000000)
  mad r2.w, r2.w, r6.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 633
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r5.w, r2.w  // r2.w <- <NormalDistributionGGX_id200 return value>

#line 959
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1130
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1116
  iadd r1.w, r1.w, l(1)

#line 1132
endloop   // r0.w <- streams.lightIndex_id180

#line 710
sqrt r4.w, r0.z
add r5.x, -r4.w, l(1.000000)  // r5.x <- glossiness

#line 711
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r5.xyxx, t1.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 712
mad r0.xyz, r4.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id324 return value>.x; r0.y <- <Compute_id324 return value>.y; r0.z <- <Compute_id324 return value>.z

#line 894
mul r5.xyz, r0.xyzx, cb2[88].xyzx  // r5.x <- <ComputeEnvironmentLightContribution_id503 return value>.x; r5.y <- <ComputeEnvironmentLightContribution_id503 return value>.y; r5.z <- <ComputeEnvironmentLightContribution_id503 return value>.z

#line 1144
mad r5.xyz, r3.xyzx, cb2[88].xyzx, r5.xyzx  // r5.x <- environmentLightingContribution.x; r5.y <- environmentLightingContribution.y; r5.z <- environmentLightingContribution.z

#line 883
dp3 r0.w, r1.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r1.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 593
mul r3.w, r1.w, r1.w  // r3.w <- y2

#line 594
mul r5.w, r2.w, r2.w  // r5.w <- z2

#line 598
mad r6.xyz, cb2[90].xyzx, r1.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 599
mad r6.xyz, cb2[91].xyzx, -r2.wwww, r6.xyzx

#line 600
mad r6.xyz, cb2[92].xyzx, r0.wwww, r6.xyzx

#line 603
mul r7.xyz, r1.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r0.wwww, r6.xyzx

#line 604
mul r7.xyz, r1.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 605
mad r1.w, r5.w, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[95].xyzx, r1.wwww, r6.xyzx

#line 606
mul r7.xyz, r0.wwww, cb2[96].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 607
mad r0.w, r0.w, r0.w, -r3.w
mad r6.xyz, cb2[97].xyzx, r0.wwww, r6.xyzx

#line 885
mul r6.xyz, r6.xyzx, cb2[102].xxxx  // r6.x <- streams.envLightDiffuseColor_id51.x; r6.y <- streams.envLightDiffuseColor_id51.y; r6.z <- streams.envLightDiffuseColor_id51.z

#line 886
dp3 r0.w, -r2.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r2.xyz, r1.xyzx, -r0.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 887
dp3 r7.x, r2.xyzx, cb2[98].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r2.xyzx, cb2[99].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r2.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 888
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 696
mul r0.w, r4.w, cb2[97].w  // r0.w <- mipLevel

#line 697
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r7.xyzx, t7.xyzw, s0, r0.w  // r2.x <- <Compute_id274 return value>.x; r2.y <- <Compute_id274 return value>.y; r2.z <- <Compute_id274 return value>.z

#line 889
mul r2.xyz, r2.xyzx, cb2[102].xxxx  // r2.x <- streams.envLightSpecularColor_id52.x; r2.y <- streams.envLightSpecularColor_id52.y; r2.z <- streams.envLightSpecularColor_id52.z

#line 1152
mad r3.xyz, r3.xyzx, r6.xyzx, r5.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 1156
mad r0.xyz, r0.xyzx, r2.xyzx, r3.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1171
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1271
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1301
utof o3.xyzw, cb0[26].xxxx

#line 1385
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mov o2.xyzw, r4.xyzw
ret 
// Approximately 499 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id151 = 1;
const static int TCascadeCountBase_id157 = 4;
const static int TLightCountBase_id158 = 1;
const static int TCascadeCount_id165 = 4;
const static int TLightCount_id166 = 1;
const static bool TBlendCascades_id167 = true;
const static bool TDepthRangeAuto_id168 = true;
const static bool TCascadeDebug_id169 = false;
const static bool TComputeTransmittance_id170 = false;
const static int TFilterSize_id172 = 7;
const static int TOrder_id190 = 3;
const static int TOrder_id192 = 3;
const static bool TInvert_id215 = true;
const static bool TIsEnergyConservative_id227 = false;
static const float PI_id229 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id173;
    float3 normalWS_id21;
    float4 PositionWS_id24;
    uint InstanceID_id13;
    float DepthVS_id25;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id19;
    float3 viewWS_id72;
    float3 shadingColor_id77;
    float matBlend_id44;
    float3 matNormal_id55;
    float4 matColorBase_id56;
    float4 matDiffuse_id57;
    float3 matDiffuseVisible_id73;
    float3 matSpecular_id59;
    float3 matSpecularVisible_id75;
    float matSpecularIntensity_id60;
    float matGlossiness_id58;
    float alphaRoughness_id74;
    float matAmbientOcclusion_id61;
    float matAmbientOcclusionDirectLightingFactor_id62;
    float matCavity_id63;
    float matCavityDiffuse_id64;
    float matCavitySpecular_id65;
    float4 matEmissive_id66;
    float matEmissiveIntensity_id67;
    float matScatteringStrength_id68;
    float2 matDiffuseSpecularAlphaBlend_id69;
    float3 matAlphaBlendColor_id70;
    float matAlphaDiscard_id71;
    float shadingColorAlpha_id78;
    float4 ColorPerParticle_ShaderFXResult_0_id200;
    float Input_1_id208;
    float Input_2_id217;
    float3 lightPositionWS_id45;
    float3 lightDirectionWS_id46;
    float3 lightColor_id47;
    float3 lightColorNdotL_id48;
    float3 lightSpecularColorNdotL_id49;
    float lightAttenuation_id50;
    float3 envLightDiffuseColor_id51;
    float3 envLightSpecularColor_id52;
    float lightDirectAmbientOcclusion_id54;
    float NdotL_id53;
    float NdotV_id76;
    float thicknessWS_id149;
    float3 shadowColor_id148;
    float3 H_id79;
    float NdotH_id80;
    float LdotH_id81;
    float VdotH_id82;
    uint2 lightData_id179;
    int lightIndex_id180;
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
    float4 ScreenPosition_id173 : SCREENPOSITION_ID173_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id23;
    uint InstanceID_id13;
    float3 meshNormal_id18;
    float4 PositionH_id26;
    float3 meshNormalWS_id19;
    float4 PositionWS_id24;
    float4 ShadingPosition_id0;
    float DepthVS_id25;
    float3 normalWS_id21;
    float4 ScreenPosition_id173;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id173 : SCREENPOSITION_ID173_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct VS_INPUT 
{
    float4 Position_id23 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id18 : NORMAL;
};
typedef uint Half2;
typedef uint2 Half4;
struct InstanceTransform 
{
    float4x4 Matrix;
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
    float4x4 World_id34;
    float4x4 WorldInverse_id35;
    float4x4 WorldInverseTranspose_id36;
    float4x4 WorldView_id37;
    float4x4 WorldViewInverse_id38;
    float4x4 WorldViewProjection_id39;
    float3 WorldScale_id40;
    float4 EyeMS_id41;
    uint MaterialIndex_id147;
};
cbuffer PerMaterial 
{
    uint MeshIndex_id145;
    float InputValue_id209;
    float InputValue_id218;
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
    float NearClipPlane_id174 = 1.0f;
    float FarClipPlane_id175 = 100.0f;
    float2 ZProjection_id176;
    float2 ViewSize_id177;
    float AspectRatio_id178;
    float4 _padding_PerView_Default;
    int LightCount_id150;
    DirectionalLightData Lights_id152[TMaxLightCount_id151];
    float2 ShadowMapTextureSize_id154;
    float2 ShadowMapTextureTexelSize_id155;
    float4x4 WorldToShadowCascadeUV_id159[TCascadeCountBase_id157 * TLightCountBase_id158];
    float4x4 InverseWorldToShadowCascadeUV_id160[TCascadeCountBase_id157 * TLightCountBase_id158];
    float4x4 ViewMatrices_id161[TCascadeCountBase_id157 * TLightCountBase_id158];
    float2 DepthRanges_id162[TCascadeCountBase_id157 * TLightCountBase_id158];
    float DepthBiases_id163[TLightCountBase_id158];
    float OffsetScales_id164[TLightCountBase_id158];
    float CascadeDepthSplits_id171[TCascadeCount_id165 * TLightCount_id166];
    float ClusterDepthScale_id183;
    float ClusterDepthBias_id184;
    float2 ClusterStride_id185;
    float3 AmbientLight_id188;
    float3 SphericalColors_id193[TOrder_id192 * TOrder_id192];
    float MipCount_id194;
    float4x4 SkyMatrix_id196;
    float Intensity_id197;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id88;
    float2 Texture1TexelSize_id90;
    float2 Texture2TexelSize_id92;
    float2 Texture3TexelSize_id94;
    float2 Texture4TexelSize_id96;
    float2 Texture5TexelSize_id98;
    float2 Texture6TexelSize_id100;
    float2 Texture7TexelSize_id102;
    float2 Texture8TexelSize_id104;
    float2 Texture9TexelSize_id106;
};
Texture2D Texture0_id87;
Texture2D Texture1_id89;
Texture2D Texture2_id91;
Texture2D Texture3_id93;
Texture2D Texture4_id95;
Texture2D Texture5_id97;
Texture2D Texture6_id99;
Texture2D Texture7_id101;
Texture2D Texture8_id103;
Texture2D Texture9_id105;
TextureCube TextureCube0_id107;
TextureCube TextureCube1_id108;
TextureCube TextureCube2_id109;
TextureCube TextureCube3_id110;
Texture3D Texture3D0_id111;
Texture3D Texture3D1_id112;
Texture3D Texture3D2_id113;
Texture3D Texture3D3_id114;
SamplerState Sampler_id115;
SamplerState PointSampler_id116 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id117 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id118 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id119 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id120 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id121 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id122 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id124 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id125;
SamplerState Sampler1_id126;
SamplerState Sampler2_id127;
SamplerState Sampler3_id128;
SamplerState Sampler4_id129;
SamplerState Sampler5_id130;
SamplerState Sampler6_id131;
SamplerState Sampler7_id132;
SamplerState Sampler8_id133;
SamplerState Sampler9_id134;
StructuredBuffer<InstanceTransform> InstanceWorld_id42;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id43;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id146;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id201;
Texture2D EnvironmentLightingDFG_LUT_id230;
Texture2D ShadowMapTexture_id153;
Texture3D<uint2> LightClusters_id181;
Buffer<uint> LightIndices_id182;
Buffer<float4> PointLights_id186;
Buffer<float4> SpotLights_id187;
TextureCube CubeMap_id195;
float4 Project_id78(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id111(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id100(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id88(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id155, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id155, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id87(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id155, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id155, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id155, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id89(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id153.SampleLevel(LinearBorderSampler_id118, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id78(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id85(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id155, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id155, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id155, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id155, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id155, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id155, uvW3.x * uvW3.y);
    return 2704.0;
}
float GetAngularAttenuation_id113(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id112(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id111(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id102(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id100(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id93(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id154;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id155;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id85(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id89(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id92(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id78(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id78(float4(ShadowMapTextureTexelSize_id155.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id78(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id91(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id78(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id78(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id155.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id78(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id90()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id86(float2 position, float positionDepth)
{
    return ShadowMapTexture_id153.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id119, position, positionDepth);
}
void CalculatePCFKernelParameters_id84(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id154;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id155;
}
float Compute_id312()
{
    return InputValue_id218;
}
float Compute_id300()
{
    return InputValue_id209;
}
float4 Compute_id288(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id201[id];
    return float4(p.Col, 1);
}
float ComputeAttenuation_id114(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id112(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id113(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id101(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id102(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id186(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id170(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id80(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id92(GetFilterRadiusInPixels_id90(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id91(GetFilterRadiusInPixels_id90(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id93(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id79(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id84(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id85(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id86(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id315(inout PS_STREAMS streams)
{
    streams.Input_2_id217 = Compute_id312();
}
void Compute_id303(inout PS_STREAMS streams)
{
    streams.Input_1_id208 = Compute_id300();
}
void Compute_id291(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id200 = Compute_id288(streams);
}
float4 EvaluateSphericalHarmonics_id124(float3 sphericalColors[TOrder_id190 * TOrder_id190], float3 direction)
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
void ProcessLight_id115(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id114(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id47 = light.Color;
    streams.lightAttenuation_id50 = attenuation;
    streams.lightDirectionWS_id46 = lightVectorNorm;
}
void ProcessLight_id104(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id101(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id45 = light.PositionWS;
    streams.lightColor_id47 = light.Color;
    streams.lightAttenuation_id50 = attenuation;
    streams.lightDirectionWS_id46 = lightVectorNorm;
}
float NormalDistributionGGX_id200(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id229 * d * d);
}
float VisibilitySmithSchlickGGX_id188(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id186(alphaR, nDotL) * VisibilityhSchlickGGX_id186(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id176(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id170(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id83(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id157;
    return FilterThickness_id80(pixelPositionWS, meshNormalWS, DepthRanges_id162[arrayIndex], WorldToShadowCascadeUV_id159[arrayIndex], InverseWorldToShadowCascadeUV_id160[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id82(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id159[cascadeIndex + lightIndex * TCascadeCountBase_id157]);
    shadowPosition.z -= DepthBiases_id163[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id79(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id81(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id155.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id318(inout PS_STREAMS streams)
{
    return streams.Input_2_id217;
}
void Compute_id317(inout PS_STREAMS streams)
{

    {
        Compute_id315(streams);
    }
}
float Compute_id306(inout PS_STREAMS streams)
{
    return streams.Input_1_id208;
}
void Compute_id305(inout PS_STREAMS streams)
{

    {
        Compute_id303(streams);
    }
}
float4 Compute_id294(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id200;
}
void Compute_id293(inout PS_STREAMS streams)
{

    {
        Compute_id291(streams);
    }
}
float4 Compute_id274(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id74;
    float mipLevel = sqrt(alpha) * MipCount_id194;
    return CubeMap_id195.SampleLevel(LinearSampler_id117, direction, mipLevel);
}
float4 Compute_id269(float3 direction)
{
    return EvaluateSphericalHarmonics_id124(SphericalColors_id193, direction);
}
void PrepareEnvironmentLight_id128(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id51 = 0;
    streams.envLightSpecularColor_id52 = 0;
}
float3 Compute_id324(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id230.SampleLevel(LinearSampler_id117, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id119(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id51 = 0;
    streams.envLightSpecularColor_id52 = 0;
}
float3 ComputeSpecularTextureProjection_id110(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id109(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id108(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id107(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id182.Load(streams.lightIndex_id180);
    streams.lightIndex_id180++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id187.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id187.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id187.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id187.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id115(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id99(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id98(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id97(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id96(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id182.Load(streams.lightIndex_id180);
    streams.lightIndex_id180++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id186.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id186.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id104(streams, pointLight);
}
void PrepareLightData_id103(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id176.y / (projectedDepth - ZProjection_id176.x);
    float2 texCoord = float2(streams.ScreenPosition_id173.x + 1, 1 - streams.ScreenPosition_id173.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id183 + ClusterDepthBias_id184), 0));
    streams.lightData_id179 = LightClusters_id181.Load(int4(texCoord * ClusterStride_id185, slice, 0));
    streams.lightIndex_id180 = streams.lightData_id179.x;
}
float Compute_id416(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id200(streams.alphaRoughness_id74, streams.NdotH_id80);
}
float Compute_id386(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id188(streams.alphaRoughness_id74, streams.NdotL_id53, streams.NdotV_id76);
}
float3 Compute_id356(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id176(f0, streams.LdotH_id81);
}
float3 ComputeSpecularTextureProjection_id75(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id74(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id73(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id165;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id165 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id25 > CascadeDepthSplits_id171[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id81(OffsetScales_id164[lightIndex], streams.NdotL_id53, streams.normalWS_id21);
    if (cascadeIndex < TCascadeCount_id165)
    {
        shadow = ComputeShadowFromCascade_id82(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id25) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id165 - 1)
            {
            }
            else if (TBlendCascades_id167)
            {
                float nextShadow = ComputeShadowFromCascade_id82(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id149 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id72(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id47 = Lights_id152[lightIndex].Color;
    streams.lightDirectionWS_id46 = -Lights_id152[lightIndex].DirectionWS;
}
float Compute_id321(inout PS_STREAMS streams)
{
    Compute_id317(streams);
    return Compute_id318(streams);
}
float Compute_id309(inout PS_STREAMS streams)
{
    Compute_id305(streams);
    return Compute_id306(streams);
}
float4 Compute_id297(inout PS_STREAMS streams)
{
    Compute_id293(streams);
    return Compute_id294(streams);
}
void ResetStream_id203()
{
}
void AfterLightingAndShading_id473()
{
}
void AfterLightingAndShading_id454()
{
}
void PrepareEnvironmentLight_id287(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id51 = 0;
    streams.envLightSpecularColor_id52 = 0;
}
void PrepareEnvironmentLight_id284(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id128(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id61;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id196);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id51 = Compute_id269(sampleDirection).rgb * Intensity_id197 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id69.x;
    sampleDirection = reflect(-streams.viewWS_id72, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id196);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id52 = Compute_id274(streams, sampleDirection).rgb * Intensity_id197 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id69.y;
}
float3 ComputeEnvironmentLightContribution_id503(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id75;
    return Compute_id324(specularColor, streams.alphaRoughness_id74, streams.NdotV_id76) * streams.envLightSpecularColor_id52;
}
float3 ComputeEnvironmentLightContribution_id447(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id73;
    return diffuseColor * streams.envLightDiffuseColor_id51;
}
void PrepareEnvironmentLight_id279(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id119(streams);
    float3 lightColor = AmbientLight_id188 * streams.matAmbientOcclusion_id61;
    streams.envLightDiffuseColor_id51 = lightColor;
    streams.envLightSpecularColor_id52 = lightColor;
}
void PrepareDirectLight_id250(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id107(streams, lightIndex);
    streams.NdotL_id53 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id46), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id108(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id48 = streams.lightColor_id47 * streams.lightAttenuation_id50 * streams.shadowColor_id148 * streams.NdotL_id53 * streams.lightDirectAmbientOcclusion_id54;
    streams.lightSpecularColorNdotL_id49 = streams.lightColorNdotL_id48;
    streams.lightColorNdotL_id48 *= ComputeTextureProjection_id109(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id72, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id49 *= ComputeSpecularTextureProjection_id110(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id254(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y >> 16;
}
int GetMaxLightCount_id253(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y >> 16;
}
void PrepareDirectLights_id248()
{
}
void PrepareDirectLight_id237(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id96(streams, lightIndex);
    streams.NdotL_id53 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id46), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id97(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id48 = streams.lightColor_id47 * streams.lightAttenuation_id50 * streams.shadowColor_id148 * streams.NdotL_id53 * streams.lightDirectAmbientOcclusion_id54;
    streams.lightSpecularColorNdotL_id49 = streams.lightColorNdotL_id48;
    streams.lightColorNdotL_id48 *= ComputeTextureProjection_id98(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id72, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id49 *= ComputeSpecularTextureProjection_id99(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id242(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y & 0xFFFF;
}
int GetMaxLightCount_id241(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y & 0xFFFF;
}
void PrepareDirectLights_id240(inout PS_STREAMS streams)
{
    PrepareLightData_id103(streams);
}
float3 ComputeDirectLightContribution_id502(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id75;
    float3 fresnel = Compute_id356(streams, specularColor);
    float geometricShadowing = Compute_id386(streams);
    float normalDistribution = Compute_id416(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id49 * streams.matDiffuseSpecularAlphaBlend_id69.y;
}
float3 ComputeDirectLightContribution_id446(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id73;
    return diffuseColor / PI_id229 * streams.lightColorNdotL_id48 * streams.matDiffuseSpecularAlphaBlend_id69.x;
}
void PrepareMaterialPerDirectLight_id40(inout PS_STREAMS streams)
{
    streams.H_id79 = normalize(streams.viewWS_id72 + streams.lightDirectionWS_id46);
    streams.NdotH_id80 = saturate(dot(streams.normalWS_id21, streams.H_id79));
    streams.LdotH_id81 = saturate(dot(streams.lightDirectionWS_id46, streams.H_id79));
    streams.VdotH_id82 = streams.LdotH_id81;
}
void PrepareDirectLight_id213(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id72(streams, lightIndex);
    streams.NdotL_id53 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id46), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id73(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id48 = streams.lightColor_id47 * streams.lightAttenuation_id50 * streams.shadowColor_id148 * streams.NdotL_id53 * streams.lightDirectAmbientOcclusion_id54;
    streams.lightSpecularColorNdotL_id49 = streams.lightColorNdotL_id48;
    streams.lightColorNdotL_id48 *= ComputeTextureProjection_id74(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id72, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id49 *= ComputeSpecularTextureProjection_id75(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id215()
{
    return LightCount_id150;
}
int GetMaxLightCount_id216()
{
    return TMaxLightCount_id151;
}
void PrepareDirectLights_id211()
{
}
void PrepareForLightingAndShading_id470()
{
}
void PrepareForLightingAndShading_id451()
{
}
void PrepareMaterialForLightingAndShading_id202(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id54 = lerp(1.0, streams.matAmbientOcclusion_id61, streams.matAmbientOcclusionDirectLightingFactor_id62);
    streams.matDiffuseVisible_id73 = streams.matDiffuse_id57.rgb * lerp(1.0f, streams.matCavity_id63, streams.matCavityDiffuse_id64) * streams.matDiffuseSpecularAlphaBlend_id69.r * streams.matAlphaBlendColor_id70;
    streams.matSpecularVisible_id75 = streams.matSpecular_id59.rgb * streams.matSpecularIntensity_id60 * lerp(1.0f, streams.matCavity_id63, streams.matCavitySpecular_id65) * streams.matDiffuseSpecularAlphaBlend_id69.g * streams.matAlphaBlendColor_id70;
    streams.NdotV_id76 = max(dot(streams.normalWS_id21, streams.viewWS_id72), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id58;
    streams.alphaRoughness_id74 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id201(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id45 = 0;
    streams.lightDirectionWS_id46 = 0;
    streams.lightColor_id47 = 0;
    streams.lightColorNdotL_id48 = 0;
    streams.lightSpecularColorNdotL_id49 = 0;
    streams.lightAttenuation_id50 = 1.0f;
    streams.envLightDiffuseColor_id51 = 0;
    streams.envLightSpecularColor_id52 = 0;
    streams.lightDirectAmbientOcclusion_id54 = 1.0f;
    streams.NdotL_id53 = 0;
}
void UpdateNormalFromTangentSpace_id26(float3 normalInTangentSpace)
{
}
float4 Compute_id323(inout PS_STREAMS streams)
{
    float x = Compute_id321(streams);
    return float4(x, x, x, x);
}
float4 Compute_id311(inout PS_STREAMS streams)
{
    float x = Compute_id309(streams);
    return float4(x, x, x, x);
}
float4 Compute_id299(inout PS_STREAMS streams)
{
    return Compute_id297(streams);
}
void ResetStream_id204(inout PS_STREAMS streams)
{
    ResetStream_id203();
    streams.matBlend_id44 = 0.0f;
}
void Compute_id534(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id26(streams.matNormal_id55);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id201(streams);
    PrepareMaterialForLightingAndShading_id202(streams);

    {
        PrepareForLightingAndShading_id451();
    }

    {
        PrepareForLightingAndShading_id470();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id211();
        const int maxLightCount = GetMaxLightCount_id216();
        int count = GetLightCount_id215();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id213(streams, i);
            PrepareMaterialPerDirectLight_id40(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id446(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id502(streams);
            }
        }
    }

    {
        PrepareDirectLights_id240(streams);
        const int maxLightCount = GetMaxLightCount_id241(streams);
        int count = GetLightCount_id242(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id237(streams, i);
            PrepareMaterialPerDirectLight_id40(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id446(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id502(streams);
            }
        }
    }

    {
        PrepareDirectLights_id248();
        const int maxLightCount = GetMaxLightCount_id253(streams);
        int count = GetLightCount_id254(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id250(streams, i);
            PrepareMaterialPerDirectLight_id40(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id446(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id502(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id279(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id447(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id503(streams);
        }
    }

    {
        PrepareEnvironmentLight_id284(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id447(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id503(streams);
        }
    }

    {
        PrepareEnvironmentLight_id287(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id447(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id503(streams);
        }
    }
    streams.shadingColor_id77 += directLightingContribution * PI_id229 + environmentLightingContribution;
    streams.shadingColorAlpha_id78 = streams.matDiffuse_id57.a;

    {
        AfterLightingAndShading_id454();
    }

    {
        AfterLightingAndShading_id473();
    }
}
void Compute_id518(inout PS_STREAMS streams)
{
    float metalness = Compute_id323(streams).r;
    streams.matSpecular_id59 = lerp(0.02, streams.matDiffuse_id57.rgb, metalness);
    streams.matDiffuse_id57.rgb = lerp(streams.matDiffuse_id57.rgb, 0, metalness);
}
void Compute_id513(inout PS_STREAMS streams)
{
    float glossiness = Compute_id311(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id58 = glossiness;
}
void Compute_id508(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id299(streams);
    streams.matDiffuse_id57 = colorBase;
    streams.matColorBase_id56 = colorBase;
}
void ResetStream_id205(inout PS_STREAMS streams)
{
    ResetStream_id204(streams);
    streams.matNormal_id55 = float3(0, 0, 1);
    streams.matColorBase_id56 = 0.0f;
    streams.matDiffuse_id57 = 0.0f;
    streams.matDiffuseVisible_id73 = 0.0f;
    streams.matSpecular_id59 = 0.0f;
    streams.matSpecularVisible_id75 = 0.0f;
    streams.matSpecularIntensity_id60 = 1.0f;
    streams.matGlossiness_id58 = 0.0f;
    streams.alphaRoughness_id74 = 1.0f;
    streams.matAmbientOcclusion_id61 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id62 = 0.0f;
    streams.matCavity_id63 = 1.0f;
    streams.matCavityDiffuse_id64 = 0.0f;
    streams.matCavitySpecular_id65 = 0.0f;
    streams.matEmissive_id66 = 0.0f;
    streams.matEmissiveIntensity_id67 = 0.0f;
    streams.matScatteringStrength_id68 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id69 = 1.0f;
    streams.matAlphaBlendColor_id70 = 1.0f;
    streams.matAlphaDiscard_id71 = 0.1f;
}
float4x4 GetInstanceWorld_id13(uint instanceId)
{
    return mul(InstanceWorld_id42[instanceId].Matrix, World_id34);
}
void Compute_id62(inout PS_STREAMS streams)
{

    {
        Compute_id508(streams);
    }

    {
        Compute_id513(streams);
    }

    {
        Compute_id518(streams);
    }

    {
        Compute_id534(streams);
    }
}
void ResetStream_id61(inout PS_STREAMS streams)
{
    ResetStream_id205(streams);
    streams.shadingColorAlpha_id78 = 1.0f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id31);
}
void PostTransformPosition_id6()
{
}
float4x4 GetInstanceWorld_id38(uint instanceId)
{
    uint m = ParticlesBuffer_id146[instanceId].Mesh;
    if (m == MeshIndex_id145)
        return GetInstanceWorld_id13(instanceId);
    return 0;
}
float3 EncodeNormal_id66(float3 n)
{
    return n * 0.5 + 0.5;
}
float4 Shading_id35(inout PS_STREAMS streams)
{
    streams.viewWS_id72 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id77 = 0;
    ResetStream_id61(streams);
    Compute_id62(streams);
    return float4(streams.shadingColor_id77, streams.shadingColorAlpha_id78);
}
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return mul(WorldInverse_id35, InstanceWorldInverse_id43[instanceId].Matrix);
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
void PreTransformPosition_id15(inout VS_STREAMS streams)
{
    streams.PositionWS_id24 = mul(streams.Position_id23, GetInstanceWorld_id38(streams.InstanceID_id13));
}
float4 Compute_id60()
{
    return MaterialIndex_id147;
}
float4 Compute_id59(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id75, sqrt(streams.alphaRoughness_id74));
}
float4 Compute_id58(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id66(streams.normalWS_id21), 1);
}
float4 Shading_id36(inout PS_STREAMS streams)
{
    return Shading_id35(streams);
}
void PSMain_id1()
{
}
float4x4 GetInstanceWorldInverse_id39(uint instanceId)
{
    uint m = ParticlesBuffer_id146[instanceId].Mesh;
    if (m == MeshIndex_id145)
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
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id36(streams);
    streams.ColorTarget1_id3 = Compute_id58(streams);
    streams.ColorTarget2_id4 = Compute_id59(streams);
    streams.ColorTarget3_id5 = Compute_id60();
}
void GenerateNormal_PS_id25(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id21, streams.normalWS_id21) > 0)
        streams.normalWS_id21 = normalize(streams.normalWS_id21);
    streams.meshNormalWS_id19 = streams.normalWS_id21;
}
void GenerateNormal_VS_id27(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id19 = mul((float3x3)GetInstanceWorldInverse_id39(streams.InstanceID_id13), streams.meshNormal_id18);
    streams.normalWS_id21 = streams.meshNormalWS_id19;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id23(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id25(streams);
    PSMain_id3(streams);
}
void VSMain_id22(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id27(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id24 = __input__.PositionWS_id24;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id25 = __input__.DepthVS_id25;
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.ScreenPosition_id173 = __input__.ScreenPosition_id173;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id173 /= streams.ScreenPosition_id173.w;
    PSMain_id23(streams);
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
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.meshNormal_id18 = __input__.meshNormal_id18;
    VSMain_id22(streams);
    streams.ScreenPosition_id173 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id24 = streams.PositionWS_id24;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id25 = streams.DepthVS_id25;
    __output__.normalWS_id21 = streams.normalWS_id21;
    __output__.ScreenPosition_id173 = streams.ScreenPosition_id173;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    return __output__;
}

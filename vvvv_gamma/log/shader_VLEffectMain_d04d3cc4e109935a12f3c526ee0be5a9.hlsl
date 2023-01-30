/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<3>, ShadowMapReceiverSpot<3,false>, ShadowMapFilterPcf<PerDraw.Lighting,3>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMGridMeshSelector_ShaderFX [{ShadingColor0 = ComputeColor}]
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1408]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id145 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id166 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id168 => LightSpotGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id170 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id171 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id175 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    InverseWorldToShadowCascadeUV_id176 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[3]
@C    ViewMatrices_id177 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[3]
@C    DepthRanges_id178 => ShadowMapReceiverBase.DepthRanges.directLightGroups[3]
@C    DepthBiases_id179 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id180 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    MeshIndex_id143 => SMGridMeshSelector_ShaderFX.MeshIndex
@C    InputValue_id205 => ShaderFX.InputValueFloat
@C    InputValue_id214 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 944]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id152 => Camera.NearClipPlane
@C    FarClipPlane_id153 => Camera.FarClipPlane
@C    ZProjection_id154 => Camera.ZProjection
@C    ViewSize_id155 => Camera.ViewSize
@C    AspectRatio_id156 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id148 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id150 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id161 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id162 => LightClustered.ClusterDepthBias
@C    ClusterStride_id163 => LightClustered.ClusterStride
@C    AmbientLight_id184 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id189 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id190 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id192 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id193 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id141 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id141 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id142 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id142 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id169 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id169 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id197 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id197 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id226 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id226 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id159 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id159 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id160 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id160 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id164 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id164 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id165 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id165 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id191 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id191 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id113 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id115 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id169 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id197 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id226 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id159 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id160 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id164 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id165 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id191 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    SMGridMeshSelector_ShaderFX => 19b1ef34fb398a3aa79ae25149b83614
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    TransformationInstancing => ae3c8a30f5549546f12050a57609180f
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
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
@S    LightSpotGroup => 54b4c8984e82f7dd8c9ed33c2781287a
@S    DirectLightGroupPerDraw => 800419991dc99542e48d2c03df6d1a4b
@S    ShadowMapReceiverSpot => 4a4ea621e2cec32bf3ede8a92ceacd7b
@S    ShadowMapReceiverBase => ecd55bb03a327260ea2ea0fddfaff4b5
@S    ShadowMapGroup => 6cd78766a20ef1d6d95cbbe5eec432b6
@S    ShadowMapCommon => 53c84311eb33d99ade37ecb188ae5785
@S    ShadowMapFilterBase => e42061be9b71cb375d3566138e7d8b8d
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    ShadowMapFilterPcf => 1d20b8b1db946ed23a9d876bb8750e3c
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => df831bbe7567dffa809a1b75b289d63b
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
//   uint MaterialIndex_id145;          // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id166;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id168[3];                 // Offset:  464 Size:   188 [unused]
//   float2 ShadowMapTextureSize_id170; // Offset:  656 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id171;// Offset:  664 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id175[3];// Offset:  672 Size:   192 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id176[3];// Offset:  864 Size:   192 [unused]
//   float4x4 ViewMatrices_id177[3];    // Offset: 1056 Size:   192 [unused]
//   float2 DepthRanges_id178[3];       // Offset: 1248 Size:    40 [unused]
//   float DepthBiases_id179[3];        // Offset: 1296 Size:    36 [unused]
//   float OffsetScales_id180[3];       // Offset: 1344 Size:    36 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1392 Size:    16 [unused]
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
//   float NearClipPlane_id152;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id153;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id154;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id155;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id156;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id148;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id150[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id161;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id162;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id163;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id184;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id189[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id190;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id192;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id193;             // Offset:  912 Size:     4 [unused]
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
// SV_InstanceID            0   x           2   INSTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID151_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input_sgv v2.x, instance_id
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.x
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   v2.x <- __input__.InstanceID_id13; 
//   o4.x <- <VSMain return value>.InstanceID_id13; 
//   o3.x <- <VSMain return value>.ScreenPosition_id151.x; o3.y <- <VSMain return value>.ScreenPosition_id151.y; o3.z <- <VSMain return value>.ScreenPosition_id151.z; o3.w <- <VSMain return value>.ScreenPosition_id151.w; 
//   o2.x <- <VSMain return value>.normalWS_id19.x; o2.y <- <VSMain return value>.normalWS_id19.y; o2.z <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1261 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_d04d3cc4e109935a12f3c526ee0be5a9.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1345
mov o0.xyzw, r0.xyzw

#line 1232
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1345
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 1297
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 1345
mov o4.x, v2.x
ret 
// Approximately 16 instruction slots used
@G    Pixel => 6e66d724c5aa22c10d3a6399617c845d
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
//   uint MaterialIndex_id145;          // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id166;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id168[3];                 // Offset:  464 Size:   188
//   float2 ShadowMapTextureSize_id170; // Offset:  656 Size:     8
//   float2 ShadowMapTextureTexelSize_id171;// Offset:  664 Size:     8
//   float4x4 WorldToShadowCascadeUV_id175[3];// Offset:  672 Size:   192
//   float4x4 InverseWorldToShadowCascadeUV_id176[3];// Offset:  864 Size:   192 [unused]
//   float4x4 ViewMatrices_id177[3];    // Offset: 1056 Size:   192 [unused]
//   float2 DepthRanges_id178[3];       // Offset: 1248 Size:    40 [unused]
//   float DepthBiases_id179[3];        // Offset: 1296 Size:    36
//   float OffsetScales_id180[3];       // Offset: 1344 Size:    36
//   float4 _padding_PerDraw_Lighting;  // Offset: 1392 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id143;              // Offset:    0 Size:     4 [unused]
//   float InputValue_id205;            // Offset:    4 Size:     4
//   float InputValue_id214;            // Offset:    8 Size:     4
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
//   float NearClipPlane_id152;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id153;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id154;          // Offset:  360 Size:     8
//   float2 ViewSize_id155;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id156;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id148;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id150[8];                 // Offset:  416 Size:   252
//   float ClusterDepthScale_id161;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id162;      // Offset:  672 Size:     4
//   float2 ClusterStride_id163;        // Offset:  676 Size:     8
//   float3 AmbientLight_id184;         // Offset:  688 Size:    12
//   float3 SphericalColors_id189[9];   // Offset:  704 Size:   140
//   float MipCount_id190;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id192;          // Offset:  848 Size:    64
//   float Intensity_id193;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id197
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
// LinearSampler_id113               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id115  sampler_c      NA          NA             s1      1 
// ShadowMapTexture_id169            texture  float4          2d             t0      1 
// ParticlesBuffer_id197             texture  struct         r/o             t1      1 
// EnvironmentLightingDFG_LUT_id226    texture  float4          2d             t2      1 
// LightClusters_id159               texture   uint2          3d             t3      1 
// LightIndices_id160                texture    uint         buf             t4      1 
// PointLights_id164                 texture  float4         buf             t5      1 
// SpotLights_id165                  texture  float4         buf             t6      1 
// CubeMap_id191                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID151_SEM     0   xyzw        3     NONE   float   xy w
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
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[87], dynamicIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[58], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_structured t1, 64
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texturecube (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 19
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id151.x; v3.y <- __input__.ScreenPosition_id151.y; v3.z <- __input__.ScreenPosition_id151.z; v3.w <- __input__.ScreenPosition_id151.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1324 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_d04d3cc4e109935a12f3c526ee0be5a9.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id151.x; r0.y <- streams.ScreenPosition_id151.y

#line 1291
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 1292
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 1242
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id68.x; r2.y <- streams.viewWS_id68.y; r2.z <- streams.viewWS_id68.z

#line 449
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v4.x, l(48), t1.xyzx  // r3.x <- p.Col.x; r3.y <- p.Col.y; r3.z <- p.Col.z

#line 1172
add r0.z, -cb1[0].y, l(1.000000)  // r0.z <- glossiness

#line 1164
add r4.xyz, r3.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].zzzz, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id55.x; r4.y <- streams.matSpecular_id55.y; r4.z <- streams.matSpecular_id55.z

#line 1165
mad r3.xyz, cb1[0].zzzz, -r3.xyzx, r3.xyzx  // r3.x <- streams.matDiffuse_id53.x; r3.y <- streams.matDiffuse_id53.y; r3.z <- streams.matDiffuse_id53.z

#line 1005
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 962
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id72

#line 963
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 964
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id70

#line 1023
mov r0.w, r5.y  // r0.w <- streams.NdotV_id72
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.viewWS_id68.x; r7.y <- streams.viewWS_id68.y; r7.z <- streams.viewWS_id68.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matDiffuseVisible_id69.x; r8.y <- streams.matDiffuseVisible_id69.y; r8.z <- streams.matDiffuseVisible_id69.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matSpecularVisible_id71.x; r9.y <- streams.matSpecularVisible_id71.y; r9.z <- streams.matSpecularVisible_id71.z
mov r9.w, r0.z  // r9.w <- streams.alphaRoughness_id70
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 1025
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 1027
    break 

#line 1028
  endif 

#line 780
  ishl r2.w, r1.w, l(1)

#line 932
  dp3 r3.w, r6.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 934
  mul r11.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r11.x <- streams.lightColorNdotL_id44.x; r11.y <- streams.lightColorNdotL_id44.y; r11.z <- streams.lightColorNdotL_id44.z

#line 924
  add r12.xyz, r7.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r12.xyzx, r12.xyzx
  rsq r4.w, r4.w
  mul r12.xyz, r4.wwww, r12.xyzx  // r12.x <- streams.H_id75.x; r12.y <- streams.H_id75.y; r12.z <- streams.H_id75.z

#line 925
  dp3_sat r4.w, r6.xyzx, r12.xyzx  // r4.w <- streams.NdotH_id76

#line 926
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r12.xyzx  // r2.w <- streams.LdotH_id77

#line 920
  mul r12.xyz, r8.xyzx, r11.xyzx

#line 1033
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 513
  add r13.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.z, r2.w, r2.w
  mul r5.z, r5.z, r5.z
  mul r2.w, r2.w, r5.z
  mad r13.xyz, r13.xyzx, r2.wwww, r9.xyzx  // r13.x <- <FresnelSchlick_id167 return value>.x; r13.y <- <FresnelSchlick_id167 return value>.y; r13.z <- <FresnelSchlick_id167 return value>.z

#line 508
  mul r2.w, r9.w, l(0.500000)  // r2.w <- k

#line 509
  mad r5.z, -r9.w, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r5.z, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id183 return value>
  mad r2.w, r0.w, r5.z, r2.w
  div r2.w, r0.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id183 return value>

#line 597
  mul r2.w, r2.w, r5.w
  mul r3.w, r0.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id185 return value>

#line 591
  mul r3.w, r9.w, r9.w  // r3.w <- alphaR2

#line 592
  mul r4.w, r4.w, r4.w
  mad r5.z, r9.w, r9.w, l(-1.000000)
  mad r4.w, r4.w, r5.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 593
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id197 return value>

#line 914
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 1037
  mad r10.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 1023
  iadd r1.w, r1.w, l(1)

#line 1039
endloop 

#line 747
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 748
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 749
mad r0.w, r0.w, cb2[41].w, cb2[42].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 750
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 749
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 750
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t3.xyzw  // r0.x <- streams.lightData_id157.x; r0.y <- streams.lightData_id157.y

#line 902
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id225 return value>

#line 1047
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id22.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id22.y; r7.y <- streams.PositionWS_id22.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id68.x; r7.w <- streams.viewWS_id68.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id68.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id70
mov r5.w, r5.y  // r5.w <- streams.NdotV_id72
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id158
mov r12.xyz, r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1049
  if_nz r2.w

#line 1051
    break 

#line 1052
  endif 

#line 734
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 735
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id158

#line 737
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t5.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 738
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t5.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 500
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 501
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 502
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 434
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 328
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 329
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 330
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id69 return value>

#line 435
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 888
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 890
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 924
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id75.x; r8.y <- streams.H_id75.y; r8.w <- streams.H_id75.z

#line 925
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id76

#line 926
  dp3_sat r4.w, r13.xyzx, r8.xywx  // r4.w <- streams.LdotH_id77

#line 920
  mul r8.xyw, r9.xyxz, r14.xyxz

#line 1057
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 513
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id167 return value>.x; r13.y <- <FresnelSchlick_id167 return value>.y; r13.z <- <FresnelSchlick_id167 return value>.z

#line 508
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 509
  mad r9.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r9.w, r4.w
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id183 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id183 return value>

#line 597
  mul r4.w, r4.w, r10.w
  mul r3.w, r5.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id185 return value>

#line 591
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 592
  mul r2.w, r2.w, r2.w
  mad r9.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 593
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id197 return value>

#line 914
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 1061
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1047
  iadd r1.w, r1.w, l(1)

#line 1063
endloop   // r5.z <- streams.lightIndex_id158

#line 880
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id237 return value>

#line 1071
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id22.x; r6.y <- streams.PositionWS_id22.y; r6.z <- streams.PositionWS_id22.z
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y
mov r9.xyz, r3.xyzx
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r11.x, r0.z  // r11.x <- streams.alphaRoughness_id70
mov r11.z, r5.y  // r11.z <- streams.NdotV_id72
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.z  // r0.y <- streams.lightIndex_id158
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 1073
  if_nz r1.w

#line 1075
    break 

#line 1076
  endif 

#line 706
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t4.yzwx  // r1.w <- realLightIndex

#line 707
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id158

#line 709
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t6.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 712
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 710
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t6.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 711
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t6.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 712
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t6.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 487
  add r14.xyz, -r6.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 488
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 489
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 427
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 322
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 323
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 324
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id80 return value>

#line 428
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 419
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 420
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 421
  mul r2.w, r2.w, r2.w

#line 495
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 866
  dp3 r2.w, r7.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 868
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 924
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 925
  dp3_sat r1.w, r7.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id76

#line 926
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id77

#line 920
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 1081
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 513
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id167 return value>.x; r16.y <- <FresnelSchlick_id167 return value>.y; r16.z <- <FresnelSchlick_id167 return value>.z

#line 508
  mul r3.w, r11.x, l(0.500000)  // r3.w <- k

#line 509
  mad r4.w, -r11.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id183 return value>
  mad r3.w, r11.z, r4.w, r3.w
  div r3.w, r11.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id183 return value>

#line 597
  mul r3.w, r3.w, r5.w
  mul r2.w, r11.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id185 return value>

#line 591
  mul r3.w, r11.x, r11.x  // r3.w <- alphaR2

#line 592
  mul r1.w, r1.w, r1.w
  mad r4.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 593
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id197 return value>

#line 914
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1085
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1071
  iadd r0.w, r0.w, l(1)

#line 1087
endloop   // r0.y <- streams.lightIndex_id158

#line 562
add r0.x, cb0[41].z, cb0[41].z

#line 554
mov r6.w, l(1.000000)

#line 1095
mov r7.xyz, v0.xyzx  // r7.x <- streams.PositionWS_id22.x; r7.y <- streams.PositionWS_id22.y; r7.z <- streams.PositionWS_id22.z
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r9.xyz, r2.xyzx  // r9.x <- streams.viewWS_id68.x; r9.y <- streams.viewWS_id68.y; r9.z <- streams.viewWS_id68.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r12.x, r0.z  // r12.x <- streams.alphaRoughness_id70
mov r12.z, r5.y  // r12.z <- streams.NdotV_id72
mov r14.xyz, r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r0.w, r0.y, l(3)
  breakc_nz r0.w

#line 1097
  ige r0.w, r0.y, cb0[28].x
  if_nz r0.w

#line 1099
    break 

#line 1100
  endif 

#line 685
  ishl r0.w, r0.y, l(2)

#line 474
  add r15.xyz, -r7.xyzx, cb0[r0.w + 29].xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 475
  dp3 r1.w, r15.xyzx, r15.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 476
  div r15.xyz, r15.xyzx, r2.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 413
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 316
  mul r1.w, r1.w, cb0[r0.w + 31].z  // r1.w <- factor

#line 317
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 318
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id91 return value>

#line 414
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 405
  dp3 r2.w, -cb0[r0.w + 30].xyzx, r15.xyzx  // r2.w <- cd

#line 406
  mad_sat r2.w, r2.w, cb0[r0.w + 31].x, cb0[r0.w + 31].y  // r2.w <- attenuation

#line 407
  mul r2.w, r2.w, r2.w

#line 482
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 844
  dp3 r2.w, r8.xyzx, r15.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 561
  add r3.w, -r2.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- normalOffsetScale

#line 562
  mul r4.w, r0.x, cb0[r0.y + 84].x
  mul r3.w, r3.w, r4.w

#line 673
  mad r6.xyz, r3.wwww, r8.xyzx, r7.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 554
  dp4 r16.x, r6.xyzw, cb0[r0.w + 42].xyzw  // r16.x <- shadowPosition.x
  dp4 r16.y, r6.xyzw, cb0[r0.w + 43].xyzw  // r16.y <- shadowPosition.y
  dp4 r3.w, r6.xyzw, cb0[r0.w + 44].xyzw  // r3.w <- shadowPosition.z
  dp4 r4.w, r6.xyzw, cb0[r0.w + 45].xyzw  // r4.w <- shadowPosition.w

#line 555
  add r16.z, r3.w, -cb0[r0.y + 81].x  // r16.z <- shadowPosition.z

#line 556
  div r6.xyz, r16.xyzx, r4.wwww  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 398
  mad r5.zw, r6.xxxy, cb0[41].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 399
  add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 400
  add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 401
  mul r6.xy, r6.xyxx, cb0[41].zwzz

#line 334
  mad r12.yw, -r5.wwwz, l(0.000000, 2.000000, 0.000000, 2.000000), l(0.000000, 3.000000, 0.000000, 3.000000)  // r12.y <- uvW0.y; r12.w <- uvW0.x

#line 335
  mad r16.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r16.x <- uvW1.x; r16.y <- uvW1.y

#line 336
  add r16.zw, -r5.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000)
  div r16.zw, r16.zzzw, r12.wwwy
  add r17.zw, r16.zzzw, l(0.000000, 0.000000, -1.000000, -1.000000)  // r17.z <- uv0.x; r17.w <- uv0.y

#line 337
  div r5.zw, r5.zzzw, r16.xxxy
  add r17.xy, r5.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)  // r17.x <- uv1.x; r17.y <- uv1.y

#line 338
  mul r3.w, r12.y, r12.w

#line 339
  mad r18.xyzw, r17.zwxw, cb0[41].zwzw, r6.xyxy

#line 340
  mul r5.zw, r12.yyyw, r16.xxxy

#line 341
  mad r17.xyzw, r17.zyxy, cb0[41].zwzw, r6.xyxy
  mul r4.w, r16.y, r16.x

#line 365
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r18.xyxx, t0.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id105 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.y, r18.zwzz, t0.xxxx, s1, r6.z  // r6.y <- <SampleTextureAndCompare_id105 return value>

#line 466
  mul r5.z, r5.z, r6.y
  mad r3.w, r3.w, r6.x, r5.z  // r3.w <- shadow

#line 365
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r17.xyxx, t0.xxxx, s1, r6.z  // r5.z <- <SampleTextureAndCompare_id105 return value>

#line 466
  mad r3.w, r5.w, r5.z, r3.w

#line 365
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r17.zwzz, t0.xxxx, s1, r6.z

#line 466
  mad r3.w, r4.w, r5.z, r3.w

#line 468
  mul r3.w, r3.w, l(0.062500)

#line 846
  mul r6.xyz, r1.wwww, cb0[r0.w + 32].xyzx
  mul r6.xyz, r3.wwww, r6.xyzx
  mul r6.xyz, r2.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id44.x; r6.y <- streams.lightColorNdotL_id44.y; r6.z <- streams.lightColorNdotL_id44.z

#line 924
  add r16.xyz, r9.xyzx, r15.xyzx
  dp3 r0.w, r16.xyzx, r16.xyzx
  rsq r0.w, r0.w
  mul r16.xyz, r0.wwww, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 925
  dp3_sat r0.w, r8.xyzx, r16.xyzx  // r0.w <- streams.NdotH_id76

#line 926
  dp3_sat r1.w, r15.xyzx, r16.xyzx  // r1.w <- streams.LdotH_id77

#line 920
  mul r15.xyz, r6.xyzx, r10.xyzx

#line 1105
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 513
  add r16.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r3.w, r1.w, r1.w
  mul r3.w, r3.w, r3.w
  mul r1.w, r1.w, r3.w
  mad r16.xyz, r16.xyzx, r1.wwww, r11.xyzx  // r16.x <- <FresnelSchlick_id167 return value>.x; r16.y <- <FresnelSchlick_id167 return value>.y; r16.z <- <FresnelSchlick_id167 return value>.z

#line 508
  mul r1.w, r12.x, l(0.500000)  // r1.w <- k

#line 509
  mad r3.w, -r12.x, l(0.500000), l(1.000000)
  mad r4.w, r2.w, r3.w, r1.w
  div r4.w, r2.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id183 return value>
  mad r1.w, r12.z, r3.w, r1.w
  div r1.w, r12.z, r1.w  // r1.w <- <VisibilityhSchlickGGX_id183 return value>

#line 597
  mul r1.w, r1.w, r4.w
  mul r2.w, r12.z, r2.w
  div r1.w, r1.w, r2.w  // r1.w <- <VisibilitySmithSchlickGGX_id185 return value>

#line 591
  mul r2.w, r12.x, r12.x  // r2.w <- alphaR2

#line 592
  mul r0.w, r0.w, r0.w
  mad r3.w, r12.x, r12.x, l(-1.000000)
  mad r0.w, r0.w, r3.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 593
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r2.w, r0.w  // r0.w <- <NormalDistributionGGX_id197 return value>

#line 914
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r16.xyz, r0.wwww, r16.xyzx
  mul r6.xyz, r6.xyzx, r16.xyzx

#line 1109
  mad r14.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 1095
  iadd r0.y, r0.y, l(1)

#line 1111
endloop 

#line 653
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 654
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t2.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 655
mad r0.yzw, r4.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id334 return value>.x; r0.z <- <Compute_id334 return value>.y; r0.w <- <Compute_id334 return value>.z

#line 827
mul r4.xyz, r0.yzwy, cb2[43].xyzx  // r4.x <- <ComputeEnvironmentLightContribution_id513 return value>.x; r4.y <- <ComputeEnvironmentLightContribution_id513 return value>.y; r4.z <- <ComputeEnvironmentLightContribution_id513 return value>.z

#line 1123
mad r4.xyz, r3.xyzx, cb2[43].xyzx, r4.xyzx  // r4.x <- environmentLightingContribution.x; r4.y <- environmentLightingContribution.y; r4.z <- environmentLightingContribution.z

#line 816
dp3 r1.w, r1.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 533
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 534
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 538
mad r5.yzw, cb2[45].xxyz, r2.wwww, cb2[44].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 539
mad r5.yzw, cb2[46].xxyz, -r3.wwww, r5.yyzw

#line 540
mad r5.yzw, cb2[47].xxyz, r1.wwww, r5.yyzw

#line 543
mul r6.xyz, r2.wwww, cb2[48].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 544
mul r6.xyz, r2.wwww, cb2[49].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 545
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[50].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 546
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 547
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[52].xyzx, r1.wwww, r5.xyzx

#line 818
mul r5.xyz, r5.xyzx, cb2[57].xxxx  // r5.x <- streams.envLightDiffuseColor_id47.x; r5.y <- streams.envLightDiffuseColor_id47.y; r5.z <- streams.envLightDiffuseColor_id47.z

#line 819
dp3 r1.w, -r2.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r2.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 820
dp3 r2.x, r1.xyzx, cb2[53].xyzx  // r2.x <- sampleDirection.x
dp3 r2.y, r1.xyzx, cb2[54].xyzx  // r2.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[55].xyzx  // r1.x <- sampleDirection.z

#line 821
mov r2.z, -r1.x  // r2.z <- sampleDirection.z

#line 639
mul r0.x, r0.x, cb2[52].w  // r0.x <- mipLevel

#line 640
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r2.xyzx, t7.xyzw, s0, r0.x  // r1.x <- <Compute_id284 return value>.x; r1.y <- <Compute_id284 return value>.y; r1.z <- <Compute_id284 return value>.z

#line 822
mul r1.xyz, r1.xyzx, cb2[57].xxxx  // r1.x <- streams.envLightSpecularColor_id48.x; r1.y <- streams.envLightSpecularColor_id48.y; r1.z <- streams.envLightSpecularColor_id48.z

#line 1131
mad r2.xyz, r3.xyzx, r5.xyzx, r4.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1135
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1150
mad o0.xyz, r14.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1265
utof o1.xyzw, cb0[26].xxxx

#line 1329
mov o0.w, l(1.000000)
ret 
// Approximately 403 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id149 = 8;
const static int TMaxLightCount_id167 = 3;
const static int TCascadeCountBase_id173 = 1;
const static int TLightCountBase_id174 = 3;
const static bool TCascadeDebug_id182 = false;
const static int TFilterSize_id183 = 3;
const static int TOrder_id186 = 3;
const static int TOrder_id188 = 3;
const static bool TInvert_id211 = true;
const static bool TIsEnergyConservative_id223 = false;
static const float PI_id225 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id151;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    uint InstanceID_id13;
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
    float4 ColorPerParticle_ShaderFXResult_0_id196;
    float Input_1_id204;
    float Input_2_id213;
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
    float thicknessWS_id147;
    float3 shadowColor_id146;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id157;
    int lightIndex_id158;
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
    float4 ScreenPosition_id151 : SCREENPOSITION_ID151_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    uint InstanceID_id13;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id151;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id151 : SCREENPOSITION_ID151_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    float3 meshNormal_id16 : NORMAL;
    uint InstanceID_id13 : SV_InstanceID;
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
struct InstanceTransform 
{
    float4x4 Matrix;
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
    uint MaterialIndex_id145;
    float4 _padding_PerDraw_Default;
    int LightCount_id166;
    SpotLightData Lights_id168[TMaxLightCount_id167];
    float2 ShadowMapTextureSize_id170;
    float2 ShadowMapTextureTexelSize_id171;
    float4x4 WorldToShadowCascadeUV_id175[TCascadeCountBase_id173 * TLightCountBase_id174];
    float4x4 InverseWorldToShadowCascadeUV_id176[TCascadeCountBase_id173 * TLightCountBase_id174];
    float4x4 ViewMatrices_id177[TCascadeCountBase_id173 * TLightCountBase_id174];
    float2 DepthRanges_id178[TCascadeCountBase_id173 * TLightCountBase_id174];
    float DepthBiases_id179[TLightCountBase_id174];
    float OffsetScales_id180[TLightCountBase_id174];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    uint MeshIndex_id143;
    float InputValue_id205;
    float InputValue_id214;
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
    float NearClipPlane_id152 = 1.0f;
    float FarClipPlane_id153 = 100.0f;
    float2 ZProjection_id154;
    float2 ViewSize_id155;
    float AspectRatio_id156;
    float4 _padding_PerView_Default;
    int LightCount_id148;
    DirectionalLightData Lights_id150[TMaxLightCount_id149];
    float ClusterDepthScale_id161;
    float ClusterDepthBias_id162;
    float2 ClusterStride_id163;
    float3 AmbientLight_id184;
    float3 SphericalColors_id189[TOrder_id188 * TOrder_id188];
    float MipCount_id190;
    float4x4 SkyMatrix_id192;
    float Intensity_id193;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id84;
    float2 Texture1TexelSize_id86;
    float2 Texture2TexelSize_id88;
    float2 Texture3TexelSize_id90;
    float2 Texture4TexelSize_id92;
    float2 Texture5TexelSize_id94;
    float2 Texture6TexelSize_id96;
    float2 Texture7TexelSize_id98;
    float2 Texture8TexelSize_id100;
    float2 Texture9TexelSize_id102;
};
Texture2D Texture0_id83;
Texture2D Texture1_id85;
Texture2D Texture2_id87;
Texture2D Texture3_id89;
Texture2D Texture4_id91;
Texture2D Texture5_id93;
Texture2D Texture6_id95;
Texture2D Texture7_id97;
Texture2D Texture8_id99;
Texture2D Texture9_id101;
TextureCube TextureCube0_id103;
TextureCube TextureCube1_id104;
TextureCube TextureCube2_id105;
TextureCube TextureCube3_id106;
Texture3D Texture3D0_id107;
Texture3D Texture3D1_id108;
Texture3D Texture3D2_id109;
Texture3D Texture3D3_id110;
SamplerState Sampler_id111;
SamplerState PointSampler_id112 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id113 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id114 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id115 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id116 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id117 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id118 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id119 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id120 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id121;
SamplerState Sampler1_id122;
SamplerState Sampler2_id123;
SamplerState Sampler3_id124;
SamplerState Sampler4_id125;
SamplerState Sampler5_id126;
SamplerState Sampler6_id127;
SamplerState Sampler7_id128;
SamplerState Sampler8_id129;
SamplerState Sampler9_id130;
StructuredBuffer<InstanceTransform> InstanceWorld_id141;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id142;
Texture2D ShadowMapTexture_id169;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id144;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id197;
Texture2D EnvironmentLightingDFG_LUT_id226;
Texture3D<uint2> LightClusters_id159;
Buffer<uint> LightIndices_id160;
Buffer<float4> PointLights_id164;
Buffer<float4> SpotLights_id165;
TextureCube CubeMap_id191;
float SmoothDistanceAttenuation_id91(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id80(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id69(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id107(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id171, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id171, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id171, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id171, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id106(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id171, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id171, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id171, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id171, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id171, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id171, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id171, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id171, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id171, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id105(float2 position, float positionDepth)
{
    return ShadowMapTexture_id169.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id115, position, positionDepth);
}
float Get7x7FilterKernel_id104(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id171, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id171, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id171, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id171, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id171, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id171, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id171, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id171, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id171, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id171, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id171, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id171, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id171, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id171, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id171, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id171, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id103(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id170;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id171;
}
float GetAngularAttenuation_id93(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id92(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id91(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id82(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id81(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id80(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id71(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id69(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id322()
{
    return InputValue_id214;
}
float Compute_id310()
{
    return InputValue_id205;
}
float4 Compute_id298(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id197[id];
    return float4(p.Col, 1);
}
float FilterShadow_id99(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id103(position, base_uv, st);

    {
        float3 kernel[4];
        float normalizationFactor = Get3x3FilterKernel_id107(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id105(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id94(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id92(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id93(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id83(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id81(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id82(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id70(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id71(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id183(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id167(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id325(inout PS_STREAMS streams)
{
    streams.Input_2_id213 = Compute_id322();
}
void Compute_id313(inout PS_STREAMS streams)
{
    streams.Input_1_id204 = Compute_id310();
}
void Compute_id301(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id196 = Compute_id298(streams);
}
float4 EvaluateSphericalHarmonics_id121(float3 sphericalColors[TOrder_id186 * TOrder_id186], float3 direction)
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
float ComputeShadowFromCascade_id102(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id175[cascadeIndex + lightIndex * TCascadeCountBase_id173]);
    shadowPosition.z -= DepthBiases_id179[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id99(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id101(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id171.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id95(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id94(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id84(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id83(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id73(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id70(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id197(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id225 * d * d);
}
float VisibilitySmithSchlickGGX_id185(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id183(alphaR, nDotL) * VisibilityhSchlickGGX_id183(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id173(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id167(f0, 1.0f, lOrVDotH);
}
float Compute_id328(inout PS_STREAMS streams)
{
    return streams.Input_2_id213;
}
void Compute_id327(inout PS_STREAMS streams)
{

    {
        Compute_id325(streams);
    }
}
float Compute_id316(inout PS_STREAMS streams)
{
    return streams.Input_1_id204;
}
void Compute_id315(inout PS_STREAMS streams)
{

    {
        Compute_id313(streams);
    }
}
float4 Compute_id304(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id196;
}
void Compute_id303(inout PS_STREAMS streams)
{

    {
        Compute_id301(streams);
    }
}
float4 Compute_id284(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id190;
    return CubeMap_id191.SampleLevel(LinearSampler_id113, direction, mipLevel);
}
float4 Compute_id279(float3 direction)
{
    return EvaluateSphericalHarmonics_id121(SphericalColors_id189, direction);
}
void PrepareEnvironmentLight_id125(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id334(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id226.SampleLevel(LinearSampler_id113, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id116(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id90(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id89(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id88(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id101(OffsetScales_id180[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id102(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id147 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id87(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id168[lightIndex].PositionWS;
    data.DirectionWS = Lights_id168[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id168[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id168[lightIndex].Color;
    ProcessLight_id95(streams, data);
}
float3 ComputeSpecularTextureProjection_id79(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id78(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id77(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id76(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id160.Load(streams.lightIndex_id158);
    streams.lightIndex_id158++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id165.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id165.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id165.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id165.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id84(streams, spotLight);
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
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id65(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id160.Load(streams.lightIndex_id158);
    streams.lightIndex_id158++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id164.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id164.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id73(streams, pointLight);
}
void PrepareLightData_id72(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id154.y / (projectedDepth - ZProjection_id154.x);
    float2 texCoord = float2(streams.ScreenPosition_id151.x + 1, 1 - streams.ScreenPosition_id151.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id161 + ClusterDepthBias_id162), 0));
    streams.lightData_id157 = LightClusters_id159.Load(int4(texCoord * ClusterStride_id163, slice, 0));
    streams.lightIndex_id158 = streams.lightData_id157.x;
}
float Compute_id426(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id197(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id396(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id185(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id366(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id173(f0, streams.LdotH_id77);
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
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id59(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id150[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id150[lightIndex].DirectionWS;
}
float Compute_id331(inout PS_STREAMS streams)
{
    Compute_id327(streams);
    return Compute_id328(streams);
}
float Compute_id319(inout PS_STREAMS streams)
{
    Compute_id315(streams);
    return Compute_id316(streams);
}
float4 Compute_id307(inout PS_STREAMS streams)
{
    Compute_id303(streams);
    return Compute_id304(streams);
}
void ResetStream_id200()
{
}
void AfterLightingAndShading_id483()
{
}
void AfterLightingAndShading_id464()
{
}
void PrepareEnvironmentLight_id297(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id294(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id125(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id192);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id279(sampleDirection).rgb * Intensity_id193 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id192);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id284(streams, sampleDirection).rgb * Intensity_id193 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id513(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id334(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id457(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id289(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id116(streams);
    float3 lightColor = AmbientLight_id184 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id246(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id87(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id88(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id146 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id89(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id90(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id248()
{
    return LightCount_id166;
}
int GetMaxLightCount_id249()
{
    return TMaxLightCount_id167;
}
void PrepareDirectLights_id244()
{
}
void PrepareDirectLight_id234(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id76(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id77(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id146 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id78(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id79(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id238(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y >> 16;
}
int GetMaxLightCount_id237(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y >> 16;
}
void PrepareDirectLights_id232()
{
}
void PrepareDirectLight_id221(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id65(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id66(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id146 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id67(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id68(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id226(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y & 0xFFFF;
}
int GetMaxLightCount_id225(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y & 0xFFFF;
}
void PrepareDirectLights_id224(inout PS_STREAMS streams)
{
    PrepareLightData_id72(streams);
}
float3 ComputeDirectLightContribution_id512(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id366(streams, specularColor);
    float geometricShadowing = Compute_id396(streams);
    float normalDistribution = Compute_id426(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id456(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id225 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id210(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id59(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id60(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id146 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id61(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id62(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id212()
{
    return LightCount_id148;
}
int GetMaxLightCount_id213()
{
    return TMaxLightCount_id149;
}
void PrepareDirectLights_id208()
{
}
void PrepareForLightingAndShading_id480()
{
}
void PrepareForLightingAndShading_id461()
{
}
void PrepareMaterialForLightingAndShading_id199(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id198(inout PS_STREAMS streams)
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
float4 Compute_id333(inout PS_STREAMS streams)
{
    float x = Compute_id331(streams);
    return float4(x, x, x, x);
}
float4 Compute_id321(inout PS_STREAMS streams)
{
    float x = Compute_id319(streams);
    return float4(x, x, x, x);
}
float4 Compute_id309(inout PS_STREAMS streams)
{
    return Compute_id307(streams);
}
void ResetStream_id201(inout PS_STREAMS streams)
{
    ResetStream_id200();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id544(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id198(streams);
    PrepareMaterialForLightingAndShading_id199(streams);

    {
        PrepareForLightingAndShading_id461();
    }

    {
        PrepareForLightingAndShading_id480();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id208();
        const int maxLightCount = GetMaxLightCount_id213();
        int count = GetLightCount_id212();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id210(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id456(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id512(streams);
            }
        }
    }

    {
        PrepareDirectLights_id224(streams);
        const int maxLightCount = GetMaxLightCount_id225(streams);
        int count = GetLightCount_id226(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id221(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id456(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id512(streams);
            }
        }
    }

    {
        PrepareDirectLights_id232();
        const int maxLightCount = GetMaxLightCount_id237(streams);
        int count = GetLightCount_id238(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id234(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id456(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id512(streams);
            }
        }
    }

    {
        PrepareDirectLights_id244();
        const int maxLightCount = GetMaxLightCount_id249();
        int count = GetLightCount_id248();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id246(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id456(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id512(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id289(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id457(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id513(streams);
        }
    }

    {
        PrepareEnvironmentLight_id294(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id457(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id513(streams);
        }
    }

    {
        PrepareEnvironmentLight_id297(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id457(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id513(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id225 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id464();
    }

    {
        AfterLightingAndShading_id483();
    }
}
void Compute_id528(inout PS_STREAMS streams)
{
    float metalness = Compute_id333(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id523(inout PS_STREAMS streams)
{
    float glossiness = Compute_id321(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id518(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id309(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id202(inout PS_STREAMS streams)
{
    ResetStream_id201(streams);
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
void Compute_id56(inout PS_STREAMS streams)
{

    {
        Compute_id518(streams);
    }

    {
        Compute_id523(streams);
    }

    {
        Compute_id528(streams);
    }

    {
        Compute_id544(streams);
    }
}
void ResetStream_id55(inout PS_STREAMS streams)
{
    ResetStream_id202(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
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
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id55(streams);
    Compute_id56(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
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
float4 Compute_id54()
{
    return MaterialIndex_id145;
}
float4 Shading_id32(inout PS_STREAMS streams)
{
    return Shading_id31(streams);
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
    streams.ColorTarget_id2 = Shading_id32(streams);
    streams.ColorTarget1_id3 = Compute_id54();
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
    streams.ScreenPosition_id151 = __input__.ScreenPosition_id151;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id151 /= streams.ScreenPosition_id151.w;
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
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    VSMain_id19(streams);
    streams.ScreenPosition_id151 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id151 = streams.ScreenPosition_id151;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    return __output__;
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.ModelTransformUsage: 2
@P StrideEffectBase.HasInstancing: True
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,7>, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMGridMeshSelector_ShaderFX [{ShadingColor0 = ComputeColor}]
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1664]
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
@C    LightCount_id186 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id188 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id190 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id191 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id194 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id195 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id196 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id197 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id198 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    LightCount_id200 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id202 => LightSpotGroup.Lights.directLightGroups[4]
@C    ShadowMapTextureSize_id204 => ShadowMap.TextureSize.directLightGroups[4]
@C    ShadowMapTextureTexelSize_id205 => ShadowMap.TextureTexelSize.directLightGroups[4]
@C    WorldToShadowCascadeUV_id209 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[4]
@C    InverseWorldToShadowCascadeUV_id210 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[4]
@C    ViewMatrices_id211 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[4]
@C    DepthRanges_id212 => ShadowMapReceiverBase.DepthRanges.directLightGroups[4]
@C    DepthBiases_id213 => ShadowMapReceiverBase.DepthBiases.directLightGroups[4]
@C    OffsetScales_id214 => ShadowMapReceiverBase.OffsetScales.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    MeshIndex_id143 => SMGridMeshSelector_ShaderFX.MeshIndex
@C    InputValue_id239 => ShaderFX.InputValueFloat
@C    InputValue_id248 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id172 => Camera.NearClipPlane
@C    FarClipPlane_id173 => Camera.FarClipPlane
@C    ZProjection_id174 => Camera.ZProjection
@C    ViewSize_id175 => Camera.ViewSize
@C    AspectRatio_id176 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id148 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id150 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id152 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id153 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id157 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id158 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id159 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id160 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id161 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id162 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id169 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id181 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id182 => LightClustered.ClusterDepthBias
@C    ClusterStride_id183 => LightClustered.ClusterStride
@C    AmbientLight_id218 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id223 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id224 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id226 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id227 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id189 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id189 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id203 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id203 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id231 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id231 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id260 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id260 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id151 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id151 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id179 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id179 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id180 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id180 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id184 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id184 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id185 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id185 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id225 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id225 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: Vertex, Slot: (2-2)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Vertex, Slot: (1-1)]
@R    PerView => PerView [Stage: Vertex, Slot: (2-2)]
@R    LinearSampler_id115 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id117 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id189 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id203 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: Pixel, Slot: (1-1)]
@R    ParticlesBuffer_id231 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (2-2)]
@R    EnvironmentLightingDFG_LUT_id260 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id151 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (4-4)]
@R    LightClusters_id179 => LightClustered.LightClusters [Stage: Pixel, Slot: (5-5)]
@R    LightIndices_id180 => LightClustered.LightIndices [Stage: Pixel, Slot: (6-6)]
@R    PointLights_id184 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (7-7)]
@R    SpotLights_id185 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (8-8)]
@R    CubeMap_id225 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (9-9)]
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
@G    Vertex => f302404214fcf118d2ad32228034dc14
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
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id145;          // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id186;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id188;                    // Offset:  464 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id190; // Offset:  496 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id191;// Offset:  504 Size:     8 [unused]
//   float4x4 WorldToShadow_id194[6];   // Offset:  512 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id195[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id196;           // Offset: 1280 Size:     4 [unused]
//   float OffsetScales_id197;          // Offset: 1296 Size:     4 [unused]
//   float2 DepthParameters_id198;      // Offset: 1312 Size:     8 [unused]
//   int LightCount_id200;              // Offset: 1320 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id202;                    // Offset: 1328 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id204; // Offset: 1392 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id205;// Offset: 1400 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id209;// Offset: 1408 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id210;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id211;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id212;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id213;           // Offset: 1616 Size:     4 [unused]
//   float OffsetScales_id214;          // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id143;              // Offset:    0 Size:     4
//   float InputValue_id239;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id248;            // Offset:    8 Size:     4 [unused]
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
//   float NearClipPlane_id172;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id173;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id174;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id175;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id176;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id148;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id150;                    // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id152; // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id153;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id157[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id158[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id159[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id160[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id161;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id162;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id169[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id181;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id182;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id183;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id218;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id223[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id224;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id226;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id227;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for InstanceWorld_id40
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
// Resource bind info for InstanceWorldInverse_id41
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
// Resource bind info for ParticlesBuffer_id144
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
// InstanceWorld_id40                texture  struct         r/o             t0      1 
// InstanceWorldInverse_id41         texture  struct         r/o             t1      1 
// ParticlesBuffer_id144             texture  struct         r/o             t2      1 
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
// SCREENPOSITION_ID171_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id16.x; v2.y <- __input__.meshNormal_id16.y; v2.z <- __input__.meshNormal_id16.z; 
//   o4.x <- <VSMain return value>.InstanceID_id13; 
//   o3.x <- <VSMain return value>.ScreenPosition_id171.x; o3.y <- <VSMain return value>.ScreenPosition_id171.y; o3.z <- <VSMain return value>.ScreenPosition_id171.z; o3.w <- <VSMain return value>.ScreenPosition_id171.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.normalWS_id19.x; o2.z <- <VSMain return value>.normalWS_id19.y; o2.w <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1830 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_9c76472cfc33a38888aed6d28594fb6e.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v1.x, l(60), t2.xxxx
ftou r0.x, r0.x  // r0.x <- m

#line 1831
ieq r0.x, r0.x, cb1[0].x
if_nz r0.x

#line 1795
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

#line 1832
endif   // r5.x <- <GetInstanceWorld_id38 return value>._m03; r5.y <- <GetInstanceWorld_id38 return value>._m13; r5.z <- <GetInstanceWorld_id38 return value>._m23; r5.w <- <GetInstanceWorld_id38 return value>._m33

#line 1833
if_z r0.x
  mov r6.xyzw, l(0,0,0,0)
  mov r7.xyzw, l(0,0,0,0)
  mov r8.xyzw, l(0,0,0,0)
  mov r5.xyzw, l(0,0,0,0)
endif 

#line 1859
dp4 r1.x, v0.xyzw, r6.xyzw  // r1.x <- streams.PositionWS_id22.x
dp4 r1.y, v0.xyzw, r7.xyzw  // r1.y <- streams.PositionWS_id22.y
dp4 r1.z, v0.xyzw, r8.xyzw  // r1.z <- streams.PositionWS_id22.z
dp4 r1.w, v0.xyzw, r5.xyzw  // r1.w <- streams.PositionWS_id22.w

#line 1823
dp4 r2.x, r1.xyzw, cb2[16].xyzw  // r2.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r2.y, r1.xyzw, cb2[17].xyzw  // r2.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r2.z, r1.xyzw, cb2[18].xyzw  // r2.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r2.w, r1.xyzw, cb2[19].xyzw  // r2.w <- <ComputeShadingPosition_id11 return value>.w

#line 1875
if_nz r0.x

#line 1845
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

#line 1876
  mov r5.x, r0.y  // r5.x <- <GetInstanceWorldInverse_id39 return value>._m00
  mov r5.y, r3.x  // r5.y <- <GetInstanceWorldInverse_id39 return value>._m01
  mov r5.z, r4.x  // r5.z <- <GetInstanceWorldInverse_id39 return value>._m02
  mov r6.x, r0.z  // r6.x <- <GetInstanceWorldInverse_id39 return value>._m10
  mov r6.y, r3.y  // r6.y <- <GetInstanceWorldInverse_id39 return value>._m11
  mov r6.z, r4.y  // r6.z <- <GetInstanceWorldInverse_id39 return value>._m12
  mov r4.x, r0.w  // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20
  mov r4.y, r3.z
endif   // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20; r4.y <- <GetInstanceWorldInverse_id39 return value>._m21; r4.z <- <GetInstanceWorldInverse_id39 return value>._m22

#line 1877
if_z r0.x
  mov r5.xyz, l(0,0,0,0)
  mov r6.xyz, l(0,0,0,0)
  mov r4.xyz, l(0,0,0,0)
endif 

#line 1902
dp3 o2.y, r5.xyzx, v2.xyzx
dp3 o2.z, r6.xyzx, v2.xyzx
dp3 o2.w, r4.xyzx, v2.xyzx

#line 1952
mov o0.xyzw, r1.xyzw
mov o1.xyzw, r2.xyzw
mov o2.x, r2.w
mov o3.xyzw, r2.xyzw
mov o4.x, v1.x
ret 
// Approximately 93 instruction slots used
@G    Pixel => 2f4c36e5ec76e42cef5a7e39ecd3f467
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
//   int LightCount_id186;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id188;                    // Offset:  464 Size:    28
//   float2 ShadowMapTextureSize_id190; // Offset:  496 Size:     8
//   float2 ShadowMapTextureTexelSize_id191;// Offset:  504 Size:     8
//   float4x4 WorldToShadow_id194[6];   // Offset:  512 Size:   384
//   float4x4 InverseWorldToShadow_id195[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id196;           // Offset: 1280 Size:     4
//   float OffsetScales_id197;          // Offset: 1296 Size:     4
//   float2 DepthParameters_id198;      // Offset: 1312 Size:     8
//   int LightCount_id200;              // Offset: 1320 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id202;                    // Offset: 1328 Size:    60
//   float2 ShadowMapTextureSize_id204; // Offset: 1392 Size:     8
//   float2 ShadowMapTextureTexelSize_id205;// Offset: 1400 Size:     8
//   float4x4 WorldToShadowCascadeUV_id209;// Offset: 1408 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id210;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id211;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id212;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id213;           // Offset: 1616 Size:     4
//   float OffsetScales_id214;          // Offset: 1632 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id143;              // Offset:    0 Size:     4 [unused]
//   float InputValue_id239;            // Offset:    4 Size:     4
//   float InputValue_id248;            // Offset:    8 Size:     4
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
//   float NearClipPlane_id172;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id173;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id174;          // Offset:  360 Size:     8
//   float2 ViewSize_id175;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id176;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id148;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id150;                    // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id152; // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id153;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id157[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id158[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id159[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id160[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id161;           // Offset: 1296 Size:     4
//   float OffsetScales_id162;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id169[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id181;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id182;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id183;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id218;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id223[9];   // Offset: 1424 Size:   140
//   float MipCount_id224;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id226;          // Offset: 1568 Size:    64
//   float Intensity_id227;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id231
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
// LinearSampler_id115               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id117  sampler_c      NA          NA             s1      1 
// ShadowMapTexture_id189            texture  float4          2d             t0      1 
// ShadowMapTexture_id203            texture  float4          2d             t1      1 
// ParticlesBuffer_id231             texture  struct         r/o             t2      1 
// EnvironmentLightingDFG_LUT_id260    texture  float4          2d             t3      1 
// ShadowMapTexture_id151            texture  float4          2d             t4      1 
// LightClusters_id179               texture   uint2          3d             t5      1 
// LightIndices_id180                texture    uint         buf             t6      1 
// PointLights_id184                 texture  float4         buf             t7      1 
// SpotLights_id185                  texture  float4         buf             t8      1 
// CubeMap_id225                     texture  float4        cube             t9      1 
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
// SCREENPOSITION_ID171_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_constantbuffer CB0[103], dynamicIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_structured t2, 64
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture3d (uint,uint,uint,uint) t5
dcl_resource_buffer (uint,uint,uint,uint) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_resource_buffer (float,float,float,float) t8
dcl_resource_texturecube (float,float,float,float) t9
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 22
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; v2.y <- __input__.normalWS_id19.x; v2.z <- __input__.normalWS_id19.y; v2.w <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id171.x; v3.y <- __input__.ScreenPosition_id171.y; v3.z <- __input__.ScreenPosition_id171.z; v3.w <- __input__.ScreenPosition_id171.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1930 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_9c76472cfc33a38888aed6d28594fb6e.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id171.x; r0.y <- streams.ScreenPosition_id171.y

#line 1896
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1897
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1837
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id70.x; r3.y <- streams.viewWS_id70.y; r3.z <- streams.viewWS_id70.z

#line 765
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, v4.x, l(48), t2.xyzx  // r4.x <- p.Col.x; r4.y <- p.Col.y; r4.z <- p.Col.z

#line 1759
add r0.w, -cb1[0].y, l(1.000000)  // r0.w <- glossiness

#line 1751
add r5.xyz, r4.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb1[0].zzzz, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id57.x; r5.y <- streams.matSpecular_id57.y; r5.z <- streams.matSpecular_id57.z

#line 1752
mad r4.xyz, cb1[0].zzzz, -r4.xyzx, r4.xyzx  // r4.x <- streams.matDiffuse_id55.x; r4.y <- streams.matDiffuse_id55.y; r4.z <- streams.matDiffuse_id55.z

#line 1568
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1525
dp3 r1.w, r1.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id74

#line 1526
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 1527
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id72

#line 1592
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 1495
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id51

#line 1284
  lt r2.w, cb2[83].x, v2.x

#line 1287
  and r2.w, r2.w, l(1)  // r2.w <- cascadeIndex

#line 1284
  lt r3.w, cb2[84].x, v2.x

#line 1287
  movc r2.w, r3.w, l(2), r2.w

#line 1284
  lt r3.w, cb2[85].x, v2.x

#line 1287
  movc r2.w, r3.w, l(3), r2.w

#line 1045
  add r4.w, -r1.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 1046
  mul r5.w, cb2[28].z, cb2[82].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 1292
  mad r7.xyz, r4.wwww, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 1038
  ishl r4.w, r2.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r4.w + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r4.w + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r5.w, r7.xyzw, cb2[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
  dp4 r6.z, r7.xyzw, cb2[r4.w + 32].xyzw  // r6.z <- shadowPosition.w

#line 1039
  add r8.z, r5.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 1040
  div r8.xyz, r8.xyzx, r6.zzzz

#line 749
  mad r6.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 750
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 751
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 752
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 509
  mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 510
  mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 512
  mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 511
  div r11.xy, r11.xyxx, r10.yxyy
  add r12.xw, r11.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r12.x <- uv0.x; r12.w <- uv0.y

#line 512
  div r11.xy, r11.zwzz, r9.xyxx
  add r12.yz, r11.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r12.y <- uv1.y; r12.z <- uv1.x

#line 513
  mad r11.xy, r6.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r9.wzww
  add r11.xw, r11.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 514
  div r6.zw, r6.zzzw, r10.zzzw
  add r13.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r13.x <- uv3.x; r13.y <- uv3.y

#line 516
  mad r14.xyzw, r12.xwzw, cb2[28].zwzw, r8.xyxy

#line 521
  mov r11.yz, r12.wwyw

#line 522
  mov r13.zw, r11.yyyz

#line 520
  mad r15.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy

#line 521
  mad r16.xyzw, r11.wywz, cb2[28].zwzw, r8.xyxy

#line 522
  mad r17.xyzw, r13.xzxw, cb2[28].zwzw, r8.xyxy

#line 523
  mov r12.y, r11.x
  mul r6.zw, -r9.wwwz, r10.xxxy

#line 524
  mad r18.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy
  mul r13.zw, r9.yyyx, -r9.wwwz

#line 525
  mad r19.xy, r11.wxww, cb2[28].zwzz, r8.xyxx
  mul r19.zw, r9.yyyz, r9.xxxw

#line 526
  mov r12.w, r13.x
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r8.xxxy

#line 528
  mov r11.xz, r12.xxzx

#line 527
  mov r11.y, r13.y
  mul r12.xz, r10.xxyx, -r10.zzwz

#line 528
  mad r20.xyzw, r11.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.xz, r9.yyxy, -r10.zzwz

#line 529
  mad r11.yw, r11.wwwy, cb2[28].zzzw, r8.xxxy
  mul r9.xyzw, r9.xyzw, r10.xyzw

#line 530
  mad r8.xy, r13.xyxx, cb2[28].zwzz, r8.xyxx
  mul r10.xy, r10.xwxx, r10.yzyy

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.xyxx, t4.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id76 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r14.zwzz, t4.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id76 return value>

#line 893
  mul r8.w, r8.w, r9.x
  mad r5.w, r10.x, r5.w, r8.w  // r5.w <- shadow

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r16.xyxx, t4.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id76 return value>

#line 893
  mad r5.w, r6.z, r8.w, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r17.xyxx, t4.xxxx, s1, r8.z  // r6.z <- <SampleTextureAndCompare_id76 return value>

#line 893
  mad r5.w, r12.x, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r15.xyxx, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r9.y, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r15.zwzz, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r19.z, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r16.zwzz, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r13.z, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r17.zwzz, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r11.x, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r18.xyxx, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r6.w, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r18.zwzz, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r13.w, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r19.xyxx, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r19.w, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r12.ywyy, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r9.z, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r20.xyxx, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r12.z, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r20.zwzz, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r11.z, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r11.ywyy, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r9.w, r6.z, r5.w

#line 744
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r8.xyxx, t4.xxxx, s1, r8.z

#line 893
  mad r5.w, r10.y, r6.z, r5.w

#line 895
  mul r8.xyz, r5.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r8.z <- shadow

#line 1298
  ilt r6.z, l(0), r2.w
  if_nz r6.z

#line 1300
    iadd r6.z, r2.w, l(-1)
    add r6.z, -cb2[r6.z + 83].x, cb2[r2.w + 83].x  // r6.z <- splitSize

#line 1301
  else 
    mov r6.z, cb2[r2.w + 83].x  // r6.z <- splitSize
  endif 

#line 1302
  add r2.w, -v2.x, cb2[r2.w + 83].x
  div r2.w, r2.w, r6.z  // r2.w <- splitDist

#line 1303
  lt r6.z, r2.w, l(0.200000)
  if_nz r6.z

#line 1306
    if_nz r3.w

#line 1308
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 1305
      mul_sat r2.w, r2.w, l(5.000000)
      mad r3.w, r2.w, l(-2.000000), l(3.000000)
      mul r2.w, r2.w, r2.w
      mul r2.w, r2.w, r3.w  // r2.w <- lerpAmt

#line 1038
      dp4 r9.x, r7.xyzw, cb2[r4.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r4.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r3.w, r7.xyzw, cb2[r4.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r7.xyzw, cb2[r4.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 1039
      add r9.z, r3.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 1040
      div r7.xyz, r9.xyzx, r4.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 749
      mad r6.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r7.xy, r6.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 750
      add r6.zw, r6.zzzw, -r7.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 751
      add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 752
      mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 509
      mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 510
      mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 512
      mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 511
      div r11.xy, r11.xyxx, r10.yxyy
      add r12.xw, r11.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r12.x <- uv0.x; r12.w <- uv0.y

#line 512
      div r11.xy, r11.zwzz, r9.xyxx
      add r12.yz, r11.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r12.y <- uv1.y; r12.z <- uv1.x

#line 513
      mad r11.xy, r6.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r11.xy, r11.xyxx, r9.wzww
      add r11.xw, r11.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 514
      div r6.zw, r6.zzzw, r10.zzzw
      add r13.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r13.x <- uv3.x; r13.y <- uv3.y

#line 516
      mad r14.xyzw, r12.xwzw, cb2[28].zwzw, r7.xyxy

#line 521
      mov r11.yz, r12.wwyw

#line 522
      mov r13.zw, r11.yyyz

#line 520
      mad r15.xyzw, r12.xyzy, cb2[28].zwzw, r7.xyxy

#line 521
      mad r16.xyzw, r11.wywz, cb2[28].zwzw, r7.xyxy

#line 522
      mad r17.xyzw, r13.xzxw, cb2[28].zwzw, r7.xyxy

#line 523
      mov r12.y, r11.x
      mul r6.zw, -r9.wwwz, r10.xxxy

#line 524
      mad r18.xyzw, r12.xyzy, cb2[28].zwzw, r7.xyxy
      mul r13.zw, r9.yyyx, -r9.wwwz

#line 525
      mad r19.xy, r11.wxww, cb2[28].zwzz, r7.xyxx
      mul r19.zw, r9.yyyz, r9.xxxw

#line 526
      mov r12.w, r13.x
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r7.xxxy

#line 528
      mov r11.xz, r12.xxzx

#line 527
      mov r11.y, r13.y
      mul r12.xz, r10.xxyx, -r10.zzwz

#line 528
      mad r20.xyzw, r11.xyzy, cb2[28].zwzw, r7.xyxy
      mul r11.xz, r9.yyxy, -r10.zzwz

#line 529
      mad r11.yw, r11.wwwy, cb2[28].zzzw, r7.xxxy
      mul r9.xyzw, r9.xyzw, r10.xyzw

#line 530
      mad r7.xy, r13.xyxx, cb2[28].zwzz, r7.xyxx
      mul r10.xy, r10.xwxx, r10.yzyy

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.xyxx, t4.xxxx, s1, r7.z  // r3.w <- <SampleTextureAndCompare_id76 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.zwzz, t4.xxxx, s1, r7.z  // r4.w <- <SampleTextureAndCompare_id76 return value>

#line 893
      mul r4.w, r4.w, r9.x
      mad r3.w, r10.x, r3.w, r4.w  // r3.w <- shadow

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.xyxx, t4.xxxx, s1, r7.z  // r4.w <- <SampleTextureAndCompare_id76 return value>

#line 893
      mad r3.w, r6.z, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.xyxx, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r12.x, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.xyxx, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r9.y, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r19.z, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.zwzz, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r13.z, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.zwzz, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r11.x, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.xyxx, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r6.w, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.zwzz, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r13.w, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r19.xyxx, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r19.w, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r12.ywyy, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r9.z, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.xyxx, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r12.z, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.zwzz, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r11.z, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r11.ywyy, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r9.w, r4.w, r3.w

#line 744
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r7.xyxx, t4.xxxx, s1, r7.z

#line 893
      mad r3.w, r10.y, r4.w, r3.w

#line 895
      mul r3.w, r3.w, l(0.000370)

#line 1312
      mad r4.w, r5.w, l(0.000370), -r3.w
      mad r8.xyz, r2.wwww, r4.wwww, r3.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 1313
    endif 

#line 1314
  endif 

#line 1497
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r1.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id46.x; r7.y <- streams.lightColorNdotL_id46.y; r7.z <- streams.lightColorNdotL_id46.z

#line 1487
  mad r8.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r2.w, r8.xyzx, r8.xyzx
  rsq r2.w, r2.w
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.z <- streams.H_id77.z

#line 1488
  dp3_sat r2.w, r1.xyzx, r8.xyzx  // r2.w <- streams.NdotH_id78

#line 1489
  dp3_sat r3.w, -cb2[26].xyzx, r8.xyzx  // r3.w <- streams.LdotH_id79

#line 1483
  mul r8.xyz, r4.xyzx, r7.xyzx

#line 863
  add r9.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r9.xyz, r9.xyzx, r3.wwww, r5.xyzx  // r9.x <- <FresnelSchlick_id214 return value>.x; r9.y <- <FresnelSchlick_id214 return value>.y; r9.z <- <FresnelSchlick_id214 return value>.z

#line 858
  mul r3.w, r0.w, l(0.500000)  // r3.w <- k

#line 859
  mad r4.w, -r0.w, l(0.500000), l(1.000000)
  mad r5.w, r1.w, r4.w, r3.w
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id230 return value>
  mad r3.w, r6.y, r4.w, r3.w
  div r3.w, r6.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id230 return value>

#line 1025
  mul r3.w, r3.w, r5.w
  mul r1.w, r6.y, r1.w
  div r1.w, r3.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id232 return value>

#line 1019
  mul r3.w, r0.w, r0.w  // r3.w <- alphaR2

#line 1020
  mul r2.w, r2.w, r2.w
  mad r4.w, r0.w, r0.w, l(-1.000000)
  mad r2.w, r2.w, r4.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 1021
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r3.w, r2.w  // r2.w <- <NormalDistributionGGX_id244 return value>

#line 1477
  mul r9.xyz, r1.wwww, r9.xyzx
  mul r9.xyz, r2.wwww, r9.xyzx
  mul r7.xyz, r7.xyzx, r9.xyzx

#line 1478
  mul r7.xyz, r7.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r7.x <- <ComputeDirectLightContribution_id598 return value>.x; r7.y <- <ComputeDirectLightContribution_id598 return value>.y; r7.z <- <ComputeDirectLightContribution_id598 return value>.z

#line 1600
  mad r7.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 1601
else 
  mov r7.xyz, l(0,0,0,0)  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
endif 

#line 1249
add r1.w, v1.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 1250
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1251
mad r1.w, r1.w, cb2[86].y, cb2[86].z
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r8.z, r1.w  // r8.z <- slice

#line 1252
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r8.xy, r0.xyxx
mov r8.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r8.xyzw, t5.xyzw  // r0.x <- streams.lightData_id177.x; r0.y <- streams.lightData_id177.y

#line 1465
and r1.w, r0.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id285 return value>

#line 1610
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r8.w, v0.x  // r8.w <- streams.PositionWS_id22.x
mov r9.xy, v0.yzyy  // r9.x <- streams.PositionWS_id22.y; r9.y <- streams.PositionWS_id22.z
mov r9.zw, r3.xxxy  // r9.z <- streams.viewWS_id70.x; r9.w <- streams.viewWS_id70.y
mov r10.z, r3.z  // r10.z <- streams.viewWS_id70.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matDiffuseVisible_id71.x; r11.y <- streams.matDiffuseVisible_id71.y; r11.z <- streams.matDiffuseVisible_id71.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matSpecularVisible_id73.x; r12.y <- streams.matSpecularVisible_id73.y; r12.z <- streams.matSpecularVisible_id73.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id72
mov r6.w, r6.y  // r6.w <- streams.NdotV_id74
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id178
mov r13.xyz, r7.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r1.w
  breakc_nz r3.w

#line 1612
  if_nz r3.w

#line 1614
    break 

#line 1615
  endif 

#line 1236
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r6.zzzz, t6.yzwx  // r3.w <- realLightIndex

#line 1237
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id178

#line 1239
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r4.wwww, t7.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 1240
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r3.wwww, t7.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 850
  mov r16.x, r8.w
  mov r16.yz, r9.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 851
  dp3 r3.w, r14.xyzx, r14.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 852
  div r14.xyz, r14.xyzx, r4.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 690
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 455
  mul r3.w, r14.w, r3.w  // r3.w <- factor

#line 456
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 457
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id90 return value>

#line 691
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1451
  dp3 r4.w, r8.xyzx, r14.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 1453
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 1487
  mov r10.xy, r9.zwzz
  add r10.xyw, r14.xyxz, r10.xyxz
  dp3 r3.w, r10.xywx, r10.xywx
  rsq r3.w, r3.w
  mul r10.xyw, r3.wwww, r10.xyxw  // r10.x <- streams.H_id77.x; r10.y <- streams.H_id77.y; r10.w <- streams.H_id77.z

#line 1488
  dp3_sat r3.w, r8.xyzx, r10.xywx  // r3.w <- streams.NdotH_id78

#line 1489
  dp3_sat r5.w, r14.xyzx, r10.xywx  // r5.w <- streams.LdotH_id79

#line 1483
  mul r10.xyw, r11.xyxz, r15.xyxz

#line 1620
  mad r10.xyw, r10.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 863
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r7.w, r5.w, r5.w
  mul r7.w, r7.w, r7.w
  mul r5.w, r5.w, r7.w
  mad r14.xyz, r14.xyzx, r5.wwww, r12.xyzx  // r14.x <- <FresnelSchlick_id214 return value>.x; r14.y <- <FresnelSchlick_id214 return value>.y; r14.z <- <FresnelSchlick_id214 return value>.z

#line 858
  mul r5.w, r12.w, l(0.500000)  // r5.w <- k

#line 859
  mad r7.w, -r12.w, l(0.500000), l(1.000000)
  mad r11.w, r4.w, r7.w, r5.w
  div r11.w, r4.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id230 return value>
  mad r5.w, r6.w, r7.w, r5.w
  div r5.w, r6.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id230 return value>

#line 1025
  mul r5.w, r5.w, r11.w
  mul r4.w, r6.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id232 return value>

#line 1019
  mul r5.w, r12.w, r12.w  // r5.w <- alphaR2

#line 1020
  mul r3.w, r3.w, r3.w
  mad r7.w, r12.w, r12.w, l(-1.000000)
  mad r3.w, r3.w, r7.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 1021
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id244 return value>

#line 1477
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1624
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r10.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1610
  iadd r2.w, r2.w, l(1)

#line 1626
endloop   // r6.z <- streams.lightIndex_id178

#line 1443
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id297 return value>

#line 1634
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, v0.xyzx  // r8.x <- streams.PositionWS_id22.x; r8.y <- streams.PositionWS_id22.y; r8.z <- streams.PositionWS_id22.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y; r9.z <- streams.viewWS_id70.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r12.xyz, r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r14.x, r0.w  // r14.x <- streams.alphaRoughness_id72
mov r14.y, r6.y  // r14.y <- streams.NdotV_id74
mov r0.y, r6.z  // r0.y <- streams.lightIndex_id178
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 1636
  if_nz r2.w

#line 1638
    break 

#line 1639
  endif 

#line 1208
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.yyyy, t6.yzwx  // r2.w <- realLightIndex

#line 1209
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id178

#line 1211
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r3.wwww, t8.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 1214
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 1212
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t8.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 1213
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t8.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 1214
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t8.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 837
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 838
  dp3 r2.w, r15.xyzx, r15.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 839
  div r15.xyz, r15.xyzx, r3.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 683
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 449
  mul r2.w, r16.w, r2.w  // r2.w <- factor

#line 450
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 451
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id101 return value>

#line 684
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 675
  dp3 r3.w, -r17.xyzx, r15.xyzx  // r3.w <- cd

#line 676
  mad_sat r3.w, r3.w, r16.x, r16.y  // r3.w <- attenuation

#line 677
  mul r3.w, r3.w, r3.w

#line 845
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1429
  dp3 r3.w, r7.xyzx, r15.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1431
  mul r16.xyz, r2.wwww, r18.xyzx
  mul r16.xyz, r3.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id46.x; r16.y <- streams.lightColorNdotL_id46.y; r16.z <- streams.lightColorNdotL_id46.z

#line 1487
  add r17.xyz, r9.xyzx, r15.xyzx
  dp3 r2.w, r17.xyzx, r17.xyzx
  rsq r2.w, r2.w
  mul r17.xyz, r2.wwww, r17.xyzx  // r17.x <- streams.H_id77.x; r17.y <- streams.H_id77.y; r17.z <- streams.H_id77.z

#line 1488
  dp3_sat r2.w, r7.xyzx, r17.xyzx  // r2.w <- streams.NdotH_id78

#line 1489
  dp3_sat r4.w, r15.xyzx, r17.xyzx  // r4.w <- streams.LdotH_id79

#line 1483
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1644
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 863
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r17.xyz, r17.xyzx, r4.wwww, r11.xyzx  // r17.x <- <FresnelSchlick_id214 return value>.x; r17.y <- <FresnelSchlick_id214 return value>.y; r17.z <- <FresnelSchlick_id214 return value>.z

#line 858
  mul r4.w, r14.x, l(0.500000)  // r4.w <- k

#line 859
  mad r5.w, -r14.x, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r4.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id230 return value>
  mad r4.w, r14.y, r5.w, r4.w
  div r4.w, r14.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id230 return value>

#line 1025
  mul r4.w, r4.w, r6.w
  mul r3.w, r14.y, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id232 return value>

#line 1019
  mul r4.w, r14.x, r14.x  // r4.w <- alphaR2

#line 1020
  mul r2.w, r2.w, r2.w
  mad r5.w, r14.x, r14.x, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 1021
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id244 return value>

#line 1477
  mul r17.xyz, r3.wwww, r17.xyzx
  mul r17.xyz, r2.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1648
  mad r12.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1634
  iadd r1.w, r1.w, l(1)

#line 1650
endloop   // r0.y <- streams.lightIndex_id178

#line 1664
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 829
  add r7.xyz, -v0.xyzx, cb0[29].xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 830
  dp3 r0.x, r7.xyzx, r7.xyzx
  sqrt r0.y, r0.x  // r0.y <- lightVectorLength

#line 831
  div r7.xyz, r7.xyzx, r0.yyyy  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 669
  max r0.y, r0.x, l(0.000100)
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y  // r0.y <- attenuation

#line 443
  mul r0.x, r0.x, cb0[29].w  // r0.x <- factor

#line 444
  mad r0.x, -r0.x, r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)  // r0.x <- smoothFactor

#line 445
  mul r0.x, r0.x, r0.x  // r0.x <- <SmoothDistanceAttenuation_id112 return value>

#line 670
  mul r0.x, r0.x, r0.y  // r0.x <- attenuation

#line 1407
  dp3 r0.y, r1.xyzx, r7.xyzx
  max r0.y, r0.y, l(0.000100)  // r0.y <- streams.NdotL_id51

#line 1147
  add r8.xyz, v0.xyzx, -cb0[29].xyzx  // r8.x <- lightDelta.x; r8.y <- lightDelta.y; r8.z <- lightDelta.z

#line 1148
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r1.w, r1.w  // r1.w <- distanceToLight

#line 1149
  div r9.xyz, r8.xyzx, r1.wwww  // r9.x <- direction.x; r9.y <- direction.y; r9.z <- direction.z

#line 1151
  max r1.w, |r9.z|, |r9.y|
  max r1.w, r1.w, |r9.x|  // r1.w <- longestAxis

#line 1160
  eq r6.zw, r1.wwww, |r9.xxxy|

#line 1169
  mov r8.w, l(4)
  mov r9.xz, l(0,0,2,0)
  mov r9.yw, r8.zzzx
  movc r8.xy, r6.wwww, r8.wyww, r9.xyxx  // r8.x <- faceIndex; r8.y <- lightSpaceZ
  movc r6.zw, r6.zzzz, r9.zzzw, r8.xxxy  // r6.z <- faceIndex; r6.w <- lightSpaceZ

#line 1178
  add r1.w, |r6.w|, -cb0[80].x  // r1.w <- lightSpaceZ

#line 1179
  div r1.w, cb0[82].y, r1.w
  add r1.w, r1.w, cb0[82].x  // r1.w <- depth

#line 1180
  lt r2.w, r1.w, l(0.000000)
  lt r3.w, l(1.000000), r1.w
  or r2.w, r2.w, r3.w

#line 1182
  if_z r2.w

#line 1170
    lt r2.w, l(0.000000), r6.w
    lt r3.w, r6.w, l(0.000000)
    iadd r2.w, -r2.w, r3.w
    itof r2.w, r2.w  // r2.w <- lightSpaceZDirection

#line 1171
    min r2.w, r2.w, l(0.000000)
    ftoi r2.w, -r2.w
    iadd r2.w, r2.w, r6.z  // r2.w <- faceIndex

#line 978
    add r3.w, -r0.y, l(1.000000)
    max r3.w, r3.w, l(0.000000)  // r3.w <- normalOffsetScale

#line 979
    mul r4.w, cb0[31].z, cb0[81].x
    dp2 r3.w, r4.wwww, r3.wwww

#line 1174
    mad r8.xyz, r3.wwww, r1.xyzx, v0.xyzx  // r8.x <- positionWS.x; r8.y <- positionWS.y; r8.z <- positionWS.z

#line 1175
    ishl r2.w, r2.w, l(2)
    mov r8.w, l(1.000000)
    dp4 r9.x, r8.xyzw, cb0[r2.w + 32].xyzw  // r9.x <- projectedPosition.x
    dp4 r9.y, r8.xyzw, cb0[r2.w + 33].xyzw  // r9.y <- projectedPosition.y
    dp4 r2.w, r8.xyzw, cb0[r2.w + 35].xyzw  // r2.w <- projectedPosition.w

#line 1176
    div r6.zw, r9.xxxy, r2.wwww  // r6.z <- projectedPosition.x; r6.w <- projectedPosition.y

#line 808
    mad r6.zw, r6.zzzw, cb0[31].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
    round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 809
    add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 810
    add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 811
    mul r8.xy, r8.xyxx, cb0[31].zwzz

#line 417
    mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 418
    mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 420
    mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 419
    div r8.zw, r11.xxxy, r10.yyyx
    add r13.xw, r8.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 420
    div r8.zw, r11.zzzw, r9.xxxy
    add r13.yz, r8.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 421
    mad r8.zw, r6.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
    div r8.zw, r8.zzzw, r9.wwwz
    add r11.xw, r8.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 422
    div r6.zw, r6.zzzw, r10.zzzw
    add r14.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 424
    mad r15.xyzw, r13.xwzw, cb0[31].zwzw, r8.xyxy

#line 429
    mov r11.yz, r13.wwyw

#line 430
    mov r14.zw, r11.yyyz

#line 428
    mad r16.xyzw, r13.xyzy, cb0[31].zwzw, r8.xyxy

#line 429
    mad r17.xyzw, r11.wywz, cb0[31].zwzw, r8.xyxy

#line 430
    mad r18.xyzw, r14.xzxw, cb0[31].zwzw, r8.xyxy

#line 431
    mov r13.y, r11.x
    mul r6.zw, -r9.wwwz, r10.xxxy

#line 432
    mad r19.xyzw, r13.xyzy, cb0[31].zwzw, r8.xyxy
    mul r8.zw, r9.yyyx, -r9.wwwz

#line 433
    mad r14.zw, r11.wwwx, cb0[31].zzzw, r8.xxxy
    mul r20.xy, r9.yzyy, r9.xwxx

#line 434
    mov r13.w, r14.x
    mad r13.yw, r13.wwwy, cb0[31].zzzw, r8.xxxy

#line 436
    mov r11.xz, r13.xxzx

#line 435
    mov r11.y, r14.y
    mul r13.xz, r10.xxyx, -r10.zzwz

#line 436
    mad r21.xyzw, r11.xyzy, cb0[31].zwzw, r8.xyxy
    mul r11.xz, r9.yyxy, -r10.zzwz

#line 437
    mad r11.yw, r11.wwwy, cb0[31].zzzw, r8.xxxy
    mul r9.xyzw, r9.xyzw, r10.xyzw

#line 438
    mad r8.xy, r14.xyxx, cb0[31].zwzz, r8.xyxx
    mul r10.xy, r10.xwxx, r10.yzyy

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r15.xyxx, t0.xxxx, s1, r1.w  // r2.w <- <SampleTextureAndCompare_id124 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.zwzz, t0.xxxx, s1, r1.w  // r3.w <- <SampleTextureAndCompare_id124 return value>

#line 970
    mul r3.w, r3.w, r9.x
    mad r2.w, r10.x, r2.w, r3.w  // r2.w <- shadow

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.xyxx, t0.xxxx, s1, r1.w  // r3.w <- <SampleTextureAndCompare_id124 return value>

#line 970
    mad r2.w, r6.z, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r18.xyxx, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r13.x, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.xyxx, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r9.y, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.zwzz, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r20.x, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.zwzz, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r8.z, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r18.zwzz, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r11.x, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r19.xyxx, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r6.w, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r19.zwzz, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r8.w, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.zwzz, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r20.y, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r13.ywyy, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r9.z, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r21.xyxx, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r13.z, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r21.zwzz, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r11.z, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r11.ywyy, t0.xxxx, s1, r1.w

#line 970
    mad r2.w, r9.w, r3.w, r2.w

#line 803
    sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r8.xyxx, t0.xxxx, s1, r1.w  // r1.w <- <SampleTextureAndCompare_id124 return value>

#line 970
    mad r1.w, r10.y, r1.w, r2.w  // r1.w <- shadow

#line 972
    mul r8.xyz, r1.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r8.z <- shadow

#line 1183
  else   // Prior locations: r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z; r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z; r14.x <- streams.alphaRoughness_id72; r14.y <- streams.NdotV_id74; r8.z <- lightDelta.z; r6.z <- faceIndex; r1.w <- depth
    mov r8.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1409
  mul r9.xyz, r0.xxxx, cb0[30].xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx
  mul r8.xyz, r0.yyyy, r8.xyzx  // r8.x <- streams.lightColorNdotL_id46.x; r8.y <- streams.lightColorNdotL_id46.y; r8.z <- streams.lightColorNdotL_id46.z

#line 1487
  mad r9.xyz, r2.xyzx, r0.zzzz, r7.xyzx
  dp3 r0.x, r9.xyzx, r9.xyzx
  rsq r0.x, r0.x
  mul r9.xyz, r0.xxxx, r9.xyzx  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.z <- streams.H_id77.z

#line 1488
  dp3_sat r0.x, r1.xyzx, r9.xyzx  // r0.x <- streams.NdotH_id78

#line 1489
  dp3_sat r1.w, r7.xyzx, r9.xyzx  // r1.w <- streams.LdotH_id79

#line 1483
  mul r7.xyz, r4.xyzx, r8.xyzx

#line 1668
  mad r7.xyz, r7.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 863
  add r9.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r2.w, r1.w, r1.w
  mul r2.w, r2.w, r2.w
  mul r1.w, r1.w, r2.w
  mad r9.xyz, r9.xyzx, r1.wwww, r5.xyzx  // r9.x <- <FresnelSchlick_id214 return value>.x; r9.y <- <FresnelSchlick_id214 return value>.y; r9.z <- <FresnelSchlick_id214 return value>.z

#line 858
  mul r1.w, r0.w, l(0.500000)  // r1.w <- k

#line 859
  mad r2.w, -r0.w, l(0.500000), l(1.000000)
  mad r3.w, r0.y, r2.w, r1.w
  div r3.w, r0.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id230 return value>
  mad r1.w, r6.y, r2.w, r1.w
  div r1.w, r6.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id230 return value>

#line 1025
  mul r1.w, r1.w, r3.w
  mul r0.y, r6.y, r0.y
  div r0.y, r1.w, r0.y  // r0.y <- <VisibilitySmithSchlickGGX_id232 return value>

#line 1019
  mul r1.w, r0.w, r0.w  // r1.w <- alphaR2

#line 1020
  mul r0.x, r0.x, r0.x
  mad r2.w, r0.w, r0.w, l(-1.000000)
  mad r0.x, r0.x, r2.w, l(1.000000)
  max r0.x, r0.x, l(0.000100)  // r0.x <- d

#line 1021
  mul r0.x, r0.x, r0.x
  mul r0.x, r0.x, l(3.141593)
  div r0.x, r1.w, r0.x  // r0.x <- <NormalDistributionGGX_id244 return value>

#line 1477
  mul r9.xyz, r0.yyyy, r9.xyzx
  mul r9.xyz, r0.xxxx, r9.xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx

#line 1672
  mad r12.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r7.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1673
endif 

#line 1688
ilt r0.x, l(0), cb0[82].z
if_nz r0.x

#line 790
  add r7.xyz, -v0.xyzx, cb0[83].xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 791
  dp3 r0.x, r7.xyzx, r7.xyzx
  sqrt r0.y, r0.x  // r0.y <- lightVectorLength

#line 792
  div r7.xyz, r7.xyzx, r0.yyyy  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 614
  max r0.y, r0.x, l(0.000100)
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y  // r0.y <- attenuation

#line 363
  mul r0.x, r0.x, cb0[85].z  // r0.x <- factor

#line 364
  mad r0.x, -r0.x, r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)  // r0.x <- smoothFactor

#line 365
  mul r0.x, r0.x, r0.x  // r0.x <- <SmoothDistanceAttenuation_id138 return value>

#line 615
  mul r0.x, r0.x, r0.y  // r0.x <- attenuation

#line 606
  dp3 r0.y, -cb0[84].xyzx, r7.xyzx  // r0.y <- cd

#line 607
  mad_sat r0.y, r0.y, cb0[85].x, cb0[85].y  // r0.y <- attenuation

#line 608
  mul r0.y, r0.y, r0.y

#line 798
  mul r0.x, r0.y, r0.x  // r0.x <- attenuation

#line 1385
  dp3 r0.y, r1.xyzx, r7.xyzx
  max r0.y, r0.y, l(0.000100)  // r0.y <- streams.NdotL_id51

#line 945
  add r1.w, -r0.y, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- normalOffsetScale

#line 946
  mul r2.w, cb0[87].z, cb0[102].x
  dp2 r1.w, r2.wwww, r1.wwww

#line 1118
  mad r8.xyz, r1.wwww, r1.xyzx, v0.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 938
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb0[88].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb0[89].xyzw  // r9.y <- shadowPosition.y
  dp4 r1.w, r8.xyzw, cb0[90].xyzw  // r1.w <- shadowPosition.z
  dp4 r2.w, r8.xyzw, cb0[91].xyzw  // r2.w <- shadowPosition.w

#line 939
  add r9.z, r1.w, -cb0[101].x  // r9.z <- shadowPosition.z

#line 940
  div r8.xyz, r9.xyzx, r2.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 599
  mad r6.zw, r8.xxxy, cb0[87].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 600
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 601
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 602
  mul r8.xy, r8.xyxx, cb0[87].zwzz

#line 547
  mad r9.xy, -r6.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 549
  mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 550
  mad r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 551
  add r11.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 552
  div r6.zw, r6.zzzw, r9.zzzw
  add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 553
  mul r1.w, r9.x, r9.y

#line 554
  mad r13.xyzw, r10.xwzw, cb0[87].zwzw, r8.xyxy

#line 558
  mov r11.zw, r10.wwwy

#line 556
  mul r6.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 557
  mad r14.xyzw, r10.xyzy, cb0[87].zwzw, r8.xyxy

#line 558
  mad r15.xyzw, r11.xzxw, cb0[87].zwzw, r8.xyxy

#line 559
  mov r10.y, r11.y
  mul r9.xy, r9.xyxx, r9.zwzz

#line 560
  mad r10.xyzw, r10.xyzy, cb0[87].zwzw, r8.xyxy
  mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 561
  mad r8.xy, r11.xyxx, cb0[87].zwzz, r8.xyxx
  mul r2.w, r9.w, r9.z

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r13.xyxx, t1.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id152 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r13.zwzz, t1.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id152 return value>

#line 782
  mul r4.w, r4.w, r6.z
  mad r1.w, r1.w, r3.w, r4.w  // r1.w <- shadow

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.xyxx, t1.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id152 return value>

#line 782
  mad r1.w, r9.x, r3.w, r1.w

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.xyxx, t1.xxxx, s1, r8.z

#line 782
  mad r1.w, r6.w, r3.w, r1.w

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.zwzz, t1.xxxx, s1, r8.z

#line 782
  mad r1.w, r3.w, l(49.000000), r1.w

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.zwzz, t1.xxxx, s1, r8.z

#line 782
  mad r1.w, r11.z, r3.w, r1.w

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r10.xyxx, t1.xxxx, s1, r8.z

#line 782
  mad r1.w, r9.y, r3.w, r1.w

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r10.zwzz, t1.xxxx, s1, r8.z

#line 782
  mad r1.w, r11.w, r3.w, r1.w

#line 566
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r8.xyxx, t1.xxxx, s1, r8.z

#line 782
  mad r1.w, r2.w, r3.w, r1.w

#line 784
  mul r1.w, r1.w, l(0.006944)

#line 1387
  mul r8.xyz, r0.xxxx, cb0[86].xyzx
  mul r8.xyz, r1.wwww, r8.xyzx
  mul r8.xyz, r0.yyyy, r8.xyzx  // r8.x <- streams.lightColorNdotL_id46.x; r8.y <- streams.lightColorNdotL_id46.y; r8.z <- streams.lightColorNdotL_id46.z

#line 1487
  mad r2.xyz, r2.xyzx, r0.zzzz, r7.xyzx
  dp3 r0.x, r2.xyzx, r2.xyzx
  rsq r0.x, r0.x
  mul r2.xyz, r0.xxxx, r2.xyzx  // r2.x <- streams.H_id77.x; r2.y <- streams.H_id77.y; r2.z <- streams.H_id77.z

#line 1488
  dp3_sat r0.x, r1.xyzx, r2.xyzx  // r0.x <- streams.NdotH_id78

#line 1489
  dp3_sat r0.z, r7.xyzx, r2.xyzx  // r0.z <- streams.LdotH_id79

#line 1483
  mul r2.xyz, r4.xyzx, r8.xyzx

#line 1692
  mad r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 863
  add r7.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.z, -r0.z, l(1.000000)
  mul r1.w, r0.z, r0.z
  mul r1.w, r1.w, r1.w
  mul r0.z, r0.z, r1.w
  mad r7.xyz, r7.xyzx, r0.zzzz, r5.xyzx  // r7.x <- <FresnelSchlick_id214 return value>.x; r7.y <- <FresnelSchlick_id214 return value>.y; r7.z <- <FresnelSchlick_id214 return value>.z

#line 858
  mul r0.z, r0.w, l(0.500000)  // r0.z <- k

#line 859
  mad r1.w, -r0.w, l(0.500000), l(1.000000)
  mad r2.w, r0.y, r1.w, r0.z
  div r2.w, r0.y, r2.w  // r2.w <- <VisibilityhSchlickGGX_id230 return value>
  mad r0.z, r6.y, r1.w, r0.z
  div r0.z, r6.y, r0.z  // r0.z <- <VisibilityhSchlickGGX_id230 return value>

#line 1025
  mul r0.z, r0.z, r2.w
  mul r0.y, r6.y, r0.y
  div r0.y, r0.z, r0.y  // r0.y <- <VisibilitySmithSchlickGGX_id232 return value>

#line 1019
  mul r0.z, r0.w, r0.w  // r0.z <- alphaR2

#line 1020
  mul r0.x, r0.x, r0.x
  mad r1.w, r0.w, r0.w, l(-1.000000)
  mad r0.x, r0.x, r1.w, l(1.000000)
  max r0.x, r0.x, l(0.000100)  // r0.x <- d

#line 1021
  mul r0.x, r0.x, r0.x
  mul r0.x, r0.x, l(3.141593)
  div r0.x, r0.z, r0.x  // r0.x <- <NormalDistributionGGX_id244 return value>

#line 1477
  mul r7.xyz, r0.yyyy, r7.xyzx
  mul r0.xyz, r0.xxxx, r7.xyzx
  mul r0.xyz, r8.xyzx, r0.xyzx

#line 1696
  mad r12.xyz, r0.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1697
endif 

#line 1098
sqrt r0.x, r0.w
add r6.x, -r0.x, l(1.000000)  // r6.x <- glossiness

#line 1099
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r6.xyxx, t3.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 1100
mad r0.yzw, r5.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id420 return value>.x; r0.z <- <Compute_id420 return value>.y; r0.w <- <Compute_id420 return value>.z

#line 1368
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id599 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id599 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id599 return value>.z

#line 1710
mad r2.xyz, r4.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1357
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[100].xyzx  // r3.w <- sampleDirection.z

#line 917
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 918
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 922
mad r5.yzw, cb2[90].xxyz, r2.wwww, cb2[89].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 923
mad r5.yzw, cb2[91].xxyz, -r3.wwww, r5.yyzw

#line 924
mad r5.yzw, cb2[92].xxyz, r1.wwww, r5.yyzw

#line 927
mul r6.xyz, r2.wwww, cb2[93].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 928
mul r6.xyz, r2.wwww, cb2[94].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 929
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[95].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 930
mul r6.xyz, r1.wwww, cb2[96].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 931
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[97].xyzx, r1.wwww, r5.xyzx

#line 1359
mul r5.xyz, r5.xyzx, cb2[102].xxxx  // r5.x <- streams.envLightDiffuseColor_id49.x; r5.y <- streams.envLightDiffuseColor_id49.y; r5.z <- streams.envLightDiffuseColor_id49.z

#line 1360
dp3 r1.w, -r3.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r3.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 1361
dp3 r3.x, r1.xyzx, cb2[98].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r1.xyzx, cb2[99].xyzx  // r3.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[100].xyzx  // r1.x <- sampleDirection.z

#line 1362
mov r3.z, -r1.x  // r3.z <- sampleDirection.z

#line 1084
mul r0.x, r0.x, cb2[97].w  // r0.x <- mipLevel

#line 1085
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r3.xyzx, t9.xyzw, s0, r0.x  // r1.x <- <Compute_id370 return value>.x; r1.y <- <Compute_id370 return value>.y; r1.z <- <Compute_id370 return value>.z

#line 1363
mul r1.xyz, r1.xyzx, cb2[102].xxxx  // r1.x <- streams.envLightSpecularColor_id50.x; r1.y <- streams.envLightSpecularColor_id50.y; r1.z <- streams.envLightSpecularColor_id50.z

#line 1718
mad r2.xyz, r4.xyzx, r5.xyzx, r2.xyzx

#line 1722
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1737
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1863
utof o1.xyzw, cb0[26].xxxx

#line 1935
mov o0.w, l(1.000000)
ret 
// Approximately 754 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id149 = 1;
const static int TCascadeCountBase_id155 = 4;
const static int TLightCountBase_id156 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static bool TComputeTransmittance_id168 = false;
const static int TFilterSize_id170 = 7;
const static int TMaxLightCount_id187 = 1;
const static int TLightCount_id193 = 1;
const static int TFilterSize_id199 = 7;
const static int TMaxLightCount_id201 = 1;
const static int TCascadeCountBase_id207 = 1;
const static int TLightCountBase_id208 = 1;
const static bool TCascadeDebug_id216 = false;
const static int TFilterSize_id217 = 5;
const static int TOrder_id220 = 3;
const static int TOrder_id222 = 3;
const static bool TInvert_id245 = true;
const static bool TIsEnergyConservative_id257 = false;
static const float PI_id259 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id171;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    uint InstanceID_id13;
    float DepthVS_id23;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
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
    float4 ColorPerParticle_ShaderFXResult_0_id230;
    float Input_1_id238;
    float Input_2_id247;
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
    float thicknessWS_id147;
    float3 shadowColor_id146;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id177;
    int lightIndex_id178;
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
    float4 ScreenPosition_id171 : SCREENPOSITION_ID171_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint InstanceID_id13;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
    float3 normalWS_id19;
    float4 ScreenPosition_id171;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id171 : SCREENPOSITION_ID171_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id16 : NORMAL;
};
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
    int LightCount_id186;
    PointLightData Lights_id188[TMaxLightCount_id187];
    float2 ShadowMapTextureSize_id190;
    float2 ShadowMapTextureTexelSize_id191;
    float4x4 WorldToShadow_id194[TLightCount_id193 * 6];
    float4x4 InverseWorldToShadow_id195[TLightCount_id193 * 6];
    float DepthBiases_id196[TLightCount_id193];
    float OffsetScales_id197[TLightCount_id193];
    float2 DepthParameters_id198[TLightCount_id193];
    int LightCount_id200;
    SpotLightData Lights_id202[TMaxLightCount_id201];
    float2 ShadowMapTextureSize_id204;
    float2 ShadowMapTextureTexelSize_id205;
    float4x4 WorldToShadowCascadeUV_id209[TCascadeCountBase_id207 * TLightCountBase_id208];
    float4x4 InverseWorldToShadowCascadeUV_id210[TCascadeCountBase_id207 * TLightCountBase_id208];
    float4x4 ViewMatrices_id211[TCascadeCountBase_id207 * TLightCountBase_id208];
    float2 DepthRanges_id212[TCascadeCountBase_id207 * TLightCountBase_id208];
    float DepthBiases_id213[TLightCountBase_id208];
    float OffsetScales_id214[TLightCountBase_id208];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    uint MeshIndex_id143;
    float InputValue_id239;
    float InputValue_id248;
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
    float NearClipPlane_id172 = 1.0f;
    float FarClipPlane_id173 = 100.0f;
    float2 ZProjection_id174;
    float2 ViewSize_id175;
    float AspectRatio_id176;
    float4 _padding_PerView_Default;
    int LightCount_id148;
    DirectionalLightData Lights_id150[TMaxLightCount_id149];
    float2 ShadowMapTextureSize_id152;
    float2 ShadowMapTextureTexelSize_id153;
    float4x4 WorldToShadowCascadeUV_id157[TCascadeCountBase_id155 * TLightCountBase_id156];
    float4x4 InverseWorldToShadowCascadeUV_id158[TCascadeCountBase_id155 * TLightCountBase_id156];
    float4x4 ViewMatrices_id159[TCascadeCountBase_id155 * TLightCountBase_id156];
    float2 DepthRanges_id160[TCascadeCountBase_id155 * TLightCountBase_id156];
    float DepthBiases_id161[TLightCountBase_id156];
    float OffsetScales_id162[TLightCountBase_id156];
    float CascadeDepthSplits_id169[TCascadeCount_id163 * TLightCount_id164];
    float ClusterDepthScale_id181;
    float ClusterDepthBias_id182;
    float2 ClusterStride_id183;
    float3 AmbientLight_id218;
    float3 SphericalColors_id223[TOrder_id222 * TOrder_id222];
    float MipCount_id224;
    float4x4 SkyMatrix_id226;
    float Intensity_id227;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id86;
    float2 Texture1TexelSize_id88;
    float2 Texture2TexelSize_id90;
    float2 Texture3TexelSize_id92;
    float2 Texture4TexelSize_id94;
    float2 Texture5TexelSize_id96;
    float2 Texture6TexelSize_id98;
    float2 Texture7TexelSize_id100;
    float2 Texture8TexelSize_id102;
    float2 Texture9TexelSize_id104;
};
Texture2D Texture0_id85;
Texture2D Texture1_id87;
Texture2D Texture2_id89;
Texture2D Texture3_id91;
Texture2D Texture4_id93;
Texture2D Texture5_id95;
Texture2D Texture6_id97;
Texture2D Texture7_id99;
Texture2D Texture8_id101;
Texture2D Texture9_id103;
TextureCube TextureCube0_id105;
TextureCube TextureCube1_id106;
TextureCube TextureCube2_id107;
TextureCube TextureCube3_id108;
Texture3D Texture3D0_id109;
Texture3D Texture3D1_id110;
Texture3D Texture3D2_id111;
Texture3D Texture3D3_id112;
SamplerState Sampler_id113;
SamplerState PointSampler_id114 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id115 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id116 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id117 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id118 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id119 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id120 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id121 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id122 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id123;
SamplerState Sampler1_id124;
SamplerState Sampler2_id125;
SamplerState Sampler3_id126;
SamplerState Sampler4_id127;
SamplerState Sampler5_id128;
SamplerState Sampler6_id129;
SamplerState Sampler7_id130;
SamplerState Sampler8_id131;
SamplerState Sampler9_id132;
StructuredBuffer<InstanceTransform> InstanceWorld_id40;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id41;
Texture2D ShadowMapTexture_id189;
Texture2D ShadowMapTexture_id203;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id144;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id231;
Texture2D EnvironmentLightingDFG_LUT_id260;
Texture2D ShadowMapTexture_id151;
Texture3D<uint2> LightClusters_id179;
Buffer<uint> LightIndices_id180;
Buffer<float4> PointLights_id184;
Buffer<float4> SpotLights_id185;
TextureCube CubeMap_id225;
float4 Project_id117(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id68(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id138(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id126(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id191, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id191, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id191, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id191, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id125(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id191, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id191, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id191, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id191, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id191, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id191, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id191, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id191, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id191, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id127(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id189.SampleLevel(LinearBorderSampler_id116, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id117(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id123(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id191, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id191, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id191, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id191, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id191, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id191, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id191, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id191, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id191, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id191, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id191, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id191, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id191, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id191, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id191, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id191, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id112(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id101(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id90(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id78(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id153, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id153, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id77(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id153, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id153, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id153, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id79(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id151.SampleLevel(LinearBorderSampler_id116, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id68(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id75(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id153, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id153, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id153, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id153, uvW3.x * uvW3.y);
    return 2704.0;
}
float Get3x3FilterKernel_id154(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id205, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id205, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id205, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id205, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id153(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id205, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id205, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id205, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id205, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id205, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id205, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id205, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id205, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id205, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id152(float2 position, float positionDepth)
{
    return ShadowMapTexture_id203.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
float Get7x7FilterKernel_id151(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id205, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id205, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id205, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id205, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id205, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id205, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id205, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id205, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id205, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id205, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id205, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id205, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id205, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id205, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id205, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id205, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id150(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id204;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id205;
}
float GetAngularAttenuation_id140(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id139(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id138(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id131(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id190;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id191;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id123(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id127(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id130(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id117(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id117(float4(ShadowMapTextureTexelSize_id191.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id117(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id129(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id117(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id117(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id191.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id117(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id128()
{

    {
        return 4.5;
    }
}
float GetDistanceAttenuation_id114(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id112(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id103(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id102(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id101(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id92(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id90(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id83(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id152;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id153;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id75(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id79(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id82(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id68(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id68(float4(ShadowMapTextureTexelSize_id153.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id68(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id81(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id68(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id68(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id153.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id68(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id80()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id76(float2 position, float positionDepth)
{
    return ShadowMapTexture_id151.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
void CalculatePCFKernelParameters_id74(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id152;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id153;
}
float Compute_id408()
{
    return InputValue_id248;
}
float Compute_id396()
{
    return InputValue_id239;
}
float4 Compute_id384(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id231[id];
    return float4(p.Col, 1);
}
float FilterShadow_id146(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id150(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id153(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id152(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id141(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id139(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id140(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float SampleTextureAndCompare_id124(float2 position, float positionDepth)
{
    return ShadowMapTexture_id189.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
void CalculatePCFKernelParameters_id122(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id190;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id191;
}
float FilterThickness_id118(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id130(GetFilterRadiusInPixels_id128(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id129(GetFilterRadiusInPixels_id128(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id131(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id113(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id114(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id104(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id102(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id103(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id91(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id92(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id230(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id214(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id70(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id82(GetFilterRadiusInPixels_id80(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id81(GetFilterRadiusInPixels_id80(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id83(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id69(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id74(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id75(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id76(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id411(inout PS_STREAMS streams)
{
    streams.Input_2_id247 = Compute_id408();
}
void Compute_id399(inout PS_STREAMS streams)
{
    streams.Input_1_id238 = Compute_id396();
}
void Compute_id387(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id230 = Compute_id384(streams);
}
float4 EvaluateSphericalHarmonics_id168(float3 sphericalColors[TOrder_id220 * TOrder_id220], float3 direction)
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
float ComputeShadowFromCascade_id149(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id209[cascadeIndex + lightIndex * TCascadeCountBase_id207]);
    shadowPosition.z -= DepthBiases_id213[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id146(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id148(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id205.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id142(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id141(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float FilterShadow_id121(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id122(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id123(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id124(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id120(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id191.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id119(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id118(positionWS, streams.meshNormalWS_id17, float2(0.0f, 1.0f), WorldToShadow_id194[cascadeIndex], InverseWorldToShadow_id195[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id115(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id113(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id105(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id104(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id94(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id91(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id244(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id259 * d * d);
}
float VisibilitySmithSchlickGGX_id232(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id230(alphaR, nDotL) * VisibilityhSchlickGGX_id230(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id220(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id214(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id73(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id155;
    return FilterThickness_id70(pixelPositionWS, meshNormalWS, DepthRanges_id160[arrayIndex], WorldToShadowCascadeUV_id157[arrayIndex], InverseWorldToShadowCascadeUV_id158[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id72(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id157[cascadeIndex + lightIndex * TCascadeCountBase_id155]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id69(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id71(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id153.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id414(inout PS_STREAMS streams)
{
    return streams.Input_2_id247;
}
void Compute_id413(inout PS_STREAMS streams)
{

    {
        Compute_id411(streams);
    }
}
float Compute_id402(inout PS_STREAMS streams)
{
    return streams.Input_1_id238;
}
void Compute_id401(inout PS_STREAMS streams)
{

    {
        Compute_id399(streams);
    }
}
float4 Compute_id390(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id230;
}
void Compute_id389(inout PS_STREAMS streams)
{

    {
        Compute_id387(streams);
    }
}
float4 Compute_id370(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id224;
    return CubeMap_id225.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id365(float3 direction)
{
    return EvaluateSphericalHarmonics_id168(SphericalColors_id223, direction);
}
void PrepareEnvironmentLight_id172(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id420(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id260.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id163(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id137(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id136(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id135(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id148(OffsetScales_id214[lightIndex], streams.NdotL_id51, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id149(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id147 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id134(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id202[lightIndex].PositionWS;
    data.DirectionWS = Lights_id202[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id202[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id202[lightIndex].Color;
    ProcessLight_id142(streams, data);
}
float3 ComputeSpecularTextureProjection_id111(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id110(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id109(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id188[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id147 = ComputeThickness_id119(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id120(OffsetScales_id197[lightIndex], streams.NdotL_id51, streams.normalWS_id19);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id194[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id196[lightIndex];
    float depth = DepthParameters_id198[lightIndex].x + (DepthParameters_id198[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id121(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id108(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id188[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id188[lightIndex].InvSquareRadius;
    data.Color = Lights_id188[lightIndex].Color;
    ProcessLight_id115(streams, data);
}
float3 ComputeSpecularTextureProjection_id100(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id99(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id98(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id97(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id180.Load(streams.lightIndex_id178);
    streams.lightIndex_id178++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id185.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id185.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id185.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id185.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id105(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id89(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id88(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id87(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id180.Load(streams.lightIndex_id178);
    streams.lightIndex_id178++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id184.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id184.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id94(streams, pointLight);
}
void PrepareLightData_id93(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id174.y / (projectedDepth - ZProjection_id174.x);
    float2 texCoord = float2(streams.ScreenPosition_id171.x + 1, 1 - streams.ScreenPosition_id171.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id181 + ClusterDepthBias_id182), 0));
    streams.lightData_id177 = LightClusters_id179.Load(int4(texCoord * ClusterStride_id183, slice, 0));
    streams.lightIndex_id178 = streams.lightData_id177.x;
}
float Compute_id512(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id244(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id482(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id232(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id452(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id220(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id65(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id64(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id63(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id163;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id163 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id169[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id71(OffsetScales_id162[lightIndex], streams.NdotL_id51, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id72(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id169[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id169[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id163 - 1)
            {
            }
            else if (TBlendCascades_id165)
            {
                float nextShadow = ComputeShadowFromCascade_id72(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id147 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id62(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id150[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id150[lightIndex].DirectionWS;
}
float Compute_id417(inout PS_STREAMS streams)
{
    Compute_id413(streams);
    return Compute_id414(streams);
}
float Compute_id405(inout PS_STREAMS streams)
{
    Compute_id401(streams);
    return Compute_id402(streams);
}
float4 Compute_id393(inout PS_STREAMS streams)
{
    Compute_id389(streams);
    return Compute_id390(streams);
}
void ResetStream_id247()
{
}
void AfterLightingAndShading_id569()
{
}
void AfterLightingAndShading_id550()
{
}
void PrepareEnvironmentLight_id383(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id380(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id172(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id226);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id365(sampleDirection).rgb * Intensity_id227 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id226);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id370(streams, sampleDirection).rgb * Intensity_id227 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id599(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id420(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id543(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id375(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id163(streams);
    float3 lightColor = AmbientLight_id218 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id332(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id134(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id135(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id136(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id137(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id334()
{
    return LightCount_id200;
}
int GetMaxLightCount_id335()
{
    return TMaxLightCount_id201;
}
void PrepareDirectLights_id330()
{
}
void PrepareDirectLight_id307(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id108(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id109(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id110(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id111(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id309()
{
    return LightCount_id186;
}
int GetMaxLightCount_id311()
{
    return TMaxLightCount_id187;
}
void PrepareDirectLights_id305()
{
}
void PrepareDirectLight_id294(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id97(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id98(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id99(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id100(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id298(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y >> 16;
}
int GetMaxLightCount_id297(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y >> 16;
}
void PrepareDirectLights_id292()
{
}
void PrepareDirectLight_id281(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id87(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id88(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id89(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id286(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y & 0xFFFF;
}
int GetMaxLightCount_id285(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y & 0xFFFF;
}
void PrepareDirectLights_id284(inout PS_STREAMS streams)
{
    PrepareLightData_id93(streams);
}
float3 ComputeDirectLightContribution_id598(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id452(streams, specularColor);
    float geometricShadowing = Compute_id482(streams);
    float normalDistribution = Compute_id512(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id542(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id259 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id34(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id19, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id257(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id62(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id63(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id64(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id65(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id259()
{
    return LightCount_id148;
}
int GetMaxLightCount_id260()
{
    return TMaxLightCount_id149;
}
void PrepareDirectLights_id255()
{
}
void PrepareForLightingAndShading_id566()
{
}
void PrepareForLightingAndShading_id547()
{
}
void PrepareMaterialForLightingAndShading_id246(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id19, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id245(inout PS_STREAMS streams)
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
void UpdateNormalFromTangentSpace_id26(float3 normalInTangentSpace)
{
}
float4 Compute_id419(inout PS_STREAMS streams)
{
    float x = Compute_id417(streams);
    return float4(x, x, x, x);
}
float4 Compute_id407(inout PS_STREAMS streams)
{
    float x = Compute_id405(streams);
    return float4(x, x, x, x);
}
float4 Compute_id395(inout PS_STREAMS streams)
{
    return Compute_id393(streams);
}
void ResetStream_id248(inout PS_STREAMS streams)
{
    ResetStream_id247();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id630(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id26(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id245(streams);
    PrepareMaterialForLightingAndShading_id246(streams);

    {
        PrepareForLightingAndShading_id547();
    }

    {
        PrepareForLightingAndShading_id566();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id255();
        const int maxLightCount = GetMaxLightCount_id260();
        int count = GetLightCount_id259();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id257(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id542(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id598(streams);
            }
        }
    }

    {
        PrepareDirectLights_id284(streams);
        const int maxLightCount = GetMaxLightCount_id285(streams);
        int count = GetLightCount_id286(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id281(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id542(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id598(streams);
            }
        }
    }

    {
        PrepareDirectLights_id292();
        const int maxLightCount = GetMaxLightCount_id297(streams);
        int count = GetLightCount_id298(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id294(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id542(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id598(streams);
            }
        }
    }

    {
        PrepareDirectLights_id305();
        const int maxLightCount = GetMaxLightCount_id311();
        int count = GetLightCount_id309();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id307(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id542(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id598(streams);
            }
        }
    }

    {
        PrepareDirectLights_id330();
        const int maxLightCount = GetMaxLightCount_id335();
        int count = GetLightCount_id334();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id332(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id542(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id598(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id375(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id543(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id599(streams);
        }
    }

    {
        PrepareEnvironmentLight_id380(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id543(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id599(streams);
        }
    }

    {
        PrepareEnvironmentLight_id383(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id543(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id599(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id259 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id550();
    }

    {
        AfterLightingAndShading_id569();
    }
}
void Compute_id614(inout PS_STREAMS streams)
{
    float metalness = Compute_id419(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id609(inout PS_STREAMS streams)
{
    float glossiness = Compute_id407(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id604(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id395(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id249(inout PS_STREAMS streams)
{
    ResetStream_id248(streams);
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
float4x4 GetInstanceWorld_id13(uint instanceId)
{
    return mul(InstanceWorld_id40[instanceId].Matrix, World_id32);
}
void Compute_id59(inout PS_STREAMS streams)
{

    {
        Compute_id604(streams);
    }

    {
        Compute_id609(streams);
    }

    {
        Compute_id614(streams);
    }

    {
        Compute_id630(streams);
    }
}
void ResetStream_id58(inout PS_STREAMS streams)
{
    ResetStream_id249(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
float4x4 GetInstanceWorld_id38(uint instanceId)
{
    uint m = ParticlesBuffer_id144[instanceId].Mesh;
    if (m == MeshIndex_id143)
        return GetInstanceWorld_id13(instanceId);
    return 0;
}
float4 Shading_id35(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id58(streams);
    Compute_id59(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return mul(WorldInverse_id33, InstanceWorldInverse_id41[instanceId].Matrix);
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
void PreTransformPosition_id15(inout VS_STREAMS streams)
{
    streams.PositionWS_id22 = mul(streams.Position_id21, GetInstanceWorld_id38(streams.InstanceID_id13));
}
float4 Compute_id57()
{
    return MaterialIndex_id145;
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
    uint m = ParticlesBuffer_id144[instanceId].Mesh;
    if (m == MeshIndex_id143)
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
    streams.ColorTarget1_id3 = Compute_id57();
}
void GenerateNormal_PS_id25(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
}
void GenerateNormal_VS_id27(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id17 = mul((float3x3)GetInstanceWorldInverse_id39(streams.InstanceID_id13), streams.meshNormal_id16);
    streams.normalWS_id19 = streams.meshNormalWS_id17;
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
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id171 = __input__.ScreenPosition_id171;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id171 /= streams.ScreenPosition_id171.w;
    PSMain_id23(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id22(streams);
    streams.ScreenPosition_id171 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id171 = streams.ScreenPosition_id171;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    return __output__;
}

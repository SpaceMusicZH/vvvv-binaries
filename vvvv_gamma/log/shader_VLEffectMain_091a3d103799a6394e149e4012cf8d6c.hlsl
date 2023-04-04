/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,7>, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMSphereImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MaterialIndex_id156 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id197 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id199 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id201 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id202 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id205 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id206 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id207 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id208 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id209 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    LightCount_id211 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id213 => LightSpotGroup.Lights.directLightGroups[4]
@C    ShadowMapTextureSize_id215 => ShadowMap.TextureSize.directLightGroups[4]
@C    ShadowMapTextureTexelSize_id216 => ShadowMap.TextureTexelSize.directLightGroups[4]
@C    WorldToShadowCascadeUV_id220 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[4]
@C    InverseWorldToShadowCascadeUV_id221 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[4]
@C    ViewMatrices_id222 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[4]
@C    DepthRanges_id223 => ShadowMapReceiverBase.DepthRanges.directLightGroups[4]
@C    DepthBiases_id224 => ShadowMapReceiverBase.DepthBiases.directLightGroups[4]
@C    OffsetScales_id225 => ShadowMapReceiverBase.OffsetScales.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id152 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id250 => ShaderFX.InputValueFloat
@C    InputValue_id259 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id27 => Transformation.View
@C    ViewInverse_id28 => Transformation.ViewInverse
@C    Projection_id29 => Transformation.Projection
@C    ProjectionInverse_id30 => Transformation.ProjectionInverse
@C    ViewProjection_id31 => Transformation.ViewProjection
@C    ProjScreenRay_id32 => Transformation.ProjScreenRay
@C    Eye_id33 => Transformation.Eye
@C    NearClipPlane_id183 => Camera.NearClipPlane
@C    FarClipPlane_id184 => Camera.FarClipPlane
@C    ZProjection_id185 => Camera.ZProjection
@C    ViewSize_id186 => Camera.ViewSize
@C    AspectRatio_id187 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id159 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id161 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id163 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id164 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id168 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id169 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id170 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id171 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id172 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id173 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id180 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id192 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id193 => LightClustered.ClusterDepthBias
@C    ClusterStride_id194 => LightClustered.ClusterStride
@C    AmbientLight_id229 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id234 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id235 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id237 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id238 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id214 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id214 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id242 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id242 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id271 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id271 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id162 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id162 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id190 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id190 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id191 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id191 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id195 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id195 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id196 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id196 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id236 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id236 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id115 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id117 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id214 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: Pixel, Slot: (1-1)]
@R    ParticlesBuffer_id242 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (2-2)]
@R    EnvironmentLightingDFG_LUT_id271 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id162 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (4-4)]
@R    LightClusters_id190 => LightClustered.LightClusters [Stage: Pixel, Slot: (5-5)]
@R    LightIndices_id191 => LightClustered.LightIndices [Stage: Pixel, Slot: (6-6)]
@R    PointLights_id195 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (7-7)]
@R    SpotLights_id196 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (8-8)]
@R    CubeMap_id236 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (9-9)]
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
@S    SMSphereImpostor_ShaderFX => a3cee26ef91f37f6e7d9c4bec4a5cd33
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
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
@S    GBufferOutputNormals => 3e4e9266b2241214d3854561b81ccfc5
@S    NormalPack => af1a18518fb63b6295c012c18fe9f9c0
@S    GBufferOutputSpecularColorRoughness => bffa7efe5b33b6017b4ec87d2c142a79
@S    Utilities => d8e15010fb2006b8edf6bdc952dd31f0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 093939014ff0a4349249467ef206f329
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VertexID              0   x           0   VERTID    uint   x   
// POSITION                 0   xyzw        1     NONE   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VID_ID155_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float   xyzw
// SCREENPOSITION_ID182_SEM     0   xyzw        2     NONE   float   xyzw
// NORMALWS                 0   xyz         3     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_input v1.xyzw
dcl_input v2.xyz
dcl_output o0.x
dcl_output o0.y
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.xyz
//
// Initial variable locations:
//   v0.x <- __input__.VertexID_id154; 
//   v1.x <- __input__.Position_id23.x; v1.y <- __input__.Position_id23.y; v1.z <- __input__.Position_id23.z; v1.w <- __input__.Position_id23.w; 
//   v2.x <- __input__.normalWS_id21.x; v2.y <- __input__.normalWS_id21.y; v2.z <- __input__.normalWS_id21.z; 
//   o3.x <- <VSMain return value>.normalWS_id21.x; o3.y <- <VSMain return value>.normalWS_id21.y; o3.z <- <VSMain return value>.normalWS_id21.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id182.x; o2.y <- <VSMain return value>.ScreenPosition_id182.y; o2.z <- <VSMain return value>.ScreenPosition_id182.z; o2.w <- <VSMain return value>.ScreenPosition_id182.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id155; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 2030 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_091a3d103799a6394e149e4012cf8d6c.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
mov o3.xyz, v2.xyzx
ret 
// Approximately 5 instruction slots used
@G    Geometry => 7d9eecfa6835b9558781548fe597ccdb
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
//   float4x4 WorldInverseTranspose_id36;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id37;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id38;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id39; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id40;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id41;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id156;          // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id197;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id199;                    // Offset:  464 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id201; // Offset:  496 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id202;// Offset:  504 Size:     8 [unused]
//   float4x4 WorldToShadow_id205[6];   // Offset:  512 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id206[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id207;           // Offset: 1280 Size:     4 [unused]
//   float OffsetScales_id208;          // Offset: 1296 Size:     4 [unused]
//   float2 DepthParameters_id209;      // Offset: 1312 Size:     8 [unused]
//   int LightCount_id211;              // Offset: 1320 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id213;                    // Offset: 1328 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id215; // Offset: 1392 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id216;// Offset: 1400 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id220;// Offset: 1408 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id221;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id222;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id223;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id224;           // Offset: 1616 Size:     4 [unused]
//   float OffsetScales_id225;          // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id152;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id250;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id259;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id29;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id183;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id184;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id185;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id186;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id187;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id159;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id161;                    // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id163; // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id164;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id168[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id169[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id170[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id171[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id172;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id173;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id180[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id192;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id193;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id194;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id229;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id234[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id235;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id237;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id238;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id151
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
// ParticlesBuffer_id151             texture  struct         r/o             t0      1 
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
// VID_ID155_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float       
// SCREENPOSITION_ID182_SEM     0   xyzw        2     NONE   float   xyzw
// NORMALWS                 0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID153_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float   xyzw
// SCREENPOSITION_ID182_SEM     0   xyzw        3     NONE   float   xyzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
// SV_InstanceID            0   x           5     NONE    uint   x   
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 1.000000, 0, 0},
                              { 1.000000, 1.000000, 0, 0},
                              { 0, 0, -1.000000, 1.000000},
                              { 1.000000, 0, 1.000000, 1.000000},
                              { 0, 0, -1.000000, -1.000000},
                              { 0, 0, 1.000000, -1.000000} }
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[12], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v[1][0].x
dcl_input v[1][0].y
dcl_input_siv v[1][1].xyzw, position
dcl_input v[1][2].xyzw
dcl_input v[1][3].xyz
dcl_temps 6
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output o1.x
dcl_output o1.yz
dcl_output_siv o2.xyzw, position
dcl_output o3.xyzw
dcl_output o4.xyz
dcl_output o5.x
dcl_maxout 4
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].VID_id155; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id182.x; v[0][2].y <- input[0].ScreenPosition_id182.y; v[0][2].z <- input[0].ScreenPosition_id182.z; v[0][2].w <- input[0].ScreenPosition_id182.w; 
//   v[0][3].x <- input[0].normalWS_id21.x; v[0][3].y <- input[0].normalWS_id21.y; v[0][3].z <- input[0].normalWS_id21.z
//
#line 1988 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_091a3d103799a6394e149e4012cf8d6c.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 1990
mul r0.w, r0.x, cb1[0].x

#line 1991
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 1992
  ret 
endif 

#line 1988
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 1989
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id24.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id24.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id24.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id24.w

#line 1995
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 2000
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id153

#line 2001
mov r4.w, l(1.000000)

#line 1997
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 1999
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id133.x; r5.y <- streams.TexCoord_id133.y

#line 2000
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 2001
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 2012
  mov o0.xyzw, r2.xyzw
  mov o1.x, r0.x
  mov o1.yz, r5.xxyx
  mov o2.x, r3.x
  mov o2.y, r3.y
  mov o2.z, r3.w
  mov o2.w, r4.x
  mov o3.xyzw, v[0][2].xyzw
  mov o4.xyz, v[0][3].xyzx
  mov o5.x, v[0][0].y
  emit_stream m0

#line 2014
  iadd r1.w, r1.w, l(1)
endloop 

#line 2015
ret 
// Approximately 43 instruction slots used
@G    Pixel => 843f6caa39b2dc87159f06318f4771ca
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
//   uint MaterialIndex_id156;          // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id197;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id199;                    // Offset:  464 Size:    28
//   float2 ShadowMapTextureSize_id201; // Offset:  496 Size:     8
//   float2 ShadowMapTextureTexelSize_id202;// Offset:  504 Size:     8
//   float4x4 WorldToShadow_id205[6];   // Offset:  512 Size:   384
//   float4x4 InverseWorldToShadow_id206[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id207;           // Offset: 1280 Size:     4
//   float OffsetScales_id208;          // Offset: 1296 Size:     4
//   float2 DepthParameters_id209;      // Offset: 1312 Size:     8
//   int LightCount_id211;              // Offset: 1320 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id213;                    // Offset: 1328 Size:    60
//   float2 ShadowMapTextureSize_id215; // Offset: 1392 Size:     8
//   float2 ShadowMapTextureTexelSize_id216;// Offset: 1400 Size:     8
//   float4x4 WorldToShadowCascadeUV_id220;// Offset: 1408 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id221;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id222;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id223;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id224;           // Offset: 1616 Size:     4
//   float OffsetScales_id225;          // Offset: 1632 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id152;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id250;            // Offset:    4 Size:     4
//   float InputValue_id259;            // Offset:    8 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64
//   float4x4 Projection_id29;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16
//   float NearClipPlane_id183;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id184;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id185;          // Offset:  360 Size:     8
//   float2 ViewSize_id186;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id187;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id159;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id161;                    // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id163; // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id164;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id168[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id169[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id170[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id171[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id172;           // Offset: 1296 Size:     4
//   float OffsetScales_id173;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id180[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id192;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id193;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id194;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id229;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id234[9];   // Offset: 1424 Size:   140
//   float MipCount_id235;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id237;          // Offset: 1568 Size:    64
//   float Intensity_id238;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id242
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
// ShadowMapTexture_id200            texture  float4          2d             t0      1 
// ShadowMapTexture_id214            texture  float4          2d             t1      1 
// ParticlesBuffer_id242             texture  struct         r/o             t2      1 
// EnvironmentLightingDFG_LUT_id271    texture  float4          2d             t3      1 
// ShadowMapTexture_id162            texture  float4          2d             t4      1 
// LightClusters_id190               texture   uint2          3d             t5      1 
// LightIndices_id191                texture    uint         buf             t6      1 
// PointLights_id195                 texture  float4         buf             t7      1 
// SpotLights_id196                  texture  float4         buf             t8      1 
// CubeMap_id236                     texture  float4        cube             t9      1 
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
// PSIZE_ID153_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float     z 
// SCREENPOSITION_ID182_SEM     0   xyzw        3     NONE   float   xy w
// NORMALWS                 0   xyz         4     NONE   float       
// SV_InstanceID            0   x           5     NONE    uint   x   
// SV_IsFrontFace           0   x           6    FFACE    uint   x   
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
// SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
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
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps_siv linear noperspective v2.z, position
dcl_input_ps linear v3.xyw
dcl_input_ps constant v5.x
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output oDepth
dcl_temps 23
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id24.x; v0.y <- __input__.PositionWS_id24.y; v0.z <- __input__.PositionWS_id24.z; v0.w <- __input__.PositionWS_id24.w; 
//   v1.x <- __input__.PSize_id153; v1.y <- __input__.TexCoord_id133.x; v1.z <- __input__.TexCoord_id133.y; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v3.x <- __input__.ScreenPosition_id182.x; v3.y <- __input__.ScreenPosition_id182.y; v3.z <- __input__.ScreenPosition_id182.z; v3.w <- __input__.ScreenPosition_id182.w; 
//   v4.x <- __input__.normalWS_id21.x; v4.y <- __input__.normalWS_id21.y; v4.z <- __input__.normalWS_id21.z; 
//   v5.x <- __input__.InstanceID_id13; 
//   v6.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w; 
//   oDepth <- <PSMain return value>.Depth_id10
//
#line 1873 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_091a3d103799a6394e149e4012cf8d6c.hlsl"
dp2 r0.x, v1.yzyy, v1.yzyy  // r0.x <- lenSqr

#line 1874
lt r0.y, l(1.000000), r0.x

#line 1875
discard_nz r0.y

#line 1876
add r0.x, -r0.x, l(1.000000)
sqrt r0.z, r0.x  // r0.z <- z

#line 1878
mov r0.xy, v1.yzyy
dp3 r1.x, r0.xyzx, cb2[4].xyzx
dp3 r1.y, r0.xyzx, cb2[5].xyzx
dp3 r1.z, r0.xyzx, cb2[6].xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r1.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1879
mad r1.xyz, r0.xyzx, v1.xxxx, v0.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 1968
div r2.xy, v3.xyxx, v3.wwww  // r2.x <- streams.ScreenPosition_id182.x; r2.y <- streams.ScreenPosition_id182.y

#line 1864
mov r1.w, l(1.000000)
dp4 r0.w, r1.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.w, r1.xyzw, cb2[19].xyzw  // r1.w <- posWVP.w

#line 1868
div oDepth, r0.w, r1.w

#line 1851
add r3.xyz, -r1.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, r3.xyzx  // r4.x <- streams.viewWS_id70.x; r4.y <- streams.viewWS_id70.y; r4.z <- streams.viewWS_id70.z

#line 797
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, v5.x, l(48), t2.xyzx  // r5.x <- p.Col.x; r5.y <- p.Col.y; r5.z <- p.Col.z

#line 1791
add r2.z, -cb1[0].y, l(1.000000)  // r2.z <- glossiness

#line 1783
add r6.xyz, r5.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r6.xyz, cb1[0].zzzz, r6.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r6.x <- streams.matSpecular_id57.x; r6.y <- streams.matSpecular_id57.y; r6.z <- streams.matSpecular_id57.z

#line 1784
mad r5.xyz, cb1[0].zzzz, -r5.xyzx, r5.xyzx  // r5.x <- streams.matDiffuse_id55.x; r5.y <- streams.matDiffuse_id55.y; r5.z <- streams.matDiffuse_id55.z

#line 1600
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id21.x; r0.y <- streams.normalWS_id21.y; r0.z <- streams.normalWS_id21.z

#line 1557
dp3 r2.w, r0.xyzx, r4.xyzx
max r7.y, r2.w, l(0.000100)  // r7.y <- streams.NdotV_id74

#line 1558
add r2.z, -r2.z, l(1.000000)  // r2.z <- roughness

#line 1559
mul r2.z, r2.z, r2.z
max r2.z, r2.z, l(0.001000)  // r2.z <- streams.alphaRoughness_id72

#line 1624
ilt r2.w, l(0), cb2[25].x
if_nz r2.w

#line 1527
  dp3 r2.w, r0.xyzx, -cb2[26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 1316
  lt r3.w, cb2[83].x, r1.w

#line 1319
  and r3.w, r3.w, l(1)  // r3.w <- cascadeIndex

#line 1316
  lt r4.w, cb2[84].x, r1.w

#line 1319
  movc r3.w, r4.w, l(2), r3.w

#line 1316
  lt r4.w, cb2[85].x, r1.w

#line 1319
  movc r3.w, r4.w, l(3), r3.w

#line 1077
  add r5.w, -r2.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- normalOffsetScale

#line 1078
  mul r7.z, cb2[28].z, cb2[82].x
  dp2 r5.w, r7.zzzz, r5.wwww

#line 1324
  mad r8.xyz, r5.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 1070
  ishl r5.w, r3.w, l(2)
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r7.z, r8.xyzw, cb2[r5.w + 31].xyzw  // r7.z <- shadowPosition.z
  dp4 r7.w, r8.xyzw, cb2[r5.w + 32].xyzw  // r7.w <- shadowPosition.w

#line 1071
  add r9.z, r7.z, -cb2[81].x  // r9.z <- shadowPosition.z

#line 1072
  div r9.xyz, r9.xyzx, r7.wwww

#line 781
  mad r7.zw, r9.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r9.xy, r7.zwzz  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 782
  add r7.zw, r7.zzzw, -r9.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 783
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 784
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 541
  mad r10.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 542
  mad r11.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 544
  mad r12.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 543
  div r12.xy, r12.xyxx, r11.yxyy
  add r13.xw, r12.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 544
  div r12.xy, r12.zwzz, r10.xyxx
  add r13.yz, r12.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 545
  mad r12.xy, r7.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r12.xy, r12.xyxx, r10.wzww
  add r12.xw, r12.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 546
  div r7.zw, r7.zzzw, r11.zzzw
  add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 548
  mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 553
  mov r12.yz, r13.wwyw

#line 554
  mov r14.zw, r12.yyyz

#line 552
  mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 553
  mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 554
  mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 555
  mov r13.y, r12.x
  mul r7.zw, -r10.wwwz, r11.xxxy

#line 556
  mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
  mul r14.zw, r10.yyyx, -r10.wwwz

#line 557
  mad r20.xy, r12.wxww, cb2[28].zwzz, r9.xyxx
  mul r20.zw, r10.yyyz, r10.xxxw

#line 558
  mov r13.w, r14.x
  mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 560
  mov r12.xz, r13.xxzx

#line 559
  mov r12.y, r14.y
  mul r13.xz, r11.xxyx, -r11.zzwz

#line 560
  mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.xz, r10.yyxy, -r11.zzwz

#line 561
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
  mul r10.xyzw, r10.xyzw, r11.xyzw

#line 562
  mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
  mul r11.xy, r11.xwxx, r11.yzyy

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r15.xyxx, t4.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id111 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r11.z, r15.zwzz, t4.xxxx, s1, r9.z  // r11.z <- <SampleTextureAndCompare_id111 return value>

#line 925
  mul r10.x, r10.x, r11.z
  mad r9.w, r11.x, r9.w, r10.x  // r9.w <- shadow

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r10.x, r17.xyxx, t4.xxxx, s1, r9.z  // r10.x <- <SampleTextureAndCompare_id111 return value>

#line 925
  mad r7.z, r7.z, r10.x, r9.w  // r7.z <- shadow

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r18.xyxx, t4.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id111 return value>

#line 925
  mad r7.z, r13.x, r9.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r16.xyxx, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r10.y, r9.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r16.zwzz, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r20.z, r9.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r17.zwzz, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r14.z, r9.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r18.zwzz, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r12.x, r9.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r19.xyxx, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r7.w, r9.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r19.zwzz, t4.xxxx, s1, r9.z  // r7.w <- <SampleTextureAndCompare_id111 return value>

#line 925
  mad r7.z, r14.w, r7.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r20.xyxx, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r20.w, r7.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r13.ywyy, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r10.z, r7.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r21.xyxx, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r13.z, r7.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r21.zwzz, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r12.z, r7.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r12.ywyy, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r10.w, r7.w, r7.z

#line 776
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r9.xyxx, t4.xxxx, s1, r9.z

#line 925
  mad r7.z, r11.y, r7.w, r7.z

#line 927
  mul r9.xyz, r7.zzzz, l(0.000370, 0.000370, 0.000370, 0.000000)  // r9.z <- shadow

#line 1330
  ilt r7.w, l(0), r3.w
  if_nz r7.w

#line 1332
    iadd r7.w, r3.w, l(-1)
    add r7.w, -cb2[r7.w + 83].x, cb2[r3.w + 83].x  // r7.w <- splitSize

#line 1333
  else 
    mov r7.w, cb2[r3.w + 83].x  // r7.w <- splitSize
  endif 

#line 1334
  add r1.w, -r1.w, cb2[r3.w + 83].x
  div r1.w, r1.w, r7.w  // r1.w <- splitDist

#line 1335
  lt r3.w, r1.w, l(0.200000)
  if_nz r3.w

#line 1338
    if_nz r4.w

#line 1340
      mov r9.xyz, r9.zzzz  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z
    else 

#line 1337
      mul_sat r1.w, r1.w, l(5.000000)
      mad r3.w, r1.w, l(-2.000000), l(3.000000)
      mul r1.w, r1.w, r1.w
      mul r1.w, r1.w, r3.w  // r1.w <- lerpAmt

#line 1070
      dp4 r10.x, r8.xyzw, cb2[r5.w + 33].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r8.xyzw, cb2[r5.w + 34].xyzw  // r10.y <- shadowPosition.y
      dp4 r3.w, r8.xyzw, cb2[r5.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r8.xyzw, cb2[r5.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 1071
      add r10.z, r3.w, -cb2[81].x  // r10.z <- shadowPosition.z

#line 1072
      div r8.xyz, r10.xyzx, r4.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 781
      mad r8.xy, r8.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r10.xy, r8.xyxx  // r10.x <- base_uv.x; r10.y <- base_uv.y

#line 782
      add r8.xy, r8.xyxx, -r10.xyxx  // r8.x <- st.x; r8.y <- st.y

#line 783
      add r10.xy, r10.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 784
      mul r10.xy, r10.xyxx, cb2[28].zwzz

#line 541
      mad r11.xyzw, r8.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r11.x <- uvW1.x; r11.y <- uvW1.y

#line 542
      mad r12.xyzw, r8.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r12.x <- uvW0.y; r12.y <- uvW0.x

#line 544
      mad r13.xyzw, r8.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 543
      div r10.zw, r13.xxxy, r12.yyyx
      add r14.xw, r10.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r14.x <- uv0.x; r14.w <- uv0.y

#line 544
      div r10.zw, r13.zzzw, r11.xxxy
      add r14.yz, r10.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r14.y <- uv1.y; r14.z <- uv1.x

#line 545
      mad r10.zw, r8.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r10.zw, r10.zzzw, r11.wwwz
      add r13.xw, r10.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r13.x <- uv2.y; r13.w <- uv2.x

#line 546
      div r8.xy, r8.xyxx, r12.zwzz
      add r15.xy, r8.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r15.x <- uv3.x; r15.y <- uv3.y

#line 548
      mad r16.xyzw, r14.xwzw, cb2[28].zwzw, r10.xyxy

#line 553
      mov r13.yz, r14.wwyw

#line 554
      mov r15.zw, r13.yyyz

#line 552
      mad r17.xyzw, r14.xyzy, cb2[28].zwzw, r10.xyxy

#line 553
      mad r18.xyzw, r13.wywz, cb2[28].zwzw, r10.xyxy

#line 554
      mad r19.xyzw, r15.xzxw, cb2[28].zwzw, r10.xyxy

#line 555
      mov r14.y, r13.x
      mul r8.xy, -r11.wzww, r12.xyxx

#line 556
      mad r20.xyzw, r14.xyzy, cb2[28].zwzw, r10.xyxy
      mul r10.zw, r11.yyyx, -r11.wwwz

#line 557
      mad r15.zw, r13.wwwx, cb2[28].zzzw, r10.xxxy
      mul r21.xy, r11.yzyy, r11.xwxx

#line 558
      mov r14.w, r15.x
      mad r14.yw, r14.wwwy, cb2[28].zzzw, r10.xxxy

#line 560
      mov r13.xz, r14.xxzx

#line 559
      mov r13.y, r15.y
      mul r14.xz, r12.xxyx, -r12.zzwz

#line 560
      mad r22.xyzw, r13.xyzy, cb2[28].zwzw, r10.xyxy
      mul r13.xz, r11.yyxy, -r12.zzwz

#line 561
      mad r13.yw, r13.wwwy, cb2[28].zzzw, r10.xxxy
      mul r11.xyzw, r11.xyzw, r12.xyzw

#line 562
      mad r10.xy, r15.xyxx, cb2[28].zwzz, r10.xyxx
      mul r12.xy, r12.xwxx, r12.yzyy

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.xyxx, t4.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id111 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.zwzz, t4.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id111 return value>

#line 925
      mul r4.w, r4.w, r11.x
      mad r3.w, r12.x, r3.w, r4.w  // r3.w <- shadow

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.xyxx, t4.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id111 return value>

#line 925
      mad r3.w, r8.x, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r19.xyxx, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r14.x, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.xyxx, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r11.y, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.zwzz, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r21.x, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.zwzz, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r10.z, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r19.zwzz, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r13.x, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.xyxx, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r8.y, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.zwzz, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r10.w, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r21.y, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.ywyy, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r11.z, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r22.xyxx, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r14.z, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r22.zwzz, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r13.z, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r13.ywyy, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r11.w, r4.w, r3.w

#line 776
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r10.xyxx, t4.xxxx, s1, r8.z

#line 925
      mad r3.w, r12.y, r4.w, r3.w

#line 927
      mul r3.w, r3.w, l(0.000370)

#line 1344
      mad r4.w, r7.z, l(0.000370), -r3.w
      mad r9.xyz, r1.wwww, r4.wwww, r3.wwww  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z

#line 1345
    endif 

#line 1346
  endif 

#line 1529
  mul r8.xyz, r9.xyzx, cb2[27].xyzx
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id46.x; r8.y <- streams.lightColorNdotL_id46.y; r8.z <- streams.lightColorNdotL_id46.z

#line 1519
  mad r9.xyz, r3.xyzx, r0.wwww, -cb2[26].xyzx
  dp3 r1.w, r9.xyzx, r9.xyzx
  rsq r1.w, r1.w
  mul r9.xyz, r1.wwww, r9.xyzx  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.z <- streams.H_id77.z

#line 1520
  dp3_sat r1.w, r0.xyzx, r9.xyzx  // r1.w <- streams.NdotH_id78

#line 1521
  dp3_sat r3.w, -cb2[26].xyzx, r9.xyzx  // r3.w <- streams.LdotH_id79

#line 1515
  mul r9.xyz, r5.xyzx, r8.xyzx

#line 895
  add r10.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r10.xyz, r10.xyzx, r3.wwww, r6.xyzx  // r10.x <- <FresnelSchlick_id249 return value>.x; r10.y <- <FresnelSchlick_id249 return value>.y; r10.z <- <FresnelSchlick_id249 return value>.z

#line 890
  mul r3.w, r2.z, l(0.500000)  // r3.w <- k

#line 891
  mad r4.w, -r2.z, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id265 return value>
  mad r3.w, r7.y, r4.w, r3.w
  div r3.w, r7.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id265 return value>

#line 1057
  mul r3.w, r3.w, r5.w
  mul r2.w, r7.y, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id267 return value>

#line 1051
  mul r3.w, r2.z, r2.z  // r3.w <- alphaR2

#line 1052
  mul r1.w, r1.w, r1.w
  mad r4.w, r2.z, r2.z, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 1053
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id279 return value>

#line 1509
  mul r10.xyz, r2.wwww, r10.xyzx
  mul r10.xyz, r1.wwww, r10.xyzx
  mul r8.xyz, r8.xyzx, r10.xyzx

#line 1510
  mul r8.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r8.x <- <ComputeDirectLightContribution_id633 return value>.x; r8.y <- <ComputeDirectLightContribution_id633 return value>.y; r8.z <- <ComputeDirectLightContribution_id633 return value>.z

#line 1632
  mad r8.xyz, r9.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 1633
else   // Prior locations: r1.w <- posWVP.w
  mov r8.xyz, l(0,0,0,0)  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
endif 

#line 1281
add r1.w, v2.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 1282
mad r2.xy, r2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb2[87].xyxx

#line 1283
mad r1.w, r1.w, cb2[86].y, cb2[86].z
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r9.z, r1.w  // r9.z <- slice

#line 1284
mul r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r9.xy, r2.xyxx
mov r9.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.xy, r9.xyzw, t5.xyzw  // r2.x <- streams.lightData_id188.x; r2.y <- streams.lightData_id188.y

#line 1497
and r1.w, r2.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id320 return value>

#line 1642
mov r9.xyz, r0.xyzx  // r9.x <- streams.normalWS_id21.x; r9.y <- streams.normalWS_id21.y; r9.z <- streams.normalWS_id21.z
mov r9.w, r1.x  // r9.w <- streams.PositionWS_id24.x
mov r10.xy, r1.yzyy  // r10.x <- streams.PositionWS_id24.y; r10.y <- streams.PositionWS_id24.z
mov r10.zw, r4.xxxy  // r10.z <- streams.viewWS_id70.x; r10.w <- streams.viewWS_id70.y
mov r11.z, r4.z  // r11.z <- streams.viewWS_id70.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matDiffuseVisible_id71.x; r12.y <- streams.matDiffuseVisible_id71.y; r12.z <- streams.matDiffuseVisible_id71.z
mov r13.xyz, r6.xyzx  // r13.x <- streams.matSpecularVisible_id73.x; r13.y <- streams.matSpecularVisible_id73.y; r13.z <- streams.matSpecularVisible_id73.z
mov r13.w, r2.z  // r13.w <- streams.alphaRoughness_id72
mov r7.w, r7.y  // r7.w <- streams.NdotV_id74
mov r7.z, r2.x  // r7.z <- streams.lightIndex_id189
mov r14.xyz, r8.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r1.w
  breakc_nz r3.w

#line 1644
  if_nz r3.w

#line 1646
    break 

#line 1647
  endif 

#line 1268
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r7.zzzz, t6.yzwx  // r3.w <- realLightIndex

#line 1269
  iadd r7.z, r7.z, l(1)  // r7.z <- streams.lightIndex_id189

#line 1271
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyzw, r4.wwww, t7.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w

#line 1272
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r3.wwww, t7.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 882
  mov r17.x, r9.w
  mov r17.yz, r10.xxyx
  add r15.xyz, r15.xyzx, -r17.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 883
  dp3 r3.w, r15.xyzx, r15.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 884
  div r15.xyz, r15.xyzx, r4.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 722
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 487
  mul r3.w, r15.w, r3.w  // r3.w <- factor

#line 488
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 489
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id125 return value>

#line 723
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1483
  dp3 r4.w, r9.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 1485
  mul r16.xyz, r3.wwww, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id46.x; r16.y <- streams.lightColorNdotL_id46.y; r16.z <- streams.lightColorNdotL_id46.z

#line 1519
  mov r11.xy, r10.zwzz
  add r11.xyw, r15.xyxz, r11.xyxz
  dp3 r3.w, r11.xywx, r11.xywx
  rsq r3.w, r3.w
  mul r11.xyw, r3.wwww, r11.xyxw  // r11.x <- streams.H_id77.x; r11.y <- streams.H_id77.y; r11.w <- streams.H_id77.z

#line 1520
  dp3_sat r3.w, r9.xyzx, r11.xywx  // r3.w <- streams.NdotH_id78

#line 1521
  dp3_sat r5.w, r15.xyzx, r11.xywx  // r5.w <- streams.LdotH_id79

#line 1515
  mul r11.xyw, r12.xyxz, r16.xyxz

#line 1652
  mad r11.xyw, r11.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r14.xyxz  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 895
  add r15.xyz, -r13.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r8.w, r5.w, r5.w
  mul r8.w, r8.w, r8.w
  mul r5.w, r5.w, r8.w
  mad r15.xyz, r15.xyzx, r5.wwww, r13.xyzx  // r15.x <- <FresnelSchlick_id249 return value>.x; r15.y <- <FresnelSchlick_id249 return value>.y; r15.z <- <FresnelSchlick_id249 return value>.z

#line 890
  mul r5.w, r13.w, l(0.500000)  // r5.w <- k

#line 891
  mad r8.w, -r13.w, l(0.500000), l(1.000000)
  mad r12.w, r4.w, r8.w, r5.w
  div r12.w, r4.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id265 return value>
  mad r5.w, r7.w, r8.w, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id265 return value>

#line 1057
  mul r5.w, r5.w, r12.w
  mul r4.w, r7.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id267 return value>

#line 1051
  mul r5.w, r13.w, r13.w  // r5.w <- alphaR2

#line 1052
  mul r3.w, r3.w, r3.w
  mad r8.w, r13.w, r13.w, l(-1.000000)
  mad r3.w, r3.w, r8.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 1053
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id279 return value>

#line 1509
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 1656
  mad r14.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r11.xywx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 1642
  iadd r2.w, r2.w, l(1)

#line 1658
endloop   // r7.z <- streams.lightIndex_id189

#line 1475
ushr r1.w, r2.y, l(16)  // r1.w <- <GetMaxLightCount_id332 return value>

#line 1666
mov r2.xyw, r0.xyxz  // r2.x <- streams.normalWS_id21.x; r2.y <- streams.normalWS_id21.y; r2.w <- streams.normalWS_id21.z
mov r8.xyz, r1.xyzx  // r8.x <- streams.PositionWS_id24.x; r8.y <- streams.PositionWS_id24.y; r8.z <- streams.PositionWS_id24.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y; r9.z <- streams.viewWS_id70.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r6.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r12.xyz, r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r13.x, r2.z  // r13.x <- streams.alphaRoughness_id72
mov r13.y, r7.y  // r13.y <- streams.NdotV_id74
mov r3.w, r7.z  // r3.w <- streams.lightIndex_id189
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r1.w
  breakc_nz r5.w

#line 1668
  if_nz r5.w

#line 1670
    break 

#line 1671
  endif 

#line 1240
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.wwww, t6.yzwx  // r5.w <- realLightIndex

#line 1241
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id189

#line 1243
  ishl r7.w, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r7.wwww, t8.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 1246
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)

#line 1244
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t8.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 1245
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t8.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 1246
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t8.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 869
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 870
  dp3 r5.w, r15.xyzx, r15.xyzx
  sqrt r7.w, r5.w  // r7.w <- lightVectorLength

#line 871
  div r15.xyz, r15.xyzx, r7.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 715
  max r7.w, r5.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 481
  mul r5.w, r16.w, r5.w  // r5.w <- factor

#line 482
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor

#line 483
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id136 return value>

#line 716
  mul r5.w, r5.w, r7.w  // r5.w <- attenuation

#line 707
  dp3 r7.w, -r17.xyzx, r15.xyzx  // r7.w <- cd

#line 708
  mad_sat r7.w, r7.w, r16.x, r16.y  // r7.w <- attenuation

#line 709
  mul r7.w, r7.w, r7.w

#line 877
  mul r5.w, r5.w, r7.w  // r5.w <- attenuation

#line 1461
  dp3 r7.w, r2.xywx, r15.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id51

#line 1463
  mul r16.xyz, r5.wwww, r18.xyzx
  mul r16.xyz, r7.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id46.x; r16.y <- streams.lightColorNdotL_id46.y; r16.z <- streams.lightColorNdotL_id46.z

#line 1519
  add r17.xyz, r9.xyzx, r15.xyzx
  dp3 r5.w, r17.xyzx, r17.xyzx
  rsq r5.w, r5.w
  mul r17.xyz, r5.wwww, r17.xyzx  // r17.x <- streams.H_id77.x; r17.y <- streams.H_id77.y; r17.z <- streams.H_id77.z

#line 1520
  dp3_sat r5.w, r2.xywx, r17.xyzx  // r5.w <- streams.NdotH_id78

#line 1521
  dp3_sat r8.w, r15.xyzx, r17.xyzx  // r8.w <- streams.LdotH_id79

#line 1515
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1676
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 895
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.w, r8.w, r8.w
  mul r9.w, r9.w, r9.w
  mul r8.w, r8.w, r9.w
  mad r17.xyz, r17.xyzx, r8.wwww, r11.xyzx  // r17.x <- <FresnelSchlick_id249 return value>.x; r17.y <- <FresnelSchlick_id249 return value>.y; r17.z <- <FresnelSchlick_id249 return value>.z

#line 890
  mul r8.w, r13.x, l(0.500000)  // r8.w <- k

#line 891
  mad r9.w, -r13.x, l(0.500000), l(1.000000)
  mad r10.w, r7.w, r9.w, r8.w
  div r10.w, r7.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id265 return value>
  mad r8.w, r13.y, r9.w, r8.w
  div r8.w, r13.y, r8.w  // r8.w <- <VisibilityhSchlickGGX_id265 return value>

#line 1057
  mul r8.w, r8.w, r10.w
  mul r7.w, r13.y, r7.w
  div r7.w, r8.w, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id267 return value>

#line 1051
  mul r8.w, r13.x, r13.x  // r8.w <- alphaR2

#line 1052
  mul r5.w, r5.w, r5.w
  mad r9.w, r13.x, r13.x, l(-1.000000)
  mad r5.w, r5.w, r9.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 1053
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r8.w, r5.w  // r5.w <- <NormalDistributionGGX_id279 return value>

#line 1509
  mul r17.xyz, r7.wwww, r17.xyzx
  mul r17.xyz, r5.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1680
  mad r12.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1666
  iadd r4.w, r4.w, l(1)

#line 1682
endloop   // r3.w <- streams.lightIndex_id189

#line 1696
ilt r1.w, l(0), cb0[28].x
if_nz r1.w

#line 861
  add r2.xyw, -r1.xyxz, cb0[29].xyxz  // r2.x <- lightVector.x; r2.y <- lightVector.y; r2.w <- lightVector.z

#line 862
  dp3 r1.w, r2.xywx, r2.xywx
  sqrt r3.w, r1.w  // r3.w <- lightVectorLength

#line 863
  div r2.xyw, r2.xyxw, r3.wwww  // r2.x <- lightVectorNorm.x; r2.y <- lightVectorNorm.y; r2.w <- lightVectorNorm.z

#line 701
  max r3.w, r1.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 475
  mul r1.w, r1.w, cb0[29].w  // r1.w <- factor

#line 476
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 477
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id147 return value>

#line 702
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 1439
  dp3 r3.w, r0.xyzx, r2.xywx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1179
  add r8.xyz, r1.xyzx, -cb0[29].xyzx  // r8.x <- lightDelta.x; r8.y <- lightDelta.y; r8.z <- lightDelta.z

#line 1180
  dp3 r4.w, r8.xyzx, r8.xyzx
  sqrt r4.w, r4.w  // r4.w <- distanceToLight

#line 1181
  div r9.xyz, r8.xyzx, r4.wwww  // r9.x <- direction.x; r9.y <- direction.y; r9.z <- direction.z

#line 1183
  max r4.w, |r9.z|, |r9.y|
  max r4.w, r4.w, |r9.x|  // r4.w <- longestAxis

#line 1192
  eq r7.zw, r4.wwww, |r9.xxxy|

#line 1201
  mov r8.w, l(4)
  mov r9.xz, l(0,0,2,0)
  mov r9.yw, r8.zzzx
  movc r8.xy, r7.wwww, r8.wyww, r9.xyxx  // r8.x <- faceIndex; r8.y <- lightSpaceZ
  movc r7.zw, r7.zzzz, r9.zzzw, r8.xxxy  // r7.z <- faceIndex; r7.w <- lightSpaceZ

#line 1210
  add r4.w, |r7.w|, -cb0[80].x  // r4.w <- lightSpaceZ

#line 1211
  div r4.w, cb0[82].y, r4.w
  add r4.w, r4.w, cb0[82].x  // r4.w <- depth

#line 1212
  lt r5.w, r4.w, l(0.000000)
  lt r8.x, l(1.000000), r4.w
  or r5.w, r5.w, r8.x

#line 1214
  if_z r5.w

#line 1202
    lt r5.w, l(0.000000), r7.w
    lt r7.w, r7.w, l(0.000000)
    iadd r5.w, -r5.w, r7.w
    itof r5.w, r5.w  // r5.w <- lightSpaceZDirection

#line 1203
    min r5.w, r5.w, l(0.000000)
    ftoi r5.w, -r5.w
    iadd r5.w, r5.w, r7.z  // r5.w <- faceIndex

#line 1010
    add r7.z, -r3.w, l(1.000000)
    max r7.z, r7.z, l(0.000000)  // r7.z <- normalOffsetScale

#line 1011
    mul r7.w, cb0[31].z, cb0[81].x
    dp2 r7.z, r7.wwww, r7.zzzz

#line 1206
    mad r8.xyz, r7.zzzz, r0.xyzx, r1.xyzx  // r8.x <- positionWS.x; r8.y <- positionWS.y; r8.z <- positionWS.z

#line 1207
    ishl r5.w, r5.w, l(2)
    mov r8.w, l(1.000000)
    dp4 r9.x, r8.xyzw, cb0[r5.w + 32].xyzw  // r9.x <- projectedPosition.x
    dp4 r9.y, r8.xyzw, cb0[r5.w + 33].xyzw  // r9.y <- projectedPosition.y
    dp4 r5.w, r8.xyzw, cb0[r5.w + 35].xyzw  // r5.w <- projectedPosition.w

#line 1208
    div r7.zw, r9.xxxy, r5.wwww  // r7.z <- projectedPosition.x; r7.w <- projectedPosition.y

#line 840
    mad r7.zw, r7.zzzw, cb0[31].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
    round_ni r8.xy, r7.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 841
    add r7.zw, r7.zzzw, -r8.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 842
    add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 843
    mul r8.xy, r8.xyxx, cb0[31].zwzz

#line 449
    mad r9.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 450
    mad r10.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 452
    mad r11.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 451
    div r8.zw, r11.xxxy, r10.yyyx
    add r13.xw, r8.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 452
    div r8.zw, r11.zzzw, r9.xxxy
    add r13.yz, r8.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 453
    mad r8.zw, r7.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
    div r8.zw, r8.zzzw, r9.wwwz
    add r11.xw, r8.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 454
    div r7.zw, r7.zzzw, r10.zzzw
    add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 456
    mad r15.xyzw, r13.xwzw, cb0[31].zwzw, r8.xyxy

#line 461
    mov r11.yz, r13.wwyw

#line 462
    mov r14.zw, r11.yyyz

#line 460
    mad r16.xyzw, r13.xyzy, cb0[31].zwzw, r8.xyxy

#line 461
    mad r17.xyzw, r11.wywz, cb0[31].zwzw, r8.xyxy

#line 462
    mad r18.xyzw, r14.xzxw, cb0[31].zwzw, r8.xyxy

#line 463
    mov r13.y, r11.x
    mul r7.zw, -r9.wwwz, r10.xxxy

#line 464
    mad r19.xyzw, r13.xyzy, cb0[31].zwzw, r8.xyxy
    mul r8.zw, r9.yyyx, -r9.wwwz

#line 465
    mad r14.zw, r11.wwwx, cb0[31].zzzw, r8.xxxy
    mul r20.xy, r9.yzyy, r9.xwxx

#line 466
    mov r13.w, r14.x
    mad r13.yw, r13.wwwy, cb0[31].zzzw, r8.xxxy

#line 468
    mov r11.xz, r13.xxzx

#line 467
    mov r11.y, r14.y
    mul r13.xz, r10.xxyx, -r10.zzwz

#line 468
    mad r21.xyzw, r11.xyzy, cb0[31].zwzw, r8.xyxy
    mul r11.xz, r9.yyxy, -r10.zzwz

#line 469
    mad r11.yw, r11.wwwy, cb0[31].zzzw, r8.xxxy
    mul r9.xyzw, r9.xyzw, r10.xyzw

#line 470
    mad r8.xy, r14.xyxx, cb0[31].zwzz, r8.xyxx
    mul r10.xy, r10.xwxx, r10.yzyy

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t0.xxxx, s1, r4.w  // r5.w <- <SampleTextureAndCompare_id159 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r10.z, r15.zwzz, t0.xxxx, s1, r4.w  // r10.z <- <SampleTextureAndCompare_id159 return value>

#line 1002
    mul r9.x, r9.x, r10.z
    mad r5.w, r10.x, r5.w, r9.x  // r5.w <- shadow

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r9.x, r17.xyxx, t0.xxxx, s1, r4.w  // r9.x <- <SampleTextureAndCompare_id159 return value>

#line 1002
    mad r5.w, r7.z, r9.x, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r18.xyxx, t0.xxxx, s1, r4.w  // r7.z <- <SampleTextureAndCompare_id159 return value>

#line 1002
    mad r5.w, r13.x, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r16.xyxx, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r9.y, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r16.zwzz, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r20.x, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r17.zwzz, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r8.z, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r18.zwzz, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r11.x, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r19.xyxx, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r7.w, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r19.zwzz, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r8.w, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r14.zwzz, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r20.y, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r13.ywyy, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r9.z, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r21.xyxx, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r13.z, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r21.zwzz, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r11.z, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r11.ywyy, t0.xxxx, s1, r4.w

#line 1002
    mad r5.w, r9.w, r7.z, r5.w

#line 835
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r8.xyxx, t0.xxxx, s1, r4.w  // r4.w <- <SampleTextureAndCompare_id159 return value>

#line 1002
    mad r4.w, r10.y, r4.w, r5.w  // r4.w <- shadow

#line 1004
    mul r8.xyz, r4.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r8.z <- shadow

#line 1215
  else   // Prior locations: r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z; r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z; r13.x <- streams.alphaRoughness_id72; r13.y <- streams.NdotV_id74; r8.z <- lightDelta.z; r7.z <- faceIndex; r4.w <- depth
    mov r8.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1441
  mul r9.xyz, r1.wwww, cb0[30].xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx
  mul r8.xyz, r3.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id46.x; r8.y <- streams.lightColorNdotL_id46.y; r8.z <- streams.lightColorNdotL_id46.z

#line 1519
  mad r9.xyz, r3.xyzx, r0.wwww, r2.xywx
  dp3 r1.w, r9.xyzx, r9.xyzx
  rsq r1.w, r1.w
  mul r9.xyz, r1.wwww, r9.xyzx  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.z <- streams.H_id77.z

#line 1520
  dp3_sat r1.w, r0.xyzx, r9.xyzx  // r1.w <- streams.NdotH_id78

#line 1521
  dp3_sat r2.x, r2.xywx, r9.xyzx  // r2.x <- streams.LdotH_id79

#line 1515
  mul r9.xyz, r5.xyzx, r8.xyzx

#line 1700
  mad r9.xyz, r9.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z

#line 895
  add r10.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.x, -r2.x, l(1.000000)
  mul r2.y, r2.x, r2.x
  mul r2.y, r2.y, r2.y
  mul r2.x, r2.y, r2.x
  mad r2.xyw, r10.xyxz, r2.xxxx, r6.xyxz  // r2.x <- <FresnelSchlick_id249 return value>.x; r2.y <- <FresnelSchlick_id249 return value>.y; r2.w <- <FresnelSchlick_id249 return value>.z

#line 890
  mul r4.w, r2.z, l(0.500000)  // r4.w <- k

#line 891
  mad r5.w, -r2.z, l(0.500000), l(1.000000)
  mad r7.z, r3.w, r5.w, r4.w
  div r7.z, r3.w, r7.z  // r7.z <- <VisibilityhSchlickGGX_id265 return value>
  mad r4.w, r7.y, r5.w, r4.w
  div r4.w, r7.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id265 return value>

#line 1057
  mul r4.w, r4.w, r7.z
  mul r3.w, r7.y, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id267 return value>

#line 1051
  mul r4.w, r2.z, r2.z  // r4.w <- alphaR2

#line 1052
  mul r1.w, r1.w, r1.w
  mad r5.w, r2.z, r2.z, l(-1.000000)
  mad r1.w, r1.w, r5.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 1053
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r4.w, r1.w  // r1.w <- <NormalDistributionGGX_id279 return value>

#line 1509
  mul r2.xyw, r2.xyxw, r3.wwww
  mul r2.xyw, r1.wwww, r2.xyxw
  mul r2.xyw, r8.xyxz, r2.xyxw

#line 1704
  mad r12.xyz, r2.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1705
endif 

#line 1720
ilt r1.w, l(0), cb0[82].z
if_nz r1.w

#line 822
  add r2.xyw, -r1.xyxz, cb0[83].xyxz  // r2.x <- lightVector.x; r2.y <- lightVector.y; r2.w <- lightVector.z

#line 823
  dp3 r1.w, r2.xywx, r2.xywx
  sqrt r3.w, r1.w  // r3.w <- lightVectorLength

#line 824
  div r2.xyw, r2.xyxw, r3.wwww  // r2.x <- lightVectorNorm.x; r2.y <- lightVectorNorm.y; r2.w <- lightVectorNorm.z

#line 646
  max r3.w, r1.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 395
  mul r1.w, r1.w, cb0[85].z  // r1.w <- factor

#line 396
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 397
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id173 return value>

#line 647
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 638
  dp3 r3.w, -cb0[84].xyzx, r2.xywx  // r3.w <- cd

#line 639
  mad_sat r3.w, r3.w, cb0[85].x, cb0[85].y  // r3.w <- attenuation

#line 640
  mul r3.w, r3.w, r3.w

#line 830
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 1417
  dp3 r3.w, r0.xyzx, r2.xywx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 977
  add r4.w, -r3.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 978
  mul r5.w, cb0[87].z, cb0[102].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 1150
  mad r8.xyz, r4.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 970
  mov r8.w, l(1.000000)
  dp4 r1.x, r8.xyzw, cb0[88].xyzw  // r1.x <- shadowPosition.x
  dp4 r1.y, r8.xyzw, cb0[89].xyzw  // r1.y <- shadowPosition.y
  dp4 r4.w, r8.xyzw, cb0[90].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.w, r8.xyzw, cb0[91].xyzw  // r5.w <- shadowPosition.w

#line 971
  add r1.z, r4.w, -cb0[101].x  // r1.z <- shadowPosition.z

#line 972
  div r1.xyz, r1.xyzx, r5.wwww

#line 631
  mad r1.xy, r1.xyxx, cb0[87].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r7.zw, r1.xxxy  // r7.z <- base_uv.x; r7.w <- base_uv.y

#line 632
  add r1.xy, r1.xyxx, -r7.zwzz  // r1.x <- st.x; r1.y <- st.y

#line 633
  add r7.zw, r7.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)

#line 634
  mul r7.zw, r7.zzzw, cb0[87].zzzw

#line 579
  mad r8.xy, -r1.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r8.x <- uvW0.y; r8.y <- uvW0.x

#line 581
  mad r8.zw, r1.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r8.z <- uvW2.x; r8.w <- uvW2.y

#line 582
  mad r9.xy, -r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r9.xy, r9.xyxx, r8.yxyy
  add r9.xw, r9.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r9.x <- uv0.x; r9.w <- uv0.y

#line 583
  add r10.xy, r1.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r9.yz, r10.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r9.y <- uv1.y; r9.z <- uv1.x

#line 584
  div r1.xy, r1.xyxx, r8.zwzz
  add r10.xy, r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r10.x <- uv2.x; r10.y <- uv2.y

#line 593
  mul r1.xy, r8.xwxx, r8.yzyy

#line 586
  mad r11.xyzw, r9.xwzw, cb0[87].zwzw, r7.zwzw

#line 590
  mov r10.zw, r9.wwwy

#line 588
  mul r13.xy, r8.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 589
  mad r14.xyzw, r9.xyzy, cb0[87].zwzw, r7.zwzw

#line 590
  mad r15.xyzw, r10.xzxw, cb0[87].zwzw, r7.zwzw

#line 591
  mov r9.y, r10.y
  mul r8.xy, r8.xyxx, r8.zwzz

#line 592
  mad r9.xyzw, r9.xyzy, cb0[87].zwzw, r7.zwzw
  mul r10.zw, r8.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 593
  mad r7.zw, r10.xxxy, cb0[87].zzzw, r7.zzzw

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r11.xyxx, t1.xxxx, s1, r1.z  // r4.w <- <SampleTextureAndCompare_id187 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.zwzz, t1.xxxx, s1, r1.z  // r5.w <- <SampleTextureAndCompare_id187 return value>

#line 814
  mul r5.w, r5.w, r13.x
  mad r1.x, r1.x, r4.w, r5.w  // r1.x <- shadow

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.xyxx, t1.xxxx, s1, r1.z  // r4.w <- <SampleTextureAndCompare_id187 return value>

#line 814
  mad r1.x, r8.x, r4.w, r1.x

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.xyxx, t1.xxxx, s1, r1.z

#line 814
  mad r1.x, r13.y, r4.w, r1.x

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.zwzz, t1.xxxx, s1, r1.z

#line 814
  mad r1.x, r4.w, l(49.000000), r1.x

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t1.xxxx, s1, r1.z

#line 814
  mad r1.x, r10.z, r4.w, r1.x

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.xyxx, t1.xxxx, s1, r1.z

#line 814
  mad r1.x, r8.y, r4.w, r1.x

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.zwzz, t1.xxxx, s1, r1.z

#line 814
  mad r1.x, r10.w, r4.w, r1.x

#line 598
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.z, r7.zwzz, t1.xxxx, s1, r1.z  // r1.z <- <SampleTextureAndCompare_id187 return value>

#line 814
  mad r1.x, r1.y, r1.z, r1.x

#line 816
  mul r1.x, r1.x, l(0.006944)

#line 1419
  mul r1.yzw, r1.wwww, cb0[86].xxyz
  mul r1.xyz, r1.xxxx, r1.yzwy
  mul r1.xyz, r3.wwww, r1.xyzx  // r1.x <- streams.lightColorNdotL_id46.x; r1.y <- streams.lightColorNdotL_id46.y; r1.z <- streams.lightColorNdotL_id46.z

#line 1519
  mad r3.xyz, r3.xyzx, r0.wwww, r2.xywx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.H_id77.x; r3.y <- streams.H_id77.y; r3.z <- streams.H_id77.z

#line 1520
  dp3_sat r0.w, r0.xyzx, r3.xyzx  // r0.w <- streams.NdotH_id78

#line 1521
  dp3_sat r1.w, r2.xywx, r3.xyzx  // r1.w <- streams.LdotH_id79

#line 1515
  mul r2.xyw, r1.xyxz, r5.xyxz

#line 1724
  mad r2.xyw, r2.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.w <- directLightingContribution.z

#line 895
  add r3.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r4.w, r1.w, r1.w
  mul r4.w, r4.w, r4.w
  mul r1.w, r1.w, r4.w
  mad r3.xyz, r3.xyzx, r1.wwww, r6.xyzx  // r3.x <- <FresnelSchlick_id249 return value>.x; r3.y <- <FresnelSchlick_id249 return value>.y; r3.z <- <FresnelSchlick_id249 return value>.z

#line 890
  mul r1.w, r2.z, l(0.500000)  // r1.w <- k

#line 891
  mad r4.w, -r2.z, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r4.w, r1.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id265 return value>
  mad r1.w, r7.y, r4.w, r1.w
  div r1.w, r7.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id265 return value>

#line 1057
  mul r1.w, r1.w, r5.w
  mul r3.w, r7.y, r3.w
  div r1.w, r1.w, r3.w  // r1.w <- <VisibilitySmithSchlickGGX_id267 return value>

#line 1051
  mul r3.w, r2.z, r2.z  // r3.w <- alphaR2

#line 1052
  mul r0.w, r0.w, r0.w
  mad r4.w, r2.z, r2.z, l(-1.000000)
  mad r0.w, r0.w, r4.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 1053
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r3.w, r0.w  // r0.w <- <NormalDistributionGGX_id279 return value>

#line 1509
  mul r3.xyz, r1.wwww, r3.xyzx
  mul r3.xyz, r0.wwww, r3.xyzx
  mul r1.xyz, r1.xyzx, r3.xyzx

#line 1728
  mad r12.xyz, r1.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r2.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1729
endif 

#line 1130
sqrt r6.w, r2.z
add r7.x, -r6.w, l(1.000000)  // r7.x <- glossiness

#line 1131
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r7.xyxx, t3.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 1132
mad r1.xyz, r6.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id455 return value>.x; r1.y <- <Compute_id455 return value>.y; r1.z <- <Compute_id455 return value>.z

#line 1400
mul r2.xyz, r1.xyzx, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id634 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id634 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id634 return value>.z

#line 1742
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1389
dp3 r0.w, r0.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r0.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r0.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 949
mul r3.x, r1.w, r1.w  // r3.x <- y2

#line 950
mul r3.y, r2.w, r2.w  // r3.y <- z2

#line 954
mad r7.xyz, cb2[90].xyzx, r1.wwww, cb2[89].xyzx  // r7.x <- color.x; r7.y <- color.y; r7.z <- color.z

#line 955
mad r7.xyz, cb2[91].xyzx, -r2.wwww, r7.xyzx

#line 956
mad r7.xyz, cb2[92].xyzx, r0.wwww, r7.xyzx

#line 959
mul r8.xyz, r1.wwww, cb2[93].xyzx
mad r7.xyz, r8.xyzx, r0.wwww, r7.xyzx

#line 960
mul r8.xyz, r1.wwww, cb2[94].xyzx
mad r7.xyz, r8.xyzx, -r2.wwww, r7.xyzx

#line 961
mad r1.w, r3.y, l(3.000000), l(-1.000000)
mad r3.yzw, cb2[95].xxyz, r1.wwww, r7.xxyz  // r3.y <- color.x; r3.z <- color.y; r3.w <- color.z

#line 962
mul r7.xyz, r0.wwww, cb2[96].xyzx
mad r3.yzw, r7.xxyz, -r2.wwww, r3.yyzw

#line 963
mad r0.w, r0.w, r0.w, -r3.x
mad r3.xyz, cb2[97].xyzx, r0.wwww, r3.yzwy  // r3.x <- color.x; r3.y <- color.y; r3.z <- color.z

#line 1391
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightDiffuseColor_id49.x; r3.y <- streams.envLightDiffuseColor_id49.y; r3.z <- streams.envLightDiffuseColor_id49.z

#line 1392
dp3 r0.w, -r4.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r4.xyz, r0.xyzx, -r0.wwww, -r4.xyzx  // r4.x <- sampleDirection.x; r4.y <- sampleDirection.y; r4.z <- sampleDirection.z

#line 1393
dp3 r7.x, r4.xyzx, cb2[98].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r4.xyzx, cb2[99].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r4.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 1394
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 1116
mul r0.w, r6.w, cb2[97].w  // r0.w <- mipLevel

#line 1117
sample_l_indexable(texturecube)(float,float,float,float) r4.xyz, r7.xyzx, t9.xyzw, s0, r0.w  // r4.x <- <Compute_id405 return value>.x; r4.y <- <Compute_id405 return value>.y; r4.z <- <Compute_id405 return value>.z

#line 1395
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightSpecularColor_id50.x; r4.y <- streams.envLightSpecularColor_id50.y; r4.z <- streams.envLightSpecularColor_id50.z

#line 1750
mad r2.xyz, r5.xyzx, r3.xyzx, r2.xyzx

#line 1754
mad r1.xyz, r1.xyzx, r4.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1769
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r1.xyzx

#line 1859
mad o1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1895
utof o3.xyzw, cb0[26].xxxx

#line 1976
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mov o2.xyzw, r6.xyzw
ret 
// Approximately 768 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id160 = 1;
const static int TCascadeCountBase_id166 = 4;
const static int TLightCountBase_id167 = 1;
const static int TCascadeCount_id174 = 4;
const static int TLightCount_id175 = 1;
const static bool TBlendCascades_id176 = true;
const static bool TDepthRangeAuto_id177 = true;
const static bool TCascadeDebug_id178 = false;
const static bool TComputeTransmittance_id179 = false;
const static int TFilterSize_id181 = 7;
const static int TMaxLightCount_id198 = 1;
const static int TLightCount_id204 = 1;
const static int TFilterSize_id210 = 7;
const static int TMaxLightCount_id212 = 1;
const static int TCascadeCountBase_id218 = 1;
const static int TLightCountBase_id219 = 1;
const static bool TCascadeDebug_id227 = false;
const static int TFilterSize_id228 = 5;
const static int TOrder_id231 = 3;
const static int TOrder_id233 = 3;
const static bool TInvert_id256 = true;
const static bool TIsEnergyConservative_id268 = false;
static const float PI_id270 = 3.14159265358979323846;
static const float3 QuadPositions_id148[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id149[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id182;
    float3 normalWS_id21;
    float PSize_id153;
    float2 TexCoord_id133;
    float4 PositionWS_id24;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id19;
    float DepthVS_id25;
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
    float4 ColorPerParticle_ShaderFXResult_0_id241;
    float Input_1_id249;
    float Input_2_id258;
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
    float thicknessWS_id158;
    float3 shadowColor_id157;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id188;
    int lightIndex_id189;
    float Depth_id10;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
    float4 ColorTarget2_id4;
    float4 ColorTarget3_id5;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
    float4 ColorTarget2_id4 : SV_Target2;
    float4 ColorTarget3_id5 : SV_Target3;
};
struct PS_INPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float PSize_id153 : PSIZE_ID153_SEM;
    float2 TexCoord_id133 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
    float3 normalWS_id21 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id155;
    float4 ScreenPosition_id182;
    float3 normalWS_id21;
    uint InstanceID_id13;
    float4 PositionWS_id24;
    float PSize_id153;
    float2 TexCoord_id133;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float PSize_id153 : PSIZE_ID153_SEM;
    float2 TexCoord_id133 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
    float3 normalWS_id21 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id155 : VID_ID155_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
    float3 normalWS_id21 : NORMALWS;
};
struct VS_STREAMS 
{
    uint VertexID_id154;
    float4 Position_id23;
    float3 normalWS_id21;
    uint VID_id155;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    float4 ScreenPosition_id182;
};
struct VS_OUTPUT 
{
    uint VID_id155 : VID_ID155_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
    float3 normalWS_id21 : NORMALWS;
};
struct VS_INPUT 
{
    uint VertexID_id154 : SV_VertexID;
    float4 Position_id23 : POSITION;
    float3 normalWS_id21 : NORMALWS;
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
    uint MaterialIndex_id156;
    float4 _padding_PerDraw_Default;
    int LightCount_id197;
    PointLightData Lights_id199[TMaxLightCount_id198];
    float2 ShadowMapTextureSize_id201;
    float2 ShadowMapTextureTexelSize_id202;
    float4x4 WorldToShadow_id205[TLightCount_id204 * 6];
    float4x4 InverseWorldToShadow_id206[TLightCount_id204 * 6];
    float DepthBiases_id207[TLightCount_id204];
    float OffsetScales_id208[TLightCount_id204];
    float2 DepthParameters_id209[TLightCount_id204];
    int LightCount_id211;
    SpotLightData Lights_id213[TMaxLightCount_id212];
    float2 ShadowMapTextureSize_id215;
    float2 ShadowMapTextureTexelSize_id216;
    float4x4 WorldToShadowCascadeUV_id220[TCascadeCountBase_id218 * TLightCountBase_id219];
    float4x4 InverseWorldToShadowCascadeUV_id221[TCascadeCountBase_id218 * TLightCountBase_id219];
    float4x4 ViewMatrices_id222[TCascadeCountBase_id218 * TLightCountBase_id219];
    float2 DepthRanges_id223[TCascadeCountBase_id218 * TLightCountBase_id219];
    float DepthBiases_id224[TLightCountBase_id219];
    float OffsetScales_id225[TLightCountBase_id219];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float ParticleSize_id152 = 0.1;
    float InputValue_id250;
    float InputValue_id259;
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
    float NearClipPlane_id183 = 1.0f;
    float FarClipPlane_id184 = 100.0f;
    float2 ZProjection_id185;
    float2 ViewSize_id186;
    float AspectRatio_id187;
    float4 _padding_PerView_Default;
    int LightCount_id159;
    DirectionalLightData Lights_id161[TMaxLightCount_id160];
    float2 ShadowMapTextureSize_id163;
    float2 ShadowMapTextureTexelSize_id164;
    float4x4 WorldToShadowCascadeUV_id168[TCascadeCountBase_id166 * TLightCountBase_id167];
    float4x4 InverseWorldToShadowCascadeUV_id169[TCascadeCountBase_id166 * TLightCountBase_id167];
    float4x4 ViewMatrices_id170[TCascadeCountBase_id166 * TLightCountBase_id167];
    float2 DepthRanges_id171[TCascadeCountBase_id166 * TLightCountBase_id167];
    float DepthBiases_id172[TLightCountBase_id167];
    float OffsetScales_id173[TLightCountBase_id167];
    float CascadeDepthSplits_id180[TCascadeCount_id174 * TLightCount_id175];
    float ClusterDepthScale_id192;
    float ClusterDepthBias_id193;
    float2 ClusterStride_id194;
    float3 AmbientLight_id229;
    float3 SphericalColors_id234[TOrder_id233 * TOrder_id233];
    float MipCount_id235;
    float4x4 SkyMatrix_id237;
    float Intensity_id238;
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
Texture2D ShadowMapTexture_id200;
Texture2D ShadowMapTexture_id214;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id151;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id242;
Texture2D EnvironmentLightingDFG_LUT_id271;
Texture2D ShadowMapTexture_id162;
Texture3D<uint2> LightClusters_id190;
Buffer<uint> LightIndices_id191;
Buffer<float4> PointLights_id195;
Buffer<float4> SpotLights_id196;
TextureCube CubeMap_id236;
float4 Project_id152(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id103(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id173(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id161(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id160(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id162(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id200.SampleLevel(LinearBorderSampler_id116, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id152(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id158(float2 base_uv, float2 st, out float3 kernel[16])
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
float SmoothDistanceAttenuation_id147(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id136(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id125(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id113(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id164, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id164, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id164, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id164, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id112(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id164, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id164, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id164, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id164, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id164, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id164, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id164, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id164, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id164, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id114(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id162.SampleLevel(LinearBorderSampler_id116, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id103(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id110(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id164, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id164, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id164, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id164, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id164, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id164, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id164, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id164, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id164, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id164, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id164, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id164, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id164, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id164, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id164, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id164, uvW3.x * uvW3.y);
    return 2704.0;
}
float Get3x3FilterKernel_id189(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id216, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id216, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id216, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id216, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id188(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id216, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id216, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id216, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id216, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id216, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id216, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id216, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id216, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id216, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id187(float2 position, float positionDepth)
{
    return ShadowMapTexture_id214.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
float Get7x7FilterKernel_id186(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id216, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id216, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id216, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id216, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id216, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id216, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id216, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id216, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id216, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id216, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id216, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id216, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id216, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id216, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id216, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id216, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id185(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id215;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id216;
}
float GetAngularAttenuation_id175(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id174(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id173(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id166(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id201;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id202;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id158(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id162(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id165(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id152(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id152(float4(ShadowMapTextureTexelSize_id202.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id152(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id164(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id152(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id152(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id202.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id152(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id163()
{

    {
        return 4.5;
    }
}
float GetDistanceAttenuation_id149(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id147(d2, lightInvSquareRadius);
    return attenuation;
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
float GetDistanceAttenuation_id127(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id125(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id118(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id163;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id164;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id110(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id114(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id117(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id103(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id103(float4(ShadowMapTextureTexelSize_id164.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id103(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id116(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id103(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id103(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id164.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id103(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id115()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id111(float2 position, float positionDepth)
{
    return ShadowMapTexture_id162.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
void CalculatePCFKernelParameters_id109(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id163;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id164;
}
float Compute_id443()
{
    return InputValue_id259;
}
float Compute_id431()
{
    return InputValue_id250;
}
float4 Compute_id419(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id242[id];
    return float4(p.Col, 1);
}
float FilterShadow_id181(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id185(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id188(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id187(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id176(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id174(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id175(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float SampleTextureAndCompare_id159(float2 position, float positionDepth)
{
    return ShadowMapTexture_id200.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
void CalculatePCFKernelParameters_id157(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id201;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id202;
}
float FilterThickness_id153(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id165(GetFilterRadiusInPixels_id163(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id164(GetFilterRadiusInPixels_id163(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id166(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id148(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id149(lightVectorLength, lightInvSquareRadius);
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
float ComputeAttenuation_id126(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id127(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id265(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id249(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id105(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id117(GetFilterRadiusInPixels_id115(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id116(GetFilterRadiusInPixels_id115(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id118(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id104(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id109(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id110(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id111(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id446(inout PS_STREAMS streams)
{
    streams.Input_2_id258 = Compute_id443();
}
void Compute_id434(inout PS_STREAMS streams)
{
    streams.Input_1_id249 = Compute_id431();
}
void Compute_id422(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id241 = Compute_id419(streams);
}
float4 EvaluateSphericalHarmonics_id203(float3 sphericalColors[TOrder_id231 * TOrder_id231], float3 direction)
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
float ComputeShadowFromCascade_id184(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id220[cascadeIndex + lightIndex * TCascadeCountBase_id218]);
    shadowPosition.z -= DepthBiases_id224[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id181(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id183(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id216.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id177(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id176(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float FilterShadow_id156(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id157(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id158(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id159(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id155(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id202.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id154(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id153(positionWS, streams.meshNormalWS_id19, float2(0.0f, 1.0f), WorldToShadow_id205[cascadeIndex], InverseWorldToShadow_id206[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id150(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id148(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id140(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id139(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id129(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id126(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id279(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id270 * d * d);
}
float VisibilitySmithSchlickGGX_id267(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id265(alphaR, nDotL) * VisibilityhSchlickGGX_id265(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id255(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id249(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id108(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id166;
    return FilterThickness_id105(pixelPositionWS, meshNormalWS, DepthRanges_id171[arrayIndex], WorldToShadowCascadeUV_id168[arrayIndex], InverseWorldToShadowCascadeUV_id169[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id107(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id168[cascadeIndex + lightIndex * TCascadeCountBase_id166]);
    shadowPosition.z -= DepthBiases_id172[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id104(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id106(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id164.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id449(inout PS_STREAMS streams)
{
    return streams.Input_2_id258;
}
void Compute_id448(inout PS_STREAMS streams)
{

    {
        Compute_id446(streams);
    }
}
float Compute_id437(inout PS_STREAMS streams)
{
    return streams.Input_1_id249;
}
void Compute_id436(inout PS_STREAMS streams)
{

    {
        Compute_id434(streams);
    }
}
float4 Compute_id425(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id241;
}
void Compute_id424(inout PS_STREAMS streams)
{

    {
        Compute_id422(streams);
    }
}
float4 Compute_id405(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id235;
    return CubeMap_id236.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id400(float3 direction)
{
    return EvaluateSphericalHarmonics_id203(SphericalColors_id234, direction);
}
void PrepareEnvironmentLight_id207(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id455(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id271.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id198(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id172(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id171(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id170(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id183(OffsetScales_id225[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float3 shadow = ComputeShadowFromCascade_id184(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id158 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id169(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id213[lightIndex].PositionWS;
    data.DirectionWS = Lights_id213[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id213[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id213[lightIndex].Color;
    ProcessLight_id177(streams, data);
}
float3 ComputeSpecularTextureProjection_id146(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id145(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id144(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id199[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id158 = ComputeThickness_id154(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id155(OffsetScales_id208[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id205[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id207[lightIndex];
    float depth = DepthParameters_id209[lightIndex].x + (DepthParameters_id209[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id156(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id143(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id199[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id199[lightIndex].InvSquareRadius;
    data.Color = Lights_id199[lightIndex].Color;
    ProcessLight_id150(streams, data);
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
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id132(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id191.Load(streams.lightIndex_id189);
    streams.lightIndex_id189++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id196.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id196.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id196.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id196.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id140(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id124(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id123(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id122(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id121(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id191.Load(streams.lightIndex_id189);
    streams.lightIndex_id189++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id195.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id195.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id129(streams, pointLight);
}
void PrepareLightData_id128(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id185.y / (projectedDepth - ZProjection_id185.x);
    float2 texCoord = float2(streams.ScreenPosition_id182.x + 1, 1 - streams.ScreenPosition_id182.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id192 + ClusterDepthBias_id193), 0));
    streams.lightData_id188 = LightClusters_id190.Load(int4(texCoord * ClusterStride_id194, slice, 0));
    streams.lightIndex_id189 = streams.lightData_id188.x;
}
float Compute_id547(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id279(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id517(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id267(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id487(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id255(f0, streams.LdotH_id79);
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
    int cascadeIndexBase = lightIndex * TCascadeCount_id174;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id174 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id25 > CascadeDepthSplits_id180[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id106(OffsetScales_id173[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    if (cascadeIndex < TCascadeCount_id174)
    {
        shadow = ComputeShadowFromCascade_id107(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id180[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id180[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id25) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id174 - 1)
            {
            }
            else if (TBlendCascades_id176)
            {
                float nextShadow = ComputeShadowFromCascade_id107(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id158 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id97(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id161[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id161[lightIndex].DirectionWS;
}
float Compute_id452(inout PS_STREAMS streams)
{
    Compute_id448(streams);
    return Compute_id449(streams);
}
float Compute_id440(inout PS_STREAMS streams)
{
    Compute_id436(streams);
    return Compute_id437(streams);
}
float4 Compute_id428(inout PS_STREAMS streams)
{
    Compute_id424(streams);
    return Compute_id425(streams);
}
void ResetStream_id282()
{
}
void AfterLightingAndShading_id604()
{
}
void AfterLightingAndShading_id585()
{
}
void PrepareEnvironmentLight_id418(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id415(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id207(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id237);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id400(sampleDirection).rgb * Intensity_id238 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id237);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id405(streams, sampleDirection).rgb * Intensity_id238 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id634(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id455(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id578(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id410(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id198(streams);
    float3 lightColor = AmbientLight_id229 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id367(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id169(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id170(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id171(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id172(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id369()
{
    return LightCount_id211;
}
int GetMaxLightCount_id370()
{
    return TMaxLightCount_id212;
}
void PrepareDirectLights_id365()
{
}
void PrepareDirectLight_id342(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id143(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id144(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id145(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id146(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id344()
{
    return LightCount_id197;
}
int GetMaxLightCount_id346()
{
    return TMaxLightCount_id198;
}
void PrepareDirectLights_id340()
{
}
void PrepareDirectLight_id329(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id132(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id133(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id134(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id135(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id333(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y >> 16;
}
int GetMaxLightCount_id332(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y >> 16;
}
void PrepareDirectLights_id327()
{
}
void PrepareDirectLight_id316(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id121(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id122(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id123(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id124(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id321(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y & 0xFFFF;
}
int GetMaxLightCount_id320(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y & 0xFFFF;
}
void PrepareDirectLights_id319(inout PS_STREAMS streams)
{
    PrepareLightData_id128(streams);
}
float3 ComputeDirectLightContribution_id633(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id487(streams, specularColor);
    float geometricShadowing = Compute_id517(streams);
    float normalDistribution = Compute_id547(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id577(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id270 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id64(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id292(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id97(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id98(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id99(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id100(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id294()
{
    return LightCount_id159;
}
int GetMaxLightCount_id295()
{
    return TMaxLightCount_id160;
}
void PrepareDirectLights_id290()
{
}
void PrepareForLightingAndShading_id601()
{
}
void PrepareForLightingAndShading_id582()
{
}
void PrepareMaterialForLightingAndShading_id281(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id280(inout PS_STREAMS streams)
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
float4 Compute_id454(inout PS_STREAMS streams)
{
    float x = Compute_id452(streams);
    return float4(x, x, x, x);
}
float4 Compute_id442(inout PS_STREAMS streams)
{
    float x = Compute_id440(streams);
    return float4(x, x, x, x);
}
float4 Compute_id430(inout PS_STREAMS streams)
{
    return Compute_id428(streams);
}
void ResetStream_id283(inout PS_STREAMS streams)
{
    ResetStream_id282();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id665(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id280(streams);
    PrepareMaterialForLightingAndShading_id281(streams);

    {
        PrepareForLightingAndShading_id582();
    }

    {
        PrepareForLightingAndShading_id601();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id290();
        const int maxLightCount = GetMaxLightCount_id295();
        int count = GetLightCount_id294();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id292(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id577(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id633(streams);
            }
        }
    }

    {
        PrepareDirectLights_id319(streams);
        const int maxLightCount = GetMaxLightCount_id320(streams);
        int count = GetLightCount_id321(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id316(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id577(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id633(streams);
            }
        }
    }

    {
        PrepareDirectLights_id327();
        const int maxLightCount = GetMaxLightCount_id332(streams);
        int count = GetLightCount_id333(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id329(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id577(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id633(streams);
            }
        }
    }

    {
        PrepareDirectLights_id340();
        const int maxLightCount = GetMaxLightCount_id346();
        int count = GetLightCount_id344();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id342(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id577(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id633(streams);
            }
        }
    }

    {
        PrepareDirectLights_id365();
        const int maxLightCount = GetMaxLightCount_id370();
        int count = GetLightCount_id369();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id367(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id577(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id633(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id410(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id578(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id634(streams);
        }
    }

    {
        PrepareEnvironmentLight_id415(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id578(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id634(streams);
        }
    }

    {
        PrepareEnvironmentLight_id418(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id578(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id634(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id270 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id585();
    }

    {
        AfterLightingAndShading_id604();
    }
}
void Compute_id649(inout PS_STREAMS streams)
{
    float metalness = Compute_id454(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id644(inout PS_STREAMS streams)
{
    float glossiness = Compute_id442(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id639(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id430(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id284(inout PS_STREAMS streams)
{
    ResetStream_id283(streams);
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
void Compute_id87(inout PS_STREAMS streams)
{

    {
        Compute_id639(streams);
    }

    {
        Compute_id644(streams);
    }

    {
        Compute_id649(streams);
    }

    {
        Compute_id665(streams);
    }
}
void ResetStream_id86(inout PS_STREAMS streams)
{
    ResetStream_id284(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id86(streams);
    Compute_id87(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
float3 EncodeNormal_id91(float3 n)
{
    return n * 0.5 + 0.5;
}
float4 StrideShadingWorldNormal_id33(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id24 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id24, ViewProjection_id31);
    streams.normalWS_id21 = normal;
    streams.meshNormalWS_id19 = normal;
    streams.DepthVS_id25 = posWVP.w;
    streams.Depth_id10 = posWVP.z / posWVP.w;
    return Shading_id31(streams);
}
void sphereImpostorSimple_id62(float2 mapping, float3 spherePos, float sphereRadius, out float3 pos, out float3 normal)
{
    float lenSqr = dot(mapping, mapping);
    if (lenSqr > 1)
        discard;
    float z = sqrt(1 - lenSqr);
    normal = float3(mapping, z);
    normal = normalize(mul(float4(normal, 0), ViewInverse_id28).xyz);
    pos = float4((normal * sphereRadius) + spherePos, 1);
}
void PostTransformPosition_id59(inout VS_STREAMS streams)
{
    streams.VID_id155 = streams.VertexID_id154;
    streams.InstanceID_id13 = streams.VertexID_id154;
    streams.ShadingPosition_id0 = streams.Position_id23;
}
void TransformPosition_id58()
{
}
void PreTransformPosition_id57()
{
}
float4 Compute_id85()
{
    return MaterialIndex_id156;
}
float4 Compute_id84(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id73, sqrt(streams.alphaRoughness_id72));
}
float4 Compute_id83(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id91(streams.normalWS_id21), 1);
}
float4 Shading_id63(inout PS_STREAMS streams)
{
    float size = streams.PSize_id153;
    float2 mapping = streams.TexCoord_id133;
    float3 worldPos, worldNormal;
    sphereImpostorSimple_id62(mapping, streams.PositionWS_id24.xyz, size, worldPos, worldNormal);
    return StrideShadingWorldNormal_id33(streams, worldPos, worldNormal);
}
void PSMain_id1()
{
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id57();
    TransformPosition_id58();
    PostTransformPosition_id59(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id63(streams);
    streams.ColorTarget1_id3 = Compute_id83(streams);
    streams.ColorTarget2_id4 = Compute_id84(streams);
    streams.ColorTarget3_id5 = Compute_id85();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id21, streams.normalWS_id21) > 0)
        streams.normalWS_id21 = normalize(streams.normalWS_id21);
    streams.meshNormalWS_id19 = streams.normalWS_id21;
}
void GenerateNormal_VS_id60()
{
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
    GenerateNormal_VS_id60();
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id24 = __input__.PositionWS_id24;
    streams.PSize_id153 = __input__.PSize_id153;
    streams.TexCoord_id133 = __input__.TexCoord_id133;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.ScreenPosition_id182 = __input__.ScreenPosition_id182;
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id182 /= streams.ScreenPosition_id182.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    __output__.ColorTarget3_id5 = streams.ColorTarget3_id5;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id155 = input[0].VID_id155;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id182 = input[0].ScreenPosition_id182;
    streams.normalWS_id21 = input[0].normalWS_id21;
    uint id = streams.VID_id155;
    SMGridParticle p = ParticlesBuffer_id151[id];
    streams.PositionWS_id24 = mul(float4(p.Pos.xyz, 1), World_id34);
    streams.PSize_id153 = ParticleSize_id152 * p.Size.x * 0.5;
    if (streams.PSize_id153 <= 0)
        return;
    float padding = 1.5;
    float2 offset;
    float4 posView = mul(streams.PositionWS_id24, View_id27);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id133 = QuadUV_id149[i].xy * 2 - 1;
        float4 viewCornerPos = float4(posView.xyz + QuadPositions_id148[i].xyz * streams.PSize_id153, 1);
        streams.ShadingPosition_id0 = mul(viewCornerPos, Projection_id29);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id24 = streams.PositionWS_id24;
            output.PSize_id153 = streams.PSize_id153;
            output.TexCoord_id133 = streams.TexCoord_id133;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.ScreenPosition_id182 = streams.ScreenPosition_id182;
            output.normalWS_id21 = streams.normalWS_id21;
            output.InstanceID_id13 = streams.InstanceID_id13;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id154 = __input__.VertexID_id154;
    streams.Position_id23 = __input__.Position_id23;
    streams.normalWS_id21 = __input__.normalWS_id21;
    VSMain_id19(streams);
    streams.ScreenPosition_id182 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id155 = streams.VID_id155;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id182 = streams.ScreenPosition_id182;
    __output__.normalWS_id21 = streams.normalWS_id21;
    return __output__;
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMSphereImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MaterialIndex_id156 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id197 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id199 => LightSpotGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id201 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id202 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id206 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    InverseWorldToShadowCascadeUV_id207 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[3]
@C    ViewMatrices_id208 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[3]
@C    DepthRanges_id209 => ShadowMapReceiverBase.DepthRanges.directLightGroups[3]
@C    DepthBiases_id210 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id211 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id152 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id236 => ShaderFX.InputValueFloat
@C    InputValue_id245 => ShaderFX.InputValueFloat.i1
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
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id228 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id228 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id257 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id257 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    CubeMap_id222 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id222 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id115 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id117 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id200 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id228 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id257 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id162 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (3-3)]
@R    LightClusters_id190 => LightClustered.LightClusters [Stage: Pixel, Slot: (4-4)]
@R    LightIndices_id191 => LightClustered.LightIndices [Stage: Pixel, Slot: (5-5)]
@R    PointLights_id195 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (6-6)]
@R    SpotLights_id196 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (7-7)]
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
@S    SMSphereImpostor_ShaderFX => 8b002745c46c8e52adb5541f21a1d147
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
#line 1704 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_f66ff3c7b0f14270d39cff52e6059063.hlsl"
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
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id199;                    // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id201; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id202;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id206;// Offset:  544 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id207;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id208;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id209;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id210;           // Offset:  752 Size:     4 [unused]
//   float OffsetScales_id211;          // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id152;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id236;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id245;            // Offset:    8 Size:     4 [unused]
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
//   float3 AmbientLight_id215;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id220[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id221;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id223;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id224;             // Offset: 1632 Size:     4 [unused]
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
#line 1662 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_f66ff3c7b0f14270d39cff52e6059063.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 1664
mul r0.w, r0.x, cb1[0].x

#line 1665
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 1666
  ret 
endif 

#line 1662
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 1663
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id24.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id24.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id24.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id24.w

#line 1669
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 1674
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id153

#line 1675
mov r4.w, l(1.000000)

#line 1671
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 1673
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id133.x; r5.y <- streams.TexCoord_id133.y

#line 1674
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 1675
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 1686
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

#line 1688
  iadd r1.w, r1.w, l(1)
endloop 

#line 1689
ret 
// Approximately 43 instruction slots used
@G    Pixel => af0a1b77fc5bb4ca7a833b17dca4bcef
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
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id199;                    // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id201; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id202;// Offset:  536 Size:     8
//   float4x4 WorldToShadowCascadeUV_id206;// Offset:  544 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id207;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id208;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id209;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id210;           // Offset:  752 Size:     4
//   float OffsetScales_id211;          // Offset:  768 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id152;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id236;            // Offset:    4 Size:     4
//   float InputValue_id245;            // Offset:    8 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64
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
//   float3 AmbientLight_id215;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id220[9];   // Offset: 1424 Size:   140
//   float MipCount_id221;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id223;          // Offset: 1568 Size:    64
//   float Intensity_id224;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id228
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
// ParticlesBuffer_id228             texture  struct         r/o             t1      1 
// EnvironmentLightingDFG_LUT_id257    texture  float4          2d             t2      1 
// ShadowMapTexture_id162            texture  float4          2d             t3      1 
// LightClusters_id190               texture   uint2          3d             t4      1 
// LightIndices_id191                texture    uint         buf             t5      1 
// PointLights_id195                 texture  float4         buf             t6      1 
// SpotLights_id196                  texture  float4         buf             t7      1 
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
dcl_constantbuffer CB0[49], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_structured t1, 64
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture3d (uint,uint,uint,uint) t4
dcl_resource_buffer (uint,uint,uint,uint) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_resource_texturecube (float,float,float,float) t8
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
#line 1538 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_f66ff3c7b0f14270d39cff52e6059063.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
dp4 r1.x, r0.xyzw, cb2[0].xyzw  // r1.x <- cameraSpherePos.x
dp4 r1.y, r0.xyzw, cb2[1].xyzw  // r1.y <- cameraSpherePos.y
dp4 r1.z, r0.xyzw, cb2[2].xyzw  // r1.z <- cameraSpherePos.z

#line 1542
mul r0.xy, v1.xxxx, v1.yzyy

#line 1539
mov r0.w, l(0)
add r0.xyz, r1.xyzx, r0.xywx  // r0.x <- cameraPlanePos.x; r0.y <- cameraPlanePos.y; r0.z <- cameraPlanePos.z

#line 1540
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- rayDirection.x; r0.y <- rayDirection.y; r0.z <- rayDirection.z

#line 1541
dp3 r0.w, r0.xyzx, -r1.xyzx
add r1.w, r0.w, r0.w  // r1.w <- B

#line 1542
dp3 r2.x, r1.xyzx, r1.xyzx
mad r2.x, -v1.x, v1.x, r2.x  // r2.x <- C

#line 1543
mul r2.x, r2.x, l(4.000000)
mad r1.w, r1.w, r1.w, -r2.x  // r1.w <- det

#line 1544
lt r2.x, r1.w, l(0.000000)

#line 1545
discard_nz r2.x

#line 1546
sqrt r1.w, r1.w  // r1.w <- sqrtDet

#line 1547
mad r2.x, -r0.w, l(2.000000), r1.w
mul r2.x, r2.x, l(0.500000)  // r2.x <- posT

#line 1548
mad r0.w, -r0.w, l(2.000000), -r1.w
mul r0.w, r0.w, l(0.500000)  // r0.w <- negT

#line 1549
min r0.w, r0.w, r2.x  // r0.w <- intersectT

#line 1551
mad r0.xyz, r0.xyzx, r0.wwww, -r1.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1552
dp3 r1.x, r0.xyzx, cb2[4].xyzx
dp3 r1.y, r0.xyzx, cb2[5].xyzx
dp3 r1.z, r0.xyzx, cb2[6].xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r1.xyzx  // r0.x <- normal.x

#line 1553
mad r1.xyz, r0.xyzx, v1.xxxx, v0.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 1642
div r2.xy, v3.xyxx, v3.wwww  // r2.x <- streams.ScreenPosition_id182.x; r2.y <- streams.ScreenPosition_id182.y

#line 1529
mov r1.w, l(1.000000)
dp4 r0.w, r1.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.w, r1.xyzw, cb2[19].xyzw  // r1.w <- posWVP.w

#line 1533
div oDepth, r0.w, r1.w

#line 1516
add r3.xyz, -r1.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, r3.xyzx  // r4.x <- streams.viewWS_id70.x; r4.y <- streams.viewWS_id70.y; r4.z <- streams.viewWS_id70.z

#line 643
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, v5.x, l(48), t1.xyzx  // r5.x <- p.Col.x; r5.y <- p.Col.y; r5.z <- p.Col.z

#line 1456
add r2.z, -cb1[0].y, l(1.000000)  // r2.z <- glossiness

#line 1448
add r6.xyz, r5.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r6.xyz, cb1[0].zzzz, r6.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r6.x <- streams.matSpecular_id57.x; r6.y <- streams.matSpecular_id57.y; r6.z <- streams.matSpecular_id57.z

#line 1449
mad r5.xyz, cb1[0].zzzz, -r5.xyzx, r5.xyzx  // r5.x <- streams.matDiffuse_id55.x; r5.y <- streams.matDiffuse_id55.y; r5.z <- streams.matDiffuse_id55.z

#line 1289
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id21.x; r0.y <- streams.normalWS_id21.y; r0.z <- streams.normalWS_id21.z

#line 1246
dp3 r2.w, r0.xyzx, r4.xyzx
max r7.y, r2.w, l(0.000100)  // r7.y <- streams.NdotV_id74

#line 1247
add r2.z, -r2.z, l(1.000000)  // r2.z <- roughness

#line 1248
mul r2.z, r2.z, r2.z
max r2.z, r2.z, l(0.001000)  // r2.z <- streams.alphaRoughness_id72

#line 1313
ilt r2.w, l(0), cb2[25].x
if_nz r2.w

#line 1216
  dp3 r2.w, r0.xyzx, -cb2[26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 1027
  lt r3.w, cb2[83].x, r1.w

#line 1030
  and r3.w, r3.w, l(1)  // r3.w <- cascadeIndex

#line 1027
  lt r4.w, cb2[84].x, r1.w

#line 1030
  movc r3.w, r4.w, l(2), r3.w

#line 1027
  lt r4.w, cb2[85].x, r1.w

#line 1030
  movc r3.w, r4.w, l(3), r3.w

#line 845
  add r5.w, -r2.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- normalOffsetScale

#line 846
  mul r7.z, cb2[28].z, cb2[82].x
  dp2 r5.w, r7.zzzz, r5.wwww

#line 1035
  mad r8.xyz, r5.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 838
  ishl r5.w, r3.w, l(2)
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r7.z, r8.xyzw, cb2[r5.w + 31].xyzw  // r7.z <- shadowPosition.z
  dp4 r7.w, r8.xyzw, cb2[r5.w + 32].xyzw  // r7.w <- shadowPosition.w

#line 839
  add r9.z, r7.z, -cb2[81].x  // r9.z <- shadowPosition.z

#line 840
  div r9.xyz, r9.xyzx, r7.wwww

#line 627
  mad r7.zw, r9.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r9.xy, r7.zwzz  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 628
  add r7.zw, r7.zzzw, -r9.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 629
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 630
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 442
  mad r10.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 443
  mad r11.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 445
  mad r12.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 444
  div r12.xy, r12.xyxx, r11.yxyy
  add r13.xw, r12.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 445
  div r12.xy, r12.zwzz, r10.xyxx
  add r13.yz, r12.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 446
  mad r12.xy, r7.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r12.xy, r12.xyxx, r10.wzww
  add r12.xw, r12.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 447
  div r7.zw, r7.zzzw, r11.zzzw
  add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 449
  mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 454
  mov r12.yz, r13.wwyw

#line 455
  mov r14.zw, r12.yyyz

#line 453
  mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 454
  mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 455
  mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 456
  mov r13.y, r12.x
  mul r7.zw, -r10.wwwz, r11.xxxy

#line 457
  mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
  mul r14.zw, r10.yyyx, -r10.wwwz

#line 458
  mad r20.xy, r12.wxww, cb2[28].zwzz, r9.xyxx
  mul r20.zw, r10.yyyz, r10.xxxw

#line 459
  mov r13.w, r14.x
  mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 461
  mov r12.xz, r13.xxzx

#line 460
  mov r12.y, r14.y
  mul r13.xz, r11.xxyx, -r11.zzwz

#line 461
  mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.xz, r10.yyxy, -r11.zzwz

#line 462
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
  mul r10.xyzw, r10.xyzw, r11.xyzw

#line 463
  mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
  mul r11.xy, r11.xwxx, r11.yzyy

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r15.xyxx, t3.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id111 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r11.z, r15.zwzz, t3.xxxx, s1, r9.z  // r11.z <- <SampleTextureAndCompare_id111 return value>

#line 737
  mul r10.x, r10.x, r11.z
  mad r9.w, r11.x, r9.w, r10.x  // r9.w <- shadow

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r10.x, r17.xyxx, t3.xxxx, s1, r9.z  // r10.x <- <SampleTextureAndCompare_id111 return value>

#line 737
  mad r7.z, r7.z, r10.x, r9.w  // r7.z <- shadow

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r18.xyxx, t3.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id111 return value>

#line 737
  mad r7.z, r13.x, r9.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r16.xyxx, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r10.y, r9.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r16.zwzz, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r20.z, r9.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r17.zwzz, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r14.z, r9.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r18.zwzz, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r12.x, r9.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r19.xyxx, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r7.w, r9.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r19.zwzz, t3.xxxx, s1, r9.z  // r7.w <- <SampleTextureAndCompare_id111 return value>

#line 737
  mad r7.z, r14.w, r7.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r20.xyxx, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r20.w, r7.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r13.ywyy, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r10.z, r7.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r21.xyxx, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r13.z, r7.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r21.zwzz, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r12.z, r7.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r12.ywyy, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r10.w, r7.w, r7.z

#line 622
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r9.xyxx, t3.xxxx, s1, r9.z

#line 737
  mad r7.z, r11.y, r7.w, r7.z

#line 739
  mul r9.xyz, r7.zzzz, l(0.000370, 0.000370, 0.000370, 0.000000)  // r9.z <- shadow

#line 1041
  ilt r7.w, l(0), r3.w
  if_nz r7.w

#line 1043
    iadd r7.w, r3.w, l(-1)
    add r7.w, -cb2[r7.w + 83].x, cb2[r3.w + 83].x  // r7.w <- splitSize

#line 1044
  else 
    mov r7.w, cb2[r3.w + 83].x  // r7.w <- splitSize
  endif 

#line 1045
  add r1.w, -r1.w, cb2[r3.w + 83].x
  div r1.w, r1.w, r7.w  // r1.w <- splitDist

#line 1046
  lt r3.w, r1.w, l(0.200000)
  if_nz r3.w

#line 1049
    if_nz r4.w

#line 1051
      mov r9.xyz, r9.zzzz  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z
    else 

#line 1048
      mul_sat r1.w, r1.w, l(5.000000)
      mad r3.w, r1.w, l(-2.000000), l(3.000000)
      mul r1.w, r1.w, r1.w
      mul r1.w, r1.w, r3.w  // r1.w <- lerpAmt

#line 838
      dp4 r10.x, r8.xyzw, cb2[r5.w + 33].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r8.xyzw, cb2[r5.w + 34].xyzw  // r10.y <- shadowPosition.y
      dp4 r3.w, r8.xyzw, cb2[r5.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r8.xyzw, cb2[r5.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 839
      add r10.z, r3.w, -cb2[81].x  // r10.z <- shadowPosition.z

#line 840
      div r8.xyz, r10.xyzx, r4.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 627
      mad r8.xy, r8.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r10.xy, r8.xyxx  // r10.x <- base_uv.x; r10.y <- base_uv.y

#line 628
      add r8.xy, r8.xyxx, -r10.xyxx  // r8.x <- st.x; r8.y <- st.y

#line 629
      add r10.xy, r10.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 630
      mul r10.xy, r10.xyxx, cb2[28].zwzz

#line 442
      mad r11.xyzw, r8.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r11.x <- uvW1.x; r11.y <- uvW1.y

#line 443
      mad r12.xyzw, r8.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r12.x <- uvW0.y; r12.y <- uvW0.x

#line 445
      mad r13.xyzw, r8.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 444
      div r10.zw, r13.xxxy, r12.yyyx
      add r14.xw, r10.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r14.x <- uv0.x; r14.w <- uv0.y

#line 445
      div r10.zw, r13.zzzw, r11.xxxy
      add r14.yz, r10.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r14.y <- uv1.y; r14.z <- uv1.x

#line 446
      mad r10.zw, r8.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r10.zw, r10.zzzw, r11.wwwz
      add r13.xw, r10.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r13.x <- uv2.y; r13.w <- uv2.x

#line 447
      div r8.xy, r8.xyxx, r12.zwzz
      add r15.xy, r8.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r15.x <- uv3.x; r15.y <- uv3.y

#line 449
      mad r16.xyzw, r14.xwzw, cb2[28].zwzw, r10.xyxy

#line 454
      mov r13.yz, r14.wwyw

#line 455
      mov r15.zw, r13.yyyz

#line 453
      mad r17.xyzw, r14.xyzy, cb2[28].zwzw, r10.xyxy

#line 454
      mad r18.xyzw, r13.wywz, cb2[28].zwzw, r10.xyxy

#line 455
      mad r19.xyzw, r15.xzxw, cb2[28].zwzw, r10.xyxy

#line 456
      mov r14.y, r13.x
      mul r8.xy, -r11.wzww, r12.xyxx

#line 457
      mad r20.xyzw, r14.xyzy, cb2[28].zwzw, r10.xyxy
      mul r10.zw, r11.yyyx, -r11.wwwz

#line 458
      mad r15.zw, r13.wwwx, cb2[28].zzzw, r10.xxxy
      mul r21.xy, r11.yzyy, r11.xwxx

#line 459
      mov r14.w, r15.x
      mad r14.yw, r14.wwwy, cb2[28].zzzw, r10.xxxy

#line 461
      mov r13.xz, r14.xxzx

#line 460
      mov r13.y, r15.y
      mul r14.xz, r12.xxyx, -r12.zzwz

#line 461
      mad r22.xyzw, r13.xyzy, cb2[28].zwzw, r10.xyxy
      mul r13.xz, r11.yyxy, -r12.zzwz

#line 462
      mad r13.yw, r13.wwwy, cb2[28].zzzw, r10.xxxy
      mul r11.xyzw, r11.xyzw, r12.xyzw

#line 463
      mad r10.xy, r15.xyxx, cb2[28].zwzz, r10.xyxx
      mul r12.xy, r12.xwxx, r12.yzyy

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.xyxx, t3.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id111 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.zwzz, t3.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id111 return value>

#line 737
      mul r4.w, r4.w, r11.x
      mad r3.w, r12.x, r3.w, r4.w  // r3.w <- shadow

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.xyxx, t3.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id111 return value>

#line 737
      mad r3.w, r8.x, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r19.xyxx, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r14.x, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.xyxx, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r11.y, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.zwzz, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r21.x, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.zwzz, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r10.z, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r19.zwzz, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r13.x, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.xyxx, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r8.y, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r20.zwzz, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r10.w, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r21.y, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.ywyy, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r11.z, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r22.xyxx, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r14.z, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r22.zwzz, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r13.z, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r13.ywyy, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r11.w, r4.w, r3.w

#line 622
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r10.xyxx, t3.xxxx, s1, r8.z

#line 737
      mad r3.w, r12.y, r4.w, r3.w

#line 739
      mul r3.w, r3.w, l(0.000370)

#line 1055
      mad r4.w, r7.z, l(0.000370), -r3.w
      mad r9.xyz, r1.wwww, r4.wwww, r3.wwww  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z

#line 1056
    endif 

#line 1057
  endif 

#line 1218
  mul r8.xyz, r9.xyzx, cb2[27].xyzx
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id46.x; r8.y <- streams.lightColorNdotL_id46.y; r8.z <- streams.lightColorNdotL_id46.z

#line 1208
  mad r9.xyz, r3.xyzx, r0.wwww, -cb2[26].xyzx
  dp3 r1.w, r9.xyzx, r9.xyzx
  rsq r1.w, r1.w
  mul r9.xyz, r1.wwww, r9.xyzx  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.z <- streams.H_id77.z

#line 1209
  dp3_sat r1.w, r0.xyzx, r9.xyzx  // r1.w <- streams.NdotH_id78

#line 1210
  dp3_sat r3.w, -cb2[26].xyzx, r9.xyzx  // r3.w <- streams.LdotH_id79

#line 1204
  mul r9.xyz, r5.xyzx, r8.xyzx

#line 707
  add r10.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r10.xyz, r10.xyzx, r3.wwww, r6.xyzx  // r10.x <- <FresnelSchlick_id223 return value>.x; r10.y <- <FresnelSchlick_id223 return value>.y; r10.z <- <FresnelSchlick_id223 return value>.z

#line 702
  mul r3.w, r2.z, l(0.500000)  // r3.w <- k

#line 703
  mad r4.w, -r2.z, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r3.w, r7.y, r4.w, r3.w
  div r3.w, r7.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id239 return value>

#line 825
  mul r3.w, r3.w, r5.w
  mul r2.w, r7.y, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 819
  mul r3.w, r2.z, r2.z  // r3.w <- alphaR2

#line 820
  mul r1.w, r1.w, r1.w
  mad r4.w, r2.z, r2.z, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 821
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id253 return value>

#line 1198
  mul r10.xyz, r2.wwww, r10.xyzx
  mul r10.xyz, r1.wwww, r10.xyzx
  mul r8.xyz, r8.xyzx, r10.xyzx

#line 1199
  mul r8.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r8.x <- <ComputeDirectLightContribution_id581 return value>.x; r8.y <- <ComputeDirectLightContribution_id581 return value>.y; r8.z <- <ComputeDirectLightContribution_id581 return value>.z

#line 1321
  mad r8.xyz, r9.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 1322
else   // Prior locations: r1.w <- posWVP.w
  mov r8.xyz, l(0,0,0,0)  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
endif 

#line 992
add r1.w, v2.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 993
mad r2.xy, r2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb2[87].xyxx

#line 994
mad r1.w, r1.w, cb2[86].y, cb2[86].z
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r9.z, r1.w  // r9.z <- slice

#line 995
mul r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r9.xy, r2.xyxx
mov r9.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.xy, r9.xyzw, t4.xyzw  // r2.x <- streams.lightData_id188.x; r2.y <- streams.lightData_id188.y

#line 1186
and r1.w, r2.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id294 return value>

#line 1331
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

#line 1333
  if_nz r3.w

#line 1335
    break 

#line 1336
  endif 

#line 979
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r7.zzzz, t5.yzwx  // r3.w <- realLightIndex

#line 980
  iadd r7.z, r7.z, l(1)  // r7.z <- streams.lightIndex_id189

#line 982
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyzw, r4.wwww, t6.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w

#line 983
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r3.wwww, t6.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 694
  mov r17.x, r9.w
  mov r17.yz, r10.xxyx
  add r15.xyz, r15.xyzx, -r17.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 695
  dp3 r3.w, r15.xyzx, r15.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 696
  div r15.xyz, r15.xyzx, r4.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 568
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 388
  mul r3.w, r15.w, r3.w  // r3.w <- factor

#line 389
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 390
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id125 return value>

#line 569
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1172
  dp3 r4.w, r9.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 1174
  mul r16.xyz, r3.wwww, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id46.x; r16.y <- streams.lightColorNdotL_id46.y; r16.z <- streams.lightColorNdotL_id46.z

#line 1208
  mov r11.xy, r10.zwzz
  add r11.xyw, r15.xyxz, r11.xyxz
  dp3 r3.w, r11.xywx, r11.xywx
  rsq r3.w, r3.w
  mul r11.xyw, r3.wwww, r11.xyxw  // r11.x <- streams.H_id77.x; r11.y <- streams.H_id77.y; r11.w <- streams.H_id77.z

#line 1209
  dp3_sat r3.w, r9.xyzx, r11.xywx  // r3.w <- streams.NdotH_id78

#line 1210
  dp3_sat r5.w, r15.xyzx, r11.xywx  // r5.w <- streams.LdotH_id79

#line 1204
  mul r11.xyw, r12.xyxz, r16.xyxz

#line 1341
  mad r11.xyw, r11.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r14.xyxz  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 707
  add r15.xyz, -r13.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r8.w, r5.w, r5.w
  mul r8.w, r8.w, r8.w
  mul r5.w, r5.w, r8.w
  mad r15.xyz, r15.xyzx, r5.wwww, r13.xyzx  // r15.x <- <FresnelSchlick_id223 return value>.x; r15.y <- <FresnelSchlick_id223 return value>.y; r15.z <- <FresnelSchlick_id223 return value>.z

#line 702
  mul r5.w, r13.w, l(0.500000)  // r5.w <- k

#line 703
  mad r8.w, -r13.w, l(0.500000), l(1.000000)
  mad r12.w, r4.w, r8.w, r5.w
  div r12.w, r4.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r5.w, r7.w, r8.w, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id239 return value>

#line 825
  mul r5.w, r5.w, r12.w
  mul r4.w, r7.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 819
  mul r5.w, r13.w, r13.w  // r5.w <- alphaR2

#line 820
  mul r3.w, r3.w, r3.w
  mad r8.w, r13.w, r13.w, l(-1.000000)
  mad r3.w, r3.w, r8.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 821
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id253 return value>

#line 1198
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 1345
  mad r14.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r11.xywx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 1331
  iadd r2.w, r2.w, l(1)

#line 1347
endloop   // r7.z <- streams.lightIndex_id189

#line 1164
ushr r1.w, r2.y, l(16)  // r1.w <- <GetMaxLightCount_id306 return value>

#line 1355
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

#line 1357
  if_nz r5.w

#line 1359
    break 

#line 1360
  endif 

#line 951
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.wwww, t5.yzwx  // r5.w <- realLightIndex

#line 952
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id189

#line 954
  ishl r7.w, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r7.wwww, t7.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 957
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)

#line 955
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t7.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 956
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t7.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 957
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t7.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 681
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 682
  dp3 r5.w, r15.xyzx, r15.xyzx
  sqrt r7.w, r5.w  // r7.w <- lightVectorLength

#line 683
  div r15.xyz, r15.xyzx, r7.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 561
  max r7.w, r5.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 382
  mul r5.w, r16.w, r5.w  // r5.w <- factor

#line 383
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor

#line 384
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id136 return value>

#line 562
  mul r5.w, r5.w, r7.w  // r5.w <- attenuation

#line 553
  dp3 r7.w, -r17.xyzx, r15.xyzx  // r7.w <- cd

#line 554
  mad_sat r7.w, r7.w, r16.x, r16.y  // r7.w <- attenuation

#line 555
  mul r7.w, r7.w, r7.w

#line 689
  mul r5.w, r5.w, r7.w  // r5.w <- attenuation

#line 1150
  dp3 r7.w, r2.xywx, r15.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id51

#line 1152
  mul r16.xyz, r5.wwww, r18.xyzx
  mul r16.xyz, r7.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id46.x; r16.y <- streams.lightColorNdotL_id46.y; r16.z <- streams.lightColorNdotL_id46.z

#line 1208
  add r17.xyz, r9.xyzx, r15.xyzx
  dp3 r5.w, r17.xyzx, r17.xyzx
  rsq r5.w, r5.w
  mul r17.xyz, r5.wwww, r17.xyzx  // r17.x <- streams.H_id77.x; r17.y <- streams.H_id77.y; r17.z <- streams.H_id77.z

#line 1209
  dp3_sat r5.w, r2.xywx, r17.xyzx  // r5.w <- streams.NdotH_id78

#line 1210
  dp3_sat r8.w, r15.xyzx, r17.xyzx  // r8.w <- streams.LdotH_id79

#line 1204
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1365
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 707
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.w, r8.w, r8.w
  mul r9.w, r9.w, r9.w
  mul r8.w, r8.w, r9.w
  mad r17.xyz, r17.xyzx, r8.wwww, r11.xyzx  // r17.x <- <FresnelSchlick_id223 return value>.x; r17.y <- <FresnelSchlick_id223 return value>.y; r17.z <- <FresnelSchlick_id223 return value>.z

#line 702
  mul r8.w, r13.x, l(0.500000)  // r8.w <- k

#line 703
  mad r9.w, -r13.x, l(0.500000), l(1.000000)
  mad r10.w, r7.w, r9.w, r8.w
  div r10.w, r7.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r8.w, r13.y, r9.w, r8.w
  div r8.w, r13.y, r8.w  // r8.w <- <VisibilityhSchlickGGX_id239 return value>

#line 825
  mul r8.w, r8.w, r10.w
  mul r7.w, r13.y, r7.w
  div r7.w, r8.w, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 819
  mul r8.w, r13.x, r13.x  // r8.w <- alphaR2

#line 820
  mul r5.w, r5.w, r5.w
  mad r9.w, r13.x, r13.x, l(-1.000000)
  mad r5.w, r5.w, r9.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 821
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r8.w, r5.w  // r5.w <- <NormalDistributionGGX_id253 return value>

#line 1198
  mul r17.xyz, r7.wwww, r17.xyzx
  mul r17.xyz, r5.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1369
  mad r12.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1355
  iadd r4.w, r4.w, l(1)

#line 1371
endloop   // r3.w <- streams.lightIndex_id189

#line 1385
ilt r1.w, l(0), cb0[28].x
if_nz r1.w

#line 668
  add r2.xyw, -r1.xyxz, cb0[29].xyxz  // r2.x <- lightVector.x; r2.y <- lightVector.y; r2.w <- lightVector.z

#line 669
  dp3 r1.w, r2.xywx, r2.xywx
  sqrt r3.w, r1.w  // r3.w <- lightVectorLength

#line 670
  div r2.xyw, r2.xyxw, r3.wwww  // r2.x <- lightVectorNorm.x; r2.y <- lightVectorNorm.y; r2.w <- lightVectorNorm.z

#line 547
  max r3.w, r1.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 376
  mul r1.w, r1.w, cb0[31].z  // r1.w <- factor

#line 377
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 378
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id147 return value>

#line 548
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 539
  dp3 r3.w, -cb0[30].xyzx, r2.xywx  // r3.w <- cd

#line 540
  mad_sat r3.w, r3.w, cb0[31].x, cb0[31].y  // r3.w <- attenuation

#line 541
  mul r3.w, r3.w, r3.w

#line 676
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 1128
  dp3 r3.w, r0.xyzx, r2.xywx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 789
  add r4.w, -r3.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 790
  mul r5.w, cb0[33].z, cb0[48].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 918
  mad r8.xyz, r4.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 782
  mov r8.w, l(1.000000)
  dp4 r1.x, r8.xyzw, cb0[34].xyzw  // r1.x <- shadowPosition.x
  dp4 r1.y, r8.xyzw, cb0[35].xyzw  // r1.y <- shadowPosition.y
  dp4 r4.w, r8.xyzw, cb0[36].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.w, r8.xyzw, cb0[37].xyzw  // r5.w <- shadowPosition.w

#line 783
  add r1.z, r4.w, -cb0[47].x  // r1.z <- shadowPosition.z

#line 784
  div r1.xyz, r1.xyzx, r5.wwww

#line 532
  mad r1.xy, r1.xyxx, cb0[33].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r7.zw, r1.xxxy  // r7.z <- base_uv.x; r7.w <- base_uv.y

#line 533
  add r1.xy, r1.xyxx, -r7.zwzz  // r1.x <- st.x; r1.y <- st.y

#line 534
  add r7.zw, r7.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)

#line 535
  mul r7.zw, r7.zzzw, cb0[33].zzzw

#line 480
  mad r8.xy, -r1.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r8.x <- uvW0.y; r8.y <- uvW0.x

#line 482
  mad r8.zw, r1.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r8.z <- uvW2.x; r8.w <- uvW2.y

#line 483
  mad r9.xy, -r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r9.xy, r9.xyxx, r8.yxyy
  add r9.xw, r9.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r9.x <- uv0.x; r9.w <- uv0.y

#line 484
  add r10.xy, r1.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r9.yz, r10.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r9.y <- uv1.y; r9.z <- uv1.x

#line 485
  div r1.xy, r1.xyxx, r8.zwzz
  add r10.xy, r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r10.x <- uv2.x; r10.y <- uv2.y

#line 494
  mul r1.xy, r8.xwxx, r8.yzyy

#line 487
  mad r11.xyzw, r9.xwzw, cb0[33].zwzw, r7.zwzw

#line 491
  mov r10.zw, r9.wwwy

#line 489
  mul r13.xy, r8.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 490
  mad r14.xyzw, r9.xyzy, cb0[33].zwzw, r7.zwzw

#line 491
  mad r15.xyzw, r10.xzxw, cb0[33].zwzw, r7.zwzw

#line 492
  mov r9.y, r10.y
  mul r8.xy, r8.xyxx, r8.zwzz

#line 493
  mad r9.xyzw, r9.xyzy, cb0[33].zwzw, r7.zwzw
  mul r10.zw, r8.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 494
  mad r7.zw, r10.xxxy, cb0[33].zzzw, r7.zzzw

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r11.xyxx, t0.xxxx, s1, r1.z  // r4.w <- <SampleTextureAndCompare_id161 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.zwzz, t0.xxxx, s1, r1.z  // r5.w <- <SampleTextureAndCompare_id161 return value>

#line 660
  mul r5.w, r5.w, r13.x
  mad r1.x, r1.x, r4.w, r5.w  // r1.x <- shadow

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.xyxx, t0.xxxx, s1, r1.z  // r4.w <- <SampleTextureAndCompare_id161 return value>

#line 660
  mad r1.x, r8.x, r4.w, r1.x

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.xyxx, t0.xxxx, s1, r1.z

#line 660
  mad r1.x, r13.y, r4.w, r1.x

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.zwzz, t0.xxxx, s1, r1.z

#line 660
  mad r1.x, r4.w, l(49.000000), r1.x

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.zwzz, t0.xxxx, s1, r1.z

#line 660
  mad r1.x, r10.z, r4.w, r1.x

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.xyxx, t0.xxxx, s1, r1.z

#line 660
  mad r1.x, r8.y, r4.w, r1.x

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.zwzz, t0.xxxx, s1, r1.z

#line 660
  mad r1.x, r10.w, r4.w, r1.x

#line 499
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.z, r7.zwzz, t0.xxxx, s1, r1.z  // r1.z <- <SampleTextureAndCompare_id161 return value>

#line 660
  mad r1.x, r1.y, r1.z, r1.x

#line 662
  mul r1.x, r1.x, l(0.006944)

#line 1130
  mul r1.yzw, r1.wwww, cb0[32].xxyz
  mul r1.xyz, r1.xxxx, r1.yzwy
  mul r1.xyz, r3.wwww, r1.xyzx  // r1.x <- streams.lightColorNdotL_id46.x; r1.y <- streams.lightColorNdotL_id46.y; r1.z <- streams.lightColorNdotL_id46.z

#line 1208
  mad r3.xyz, r3.xyzx, r0.wwww, r2.xywx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.H_id77.x; r3.y <- streams.H_id77.y; r3.z <- streams.H_id77.z

#line 1209
  dp3_sat r0.w, r0.xyzx, r3.xyzx  // r0.w <- streams.NdotH_id78

#line 1210
  dp3_sat r1.w, r2.xywx, r3.xyzx  // r1.w <- streams.LdotH_id79

#line 1204
  mul r2.xyw, r1.xyxz, r5.xyxz

#line 1389
  mad r2.xyw, r2.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.w <- directLightingContribution.z

#line 707
  add r3.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r4.w, r1.w, r1.w
  mul r4.w, r4.w, r4.w
  mul r1.w, r1.w, r4.w
  mad r3.xyz, r3.xyzx, r1.wwww, r6.xyzx  // r3.x <- <FresnelSchlick_id223 return value>.x; r3.y <- <FresnelSchlick_id223 return value>.y; r3.z <- <FresnelSchlick_id223 return value>.z

#line 702
  mul r1.w, r2.z, l(0.500000)  // r1.w <- k

#line 703
  mad r4.w, -r2.z, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r4.w, r1.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r1.w, r7.y, r4.w, r1.w
  div r1.w, r7.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id239 return value>

#line 825
  mul r1.w, r1.w, r5.w
  mul r3.w, r7.y, r3.w
  div r1.w, r1.w, r3.w  // r1.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 819
  mul r3.w, r2.z, r2.z  // r3.w <- alphaR2

#line 820
  mul r0.w, r0.w, r0.w
  mad r4.w, r2.z, r2.z, l(-1.000000)
  mad r0.w, r0.w, r4.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 821
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r3.w, r0.w  // r0.w <- <NormalDistributionGGX_id253 return value>

#line 1198
  mul r3.xyz, r1.wwww, r3.xyzx
  mul r3.xyz, r0.wwww, r3.xyzx
  mul r1.xyz, r1.xyzx, r3.xyzx

#line 1393
  mad r12.xyz, r1.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r2.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1394
endif 

#line 898
sqrt r6.w, r2.z
add r7.x, -r6.w, l(1.000000)  // r7.x <- glossiness

#line 899
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r7.xyxx, t2.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 900
mad r1.xyz, r6.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id403 return value>.x; r1.y <- <Compute_id403 return value>.y; r1.z <- <Compute_id403 return value>.z

#line 1111
mul r2.xyz, r1.xyzx, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id582 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id582 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id582 return value>.z

#line 1407
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1100
dp3 r0.w, r0.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r0.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r0.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 761
mul r3.x, r1.w, r1.w  // r3.x <- y2

#line 762
mul r3.y, r2.w, r2.w  // r3.y <- z2

#line 766
mad r7.xyz, cb2[90].xyzx, r1.wwww, cb2[89].xyzx  // r7.x <- color.x; r7.y <- color.y; r7.z <- color.z

#line 767
mad r7.xyz, cb2[91].xyzx, -r2.wwww, r7.xyzx

#line 768
mad r7.xyz, cb2[92].xyzx, r0.wwww, r7.xyzx

#line 771
mul r8.xyz, r1.wwww, cb2[93].xyzx
mad r7.xyz, r8.xyzx, r0.wwww, r7.xyzx

#line 772
mul r8.xyz, r1.wwww, cb2[94].xyzx
mad r7.xyz, r8.xyzx, -r2.wwww, r7.xyzx

#line 773
mad r1.w, r3.y, l(3.000000), l(-1.000000)
mad r3.yzw, cb2[95].xxyz, r1.wwww, r7.xxyz  // r3.y <- color.x; r3.z <- color.y; r3.w <- color.z

#line 774
mul r7.xyz, r0.wwww, cb2[96].xyzx
mad r3.yzw, r7.xxyz, -r2.wwww, r3.yyzw

#line 775
mad r0.w, r0.w, r0.w, -r3.x
mad r3.xyz, cb2[97].xyzx, r0.wwww, r3.yzwy  // r3.x <- color.x; r3.y <- color.y; r3.z <- color.z

#line 1102
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightDiffuseColor_id49.x; r3.y <- streams.envLightDiffuseColor_id49.y; r3.z <- streams.envLightDiffuseColor_id49.z

#line 1103
dp3 r0.w, -r4.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r4.xyz, r0.xyzx, -r0.wwww, -r4.xyzx  // r4.x <- sampleDirection.x; r4.y <- sampleDirection.y; r4.z <- sampleDirection.z

#line 1104
dp3 r7.x, r4.xyzx, cb2[98].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r4.xyzx, cb2[99].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r4.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 1105
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 884
mul r0.w, r6.w, cb2[97].w  // r0.w <- mipLevel

#line 885
sample_l_indexable(texturecube)(float,float,float,float) r4.xyz, r7.xyzx, t8.xyzw, s0, r0.w  // r4.x <- <Compute_id353 return value>.x; r4.y <- <Compute_id353 return value>.y; r4.z <- <Compute_id353 return value>.z

#line 1106
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightSpecularColor_id50.x; r4.y <- streams.envLightSpecularColor_id50.y; r4.z <- streams.envLightSpecularColor_id50.z

#line 1415
mad r2.xyz, r5.xyzx, r3.xyzx, r2.xyzx

#line 1419
mad r1.xyz, r1.xyzx, r4.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1434
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r1.xyzx

#line 1524
mad o1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1569
utof o3.xyzw, cb0[26].xxxx

#line 1650
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mov o2.xyzw, r6.xyzw
ret 
// Approximately 624 instruction slots used
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
const static int TCascadeCountBase_id204 = 1;
const static int TLightCountBase_id205 = 1;
const static bool TCascadeDebug_id213 = false;
const static int TFilterSize_id214 = 5;
const static int TOrder_id217 = 3;
const static int TOrder_id219 = 3;
const static bool TInvert_id242 = true;
const static bool TIsEnergyConservative_id254 = false;
static const float PI_id256 = 3.14159265358979323846;
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
    float4 ColorPerParticle_ShaderFXResult_0_id227;
    float Input_1_id235;
    float Input_2_id244;
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
    float ParticleSize_id152 = 0.1;
    float InputValue_id236;
    float InputValue_id245;
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
    float3 AmbientLight_id215;
    float3 SphericalColors_id220[TOrder_id219 * TOrder_id219];
    float MipCount_id221;
    float4x4 SkyMatrix_id223;
    float Intensity_id224;
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
StructuredBuffer<SMGridParticle> ParticlesBuffer_id151;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id228;
Texture2D EnvironmentLightingDFG_LUT_id257;
Texture2D ShadowMapTexture_id162;
Texture3D<uint2> LightClusters_id190;
Buffer<uint> LightIndices_id191;
Buffer<float4> PointLights_id195;
Buffer<float4> SpotLights_id196;
TextureCube CubeMap_id222;
float4 Project_id103(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
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
float Get3x3FilterKernel_id163(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id162(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleTextureAndCompare_id161(float2 position, float positionDepth)
{
    return ShadowMapTexture_id200.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
float Get7x7FilterKernel_id160(float2 base_uv, float2 st, out float3 kernel[16])
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
void CalculatePCFKernelParameters_id159(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id201;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id202;
}
float GetAngularAttenuation_id149(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id148(float lightVectorLength, float lightInvSquareRadius)
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
float Compute_id391()
{
    return InputValue_id245;
}
float Compute_id379()
{
    return InputValue_id236;
}
float4 Compute_id367(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id228[id];
    return float4(p.Col, 1);
}
float FilterShadow_id155(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id159(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id162(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id161(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id150(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id148(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id149(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
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
float VisibilityhSchlickGGX_id239(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id223(float3 f0, float3 f90, float lOrVDotH)
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
void Compute_id394(inout PS_STREAMS streams)
{
    streams.Input_2_id244 = Compute_id391();
}
void Compute_id382(inout PS_STREAMS streams)
{
    streams.Input_1_id235 = Compute_id379();
}
void Compute_id370(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id227 = Compute_id367(streams);
}
float4 EvaluateSphericalHarmonics_id177(float3 sphericalColors[TOrder_id217 * TOrder_id217], float3 direction)
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
float ComputeShadowFromCascade_id158(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id206[cascadeIndex + lightIndex * TCascadeCountBase_id204]);
    shadowPosition.z -= DepthBiases_id210[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id155(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id157(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id202.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id151(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id150(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
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
float NormalDistributionGGX_id253(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id256 * d * d);
}
float VisibilitySmithSchlickGGX_id241(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id239(alphaR, nDotL) * VisibilityhSchlickGGX_id239(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id229(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id223(f0, 1.0f, lOrVDotH);
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
float Compute_id397(inout PS_STREAMS streams)
{
    return streams.Input_2_id244;
}
void Compute_id396(inout PS_STREAMS streams)
{

    {
        Compute_id394(streams);
    }
}
float Compute_id385(inout PS_STREAMS streams)
{
    return streams.Input_1_id235;
}
void Compute_id384(inout PS_STREAMS streams)
{

    {
        Compute_id382(streams);
    }
}
float4 Compute_id373(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id227;
}
void Compute_id372(inout PS_STREAMS streams)
{

    {
        Compute_id370(streams);
    }
}
float4 Compute_id353(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id221;
    return CubeMap_id222.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id348(float3 direction)
{
    return EvaluateSphericalHarmonics_id177(SphericalColors_id220, direction);
}
void PrepareEnvironmentLight_id181(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id403(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id257.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id172(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id146(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id145(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id144(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id157(OffsetScales_id211[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float3 shadow = ComputeShadowFromCascade_id158(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id158 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id143(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id199[lightIndex].PositionWS;
    data.DirectionWS = Lights_id199[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id199[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id199[lightIndex].Color;
    ProcessLight_id151(streams, data);
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
float Compute_id495(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id253(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id465(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id241(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id435(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id229(f0, streams.LdotH_id79);
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
float Compute_id400(inout PS_STREAMS streams)
{
    Compute_id396(streams);
    return Compute_id397(streams);
}
float Compute_id388(inout PS_STREAMS streams)
{
    Compute_id384(streams);
    return Compute_id385(streams);
}
float4 Compute_id376(inout PS_STREAMS streams)
{
    Compute_id372(streams);
    return Compute_id373(streams);
}
void ResetStream_id256()
{
}
void AfterLightingAndShading_id552()
{
}
void AfterLightingAndShading_id533()
{
}
void PrepareEnvironmentLight_id366(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id363(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id181(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id223);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id348(sampleDirection).rgb * Intensity_id224 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id223);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id353(streams, sampleDirection).rgb * Intensity_id224 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id582(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id403(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id526(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id358(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id172(streams);
    float3 lightColor = AmbientLight_id215 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id315(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id317()
{
    return LightCount_id197;
}
int GetMaxLightCount_id318()
{
    return TMaxLightCount_id198;
}
void PrepareDirectLights_id313()
{
}
void PrepareDirectLight_id303(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id307(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y >> 16;
}
int GetMaxLightCount_id306(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y >> 16;
}
void PrepareDirectLights_id301()
{
}
void PrepareDirectLight_id290(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id295(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y & 0xFFFF;
}
int GetMaxLightCount_id294(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y & 0xFFFF;
}
void PrepareDirectLights_id293(inout PS_STREAMS streams)
{
    PrepareLightData_id128(streams);
}
float3 ComputeDirectLightContribution_id581(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id435(streams, specularColor);
    float geometricShadowing = Compute_id465(streams);
    float normalDistribution = Compute_id495(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id525(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id256 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id64(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id266(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id268()
{
    return LightCount_id159;
}
int GetMaxLightCount_id269()
{
    return TMaxLightCount_id160;
}
void PrepareDirectLights_id264()
{
}
void PrepareForLightingAndShading_id549()
{
}
void PrepareForLightingAndShading_id530()
{
}
void PrepareMaterialForLightingAndShading_id255(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id254(inout PS_STREAMS streams)
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
float4 Compute_id402(inout PS_STREAMS streams)
{
    float x = Compute_id400(streams);
    return float4(x, x, x, x);
}
float4 Compute_id390(inout PS_STREAMS streams)
{
    float x = Compute_id388(streams);
    return float4(x, x, x, x);
}
float4 Compute_id378(inout PS_STREAMS streams)
{
    return Compute_id376(streams);
}
void ResetStream_id257(inout PS_STREAMS streams)
{
    ResetStream_id256();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id613(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id254(streams);
    PrepareMaterialForLightingAndShading_id255(streams);

    {
        PrepareForLightingAndShading_id530();
    }

    {
        PrepareForLightingAndShading_id549();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id264();
        const int maxLightCount = GetMaxLightCount_id269();
        int count = GetLightCount_id268();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id266(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id525(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id581(streams);
            }
        }
    }

    {
        PrepareDirectLights_id293(streams);
        const int maxLightCount = GetMaxLightCount_id294(streams);
        int count = GetLightCount_id295(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id290(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id525(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id581(streams);
            }
        }
    }

    {
        PrepareDirectLights_id301();
        const int maxLightCount = GetMaxLightCount_id306(streams);
        int count = GetLightCount_id307(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id303(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id525(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id581(streams);
            }
        }
    }

    {
        PrepareDirectLights_id313();
        const int maxLightCount = GetMaxLightCount_id318();
        int count = GetLightCount_id317();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id315(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id525(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id581(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id358(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id526(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id582(streams);
        }
    }

    {
        PrepareEnvironmentLight_id363(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id526(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id582(streams);
        }
    }

    {
        PrepareEnvironmentLight_id366(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id526(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id582(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id256 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id533();
    }

    {
        AfterLightingAndShading_id552();
    }
}
void Compute_id597(inout PS_STREAMS streams)
{
    float metalness = Compute_id402(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id592(inout PS_STREAMS streams)
{
    float glossiness = Compute_id390(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id587(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id378(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id258(inout PS_STREAMS streams)
{
    ResetStream_id257(streams);
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
        Compute_id587(streams);
    }

    {
        Compute_id592(streams);
    }

    {
        Compute_id597(streams);
    }

    {
        Compute_id613(streams);
    }
}
void ResetStream_id86(inout PS_STREAMS streams)
{
    ResetStream_id258(streams);
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
void sphereImpostor_id61(float2 screenCoord, float3 spherePos, float sphereRadius, out float3 pos, out float3 normal)
{
    float3 cameraSpherePos = mul(float4(spherePos, 1), View_id27).xyz;
    float3 cameraPlanePos = float3(screenCoord * sphereRadius, 0.0) + cameraSpherePos;
    float3 rayDirection = normalize(cameraPlanePos);
    float B = 2.0 * dot(rayDirection, -cameraSpherePos);
    float C = dot(cameraSpherePos, cameraSpherePos) - (sphereRadius * sphereRadius);
    float det = (B * B) - (4 * C);
    if (det < 0.0)
        discard;
    float sqrtDet = sqrt(det);
    float posT = (-B + sqrtDet) / 2;
    float negT = (-B - sqrtDet) / 2;
    float intersectT = min(posT, negT);
    pos = rayDirection * intersectT;
    normal = normalize(pos - cameraSpherePos);
    normal = normalize(mul(float4(normal, 0), ViewInverse_id28).xyz);
    pos = (normal * sphereRadius) + spherePos;
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
    sphereImpostor_id61(mapping, streams.PositionWS_id24.xyz, size, worldPos, worldNormal);
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

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,3>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMSphereImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MaterialIndex_id154 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id195 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id197 => LightSpotGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id199 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id200 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id204 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    InverseWorldToShadowCascadeUV_id205 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[3]
@C    ViewMatrices_id206 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[3]
@C    DepthRanges_id207 => ShadowMapReceiverBase.DepthRanges.directLightGroups[3]
@C    DepthBiases_id208 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id209 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id150 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id234 => ShaderFX.InputValueFloat
@C    InputValue_id243 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id181 => Camera.NearClipPlane
@C    FarClipPlane_id182 => Camera.FarClipPlane
@C    ZProjection_id183 => Camera.ZProjection
@C    ViewSize_id184 => Camera.ViewSize
@C    AspectRatio_id185 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id157 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id159 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id161 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id162 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id166 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id167 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id168 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id169 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id170 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id171 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id178 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id190 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id191 => LightClustered.ClusterDepthBias
@C    ClusterStride_id192 => LightClustered.ClusterStride
@C    AmbientLight_id213 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id218 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id219 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id221 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id222 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id198 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id198 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id226 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id226 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id255 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id255 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id160 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id160 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id188 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id188 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id189 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id189 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id193 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id193 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id194 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id194 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id220 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id220 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id113 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id115 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id198 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id226 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id255 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id160 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (3-3)]
@R    LightClusters_id188 => LightClustered.LightClusters [Stage: Pixel, Slot: (4-4)]
@R    LightIndices_id189 => LightClustered.LightIndices [Stage: Pixel, Slot: (5-5)]
@R    PointLights_id193 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (6-6)]
@R    SpotLights_id194 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (7-7)]
@R    CubeMap_id220 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (8-8)]
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 9b0e275a98d0f851e6064531b3183e33
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
// VID_ID153_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float   xyzw
// SCREENPOSITION_ID180_SEM     0   xyzw        2     NONE   float   xyzw
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
//   v0.x <- __input__.VertexID_id152; 
//   v1.x <- __input__.Position_id21.x; v1.y <- __input__.Position_id21.y; v1.z <- __input__.Position_id21.z; v1.w <- __input__.Position_id21.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   o3.x <- <VSMain return value>.normalWS_id19.x; o3.y <- <VSMain return value>.normalWS_id19.y; o3.z <- <VSMain return value>.normalWS_id19.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id180.x; o2.y <- <VSMain return value>.ScreenPosition_id180.y; o2.z <- <VSMain return value>.ScreenPosition_id180.z; o2.w <- <VSMain return value>.ScreenPosition_id180.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id153; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 1673 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_8c844414e8932c7e78da28f06d02e295.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
mov o3.xyz, v2.xyzx
ret 
// Approximately 5 instruction slots used
@G    Geometry => 5fedff0d290ea4fe297764248e476bba
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
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id154;          // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id195;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id197;                    // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id199; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id200;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id204;// Offset:  544 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id205;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id206;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id207;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id208;           // Offset:  752 Size:     4 [unused]
//   float OffsetScales_id209;          // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id150;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id234;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id243;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id181;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id182;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id183;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id184;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id185;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id157;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id159;                    // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id161; // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id162;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id166[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id167[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id168[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id169[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id170;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id171;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id178[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id190;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id191;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id192;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id213;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id218[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id219;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id221;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id222;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id149
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
// ParticlesBuffer_id149             texture  struct         r/o             t0      1 
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
// VID_ID153_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float       
// SCREENPOSITION_ID180_SEM     0   xyzw        2     NONE   float   xyzw
// NORMALWS                 0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID151_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float   xyzw
// SCREENPOSITION_ID180_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v[0][0].x <- input[0].VID_id153; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id180.x; v[0][2].y <- input[0].ScreenPosition_id180.y; v[0][2].z <- input[0].ScreenPosition_id180.z; v[0][2].w <- input[0].ScreenPosition_id180.w; 
//   v[0][3].x <- input[0].normalWS_id19.x; v[0][3].y <- input[0].normalWS_id19.y; v[0][3].z <- input[0].normalWS_id19.z
//
#line 1631 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_8c844414e8932c7e78da28f06d02e295.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 1633
mul r0.w, r0.x, cb1[0].x

#line 1634
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 1635
  ret 
endif 

#line 1631
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 1632
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id22.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id22.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id22.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id22.w

#line 1638
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 1643
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id151

#line 1644
mov r4.w, l(1.000000)

#line 1640
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 1642
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id131.x; r5.y <- streams.TexCoord_id131.y

#line 1643
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 1644
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 1655
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

#line 1657
  iadd r1.w, r1.w, l(1)
endloop 

#line 1658
ret 
// Approximately 43 instruction slots used
@G    Pixel => 4e5538ca3b0fe6557bb906abd67f4b6a
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
//   uint MaterialIndex_id154;          // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id195;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id197;                    // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id199; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id200;// Offset:  536 Size:     8
//   float4x4 WorldToShadowCascadeUV_id204;// Offset:  544 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id205;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id206;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id207;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id208;           // Offset:  752 Size:     4
//   float OffsetScales_id209;          // Offset:  768 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id150;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id234;            // Offset:    4 Size:     4
//   float InputValue_id243;            // Offset:    8 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16
//   float NearClipPlane_id181;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id182;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id183;          // Offset:  360 Size:     8
//   float2 ViewSize_id184;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id185;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id157;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id159;                    // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id161; // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id162;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id166[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id167[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id168[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id169[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id170;           // Offset: 1296 Size:     4
//   float OffsetScales_id171;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id178[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id190;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id191;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id192;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id213;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id218[9];   // Offset: 1424 Size:   140
//   float MipCount_id219;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id221;          // Offset: 1568 Size:    64
//   float Intensity_id222;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id226
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
// ShadowMapTexture_id198            texture  float4          2d             t0      1 
// ParticlesBuffer_id226             texture  struct         r/o             t1      1 
// EnvironmentLightingDFG_LUT_id255    texture  float4          2d             t2      1 
// ShadowMapTexture_id160            texture  float4          2d             t3      1 
// LightClusters_id188               texture   uint2          3d             t4      1 
// LightIndices_id189                texture    uint         buf             t5      1 
// PointLights_id193                 texture  float4         buf             t6      1 
// SpotLights_id194                  texture  float4         buf             t7      1 
// CubeMap_id220                     texture  float4        cube             t8      1 
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
// PSIZE_ID151_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float     z 
// SCREENPOSITION_ID180_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_output oDepth
dcl_temps 19
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.PSize_id151; v1.y <- __input__.TexCoord_id131.x; v1.z <- __input__.TexCoord_id131.y; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v3.x <- __input__.ScreenPosition_id180.x; v3.y <- __input__.ScreenPosition_id180.y; v3.z <- __input__.ScreenPosition_id180.z; v3.w <- __input__.ScreenPosition_id180.w; 
//   v4.x <- __input__.normalWS_id19.x; v4.y <- __input__.normalWS_id19.y; v4.z <- __input__.normalWS_id19.z; 
//   v5.x <- __input__.InstanceID_id13; 
//   v6.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w; 
//   oDepth <- <PSMain return value>.Depth_id10
//
#line 1528 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_8c844414e8932c7e78da28f06d02e295.hlsl"
dp2 r0.x, v1.yzyy, v1.yzyy  // r0.x <- lenSqr

#line 1529
lt r0.y, l(1.000000), r0.x

#line 1530
discard_nz r0.y

#line 1531
add r0.x, -r0.x, l(1.000000)
sqrt r0.z, r0.x  // r0.z <- z

#line 1533
mov r0.xy, v1.yzyy
dp3 r1.x, r0.xyzx, cb2[4].xyzx
dp3 r1.y, r0.xyzx, cb2[5].xyzx
dp3 r1.z, r0.xyzx, cb2[6].xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r1.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1534
mad r1.xyz, r0.xyzx, v1.xxxx, v0.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 1613
div r2.xy, v3.xyxx, v3.wwww  // r2.x <- streams.ScreenPosition_id180.x; r2.y <- streams.ScreenPosition_id180.y

#line 1519
mov r1.w, l(1.000000)
dp4 r0.w, r1.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.w, r1.xyzw, cb2[19].xyzw  // r1.w <- posWVP.w

#line 1523
div oDepth, r0.w, r1.w

#line 1510
add r3.xyz, -r1.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, r3.xyzx  // r4.x <- streams.viewWS_id68.x; r4.y <- streams.viewWS_id68.y; r4.z <- streams.viewWS_id68.z

#line 637
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, v5.x, l(48), t1.xyzx  // r5.x <- p.Col.x; r5.y <- p.Col.y; r5.z <- p.Col.z

#line 1450
add r2.z, -cb1[0].y, l(1.000000)  // r2.z <- glossiness

#line 1442
add r6.xyz, r5.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r6.xyz, cb1[0].zzzz, r6.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r6.x <- streams.matSpecular_id55.x; r6.y <- streams.matSpecular_id55.y; r6.z <- streams.matSpecular_id55.z

#line 1443
mad r5.xyz, cb1[0].zzzz, -r5.xyzx, r5.xyzx  // r5.x <- streams.matDiffuse_id53.x; r5.y <- streams.matDiffuse_id53.y; r5.z <- streams.matDiffuse_id53.z

#line 1283
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id19.x; r0.y <- streams.normalWS_id19.y; r0.z <- streams.normalWS_id19.z

#line 1240
dp3 r2.w, r0.xyzx, r4.xyzx
max r7.y, r2.w, l(0.000100)  // r7.y <- streams.NdotV_id72

#line 1241
add r2.z, -r2.z, l(1.000000)  // r2.z <- roughness

#line 1242
mul r2.z, r2.z, r2.z
max r2.z, r2.z, l(0.001000)  // r2.z <- streams.alphaRoughness_id70

#line 1307
ilt r2.w, l(0), cb2[25].x
if_nz r2.w

#line 1210
  dp3 r2.w, r0.xyzx, -cb2[26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 1021
  lt r3.w, cb2[83].x, r1.w

#line 1024
  and r3.w, r3.w, l(1)  // r3.w <- cascadeIndex

#line 1021
  lt r4.w, cb2[84].x, r1.w

#line 1024
  movc r3.w, r4.w, l(2), r3.w

#line 1021
  lt r4.w, cb2[85].x, r1.w

#line 1024
  movc r3.w, r4.w, l(3), r3.w

#line 839
  add r5.w, -r2.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- normalOffsetScale

#line 840
  mul r6.w, cb2[28].z, cb2[82].x
  dp2 r5.w, r6.wwww, r5.wwww

#line 1029
  mad r8.xyz, r5.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 832
  ishl r5.w, r3.w, l(2)
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r6.w, r8.xyzw, cb2[r5.w + 31].xyzw  // r6.w <- shadowPosition.z
  dp4 r7.z, r8.xyzw, cb2[r5.w + 32].xyzw  // r7.z <- shadowPosition.w

#line 833
  add r9.z, r6.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 834
  div r9.xyz, r9.xyzx, r7.zzzz

#line 621
  mad r7.zw, r9.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r9.xy, r7.zwzz  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 622
  add r7.zw, r7.zzzw, -r9.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 623
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 624
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 400
  mad r10.xy, -r7.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 402
  mad r10.zw, r7.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r10.z <- uvW2.x; r10.w <- uvW2.y

#line 403
  mad r11.xy, -r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r10.yxyy
  add r11.xw, r11.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r11.x <- uv0.x; r11.w <- uv0.y

#line 404
  add r12.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r11.yz, r12.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r11.y <- uv1.y; r11.z <- uv1.x

#line 405
  div r7.zw, r7.zzzw, r10.zzzw
  add r12.xy, r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r12.x <- uv2.x; r12.y <- uv2.y

#line 406
  mul r6.w, r10.x, r10.y

#line 407
  mad r13.xyzw, r11.xwzw, cb2[28].zwzw, r9.xyxy

#line 411
  mov r12.zw, r11.wwwy

#line 409
  mul r7.zw, r10.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 410
  mad r14.xyzw, r11.xyzy, cb2[28].zwzw, r9.xyxy

#line 411
  mad r15.xyzw, r12.xzxw, cb2[28].zwzw, r9.xyxy

#line 412
  mov r11.y, r12.y
  mul r10.xy, r10.xyxx, r10.zwzz

#line 413
  mad r11.xyzw, r11.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.zw, r10.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 414
  mad r9.xy, r12.xyxx, cb2[28].zwzz, r9.xyxx
  mul r9.w, r10.w, r10.z

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r10.z, r13.xyxx, t3.xxxx, s1, r9.z  // r10.z <- <SampleTextureAndCompare_id100 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r13.zwzz, t3.xxxx, s1, r9.z  // r10.w <- <SampleTextureAndCompare_id100 return value>

#line 731
  mul r7.z, r7.z, r10.w
  mad r6.w, r6.w, r10.z, r7.z  // r6.w <- shadow

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r15.xyxx, t3.xxxx, s1, r9.z  // r7.z <- <SampleTextureAndCompare_id100 return value>

#line 731
  mad r6.w, r10.x, r7.z, r6.w

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r14.xyxx, t3.xxxx, s1, r9.z

#line 731
  mad r6.w, r7.w, r7.z, r6.w

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r14.zwzz, t3.xxxx, s1, r9.z

#line 731
  mad r6.w, r7.z, l(49.000000), r6.w

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r15.zwzz, t3.xxxx, s1, r9.z

#line 731
  mad r6.w, r12.z, r7.z, r6.w

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r11.xyxx, t3.xxxx, s1, r9.z

#line 731
  mad r6.w, r10.y, r7.z, r6.w

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r11.zwzz, t3.xxxx, s1, r9.z

#line 731
  mad r6.w, r12.w, r7.z, r6.w

#line 616
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r9.xyxx, t3.xxxx, s1, r9.z

#line 731
  mad r6.w, r9.w, r7.z, r6.w

#line 733
  mul r9.xyz, r6.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r9.z <- shadow

#line 1035
  ilt r7.z, l(0), r3.w
  if_nz r7.z

#line 1037
    iadd r7.z, r3.w, l(-1)
    add r7.z, -cb2[r7.z + 83].x, cb2[r3.w + 83].x  // r7.z <- splitSize

#line 1038
  else 
    mov r7.z, cb2[r3.w + 83].x  // r7.z <- splitSize
  endif 

#line 1039
  add r1.w, -r1.w, cb2[r3.w + 83].x
  div r1.w, r1.w, r7.z  // r1.w <- splitDist

#line 1040
  lt r3.w, r1.w, l(0.200000)
  if_nz r3.w

#line 1043
    if_nz r4.w

#line 1045
      mov r9.xyz, r9.zzzz  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z
    else 

#line 1042
      mul_sat r1.w, r1.w, l(5.000000)
      mad r3.w, r1.w, l(-2.000000), l(3.000000)
      mul r1.w, r1.w, r1.w
      mul r1.w, r1.w, r3.w  // r1.w <- lerpAmt

#line 832
      dp4 r10.x, r8.xyzw, cb2[r5.w + 33].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r8.xyzw, cb2[r5.w + 34].xyzw  // r10.y <- shadowPosition.y
      dp4 r3.w, r8.xyzw, cb2[r5.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r8.xyzw, cb2[r5.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 833
      add r10.z, r3.w, -cb2[81].x  // r10.z <- shadowPosition.z

#line 834
      div r8.xyz, r10.xyzx, r4.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 621
      mad r7.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r8.xy, r7.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 622
      add r7.zw, r7.zzzw, -r8.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 623
      add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 624
      mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 400
      mad r10.xy, -r7.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 402
      mad r10.zw, r7.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r10.z <- uvW2.x; r10.w <- uvW2.y

#line 403
      mad r11.xy, -r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r11.xy, r11.xyxx, r10.yxyy
      add r11.xw, r11.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r11.x <- uv0.x; r11.w <- uv0.y

#line 404
      add r12.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r11.yz, r12.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r11.y <- uv1.y; r11.z <- uv1.x

#line 405
      div r7.zw, r7.zzzw, r10.zzzw
      add r12.xy, r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r12.x <- uv2.x; r12.y <- uv2.y

#line 406
      mul r3.w, r10.x, r10.y

#line 407
      mad r13.xyzw, r11.xwzw, cb2[28].zwzw, r8.xyxy

#line 411
      mov r12.zw, r11.wwwy

#line 409
      mul r7.zw, r10.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 410
      mad r14.xyzw, r11.xyzy, cb2[28].zwzw, r8.xyxy

#line 411
      mad r15.xyzw, r12.xzxw, cb2[28].zwzw, r8.xyxy

#line 412
      mov r11.y, r12.y
      mul r10.xy, r10.xyxx, r10.zwzz

#line 413
      mad r11.xyzw, r11.xyzy, cb2[28].zwzw, r8.xyxy
      mul r12.zw, r10.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 414
      mad r8.xy, r12.xyxx, cb2[28].zwzz, r8.xyxx
      mul r4.w, r10.w, r10.z

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r13.xyxx, t3.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id100 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r13.zwzz, t3.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id100 return value>

#line 731
      mul r7.z, r7.z, r8.w
      mad r3.w, r3.w, r5.w, r7.z  // r3.w <- shadow

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t3.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id100 return value>

#line 731
      mad r3.w, r10.x, r5.w, r3.w

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.xyxx, t3.xxxx, s1, r8.z

#line 731
      mad r3.w, r7.w, r5.w, r3.w

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.zwzz, t3.xxxx, s1, r8.z

#line 731
      mad r3.w, r5.w, l(49.000000), r3.w

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t3.xxxx, s1, r8.z

#line 731
      mad r3.w, r12.z, r5.w, r3.w

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.xyxx, t3.xxxx, s1, r8.z

#line 731
      mad r3.w, r10.y, r5.w, r3.w

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.zwzz, t3.xxxx, s1, r8.z

#line 731
      mad r3.w, r12.w, r5.w, r3.w

#line 616
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r8.xyxx, t3.xxxx, s1, r8.z

#line 731
      mad r3.w, r4.w, r5.w, r3.w

#line 733
      mul r3.w, r3.w, l(0.006944)

#line 1049
      mad r4.w, r6.w, l(0.006944), -r3.w
      mad r9.xyz, r1.wwww, r4.wwww, r3.wwww  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z

#line 1050
    endif 

#line 1051
  endif 

#line 1212
  mul r8.xyz, r9.xyzx, cb2[27].xyzx
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id44.x; r8.y <- streams.lightColorNdotL_id44.y; r8.z <- streams.lightColorNdotL_id44.z

#line 1202
  mad r9.xyz, r3.xyzx, r0.wwww, -cb2[26].xyzx
  dp3 r1.w, r9.xyzx, r9.xyzx
  rsq r1.w, r1.w
  mul r9.xyz, r1.wwww, r9.xyzx  // r9.x <- streams.H_id75.x; r9.y <- streams.H_id75.y; r9.z <- streams.H_id75.z

#line 1203
  dp3_sat r1.w, r0.xyzx, r9.xyzx  // r1.w <- streams.NdotH_id76

#line 1204
  dp3_sat r3.w, -cb2[26].xyzx, r9.xyzx  // r3.w <- streams.LdotH_id77

#line 1198
  mul r9.xyz, r5.xyzx, r8.xyzx

#line 701
  add r10.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r10.xyz, r10.xyzx, r3.wwww, r6.xyzx  // r10.x <- <FresnelSchlick_id212 return value>.x; r10.y <- <FresnelSchlick_id212 return value>.y; r10.z <- <FresnelSchlick_id212 return value>.z

#line 696
  mul r3.w, r2.z, l(0.500000)  // r3.w <- k

#line 697
  mad r4.w, -r2.z, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r3.w, r7.y, r4.w, r3.w
  div r3.w, r7.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id228 return value>

#line 819
  mul r3.w, r3.w, r5.w
  mul r2.w, r7.y, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 813
  mul r3.w, r2.z, r2.z  // r3.w <- alphaR2

#line 814
  mul r1.w, r1.w, r1.w
  mad r4.w, r2.z, r2.z, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 815
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id242 return value>

#line 1192
  mul r10.xyz, r2.wwww, r10.xyzx
  mul r10.xyz, r1.wwww, r10.xyzx
  mul r8.xyz, r8.xyzx, r10.xyzx

#line 1193
  mul r8.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r8.x <- <ComputeDirectLightContribution_id570 return value>.x; r8.y <- <ComputeDirectLightContribution_id570 return value>.y; r8.z <- <ComputeDirectLightContribution_id570 return value>.z

#line 1315
  mad r8.xyz, r9.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 1316
else   // Prior locations: r1.w <- posWVP.w
  mov r8.xyz, l(0,0,0,0)  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
endif 

#line 986
add r1.w, v2.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 987
mad r2.xy, r2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb2[87].xyxx

#line 988
mad r1.w, r1.w, cb2[86].y, cb2[86].z
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r9.z, r1.w  // r9.z <- slice

#line 989
mul r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r9.xy, r2.xyxx
mov r9.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.xy, r9.xyzw, t4.xyzw  // r2.x <- streams.lightData_id186.x; r2.y <- streams.lightData_id186.y

#line 1180
and r1.w, r2.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id283 return value>

#line 1325
mov r9.xyz, r0.xyzx  // r9.x <- streams.normalWS_id19.x; r9.y <- streams.normalWS_id19.y; r9.z <- streams.normalWS_id19.z
mov r9.w, r1.x  // r9.w <- streams.PositionWS_id22.x
mov r10.xy, r1.yzyy  // r10.x <- streams.PositionWS_id22.y; r10.y <- streams.PositionWS_id22.z
mov r10.zw, r4.xxxy  // r10.z <- streams.viewWS_id68.x; r10.w <- streams.viewWS_id68.y
mov r11.z, r4.z  // r11.z <- streams.viewWS_id68.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matDiffuseVisible_id69.x; r12.y <- streams.matDiffuseVisible_id69.y; r12.z <- streams.matDiffuseVisible_id69.z
mov r13.xyz, r6.xyzx  // r13.x <- streams.matSpecularVisible_id71.x; r13.y <- streams.matSpecularVisible_id71.y; r13.z <- streams.matSpecularVisible_id71.z
mov r13.w, r2.z  // r13.w <- streams.alphaRoughness_id70
mov r7.w, r7.y  // r7.w <- streams.NdotV_id72
mov r7.z, r2.x  // r7.z <- streams.lightIndex_id187
mov r14.xyz, r8.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r1.w
  breakc_nz r3.w

#line 1327
  if_nz r3.w

#line 1329
    break 

#line 1330
  endif 

#line 973
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r7.zzzz, t5.yzwx  // r3.w <- realLightIndex

#line 974
  iadd r7.z, r7.z, l(1)  // r7.z <- streams.lightIndex_id187

#line 976
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyzw, r4.wwww, t6.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w

#line 977
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r3.wwww, t6.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 688
  mov r17.x, r9.w
  mov r17.yz, r10.xxyx
  add r15.xyz, r15.xyzx, -r17.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 689
  dp3 r3.w, r15.xyzx, r15.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 690
  div r15.xyz, r15.xyzx, r4.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 562
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 382
  mul r3.w, r15.w, r3.w  // r3.w <- factor

#line 383
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 384
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id114 return value>

#line 563
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1166
  dp3 r4.w, r9.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 1168
  mul r16.xyz, r3.wwww, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id44.x; r16.y <- streams.lightColorNdotL_id44.y; r16.z <- streams.lightColorNdotL_id44.z

#line 1202
  mov r11.xy, r10.zwzz
  add r11.xyw, r15.xyxz, r11.xyxz
  dp3 r3.w, r11.xywx, r11.xywx
  rsq r3.w, r3.w
  mul r11.xyw, r3.wwww, r11.xyxw  // r11.x <- streams.H_id75.x; r11.y <- streams.H_id75.y; r11.w <- streams.H_id75.z

#line 1203
  dp3_sat r3.w, r9.xyzx, r11.xywx  // r3.w <- streams.NdotH_id76

#line 1204
  dp3_sat r5.w, r15.xyzx, r11.xywx  // r5.w <- streams.LdotH_id77

#line 1198
  mul r11.xyw, r12.xyxz, r16.xyxz

#line 1335
  mad r11.xyw, r11.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r14.xyxz  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 701
  add r15.xyz, -r13.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r15.xyz, r15.xyzx, r5.wwww, r13.xyzx  // r15.x <- <FresnelSchlick_id212 return value>.x; r15.y <- <FresnelSchlick_id212 return value>.y; r15.z <- <FresnelSchlick_id212 return value>.z

#line 696
  mul r5.w, r13.w, l(0.500000)  // r5.w <- k

#line 697
  mad r6.w, -r13.w, l(0.500000), l(1.000000)
  mad r8.w, r4.w, r6.w, r5.w
  div r8.w, r4.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r5.w, r7.w, r6.w, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id228 return value>

#line 819
  mul r5.w, r5.w, r8.w
  mul r4.w, r7.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 813
  mul r5.w, r13.w, r13.w  // r5.w <- alphaR2

#line 814
  mul r3.w, r3.w, r3.w
  mad r6.w, r13.w, r13.w, l(-1.000000)
  mad r3.w, r3.w, r6.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 815
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id242 return value>

#line 1192
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 1339
  mad r14.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r11.xywx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 1325
  iadd r2.w, r2.w, l(1)

#line 1341
endloop   // r7.z <- streams.lightIndex_id187

#line 1158
ushr r1.w, r2.y, l(16)  // r1.w <- <GetMaxLightCount_id295 return value>

#line 1349
mov r2.xyw, r0.xyxz  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.w <- streams.normalWS_id19.z
mov r8.xyz, r1.xyzx  // r8.x <- streams.PositionWS_id22.x; r8.y <- streams.PositionWS_id22.y; r8.z <- streams.PositionWS_id22.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.viewWS_id68.x; r9.y <- streams.viewWS_id68.y; r9.z <- streams.viewWS_id68.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r6.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r12.xyz, r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r13.x, r2.z  // r13.x <- streams.alphaRoughness_id70
mov r13.y, r7.y  // r13.y <- streams.NdotV_id72
mov r3.w, r7.z  // r3.w <- streams.lightIndex_id187
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r1.w
  breakc_nz r5.w

#line 1351
  if_nz r5.w

#line 1353
    break 

#line 1354
  endif 

#line 945
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.wwww, t5.yzwx  // r5.w <- realLightIndex

#line 946
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id187

#line 948
  ishl r6.w, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r6.wwww, t7.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 951
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)

#line 949
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t7.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 950
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t7.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 951
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t7.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 675
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 676
  dp3 r5.w, r15.xyzx, r15.xyzx
  sqrt r6.w, r5.w  // r6.w <- lightVectorLength

#line 677
  div r15.xyz, r15.xyzx, r6.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 555
  max r6.w, r5.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 376
  mul r5.w, r16.w, r5.w  // r5.w <- factor

#line 377
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor

#line 378
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id125 return value>

#line 556
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 547
  dp3 r6.w, -r17.xyzx, r15.xyzx  // r6.w <- cd

#line 548
  mad_sat r6.w, r6.w, r16.x, r16.y  // r6.w <- attenuation

#line 549
  mul r6.w, r6.w, r6.w

#line 683
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 1144
  dp3 r6.w, r2.xywx, r15.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id49

#line 1146
  mul r16.xyz, r5.wwww, r18.xyzx
  mul r16.xyz, r6.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id44.x; r16.y <- streams.lightColorNdotL_id44.y; r16.z <- streams.lightColorNdotL_id44.z

#line 1202
  add r17.xyz, r9.xyzx, r15.xyzx
  dp3 r5.w, r17.xyzx, r17.xyzx
  rsq r5.w, r5.w
  mul r17.xyz, r5.wwww, r17.xyzx  // r17.x <- streams.H_id75.x; r17.y <- streams.H_id75.y; r17.z <- streams.H_id75.z

#line 1203
  dp3_sat r5.w, r2.xywx, r17.xyzx  // r5.w <- streams.NdotH_id76

#line 1204
  dp3_sat r7.w, r15.xyzx, r17.xyzx  // r7.w <- streams.LdotH_id77

#line 1198
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1359
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 701
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.w, -r7.w, l(1.000000)
  mul r8.w, r7.w, r7.w
  mul r8.w, r8.w, r8.w
  mul r7.w, r7.w, r8.w
  mad r17.xyz, r17.xyzx, r7.wwww, r11.xyzx  // r17.x <- <FresnelSchlick_id212 return value>.x; r17.y <- <FresnelSchlick_id212 return value>.y; r17.z <- <FresnelSchlick_id212 return value>.z

#line 696
  mul r7.w, r13.x, l(0.500000)  // r7.w <- k

#line 697
  mad r8.w, -r13.x, l(0.500000), l(1.000000)
  mad r9.w, r6.w, r8.w, r7.w
  div r9.w, r6.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r7.w, r13.y, r8.w, r7.w
  div r7.w, r13.y, r7.w  // r7.w <- <VisibilityhSchlickGGX_id228 return value>

#line 819
  mul r7.w, r7.w, r9.w
  mul r6.w, r13.y, r6.w
  div r6.w, r7.w, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 813
  mul r7.w, r13.x, r13.x  // r7.w <- alphaR2

#line 814
  mul r5.w, r5.w, r5.w
  mad r8.w, r13.x, r13.x, l(-1.000000)
  mad r5.w, r5.w, r8.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 815
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r7.w, r5.w  // r5.w <- <NormalDistributionGGX_id242 return value>

#line 1192
  mul r17.xyz, r6.wwww, r17.xyzx
  mul r17.xyz, r5.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1363
  mad r12.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1349
  iadd r4.w, r4.w, l(1)

#line 1365
endloop   // r3.w <- streams.lightIndex_id187

#line 1379
ilt r1.w, l(0), cb0[28].x
if_nz r1.w

#line 662
  add r2.xyw, -r1.xyxz, cb0[29].xyxz  // r2.x <- lightVector.x; r2.y <- lightVector.y; r2.w <- lightVector.z

#line 663
  dp3 r1.w, r2.xywx, r2.xywx
  sqrt r3.w, r1.w  // r3.w <- lightVectorLength

#line 664
  div r2.xyw, r2.xyxw, r3.wwww  // r2.x <- lightVectorNorm.x; r2.y <- lightVectorNorm.y; r2.w <- lightVectorNorm.z

#line 541
  max r3.w, r1.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 370
  mul r1.w, r1.w, cb0[31].z  // r1.w <- factor

#line 371
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 372
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id136 return value>

#line 542
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 533
  dp3 r3.w, -cb0[30].xyzx, r2.xywx  // r3.w <- cd

#line 534
  mad_sat r3.w, r3.w, cb0[31].x, cb0[31].y  // r3.w <- attenuation

#line 535
  mul r3.w, r3.w, r3.w

#line 670
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 1122
  dp3 r3.w, r0.xyzx, r2.xywx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 783
  add r4.w, -r3.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 784
  mul r5.w, cb0[33].z, cb0[48].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 912
  mad r8.xyz, r4.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 776
  mov r8.w, l(1.000000)
  dp4 r1.x, r8.xyzw, cb0[34].xyzw  // r1.x <- shadowPosition.x
  dp4 r1.y, r8.xyzw, cb0[35].xyzw  // r1.y <- shadowPosition.y
  dp4 r4.w, r8.xyzw, cb0[36].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.w, r8.xyzw, cb0[37].xyzw  // r5.w <- shadowPosition.w

#line 777
  add r1.z, r4.w, -cb0[47].x  // r1.z <- shadowPosition.z

#line 778
  div r1.xyz, r1.xyzx, r5.wwww

#line 526
  mad r1.xy, r1.xyxx, cb0[33].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r7.zw, r1.xxxy  // r7.z <- base_uv.x; r7.w <- base_uv.y

#line 527
  add r1.xy, r1.xyxx, -r7.zwzz  // r1.x <- st.x; r1.y <- st.y

#line 528
  add r7.zw, r7.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)

#line 529
  mul r7.zw, r7.zzzw, cb0[33].zzzw

#line 462
  mad r8.xy, -r1.yxyy, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)  // r8.x <- uvW0.y; r8.y <- uvW0.x

#line 463
  mad r8.zw, r1.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r8.z <- uvW1.x; r8.w <- uvW1.y

#line 464
  add r9.xy, -r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)
  div r9.xy, r9.xyxx, r8.yxyy
  add r9.zw, r9.xxxy, l(0.000000, 0.000000, -1.000000, -1.000000)  // r9.z <- uv0.x; r9.w <- uv0.y

#line 465
  div r1.xy, r1.xyxx, r8.zwzz
  add r9.xy, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uv1.x; r9.y <- uv1.y

#line 469
  mul r1.xy, r8.xwxx, r8.yzyy

#line 467
  mad r10.xyzw, r9.zwxw, cb0[33].zwzw, r7.zwzw

#line 468
  mul r8.xy, r8.xyxx, r8.zwzz

#line 469
  mad r9.xyzw, r9.zyxy, cb0[33].zwzw, r7.zwzw

#line 493
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r10.xyxx, t0.xxxx, s1, r1.z  // r4.w <- <SampleTextureAndCompare_id150 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r10.zwzz, t0.xxxx, s1, r1.z  // r5.w <- <SampleTextureAndCompare_id150 return value>

#line 654
  mul r5.w, r5.w, r8.x
  mad r1.x, r1.x, r4.w, r5.w  // r1.x <- shadow

#line 493
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.xyxx, t0.xxxx, s1, r1.z  // r4.w <- <SampleTextureAndCompare_id150 return value>

#line 654
  mad r1.x, r8.y, r4.w, r1.x

#line 493
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.z, r9.zwzz, t0.xxxx, s1, r1.z  // r1.z <- <SampleTextureAndCompare_id150 return value>

#line 654
  mad r1.x, r1.y, r1.z, r1.x

#line 656
  mul r1.x, r1.x, l(0.062500)

#line 1124
  mul r1.yzw, r1.wwww, cb0[32].xxyz
  mul r1.xyz, r1.xxxx, r1.yzwy
  mul r1.xyz, r3.wwww, r1.xyzx  // r1.x <- streams.lightColorNdotL_id44.x; r1.y <- streams.lightColorNdotL_id44.y; r1.z <- streams.lightColorNdotL_id44.z

#line 1202
  mad r3.xyz, r3.xyzx, r0.wwww, r2.xywx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.H_id75.x; r3.y <- streams.H_id75.y; r3.z <- streams.H_id75.z

#line 1203
  dp3_sat r0.w, r0.xyzx, r3.xyzx  // r0.w <- streams.NdotH_id76

#line 1204
  dp3_sat r1.w, r2.xywx, r3.xyzx  // r1.w <- streams.LdotH_id77

#line 1198
  mul r2.xyw, r1.xyxz, r5.xyxz

#line 1383
  mad r2.xyw, r2.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.w <- directLightingContribution.z

#line 701
  add r3.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r4.w, r1.w, r1.w
  mul r4.w, r4.w, r4.w
  mul r1.w, r1.w, r4.w
  mad r3.xyz, r3.xyzx, r1.wwww, r6.xyzx  // r3.x <- <FresnelSchlick_id212 return value>.x; r3.y <- <FresnelSchlick_id212 return value>.y; r3.z <- <FresnelSchlick_id212 return value>.z

#line 696
  mul r1.w, r2.z, l(0.500000)  // r1.w <- k

#line 697
  mad r4.w, -r2.z, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r4.w, r1.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id228 return value>
  mad r1.w, r7.y, r4.w, r1.w
  div r1.w, r7.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id228 return value>

#line 819
  mul r1.w, r1.w, r5.w
  mul r3.w, r7.y, r3.w
  div r1.w, r1.w, r3.w  // r1.w <- <VisibilitySmithSchlickGGX_id230 return value>

#line 813
  mul r3.w, r2.z, r2.z  // r3.w <- alphaR2

#line 814
  mul r0.w, r0.w, r0.w
  mad r4.w, r2.z, r2.z, l(-1.000000)
  mad r0.w, r0.w, r4.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 815
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r3.w, r0.w  // r0.w <- <NormalDistributionGGX_id242 return value>

#line 1192
  mul r3.xyz, r1.wwww, r3.xyzx
  mul r3.xyz, r0.wwww, r3.xyzx
  mul r1.xyz, r1.xyzx, r3.xyzx

#line 1387
  mad r12.xyz, r1.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r2.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1388
endif 

#line 892
sqrt r0.w, r2.z
add r7.x, -r0.w, l(1.000000)  // r7.x <- glossiness

#line 893
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r7.xyxx, t2.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 894
mad r1.xyz, r6.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id392 return value>.x; r1.y <- <Compute_id392 return value>.y; r1.z <- <Compute_id392 return value>.z

#line 1105
mul r2.xyz, r1.xyzx, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id571 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id571 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id571 return value>.z

#line 1401
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1094
dp3 r1.w, r0.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.x, r0.xyzx, cb2[100].xyzx  // r3.x <- sampleDirection.z

#line 755
mul r3.y, r2.w, r2.w  // r3.y <- y2

#line 756
mul r3.z, r3.x, r3.x  // r3.z <- z2

#line 760
mad r6.xyz, cb2[90].xyzx, r2.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 761
mad r6.xyz, cb2[91].xyzx, -r3.xxxx, r6.xyzx

#line 762
mad r6.xyz, cb2[92].xyzx, r1.wwww, r6.xyzx

#line 765
mul r7.xyz, r2.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r1.wwww, r6.xyzx

#line 766
mul r7.xyz, r2.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r3.xxxx, r6.xyzx

#line 767
mad r2.w, r3.z, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[95].xyzx, r2.wwww, r6.xyzx

#line 768
mul r7.xyz, r1.wwww, cb2[96].xyzx
mad r3.xzw, r7.xxyz, -r3.xxxx, r6.xxyz  // r3.x <- color.x; r3.z <- color.y; r3.w <- color.z

#line 769
mad r1.w, r1.w, r1.w, -r3.y
mad r3.xyz, cb2[97].xyzx, r1.wwww, r3.xzwx  // r3.y <- color.y; r3.z <- color.z

#line 1096
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightDiffuseColor_id47.x; r3.y <- streams.envLightDiffuseColor_id47.y; r3.z <- streams.envLightDiffuseColor_id47.z

#line 1097
dp3 r1.w, -r4.xyzx, r0.xyzx
add r1.w, r1.w, r1.w
mad r0.xyz, r0.xyzx, -r1.wwww, -r4.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z

#line 1098
dp3 r4.x, r0.xyzx, cb2[98].xyzx  // r4.x <- sampleDirection.x
dp3 r4.y, r0.xyzx, cb2[99].xyzx  // r4.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb2[100].xyzx  // r0.x <- sampleDirection.z

#line 1099
mov r4.z, -r0.x  // r4.z <- sampleDirection.z

#line 878
mul r0.x, r0.w, cb2[97].w  // r0.x <- mipLevel

#line 879
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r4.xyzx, t8.xyzw, s0, r0.x  // r0.x <- <Compute_id342 return value>.x; r0.y <- <Compute_id342 return value>.y; r0.z <- <Compute_id342 return value>.z

#line 1100
mul r0.xyz, r0.xyzx, cb2[102].xxxx  // r0.x <- streams.envLightSpecularColor_id48.x; r0.y <- streams.envLightSpecularColor_id48.y; r0.z <- streams.envLightSpecularColor_id48.z

#line 1409
mad r2.xyz, r5.xyzx, r3.xyzx, r2.xyzx

#line 1413
mad r0.xyz, r1.xyzx, r0.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1428
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1550
utof o1.xyzw, cb0[26].xxxx

#line 1619
mov o0.w, l(1.000000)
ret 
// Approximately 523 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id158 = 1;
const static int TCascadeCountBase_id164 = 4;
const static int TLightCountBase_id165 = 1;
const static int TCascadeCount_id172 = 4;
const static int TLightCount_id173 = 1;
const static bool TBlendCascades_id174 = true;
const static bool TDepthRangeAuto_id175 = true;
const static bool TCascadeDebug_id176 = false;
const static bool TComputeTransmittance_id177 = false;
const static int TFilterSize_id179 = 5;
const static int TMaxLightCount_id196 = 1;
const static int TCascadeCountBase_id202 = 1;
const static int TLightCountBase_id203 = 1;
const static bool TCascadeDebug_id211 = false;
const static int TFilterSize_id212 = 3;
const static int TOrder_id215 = 3;
const static int TOrder_id217 = 3;
const static bool TInvert_id240 = true;
const static bool TIsEnergyConservative_id252 = false;
static const float PI_id254 = 3.14159265358979323846;
static const float3 QuadPositions_id146[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id147[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id180;
    float3 normalWS_id19;
    float PSize_id151;
    float2 TexCoord_id131;
    float4 PositionWS_id22;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
    float DepthVS_id23;
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
    float4 ColorPerParticle_ShaderFXResult_0_id225;
    float Input_1_id233;
    float Input_2_id242;
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
    float thicknessWS_id156;
    float3 shadowColor_id155;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id186;
    int lightIndex_id187;
    float Depth_id10;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
};
struct PS_INPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float PSize_id151 : PSIZE_ID151_SEM;
    float2 TexCoord_id131 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
    float3 normalWS_id19 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id153;
    float4 ScreenPosition_id180;
    float3 normalWS_id19;
    uint InstanceID_id13;
    float4 PositionWS_id22;
    float PSize_id151;
    float2 TexCoord_id131;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float PSize_id151 : PSIZE_ID151_SEM;
    float2 TexCoord_id131 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
    float3 normalWS_id19 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id153 : VID_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
    float3 normalWS_id19 : NORMALWS;
};
struct VS_STREAMS 
{
    uint VertexID_id152;
    float4 Position_id21;
    float3 normalWS_id19;
    uint VID_id153;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    float4 ScreenPosition_id180;
};
struct VS_OUTPUT 
{
    uint VID_id153 : VID_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
    float3 normalWS_id19 : NORMALWS;
};
struct VS_INPUT 
{
    uint VertexID_id152 : SV_VertexID;
    float4 Position_id21 : POSITION;
    float3 normalWS_id19 : NORMALWS;
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
    uint MaterialIndex_id154;
    float4 _padding_PerDraw_Default;
    int LightCount_id195;
    SpotLightData Lights_id197[TMaxLightCount_id196];
    float2 ShadowMapTextureSize_id199;
    float2 ShadowMapTextureTexelSize_id200;
    float4x4 WorldToShadowCascadeUV_id204[TCascadeCountBase_id202 * TLightCountBase_id203];
    float4x4 InverseWorldToShadowCascadeUV_id205[TCascadeCountBase_id202 * TLightCountBase_id203];
    float4x4 ViewMatrices_id206[TCascadeCountBase_id202 * TLightCountBase_id203];
    float2 DepthRanges_id207[TCascadeCountBase_id202 * TLightCountBase_id203];
    float DepthBiases_id208[TLightCountBase_id203];
    float OffsetScales_id209[TLightCountBase_id203];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float ParticleSize_id150 = 0.1;
    float InputValue_id234;
    float InputValue_id243;
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
    float NearClipPlane_id181 = 1.0f;
    float FarClipPlane_id182 = 100.0f;
    float2 ZProjection_id183;
    float2 ViewSize_id184;
    float AspectRatio_id185;
    float4 _padding_PerView_Default;
    int LightCount_id157;
    DirectionalLightData Lights_id159[TMaxLightCount_id158];
    float2 ShadowMapTextureSize_id161;
    float2 ShadowMapTextureTexelSize_id162;
    float4x4 WorldToShadowCascadeUV_id166[TCascadeCountBase_id164 * TLightCountBase_id165];
    float4x4 InverseWorldToShadowCascadeUV_id167[TCascadeCountBase_id164 * TLightCountBase_id165];
    float4x4 ViewMatrices_id168[TCascadeCountBase_id164 * TLightCountBase_id165];
    float2 DepthRanges_id169[TCascadeCountBase_id164 * TLightCountBase_id165];
    float DepthBiases_id170[TLightCountBase_id165];
    float OffsetScales_id171[TLightCountBase_id165];
    float CascadeDepthSplits_id178[TCascadeCount_id172 * TLightCount_id173];
    float ClusterDepthScale_id190;
    float ClusterDepthBias_id191;
    float2 ClusterStride_id192;
    float3 AmbientLight_id213;
    float3 SphericalColors_id218[TOrder_id217 * TOrder_id217];
    float MipCount_id219;
    float4x4 SkyMatrix_id221;
    float Intensity_id222;
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
Texture2D ShadowMapTexture_id198;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id149;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id226;
Texture2D EnvironmentLightingDFG_LUT_id255;
Texture2D ShadowMapTexture_id160;
Texture3D<uint2> LightClusters_id188;
Buffer<uint> LightIndices_id189;
Buffer<float4> PointLights_id193;
Buffer<float4> SpotLights_id194;
TextureCube CubeMap_id220;
float4 Project_id92(float4 vec, float4x4 mat)
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
float SmoothDistanceAttenuation_id125(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id114(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id102(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id162, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id162, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id162, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id162, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id101(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id162, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id162, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id162, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id162, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id162, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id162, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id162, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id162, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id162, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id103(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id160.SampleLevel(LinearBorderSampler_id114, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id92(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id99(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id162, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id162, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id162, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id162, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id162, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id162, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id162, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id162, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id162, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id162, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id162, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id162, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id162, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id162, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id162, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id162, uvW3.x * uvW3.y);
    return 2704.0;
}
float Get3x3FilterKernel_id152(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id200, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id200, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id200, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id200, uvW1.x * uvW1.y);
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id200, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id200, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id200, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id200, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id200, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id200, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id200, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id200, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id200, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id150(float2 position, float positionDepth)
{
    return ShadowMapTexture_id198.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id115, position, positionDepth);
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id200, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id200, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id200, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id200, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id200, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id200, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id200, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id200, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id200, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id200, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id200, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id200, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id200, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id200, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id200, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id200, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id148(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id199;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id200;
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
float GetAngularAttenuation_id127(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id126(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id125(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id116(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id114(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id107(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id161;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id162;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id101(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id103(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id106(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id92(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id92(float4(ShadowMapTextureTexelSize_id162.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id92(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id105(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id92(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id92(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id162.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id92(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id104()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id100(float2 position, float positionDepth)
{
    return ShadowMapTexture_id160.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id115, position, positionDepth);
}
void CalculatePCFKernelParameters_id98(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id161;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id162;
}
float Compute_id380()
{
    return InputValue_id243;
}
float Compute_id368()
{
    return InputValue_id234;
}
float4 Compute_id356(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id226[id];
    return float4(p.Col, 1);
}
float FilterShadow_id144(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id148(position, base_uv, st);

    {
        float3 kernel[4];
        float normalizationFactor = Get3x3FilterKernel_id152(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
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
float ComputeAttenuation_id128(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id126(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id127(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id115(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id116(lightVectorLength, lightInvSquareRadius);
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
float FilterThickness_id94(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id106(GetFilterRadiusInPixels_id104(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id105(GetFilterRadiusInPixels_id104(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id107(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id93(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id98(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id101(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id100(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id383(inout PS_STREAMS streams)
{
    streams.Input_2_id242 = Compute_id380();
}
void Compute_id371(inout PS_STREAMS streams)
{
    streams.Input_1_id233 = Compute_id368();
}
void Compute_id359(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id225 = Compute_id356(streams);
}
float4 EvaluateSphericalHarmonics_id166(float3 sphericalColors[TOrder_id215 * TOrder_id215], float3 direction)
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
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id204[cascadeIndex + lightIndex * TCascadeCountBase_id202]);
    shadowPosition.z -= DepthBiases_id208[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id144(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id146(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id200.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id140(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id139(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id129(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id128(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id118(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id115(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id242(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id254 * d * d);
}
float VisibilitySmithSchlickGGX_id230(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id228(alphaR, nDotL) * VisibilityhSchlickGGX_id228(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id218(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id212(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id97(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id164;
    return FilterThickness_id94(pixelPositionWS, meshNormalWS, DepthRanges_id169[arrayIndex], WorldToShadowCascadeUV_id166[arrayIndex], InverseWorldToShadowCascadeUV_id167[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id96(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id166[cascadeIndex + lightIndex * TCascadeCountBase_id164]);
    shadowPosition.z -= DepthBiases_id170[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id93(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id95(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id162.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id386(inout PS_STREAMS streams)
{
    return streams.Input_2_id242;
}
void Compute_id385(inout PS_STREAMS streams)
{

    {
        Compute_id383(streams);
    }
}
float Compute_id374(inout PS_STREAMS streams)
{
    return streams.Input_1_id233;
}
void Compute_id373(inout PS_STREAMS streams)
{

    {
        Compute_id371(streams);
    }
}
float4 Compute_id362(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id225;
}
void Compute_id361(inout PS_STREAMS streams)
{

    {
        Compute_id359(streams);
    }
}
float4 Compute_id342(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id219;
    return CubeMap_id220.SampleLevel(LinearSampler_id113, direction, mipLevel);
}
float4 Compute_id337(float3 direction)
{
    return EvaluateSphericalHarmonics_id166(SphericalColors_id218, direction);
}
void PrepareEnvironmentLight_id170(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id392(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id255.SampleLevel(LinearSampler_id113, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id161(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
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
    shadowPosition += GetShadowPositionOffset_id146(OffsetScales_id209[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id147(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id156 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id132(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id197[lightIndex].PositionWS;
    data.DirectionWS = Lights_id197[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id197[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id197[lightIndex].Color;
    ProcessLight_id140(streams, data);
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
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id121(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id189.Load(streams.lightIndex_id187);
    streams.lightIndex_id187++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id194.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id194.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id194.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id194.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id129(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id113(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id112(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id111(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id110(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id189.Load(streams.lightIndex_id187);
    streams.lightIndex_id187++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id193.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id193.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id118(streams, pointLight);
}
void PrepareLightData_id117(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id183.y / (projectedDepth - ZProjection_id183.x);
    float2 texCoord = float2(streams.ScreenPosition_id180.x + 1, 1 - streams.ScreenPosition_id180.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id190 + ClusterDepthBias_id191), 0));
    streams.lightData_id186 = LightClusters_id188.Load(int4(texCoord * ClusterStride_id192, slice, 0));
    streams.lightIndex_id187 = streams.lightData_id186.x;
}
float Compute_id484(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id242(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id454(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id230(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id424(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id218(f0, streams.LdotH_id77);
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
    int cascadeIndexBase = lightIndex * TCascadeCount_id172;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id172 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id178[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id95(OffsetScales_id171[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id172)
    {
        shadow = ComputeShadowFromCascade_id96(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id178[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id178[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id172 - 1)
            {
            }
            else if (TBlendCascades_id174)
            {
                float nextShadow = ComputeShadowFromCascade_id96(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id156 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id159[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id159[lightIndex].DirectionWS;
}
float Compute_id389(inout PS_STREAMS streams)
{
    Compute_id385(streams);
    return Compute_id386(streams);
}
float Compute_id377(inout PS_STREAMS streams)
{
    Compute_id373(streams);
    return Compute_id374(streams);
}
float4 Compute_id365(inout PS_STREAMS streams)
{
    Compute_id361(streams);
    return Compute_id362(streams);
}
void ResetStream_id245()
{
}
void AfterLightingAndShading_id541()
{
}
void AfterLightingAndShading_id522()
{
}
void PrepareEnvironmentLight_id355(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id352(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id170(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id221);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id337(sampleDirection).rgb * Intensity_id222 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id221);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id342(streams, sampleDirection).rgb * Intensity_id222 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id571(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id392(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id515(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id347(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id161(streams);
    float3 lightColor = AmbientLight_id213 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id304(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id132(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id133(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id134(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id135(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id306()
{
    return LightCount_id195;
}
int GetMaxLightCount_id307()
{
    return TMaxLightCount_id196;
}
void PrepareDirectLights_id302()
{
}
void PrepareDirectLight_id292(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id121(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id122(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id123(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id124(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id296(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y >> 16;
}
int GetMaxLightCount_id295(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y >> 16;
}
void PrepareDirectLights_id290()
{
}
void PrepareDirectLight_id279(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id110(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id111(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id112(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id113(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id284(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y & 0xFFFF;
}
int GetMaxLightCount_id283(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y & 0xFFFF;
}
void PrepareDirectLights_id282(inout PS_STREAMS streams)
{
    PrepareLightData_id117(streams);
}
float3 ComputeDirectLightContribution_id570(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id424(streams, specularColor);
    float geometricShadowing = Compute_id454(streams);
    float normalDistribution = Compute_id484(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id514(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id254 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id255(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id87(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id88(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id89(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id257()
{
    return LightCount_id157;
}
int GetMaxLightCount_id258()
{
    return TMaxLightCount_id158;
}
void PrepareDirectLights_id253()
{
}
void PrepareForLightingAndShading_id538()
{
}
void PrepareForLightingAndShading_id519()
{
}
void PrepareMaterialForLightingAndShading_id244(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id243(inout PS_STREAMS streams)
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
float4 Compute_id391(inout PS_STREAMS streams)
{
    float x = Compute_id389(streams);
    return float4(x, x, x, x);
}
float4 Compute_id379(inout PS_STREAMS streams)
{
    float x = Compute_id377(streams);
    return float4(x, x, x, x);
}
float4 Compute_id367(inout PS_STREAMS streams)
{
    return Compute_id365(streams);
}
void ResetStream_id246(inout PS_STREAMS streams)
{
    ResetStream_id245();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id602(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id243(streams);
    PrepareMaterialForLightingAndShading_id244(streams);

    {
        PrepareForLightingAndShading_id519();
    }

    {
        PrepareForLightingAndShading_id538();
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id570(streams);
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id570(streams);
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id570(streams);
            }
        }
    }

    {
        PrepareDirectLights_id302();
        const int maxLightCount = GetMaxLightCount_id307();
        int count = GetLightCount_id306();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id304(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id570(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id347(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id515(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id571(streams);
        }
    }

    {
        PrepareEnvironmentLight_id352(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id515(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id571(streams);
        }
    }

    {
        PrepareEnvironmentLight_id355(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id515(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id571(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id254 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id522();
    }

    {
        AfterLightingAndShading_id541();
    }
}
void Compute_id586(inout PS_STREAMS streams)
{
    float metalness = Compute_id391(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id581(inout PS_STREAMS streams)
{
    float glossiness = Compute_id379(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id576(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id367(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id247(inout PS_STREAMS streams)
{
    ResetStream_id246(streams);
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
void Compute_id83(inout PS_STREAMS streams)
{

    {
        Compute_id576(streams);
    }

    {
        Compute_id581(streams);
    }

    {
        Compute_id586(streams);
    }

    {
        Compute_id602(streams);
    }
}
void ResetStream_id82(inout PS_STREAMS streams)
{
    ResetStream_id247(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id82(streams);
    Compute_id83(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
float4 StrideShadingWorldNormal_id33(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id22 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id22, ViewProjection_id29);
    streams.normalWS_id19 = normal;
    streams.meshNormalWS_id17 = normal;
    streams.DepthVS_id23 = posWVP.w;
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
    normal = normalize(mul(float4(normal, 0), ViewInverse_id26).xyz);
    pos = float4((normal * sphereRadius) + spherePos, 1);
}
void PostTransformPosition_id59(inout VS_STREAMS streams)
{
    streams.VID_id153 = streams.VertexID_id152;
    streams.InstanceID_id13 = streams.VertexID_id152;
    streams.ShadingPosition_id0 = streams.Position_id21;
}
void TransformPosition_id58()
{
}
void PreTransformPosition_id57()
{
}
float4 Compute_id81()
{
    return MaterialIndex_id154;
}
float4 Shading_id63(inout PS_STREAMS streams)
{
    float size = streams.PSize_id151;
    float2 mapping = streams.TexCoord_id131;
    float3 worldPos, worldNormal;
    sphereImpostorSimple_id62(mapping, streams.PositionWS_id22.xyz, size, worldPos, worldNormal);
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
    streams.ColorTarget1_id3 = Compute_id81();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
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
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.PSize_id151 = __input__.PSize_id151;
    streams.TexCoord_id131 = __input__.TexCoord_id131;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.ScreenPosition_id180 = __input__.ScreenPosition_id180;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id180 /= streams.ScreenPosition_id180.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id153 = input[0].VID_id153;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id180 = input[0].ScreenPosition_id180;
    streams.normalWS_id19 = input[0].normalWS_id19;
    uint id = streams.VID_id153;
    SMGridParticle p = ParticlesBuffer_id149[id];
    streams.PositionWS_id22 = mul(float4(p.Pos.xyz, 1), World_id32);
    streams.PSize_id151 = ParticleSize_id150 * p.Size.x * 0.5;
    if (streams.PSize_id151 <= 0)
        return;
    float padding = 1.5;
    float2 offset;
    float4 posView = mul(streams.PositionWS_id22, View_id25);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id131 = QuadUV_id147[i].xy * 2 - 1;
        float4 viewCornerPos = float4(posView.xyz + QuadPositions_id146[i].xyz * streams.PSize_id151, 1);
        streams.ShadingPosition_id0 = mul(viewCornerPos, Projection_id27);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id22 = streams.PositionWS_id22;
            output.PSize_id151 = streams.PSize_id151;
            output.TexCoord_id131 = streams.TexCoord_id131;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.ScreenPosition_id180 = streams.ScreenPosition_id180;
            output.normalWS_id19 = streams.normalWS_id19;
            output.InstanceID_id13 = streams.InstanceID_id13;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id152 = __input__.VertexID_id152;
    streams.Position_id21 = __input__.Position_id21;
    streams.normalWS_id19 = __input__.normalWS_id19;
    VSMain_id19(streams);
    streams.ScreenPosition_id180 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id153 = streams.VID_id153;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id180 = streams.ScreenPosition_id180;
    __output__.normalWS_id19 = streams.normalWS_id19;
    return __output__;
}

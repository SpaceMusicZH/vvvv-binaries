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
@P VLEffectParameters.MaterialExtensionShader: mixin SMBoxImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    ParticleSize_id152 => SMBoxImpostor_ShaderFX.ParticleSize
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
@R    ParticlesBuffer_id151 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
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
@R    ParticlesBuffer_id151 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
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
@S    SMBoxImpostor_ShaderFX => efbdbc1ae78a0168b59de5a895721a02
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    TransformUtils => 651146ed53d019a2c2c72b489f9cff84
@S    HappyTransform => 40e380fb8141f7a8a6b741a8bd03a993
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
@G    Vertex => 3cfb4de731ae6129b0084ee745eb0452
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
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_input v1.xyzw
dcl_output o0.x
dcl_output o0.y
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.VertexID_id154; 
//   v1.x <- __input__.Position_id23.x; v1.y <- __input__.Position_id23.y; v1.z <- __input__.Position_id23.z; v1.w <- __input__.Position_id23.w; 
//   o2.x <- <VSMain return value>.ScreenPosition_id182.x; o2.y <- <VSMain return value>.ScreenPosition_id182.y; o2.z <- <VSMain return value>.ScreenPosition_id182.z; o2.w <- <VSMain return value>.ScreenPosition_id182.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id155; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 1695 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_b98092437b918ecadc3c3c80cdca5982.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
ret 
// Approximately 4 instruction slots used
@G    Geometry => 1cbd57f4e2468a88730bc260b9dc2eca
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
//   float4x4 View_id27;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id29;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// NORMALWS                 0   xyz         1     NONE   float   xyz 
// DEPTH_VS                 0      w        1     NONE   float      w
// SV_Position              0   xyzw        2      POS   float   xyzw
// SCREENPOSITION_ID182_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[7], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[22], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v[1][0].x
dcl_input v[1][0].y
dcl_input_siv v[1][1].xyzw, position
dcl_input v[1][2].xyzw
dcl_temps 10
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o1.w
dcl_output_siv o2.xyzw, position
dcl_output o3.xyzw
dcl_output o4.x
dcl_maxout 12
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].VID_id155; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id182.x; v[0][2].y <- input[0].ScreenPosition_id182.y; v[0][2].z <- input[0].ScreenPosition_id182.z; v[0][2].w <- input[0].ScreenPosition_id182.w
//
#line 1660 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_b98092437b918ecadc3c3c80cdca5982.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v[0][0].x, l(24), t0.xyzw  // r0.x <- p.Rot.x; r0.y <- p.Rot.y; r0.z <- p.Rot.z; r0.w <- p.Size.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xy, v[0][0].x, l(40), t0.xyxx  // r1.x <- p.Size.y; r1.y <- p.Size.z

#line 1662
mov r1.z, r0.w
mul r1.xyz, r1.zxyz, cb1[0].xxxx  // r1.x <- streams.PSize_id153.x; r1.y <- streams.PSize_id153.y; r1.z <- streams.PSize_id153.z

#line 1663
dp3 r0.w, r1.xyzx, r1.xyzx
ge r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1664
  ret 
endif 

#line 1660
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, v[0][0].x, l(0), t0.xyzx  // r2.x <- p.Pos.x; r2.y <- p.Pos.y; r2.z <- p.Pos.z

#line 1623
mul r0.xyz, r0.xyzx, l(-6.283185, 6.283185, -6.283185, 0.000000)  // r0.x <- z.x; r0.y <- z.y; r0.z <- z.z

#line 1624
sincos r0.xyz, r3.xyz, r0.xyzx  // r3.x <- x.x; r3.y <- x.y; r3.z <- x.z; r0.x <- y.x; r0.y <- y.y; r0.z <- y.z

#line 1625
mul r4.xyz, r3.zzyz, r3.yxxy  // r4.y <- <rot3x3_id67 return value>._m11; r4.z <- <rot3x3_id67 return value>._m22
mul r0.w, r0.y, r0.x
mad r5.x, r0.w, r0.z, r4.x  // r5.x <- <rot3x3_id67 return value>._m00
mul r5.y, r0.z, -r3.x  // r5.y <- <rot3x3_id67 return value>._m01
mul r6.xyzw, r0.xyzy, r3.yzyx  // r6.w <- <rot3x3_id67 return value>._m20

#line 1672
mov r7.xy, r6.ywyy
mov r7.z, r0.x
mov r7.w, r4.z

#line 1625
mad r5.z, r6.x, r0.z, -r7.x  // r5.z <- <rot3x3_id67 return value>._m02
mad r4.x, -r0.w, r3.z, r6.z  // r4.x <- <rot3x3_id67 return value>._m10
mul r0.x, r3.z, r6.x
mad r4.z, -r0.y, r0.z, -r0.x  // r4.z <- <rot3x3_id67 return value>._m12

#line 1669
mov r0.xyz, cb2[21].xyzx
mov r0.w, l(1.000000)
dp4 r3.x, r0.xyzw, cb0[4].xyzw
dp4 r3.y, r0.xyzw, cb0[5].xyzw
dp4 r3.z, r0.xyzw, cb0[6].xyzw
add r0.xyz, -r2.xyzx, r3.xyzx  // r0.x <- viewDir.x; r0.y <- viewDir.y; r0.z <- viewDir.z

#line 1670
dp3 r0.w, r0.xyzx, r7.yzwy
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1591
  dp3 r3.x, r7.yzwy, cb0[0].xyzx
  dp3 r3.y, r7.yzwy, cb0[1].xyzx
  dp3 r3.z, r7.yzwy, cb0[2].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- normal.x; r3.y <- normal.y; r3.z <- normal.z

#line 1601
  mov r6.w, l(1.000000)

#line 1593
  mov r0.w, l(0)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(4)
    breakc_nz r1.w

#line 1573
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 1574
    and r8.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r8.xyz, r8.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r8.x <- <CubeVert_id91 return value>.x; r8.y <- <CubeVert_id91 return value>.y; r8.z <- <CubeVert_id91 return value>.z

#line 1598
    mul r9.xyz, r5.xyzx, r8.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1599
    mul r8.xyw, r4.xyxz, r8.yyyy
    mad r8.xyw, r8.xyxw, r1.yyyy, r9.xyxz  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.w <- posWorld.z

#line 1600
    mul r9.xyz, r7.yzwy, r8.zzzz
    mad r6.xyz, r9.xyzx, r1.zzzz, r8.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1601
    dp4 r8.x, r6.xyzw, cb0[0].xyzw  // r8.x <- posWorld.x
    dp4 r8.y, r6.xyzw, cb0[1].xyzw  // r8.y <- posWorld.y
    dp4 r8.z, r6.xyzw, cb0[2].xyzw  // r8.z <- posWorld.z
    dp4 r8.w, r6.xyzw, cb0[3].xyzw  // r8.w <- posWorld.w

#line 1605
    dp4 r1.w, r8.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r8.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.w, r8.xyzw, cb2[18].xyzw  // r3.w <- streams.ShadingPosition_id0.z
    dp4 r5.w, r8.xyzw, cb2[19].xyzw  // r5.w <- streams.ShadingPosition_id0.w

#line 1616
    mov o0.xyzw, r8.xyzw
    mov o1.xyz, r3.xyzx
    mov o1.w, r5.w
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.w
    mov o2.w, r5.w
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1618
    iadd r0.w, r0.w, l(1)
  endloop 

#line 1619
  cut_stream m0

#line 1671
endif 

#line 1672
dp3 r0.w, r0.xyzx, -r7.yzwy
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1591
  dp3 r3.x, -r7.yzwy, cb0[0].xyzx
  dp3 r3.y, -r7.yzwy, cb0[1].xyzx
  dp3 r3.z, -r7.yzwy, cb0[2].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- normal.x; r3.y <- normal.y; r3.z <- normal.z

#line 1599
  mov r4.w, r4.y

#line 1601
  mov r6.w, l(1.000000)

#line 1593
  mov r0.w, l(4)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(8)
    breakc_nz r1.w

#line 1573
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 1574
    and r8.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r8.xyz, r8.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r8.x <- <CubeVert_id91 return value>.x; r8.y <- <CubeVert_id91 return value>.y; r8.z <- <CubeVert_id91 return value>.z

#line 1598
    mul r9.xyz, r5.xyzx, r8.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1599
    mul r8.xyw, r4.xwxz, r8.yyyy
    mad r8.xyw, r8.xyxw, r1.yyyy, r9.xyxz  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.w <- posWorld.z

#line 1600
    mul r9.xyz, r7.yzwy, r8.zzzz
    mad r6.xyz, r9.xyzx, r1.zzzz, r8.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1601
    dp4 r8.x, r6.xyzw, cb0[0].xyzw  // r8.x <- posWorld.x
    dp4 r8.y, r6.xyzw, cb0[1].xyzw  // r8.y <- posWorld.y
    dp4 r8.z, r6.xyzw, cb0[2].xyzw  // r8.z <- posWorld.z
    dp4 r8.w, r6.xyzw, cb0[3].xyzw  // r8.w <- posWorld.w

#line 1605
    dp4 r1.w, r8.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r8.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.w, r8.xyzw, cb2[18].xyzw  // r3.w <- streams.ShadingPosition_id0.z
    dp4 r5.w, r8.xyzw, cb2[19].xyzw  // r5.w <- streams.ShadingPosition_id0.w

#line 1616
    mov o0.xyzw, r8.xyzw
    mov o1.xyz, r3.xyzx
    mov o1.w, r5.w
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.w
    mov o2.w, r5.w
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1618
    iadd r0.w, r0.w, l(1)
  endloop 

#line 1619
  cut_stream m0

#line 1673
endif 

#line 1674
dp3 r0.w, r0.xyzx, r4.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1591
  dp3 r3.x, r4.xyzx, cb0[0].xyzx
  dp3 r3.y, r4.xyzx, cb0[1].xyzx
  dp3 r3.z, r4.xyzx, cb0[2].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- normal.x; r3.y <- normal.y; r3.z <- normal.z

#line 1601
  mov r6.w, l(1.000000)

#line 1593
  mov r0.w, l(8)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(12)
    breakc_nz r1.w

#line 1573
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 1574
    and r8.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r8.xyz, r8.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r8.x <- <CubeVert_id91 return value>.x; r8.y <- <CubeVert_id91 return value>.y; r8.z <- <CubeVert_id91 return value>.z

#line 1598
    mul r9.xyz, r5.xyzx, r8.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1599
    mul r8.xyw, r4.xyxz, r8.yyyy
    mad r8.xyw, r8.xyxw, r1.yyyy, r9.xyxz  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.w <- posWorld.z

#line 1600
    mul r9.xyz, r7.yzwy, r8.zzzz
    mad r6.xyz, r9.xyzx, r1.zzzz, r8.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1601
    dp4 r8.x, r6.xyzw, cb0[0].xyzw  // r8.x <- posWorld.x
    dp4 r8.y, r6.xyzw, cb0[1].xyzw  // r8.y <- posWorld.y
    dp4 r8.z, r6.xyzw, cb0[2].xyzw  // r8.z <- posWorld.z
    dp4 r8.w, r6.xyzw, cb0[3].xyzw  // r8.w <- posWorld.w

#line 1605
    dp4 r1.w, r8.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r8.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.w, r8.xyzw, cb2[18].xyzw  // r3.w <- streams.ShadingPosition_id0.z
    dp4 r4.w, r8.xyzw, cb2[19].xyzw  // r4.w <- streams.ShadingPosition_id0.w

#line 1616
    mov o0.xyzw, r8.xyzw
    mov o1.xyz, r3.xyzx
    mov o1.w, r4.w
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.w
    mov o2.w, r4.w
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1618
    iadd r0.w, r0.w, l(1)
  endloop 

#line 1619
  cut_stream m0

#line 1675
endif 

#line 1676
dp3 r0.w, r0.xyzx, -r4.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1591
  dp3 r3.x, -r4.xyzx, cb0[0].xyzx
  dp3 r3.y, -r4.xyzx, cb0[1].xyzx
  dp3 r3.z, -r4.xyzx, cb0[2].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- normal.x; r3.y <- normal.y; r3.z <- normal.z

#line 1601
  mov r6.w, l(1.000000)

#line 1593
  mov r0.w, l(12)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(16)
    breakc_nz r1.w

#line 1573
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 1574
    and r8.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r8.xyz, r8.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r8.x <- <CubeVert_id91 return value>.x; r8.y <- <CubeVert_id91 return value>.y; r8.z <- <CubeVert_id91 return value>.z

#line 1598
    mul r9.xyz, r5.xyzx, r8.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1599
    mul r8.xyw, r4.xyxz, r8.yyyy
    mad r8.xyw, r8.xyxw, r1.yyyy, r9.xyxz  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.w <- posWorld.z

#line 1600
    mul r9.xyz, r7.yzwy, r8.zzzz
    mad r6.xyz, r9.xyzx, r1.zzzz, r8.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1601
    dp4 r8.x, r6.xyzw, cb0[0].xyzw  // r8.x <- posWorld.x
    dp4 r8.y, r6.xyzw, cb0[1].xyzw  // r8.y <- posWorld.y
    dp4 r8.z, r6.xyzw, cb0[2].xyzw  // r8.z <- posWorld.z
    dp4 r8.w, r6.xyzw, cb0[3].xyzw  // r8.w <- posWorld.w

#line 1605
    dp4 r1.w, r8.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r8.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.w, r8.xyzw, cb2[18].xyzw  // r3.w <- streams.ShadingPosition_id0.z
    dp4 r4.w, r8.xyzw, cb2[19].xyzw  // r4.w <- streams.ShadingPosition_id0.w

#line 1616
    mov o0.xyzw, r8.xyzw
    mov o1.xyz, r3.xyzx
    mov o1.w, r4.w
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.w
    mov o2.w, r4.w
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1618
    iadd r0.w, r0.w, l(1)
  endloop 

#line 1619
  cut_stream m0

#line 1677
endif 

#line 1678
dp3 r0.w, r0.xyzx, r5.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1591
  dp3 r3.x, r5.xyzx, cb0[0].xyzx
  dp3 r3.y, r5.xyzx, cb0[1].xyzx
  dp3 r3.z, r5.xyzx, cb0[2].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- normal.x; r3.y <- normal.y; r3.z <- normal.z

#line 1601
  mov r6.w, l(1.000000)

#line 1593
  mov r0.w, l(16)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(20)
    breakc_nz r1.w

#line 1573
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 1574
    and r8.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r8.xyz, r8.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r8.x <- <CubeVert_id91 return value>.x; r8.y <- <CubeVert_id91 return value>.y; r8.z <- <CubeVert_id91 return value>.z

#line 1598
    mul r9.xyz, r5.xyzx, r8.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1599
    mul r8.xyw, r4.xyxz, r8.yyyy
    mad r8.xyw, r8.xyxw, r1.yyyy, r9.xyxz  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.w <- posWorld.z

#line 1600
    mul r9.xyz, r7.yzwy, r8.zzzz
    mad r6.xyz, r9.xyzx, r1.zzzz, r8.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1601
    dp4 r8.x, r6.xyzw, cb0[0].xyzw  // r8.x <- posWorld.x
    dp4 r8.y, r6.xyzw, cb0[1].xyzw  // r8.y <- posWorld.y
    dp4 r8.z, r6.xyzw, cb0[2].xyzw  // r8.z <- posWorld.z
    dp4 r8.w, r6.xyzw, cb0[3].xyzw  // r8.w <- posWorld.w

#line 1605
    dp4 r1.w, r8.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r8.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.w, r8.xyzw, cb2[18].xyzw  // r3.w <- streams.ShadingPosition_id0.z
    dp4 r4.w, r8.xyzw, cb2[19].xyzw  // r4.w <- streams.ShadingPosition_id0.w

#line 1616
    mov o0.xyzw, r8.xyzw
    mov o1.xyz, r3.xyzx
    mov o1.w, r4.w
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.w
    mov o2.w, r4.w
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1618
    iadd r0.w, r0.w, l(1)
  endloop 

#line 1619
  cut_stream m0

#line 1679
endif 

#line 1680
dp3 r0.x, r0.xyzx, -r5.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 1591
  dp3 r0.x, -r5.xyzx, cb0[0].xyzx
  dp3 r0.y, -r5.xyzx, cb0[1].xyzx
  dp3 r0.z, -r5.xyzx, cb0[2].xyzx
  dp3 r0.w, r0.xyzx, r0.xyzx
  rsq r0.w, r0.w
  mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1601
  mov r3.w, l(1.000000)

#line 1593
  mov r0.w, l(20)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(24)
    breakc_nz r1.w

#line 1573
    ishl r1.w, l(1), r0.w  // r1.w <- b

#line 1574
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 1598
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 1599
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 1600
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 1601
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1605
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 1616
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, r0.xyzx
    mov o1.w, r3.y
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.x
    mov o2.w, r3.y
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1618
    iadd r0.w, r0.w, l(1)
  endloop 

#line 1619
  cut_stream m0

#line 1681
endif 

#line 1682
ret 
// Approximately 302 instruction slots used
@G    Pixel => cf2ff062e7a90fd43d0f5b781741232a
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
//   float4x4 View_id27;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id29;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64 [unused]
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
// NORMALWS                 0   xyz         1     NONE   float   xyz 
// DEPTH_VS                 0      w        1     NONE   float      w
// SV_Position              0   xyzw        2      POS   float     z 
// SCREENPOSITION_ID182_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps_siv linear noperspective v2.z, position
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
//   v1.x <- __input__.normalWS_id21.x; v1.y <- __input__.normalWS_id21.y; v1.z <- __input__.normalWS_id21.z; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v1.w <- __input__.DepthVS_id25; 
//   v3.x <- __input__.ScreenPosition_id182.x; v3.y <- __input__.ScreenPosition_id182.y; v3.z <- __input__.ScreenPosition_id182.z; v3.w <- __input__.ScreenPosition_id182.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1642 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_b98092437b918ecadc3c3c80cdca5982.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id182.x; r0.y <- streams.ScreenPosition_id182.y

#line 1567
dp3 r0.z, v1.xyzx, v1.xyzx
lt r0.w, l(0.000000), r0.z

#line 1568
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z
movc r1.xyz, r0.wwww, r1.xyzx, v1.xyzx

#line 1511
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id70.x; r2.y <- streams.viewWS_id70.y; r2.z <- streams.viewWS_id70.z

#line 634
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v4.x, l(48), t1.xyzx  // r3.x <- p.Col.x; r3.y <- p.Col.y; r3.z <- p.Col.z

#line 1447
add r0.z, -cb1[0].y, l(1.000000)  // r0.z <- glossiness

#line 1439
add r4.xyz, r3.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].zzzz, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id57.x; r4.y <- streams.matSpecular_id57.y; r4.z <- streams.matSpecular_id57.z

#line 1440
mad r3.xyz, cb1[0].zzzz, -r3.xyzx, r3.xyzx  // r3.x <- streams.matDiffuse_id55.x; r3.y <- streams.matDiffuse_id55.y; r3.z <- streams.matDiffuse_id55.z

#line 1280
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z

#line 1237
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id74

#line 1238
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 1239
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id72

#line 837
dp2 r0.w, cb2[82].xxxx, cb2[28].zzzz

#line 829
mov r6.w, l(1.000000)

#line 1298
mov r1.w, r5.y  // r1.w <- streams.NdotV_id74
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id21.x; r7.y <- streams.normalWS_id21.y; r7.z <- streams.normalWS_id21.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id24.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id24.y; r8.y <- streams.PositionWS_id24.z
mov r8.zw, r2.xxxy  // r8.z <- streams.viewWS_id70.x; r8.w <- streams.viewWS_id70.y
mov r9.z, r2.z  // r9.z <- streams.viewWS_id70.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id72
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, v1.w  // r2.w <- streams.DepthVS_id25
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r5.z, r3.w, l(1)
  breakc_nz r5.z

#line 1300
  ige r5.z, r3.w, cb2[25].x
  if_nz r5.z

#line 1302
    break 

#line 1303
  endif 

#line 1207
  dp3 r5.z, r7.xyzx, -cb2[26].xyzx
  max r5.z, r5.z, l(0.000100)  // r5.z <- streams.NdotL_id51

#line 1011
  ishl r5.w, r3.w, l(2)  // r5.w <- cascadeIndexBase

#line 1018
  lt r9.w, cb2[r5.w + 83].x, r2.w

#line 1021
  and r9.w, r9.w, l(1)  // r9.w <- cascadeIndex

#line 1018
  bfi r13.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r3.wwww, l(1, 2, 0, 0)
  lt r10.w, cb2[r13.x + 83].x, r2.w

#line 1021
  movc r9.w, r10.w, l(2), r9.w

#line 1018
  lt r10.w, cb2[r13.y + 83].x, r2.w

#line 1021
  movc r9.w, r10.w, l(3), r9.w

#line 836
  add r12.w, -r5.z, l(1.000000)
  max r12.w, r12.w, l(0.000000)  // r12.w <- normalOffsetScale

#line 837
  mul r12.w, r0.w, r12.w

#line 1026
  mov r13.x, r7.w
  mov r13.yz, r8.xxyx
  mad r6.xyz, r12.wwww, r7.xyzx, r13.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 829
  bfi r12.w, l(30), l(2), r3.w, r9.w
  ishl r13.x, r9.w, l(2)
  bfi r13.x, l(30), l(4), r3.w, r13.x
  dp4 r14.x, r6.xyzw, cb2[r13.x + 29].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r6.xyzw, cb2[r13.x + 30].xyzw  // r14.y <- shadowPosition.y
  dp4 r13.y, r6.xyzw, cb2[r13.x + 31].xyzw  // r13.y <- shadowPosition.z
  dp4 r13.x, r6.xyzw, cb2[r13.x + 32].xyzw  // r13.x <- shadowPosition.w

#line 830
  add r14.z, r13.y, -cb2[81].x  // r14.z <- shadowPosition.z

#line 831
  div r13.xyz, r14.xyzx, r13.xxxx  // r13.x <- shadowPosition.x; r13.y <- shadowPosition.y; r13.z <- shadowPosition.z

#line 618
  mad r13.xy, r13.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 619
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- st.x; r13.y <- st.y

#line 620
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 621
  mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 433
  mad r15.xyzw, r13.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r15.x <- uvW1.x; r15.y <- uvW1.y

#line 434
  mad r16.xyzw, r13.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r16.x <- uvW0.y; r16.y <- uvW0.x

#line 436
  mad r17.xyzw, r13.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 435
  div r14.zw, r17.xxxy, r16.yyyx
  add r18.xw, r14.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 436
  div r14.zw, r17.zzzw, r15.xxxy
  add r18.yz, r14.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 437
  mad r14.zw, r13.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
  div r14.zw, r14.zzzw, r15.wwwz
  add r17.xw, r14.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r17.x <- uv2.y; r17.w <- uv2.x

#line 438
  div r13.xy, r13.xyxx, r16.zwzz
  add r19.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r19.x <- uv3.x; r19.y <- uv3.y

#line 440
  mad r20.xyzw, r18.xwzw, cb2[28].zwzw, r14.xyxy

#line 445
  mov r17.yz, r18.wwyw

#line 446
  mov r19.zw, r17.yyyz

#line 444
  mad r21.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy

#line 445
  mad r22.xyzw, r17.wywz, cb2[28].zwzw, r14.xyxy

#line 446
  mad r23.xyzw, r19.xzxw, cb2[28].zwzw, r14.xyxy

#line 447
  mov r18.y, r17.x
  mul r13.xy, -r15.wzww, r16.xyxx

#line 448
  mad r24.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy
  mul r14.zw, r15.yyyx, -r15.wwwz

#line 449
  mad r19.zw, r17.wwwx, cb2[28].zzzw, r14.xxxy
  mul r25.xy, r15.yzyy, r15.xwxx

#line 450
  mov r18.w, r19.x
  mad r18.yw, r18.wwwy, cb2[28].zzzw, r14.xxxy

#line 452
  mov r17.xz, r18.xxzx

#line 451
  mov r17.y, r19.y
  mul r18.xz, r16.xxyx, -r16.zzwz

#line 452
  mad r26.xyzw, r17.xyzy, cb2[28].zwzw, r14.xyxy
  mul r17.xz, r15.yyxy, -r16.zzwz

#line 453
  mad r17.yw, r17.wwwy, cb2[28].zzzw, r14.xxxy
  mul r15.xyzw, r15.xyzw, r16.xyzw

#line 454
  mad r14.xy, r19.xyxx, cb2[28].zwzz, r14.xyxx
  mul r16.xy, r16.xwxx, r16.yzyy

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r20.xyxx, t3.xxxx, s1, r13.z  // r13.w <- <SampleTextureAndCompare_id140 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r16.z, r20.zwzz, t3.xxxx, s1, r13.z  // r16.z <- <SampleTextureAndCompare_id140 return value>

#line 728
  mul r15.x, r15.x, r16.z
  mad r13.w, r16.x, r13.w, r15.x  // r13.w <- shadow

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r15.x, r22.xyxx, t3.xxxx, s1, r13.z  // r15.x <- <SampleTextureAndCompare_id140 return value>

#line 728
  mad r13.x, r13.x, r15.x, r13.w  // r13.x <- shadow

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r23.xyxx, t3.xxxx, s1, r13.z  // r13.w <- <SampleTextureAndCompare_id140 return value>

#line 728
  mad r13.x, r18.x, r13.w, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r21.xyxx, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r15.y, r13.w, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r21.zwzz, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r25.x, r13.w, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r22.zwzz, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r14.z, r13.w, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r23.zwzz, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r17.x, r13.w, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.w, r24.xyxx, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r13.y, r13.w, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r24.zwzz, t3.xxxx, s1, r13.z  // r13.y <- <SampleTextureAndCompare_id140 return value>

#line 728
  mad r13.x, r14.w, r13.y, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r19.zwzz, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r25.y, r13.y, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r18.ywyy, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r15.z, r13.y, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r26.xyxx, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r18.z, r13.y, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r26.zwzz, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r17.z, r13.y, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r17.ywyy, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r15.w, r13.y, r13.x

#line 613
  sample_c_lz_indexable(texture2d)(float,float,float,float) r13.y, r14.xyxx, t3.xxxx, s1, r13.z

#line 728
  mad r13.x, r16.y, r13.y, r13.x

#line 730
  mul r13.yzw, r13.xxxx, l(0.000000, 0.000370, 0.000370, 0.000370)  // r13.w <- shadow

#line 1032
  ilt r14.x, l(0), r9.w
  if_nz r14.x

#line 1034
    iadd r14.x, r12.w, l(-1)
    add r14.x, -cb2[r14.x + 83].x, cb2[r12.w + 83].x  // r14.x <- splitSize

#line 1035
  else 
    mov r14.x, cb2[r12.w + 83].x  // r14.x <- splitSize
  endif 

#line 1036
  add r12.w, -r2.w, cb2[r12.w + 83].x
  div r12.w, r12.w, r14.x  // r12.w <- splitDist

#line 1037
  lt r14.x, r12.w, l(0.200000)
  if_nz r14.x

#line 1040
    if_nz r10.w

#line 1042
      mov r13.yzw, r13.wwww  // r13.y <- shadow.x; r13.z <- shadow.y; r13.w <- shadow.z
    else 

#line 1039
      mul_sat r10.w, r12.w, l(5.000000)
      mad r12.w, r10.w, l(-2.000000), l(3.000000)
      mul r10.w, r10.w, r10.w
      mul r10.w, r10.w, r12.w  // r10.w <- lerpAmt

#line 829
      ishl r5.w, r5.w, l(2)
      imad r5.w, r9.w, l(4), r5.w
      iadd r5.w, r5.w, l(4)
      dp4 r14.x, r6.xyzw, cb2[r5.w + 29].xyzw  // r14.x <- shadowPosition.x
      dp4 r14.y, r6.xyzw, cb2[r5.w + 30].xyzw  // r14.y <- shadowPosition.y
      dp4 r9.w, r6.xyzw, cb2[r5.w + 31].xyzw  // r9.w <- shadowPosition.z
      dp4 r5.w, r6.xyzw, cb2[r5.w + 32].xyzw  // r5.w <- shadowPosition.w

#line 830
      add r14.z, r9.w, -cb2[81].x  // r14.z <- shadowPosition.z

#line 831
      div r6.xyz, r14.xyzx, r5.wwww  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 618
      mad r6.xy, r6.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r14.xy, r6.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y

#line 619
      add r6.xy, r6.xyxx, -r14.xyxx  // r6.x <- st.x; r6.y <- st.y

#line 620
      add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 621
      mul r14.xy, r14.xyxx, cb2[28].zwzz

#line 433
      mad r15.xyzw, r6.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r15.x <- uvW1.x; r15.y <- uvW1.y

#line 434
      mad r16.xyzw, r6.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r16.x <- uvW0.y; r16.y <- uvW0.x

#line 436
      mad r17.xyzw, r6.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 435
      div r14.zw, r17.xxxy, r16.yyyx
      add r18.xw, r14.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r18.x <- uv0.x; r18.w <- uv0.y

#line 436
      div r14.zw, r17.zzzw, r15.xxxy
      add r18.yz, r14.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r18.y <- uv1.y; r18.z <- uv1.x

#line 437
      mad r14.zw, r6.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r14.zw, r14.zzzw, r15.wwwz
      add r17.xw, r14.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r17.x <- uv2.y; r17.w <- uv2.x

#line 438
      div r6.xy, r6.xyxx, r16.zwzz
      add r19.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r19.x <- uv3.x; r19.y <- uv3.y

#line 440
      mad r20.xyzw, r18.xwzw, cb2[28].zwzw, r14.xyxy

#line 445
      mov r17.yz, r18.wwyw

#line 446
      mov r19.zw, r17.yyyz

#line 444
      mad r21.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy

#line 445
      mad r22.xyzw, r17.wywz, cb2[28].zwzw, r14.xyxy

#line 446
      mad r23.xyzw, r19.xzxw, cb2[28].zwzw, r14.xyxy

#line 447
      mov r18.y, r17.x
      mul r6.xy, -r15.wzww, r16.xyxx

#line 448
      mad r24.xyzw, r18.xyzy, cb2[28].zwzw, r14.xyxy
      mul r14.zw, r15.yyyx, -r15.wwwz

#line 449
      mad r19.zw, r17.wwwx, cb2[28].zzzw, r14.xxxy
      mul r25.xy, r15.yzyy, r15.xwxx

#line 450
      mov r18.w, r19.x
      mad r18.yw, r18.wwwy, cb2[28].zzzw, r14.xxxy

#line 452
      mov r17.xz, r18.xxzx

#line 451
      mov r17.y, r19.y
      mul r18.xz, r16.xxyx, -r16.zzwz

#line 452
      mad r26.xyzw, r17.xyzy, cb2[28].zwzw, r14.xyxy
      mul r17.xz, r15.yyxy, -r16.zzwz

#line 453
      mad r17.yw, r17.wwwy, cb2[28].zzzw, r14.xxxy
      mul r15.xyzw, r15.xyzw, r16.xyzw

#line 454
      mad r14.xy, r19.xyxx, cb2[28].zwzz, r14.xyxx
      mul r16.xy, r16.xwxx, r16.yzyy

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.xyxx, t3.xxxx, s1, r6.z  // r5.w <- <SampleTextureAndCompare_id140 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r20.zwzz, t3.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id140 return value>

#line 728
      mul r9.w, r9.w, r15.x
      mad r5.w, r16.x, r5.w, r9.w  // r5.w <- shadow

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r22.xyxx, t3.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id140 return value>

#line 728
      mad r5.w, r6.x, r9.w, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r23.xyxx, t3.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id140 return value>

#line 728
      mad r5.w, r18.x, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r21.xyxx, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r15.y, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r21.zwzz, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r25.x, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r22.zwzz, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r14.z, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r23.zwzz, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r17.x, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r24.xyxx, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r6.y, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r24.zwzz, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r14.w, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r19.zwzz, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r25.y, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r18.ywyy, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r15.z, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r26.xyxx, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r18.z, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r26.zwzz, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r17.z, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r17.ywyy, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r15.w, r6.x, r5.w

#line 613
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r14.xyxx, t3.xxxx, s1, r6.z

#line 728
      mad r5.w, r16.y, r6.x, r5.w

#line 730
      mul r5.w, r5.w, l(0.000370)

#line 1046
      mad r6.x, r13.x, l(0.000370), -r5.w
      mad r13.yzw, r10.wwww, r6.xxxx, r5.wwww  // r13.y <- shadow.x; r13.z <- shadow.y; r13.w <- shadow.z

#line 1047
    endif 

#line 1048
  endif 

#line 1209
  mul r6.xyz, r13.yzwy, cb2[27].xyzx
  mul r6.xyz, r5.zzzz, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1199
  mov r9.xy, r8.zwzz
  add r9.xyw, r9.xyxz, -cb2[26].xyxz
  dp3 r5.w, r9.xywx, r9.xywx
  rsq r5.w, r5.w
  mul r9.xyw, r5.wwww, r9.xyxw  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.w <- streams.H_id77.z

#line 1200
  dp3_sat r5.w, r7.xyzx, r9.xywx  // r5.w <- streams.NdotH_id78

#line 1201
  dp3_sat r9.x, -cb2[26].xyzx, r9.xywx  // r9.x <- streams.LdotH_id79

#line 1195
  mul r13.xyz, r6.xyzx, r10.xyzx

#line 1308
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 698
  add r14.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.x, -r9.x, l(1.000000)
  mul r9.y, r9.x, r9.x
  mul r9.y, r9.y, r9.y
  mul r9.x, r9.y, r9.x
  mad r9.xyw, r14.xyxz, r9.xxxx, r11.xyxz  // r9.x <- <FresnelSchlick_id252 return value>.x; r9.y <- <FresnelSchlick_id252 return value>.y; r9.w <- <FresnelSchlick_id252 return value>.z

#line 693
  mul r10.w, r11.w, l(0.500000)  // r10.w <- k

#line 694
  mad r12.w, -r11.w, l(0.500000), l(1.000000)
  mad r13.w, r5.z, r12.w, r10.w
  div r13.w, r5.z, r13.w  // r13.w <- <VisibilityhSchlickGGX_id268 return value>
  mad r10.w, r1.w, r12.w, r10.w
  div r10.w, r1.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id268 return value>

#line 816
  mul r10.w, r10.w, r13.w
  mul r5.z, r1.w, r5.z
  div r5.z, r10.w, r5.z  // r5.z <- <VisibilitySmithSchlickGGX_id270 return value>

#line 810
  mul r10.w, r11.w, r11.w  // r10.w <- alphaR2

#line 811
  mul r5.w, r5.w, r5.w
  mad r12.w, r11.w, r11.w, l(-1.000000)
  mad r5.w, r5.w, r12.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 812
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r10.w, r5.w  // r5.w <- <NormalDistributionGGX_id282 return value>

#line 1189
  mul r9.xyw, r5.zzzz, r9.xyxw
  mul r9.xyw, r5.wwww, r9.xyxw
  mul r6.xyz, r6.xyzx, r9.xywx

#line 1312
  mad r12.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1298
  iadd r3.w, r3.w, l(1)

#line 1314
endloop 

#line 983
add r0.w, v2.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 984
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 985
mad r0.w, r0.w, cb2[86].y, cb2[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 986
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 985
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 986
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t4.xyzw  // r0.x <- streams.lightData_id188.x; r0.y <- streams.lightData_id188.y

#line 1177
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id323 return value>

#line 1322
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id24.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id24.y; r7.y <- streams.PositionWS_id24.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id70.x; r7.w <- streams.viewWS_id70.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id70.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r10.w, r0.z  // r10.w <- streams.alphaRoughness_id72
mov r5.w, r5.y  // r5.w <- streams.NdotV_id74
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id189
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1324
  if_nz r2.w

#line 1326
    break 

#line 1327
  endif 

#line 970
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t5.yzwx  // r2.w <- realLightIndex

#line 971
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id189

#line 973
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t6.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 974
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t6.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 685
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 686
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 687
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 559
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 379
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 380
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 381
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id154 return value>

#line 560
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1163
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1165
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1199
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.w <- streams.H_id77.z

#line 1200
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id78

#line 1201
  dp3_sat r8.x, r13.xyzx, r8.xywx  // r8.x <- streams.LdotH_id79

#line 1195
  mul r13.xyz, r9.xyzx, r14.xyzx

#line 1332
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 698
  add r15.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.x, -r8.x, l(1.000000)
  mul r8.y, r8.x, r8.x
  mul r8.y, r8.y, r8.y
  mul r8.x, r8.y, r8.x
  mad r8.xyw, r15.xyxz, r8.xxxx, r10.xyxz  // r8.x <- <FresnelSchlick_id252 return value>.x; r8.y <- <FresnelSchlick_id252 return value>.y; r8.w <- <FresnelSchlick_id252 return value>.z

#line 693
  mul r9.w, r10.w, l(0.500000)  // r9.w <- k

#line 694
  mad r11.w, -r10.w, l(0.500000), l(1.000000)
  mad r12.w, r3.w, r11.w, r9.w
  div r12.w, r3.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id268 return value>
  mad r9.w, r5.w, r11.w, r9.w
  div r9.w, r5.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id268 return value>

#line 816
  mul r9.w, r9.w, r12.w
  mul r3.w, r5.w, r3.w
  div r3.w, r9.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id270 return value>

#line 810
  mul r9.w, r10.w, r10.w  // r9.w <- alphaR2

#line 811
  mul r2.w, r2.w, r2.w
  mad r11.w, r10.w, r10.w, l(-1.000000)
  mad r2.w, r2.w, r11.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 812
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r9.w, r2.w  // r2.w <- <NormalDistributionGGX_id282 return value>

#line 1189
  mul r8.xyw, r3.wwww, r8.xyxw
  mul r8.xyw, r2.wwww, r8.xyxw
  mul r8.xyw, r14.xyxz, r8.xyxw

#line 1336
  mad r11.xyz, r8.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1322
  iadd r1.w, r1.w, l(1)

#line 1338
endloop   // r5.z <- streams.lightIndex_id189

#line 1155
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id335 return value>

#line 1346
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id24.x; r6.y <- streams.PositionWS_id24.y; r6.z <- streams.PositionWS_id24.z
mov r7.xyz, r4.xyzx  // r7.x <- streams.matSpecularVisible_id73.x; r7.y <- streams.matSpecularVisible_id73.y; r7.z <- streams.matSpecularVisible_id73.z
mov r7.w, r0.z  // r7.w <- streams.alphaRoughness_id72
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id21.x; r8.y <- streams.normalWS_id21.y; r8.z <- streams.normalWS_id21.z
mov r9.xyz, r2.xyzx  // r9.z <- streams.viewWS_id70.z; r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r12.xyz, r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r0.yw, r5.yyyz  // r0.y <- streams.NdotV_id74; r0.w <- streams.lightIndex_id189
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 1348
  if_nz r2.w

#line 1350
    break 

#line 1351
  endif 

#line 942
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.wwww, t5.yzwx  // r2.w <- realLightIndex

#line 943
  iadd r0.w, r0.w, l(1)  // r0.w <- streams.lightIndex_id189

#line 945
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r3.wwww, t7.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 948
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 946
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t7.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z

#line 947
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t7.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z

#line 948
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t7.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 672
  add r13.xyz, -r6.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 673
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 674
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 552
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 373
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 374
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 375
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id165 return value>

#line 553
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 544
  dp3 r3.w, -r15.xyzx, r13.xyzx  // r3.w <- cd

#line 545
  mad_sat r3.w, r3.w, r14.x, r14.y  // r3.w <- attenuation

#line 546
  mul r3.w, r3.w, r3.w

#line 680
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1141
  dp3 r3.w, r8.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1143
  mul r14.xyz, r2.wwww, r16.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1199
  add r15.xyz, r9.xyzx, r13.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1200
  dp3_sat r2.w, r8.xyzx, r15.xyzx  // r2.w <- streams.NdotH_id78

#line 1201
  dp3_sat r5.w, r13.xyzx, r15.xyzx  // r5.w <- streams.LdotH_id79

#line 1195
  mul r13.xyz, r10.xyzx, r14.xyzx

#line 1356
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 698
  add r15.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r15.xyz, r15.xyzx, r5.wwww, r7.xyzx  // r15.x <- <FresnelSchlick_id252 return value>.x; r15.y <- <FresnelSchlick_id252 return value>.y; r15.z <- <FresnelSchlick_id252 return value>.z

#line 693
  mul r5.w, r7.w, l(0.500000)  // r5.w <- k

#line 694
  mad r6.w, -r7.w, l(0.500000), l(1.000000)
  mad r8.w, r3.w, r6.w, r5.w
  div r8.w, r3.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id268 return value>
  mad r5.w, r0.y, r6.w, r5.w
  div r5.w, r0.y, r5.w  // r5.w <- <VisibilityhSchlickGGX_id268 return value>

#line 816
  mul r5.w, r5.w, r8.w
  mul r3.w, r0.y, r3.w
  div r3.w, r5.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id270 return value>

#line 810
  mul r5.w, r7.w, r7.w  // r5.w <- alphaR2

#line 811
  mul r2.w, r2.w, r2.w
  mad r6.w, r7.w, r7.w, l(-1.000000)
  mad r2.w, r2.w, r6.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 812
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r5.w, r2.w  // r2.w <- <NormalDistributionGGX_id282 return value>

#line 1189
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1360
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1346
  iadd r1.w, r1.w, l(1)

#line 1362
endloop   // r0.w <- streams.lightIndex_id189

#line 781
dp2 r0.x, cb0[48].xxxx, cb0[33].zzzz

#line 773
mov r6.w, l(1.000000)

#line 1370
mov r7.xyz, v0.xyzx  // r7.x <- streams.PositionWS_id24.x; r7.y <- streams.PositionWS_id24.y; r7.z <- streams.PositionWS_id24.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matSpecularVisible_id73.x; r8.y <- streams.matSpecularVisible_id73.y; r8.z <- streams.matSpecularVisible_id73.z
mov r8.w, r0.z  // r8.w <- streams.alphaRoughness_id72
mov r9.xyz, r1.xyzx  // r9.x <- streams.normalWS_id21.x; r9.y <- streams.normalWS_id21.y; r9.z <- streams.normalWS_id21.z
mov r10.xyz, r2.xyzx  // r10.x <- streams.viewWS_id70.x; r10.y <- streams.viewWS_id70.y; r10.z <- streams.viewWS_id70.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matDiffuseVisible_id71.x; r11.y <- streams.matDiffuseVisible_id71.y; r11.z <- streams.matDiffuseVisible_id71.z
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.y
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(1)
  breakc_nz r1.w

#line 1372
  ige r1.w, r0.w, cb0[28].x
  if_nz r1.w

#line 1374
    break 

#line 1375
  endif 

#line 659
  add r14.xyz, -r7.xyzx, cb0[29].xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 660
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 661
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 538
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 367
  mul r1.w, r1.w, cb0[31].z  // r1.w <- factor

#line 368
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 369
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id176 return value>

#line 539
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 530
  dp3 r2.w, -cb0[30].xyzx, r14.xyzx  // r2.w <- cd

#line 531
  mad_sat r2.w, r2.w, cb0[31].x, cb0[31].y  // r2.w <- attenuation

#line 532
  mul r2.w, r2.w, r2.w

#line 667
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1119
  dp3 r2.w, r9.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 780
  add r3.w, -r2.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- normalOffsetScale

#line 781
  mul r3.w, r0.x, r3.w

#line 909
  mad r6.xyz, r3.wwww, r9.xyzx, r7.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 773
  dp4 r15.x, r6.xyzw, cb0[34].xyzw  // r15.x <- shadowPosition.x
  dp4 r15.y, r6.xyzw, cb0[35].xyzw  // r15.y <- shadowPosition.y
  dp4 r3.w, r6.xyzw, cb0[36].xyzw  // r3.w <- shadowPosition.z
  dp4 r5.z, r6.xyzw, cb0[37].xyzw  // r5.z <- shadowPosition.w

#line 774
  add r15.z, r3.w, -cb0[47].x  // r15.z <- shadowPosition.z

#line 775
  div r6.xyz, r15.xyzx, r5.zzzz  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 523
  mad r5.zw, r6.xxxy, cb0[33].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r6.xy, r5.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 524
  add r5.zw, r5.zzzw, -r6.xxxy  // r5.z <- st.x; r5.w <- st.y

#line 525
  add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 526
  mul r6.xy, r6.xyxx, cb0[33].zwzz

#line 471
  mad r15.xy, -r5.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r15.x <- uvW0.y; r15.y <- uvW0.x

#line 473
  mad r15.zw, r5.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r15.z <- uvW2.x; r15.w <- uvW2.y

#line 474
  mad r16.xy, -r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r16.xy, r16.xyxx, r15.yxyy
  add r16.xw, r16.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- uv0.x; r16.w <- uv0.y

#line 475
  add r17.xy, r5.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r16.yz, r17.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.y <- uv1.y; r16.z <- uv1.x

#line 476
  div r5.zw, r5.zzzw, r15.zzzw
  add r17.xy, r5.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r17.x <- uv2.x; r17.y <- uv2.y

#line 477
  mul r3.w, r15.x, r15.y

#line 478
  mad r18.xyzw, r16.xwzw, cb0[33].zwzw, r6.xyxy

#line 482
  mov r17.zw, r16.wwwy

#line 480
  mul r5.zw, r15.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 481
  mad r19.xyzw, r16.xyzy, cb0[33].zwzw, r6.xyxy

#line 482
  mad r20.xyzw, r17.xzxw, cb0[33].zwzw, r6.xyxy

#line 483
  mov r16.y, r17.y
  mul r15.xy, r15.xyxx, r15.zwzz

#line 484
  mad r16.xyzw, r16.xyzy, cb0[33].zwzw, r6.xyxy
  mul r17.zw, r15.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 485
  mad r6.xy, r17.xyxx, cb0[33].zwzz, r6.xyxx
  mul r7.w, r15.w, r15.z

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r18.xyxx, t0.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id190 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r10.w, r18.zwzz, t0.xxxx, s1, r6.z  // r10.w <- <SampleTextureAndCompare_id190 return value>

#line 651
  mul r5.z, r5.z, r10.w
  mad r3.w, r3.w, r9.w, r5.z  // r3.w <- shadow

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r20.xyxx, t0.xxxx, s1, r6.z  // r5.z <- <SampleTextureAndCompare_id190 return value>

#line 651
  mad r3.w, r15.x, r5.z, r3.w

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r19.xyxx, t0.xxxx, s1, r6.z

#line 651
  mad r3.w, r5.w, r5.z, r3.w

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r19.zwzz, t0.xxxx, s1, r6.z

#line 651
  mad r3.w, r5.z, l(49.000000), r3.w

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r20.zwzz, t0.xxxx, s1, r6.z

#line 651
  mad r3.w, r17.z, r5.z, r3.w

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r16.xyxx, t0.xxxx, s1, r6.z

#line 651
  mad r3.w, r15.y, r5.z, r3.w

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r16.zwzz, t0.xxxx, s1, r6.z

#line 651
  mad r3.w, r17.w, r5.z, r3.w

#line 490
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r6.xyxx, t0.xxxx, s1, r6.z

#line 651
  mad r3.w, r7.w, r5.z, r3.w

#line 653
  mul r3.w, r3.w, l(0.006944)

#line 1121
  mul r6.xyz, r1.wwww, cb0[32].xyzx
  mul r6.xyz, r3.wwww, r6.xyzx
  mul r6.xyz, r2.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1199
  add r15.xyz, r10.xyzx, r14.xyzx
  dp3 r1.w, r15.xyzx, r15.xyzx
  rsq r1.w, r1.w
  mul r15.xyz, r1.wwww, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1200
  dp3_sat r1.w, r9.xyzx, r15.xyzx  // r1.w <- streams.NdotH_id78

#line 1201
  dp3_sat r3.w, r14.xyzx, r15.xyzx  // r3.w <- streams.LdotH_id79

#line 1195
  mul r14.xyz, r6.xyzx, r11.xyzx

#line 1380
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 698
  add r15.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r5.z, r3.w, r3.w
  mul r5.z, r5.z, r5.z
  mul r3.w, r3.w, r5.z
  mad r15.xyz, r15.xyzx, r3.wwww, r8.xyzx  // r15.x <- <FresnelSchlick_id252 return value>.x; r15.y <- <FresnelSchlick_id252 return value>.y; r15.z <- <FresnelSchlick_id252 return value>.z

#line 693
  mul r3.w, r8.w, l(0.500000)  // r3.w <- k

#line 694
  mad r5.z, -r8.w, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r5.z, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id268 return value>
  mad r3.w, r0.y, r5.z, r3.w
  div r3.w, r0.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id268 return value>

#line 816
  mul r3.w, r3.w, r5.w
  mul r2.w, r0.y, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id270 return value>

#line 810
  mul r3.w, r8.w, r8.w  // r3.w <- alphaR2

#line 811
  mul r1.w, r1.w, r1.w
  mad r5.z, r8.w, r8.w, l(-1.000000)
  mad r1.w, r1.w, r5.z, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 812
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id282 return value>

#line 1189
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r1.wwww, r15.xyzx
  mul r6.xyz, r6.xyzx, r15.xyzx

#line 1384
  mad r13.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1370
  iadd r0.w, r0.w, l(1)

#line 1386
endloop 

#line 889
sqrt r4.w, r0.z
add r5.x, -r4.w, l(1.000000)  // r5.x <- glossiness

#line 890
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r5.xyxx, t2.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 891
mad r0.xyz, r4.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id432 return value>.x; r0.y <- <Compute_id432 return value>.y; r0.z <- <Compute_id432 return value>.z

#line 1102
mul r5.xyz, r0.xyzx, cb2[88].xyzx  // r5.x <- <ComputeEnvironmentLightContribution_id611 return value>.x; r5.y <- <ComputeEnvironmentLightContribution_id611 return value>.y; r5.z <- <ComputeEnvironmentLightContribution_id611 return value>.z

#line 1398
mad r5.xyz, r3.xyzx, cb2[88].xyzx, r5.xyzx  // r5.x <- environmentLightingContribution.x; r5.y <- environmentLightingContribution.y; r5.z <- environmentLightingContribution.z

#line 1091
dp3 r0.w, r1.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r1.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 752
mul r3.w, r1.w, r1.w  // r3.w <- y2

#line 753
mul r5.w, r2.w, r2.w  // r5.w <- z2

#line 757
mad r6.xyz, cb2[90].xyzx, r1.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 758
mad r6.xyz, cb2[91].xyzx, -r2.wwww, r6.xyzx

#line 759
mad r6.xyz, cb2[92].xyzx, r0.wwww, r6.xyzx

#line 762
mul r7.xyz, r1.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r0.wwww, r6.xyzx

#line 763
mul r7.xyz, r1.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 764
mad r1.w, r5.w, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[95].xyzx, r1.wwww, r6.xyzx

#line 765
mul r7.xyz, r0.wwww, cb2[96].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 766
mad r0.w, r0.w, r0.w, -r3.w
mad r6.xyz, cb2[97].xyzx, r0.wwww, r6.xyzx

#line 1093
mul r6.xyz, r6.xyzx, cb2[102].xxxx  // r6.x <- streams.envLightDiffuseColor_id49.x; r6.y <- streams.envLightDiffuseColor_id49.y; r6.z <- streams.envLightDiffuseColor_id49.z

#line 1094
dp3 r0.w, -r2.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r2.xyz, r1.xyzx, -r0.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 1095
dp3 r7.x, r2.xyzx, cb2[98].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r2.xyzx, cb2[99].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r2.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 1096
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 875
mul r0.w, r4.w, cb2[97].w  // r0.w <- mipLevel

#line 876
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r7.xyzx, t8.xyzw, s0, r0.w  // r2.x <- <Compute_id382 return value>.x; r2.y <- <Compute_id382 return value>.y; r2.z <- <Compute_id382 return value>.z

#line 1097
mul r2.xyz, r2.xyzx, cb2[102].xxxx  // r2.x <- streams.envLightSpecularColor_id50.x; r2.y <- streams.envLightSpecularColor_id50.y; r2.z <- streams.envLightSpecularColor_id50.z

#line 1406
mad r3.xyz, r3.xyzx, r6.xyzx, r5.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 1410
mad r0.xyz, r0.xyzx, r2.xyzx, r3.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1425
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1507
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1531
utof o3.xyzw, cb0[26].xxxx

#line 1649
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mov o2.xyzw, r4.xyzw
ret 
// Approximately 629 instruction slots used
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
static const float2 QuadUV_id149[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id182;
    float3 normalWS_id21;
    float4 PositionWS_id24;
    uint InstanceID_id13;
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
    float3 normalWS_id21 : NORMALWS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id155;
    float4 ScreenPosition_id182;
    uint InstanceID_id13;
    float3 PSize_id153;
    float2 TexCoord_id133;
    float3 meshNormalWS_id19;
    float4 PositionWS_id24;
    float3 normalWS_id21;
    float4 ShadingPosition_id0;
    float DepthVS_id25;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float3 normalWS_id21 : NORMALWS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id155 : VID_ID155_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id182 : SCREENPOSITION_ID182_SEM;
};
struct VS_STREAMS 
{
    uint VertexID_id154;
    float4 Position_id23;
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
};
struct VS_INPUT 
{
    uint VertexID_id154 : SV_VertexID;
    float4 Position_id23 : POSITION;
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
float4 Project_id132(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id176(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id165(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id154(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id142(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id141(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id143(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id162.SampleLevel(LinearBorderSampler_id116, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id132(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id139(float2 base_uv, float2 st, out float3 kernel[16])
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
float Get3x3FilterKernel_id192(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id191(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleTextureAndCompare_id190(float2 position, float positionDepth)
{
    return ShadowMapTexture_id200.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
float Get7x7FilterKernel_id189(float2 base_uv, float2 st, out float3 kernel[16])
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
void CalculatePCFKernelParameters_id188(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id201;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id202;
}
float GetAngularAttenuation_id178(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id177(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id176(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id167(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id166(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id165(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id156(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id154(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id147(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id163;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id164;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id139(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id143(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id146(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id132(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id132(float4(ShadowMapTextureTexelSize_id164.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id132(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id145(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id132(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id132(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id164.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id132(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id144()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id140(float2 position, float positionDepth)
{
    return ShadowMapTexture_id162.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id117, position, positionDepth);
}
void CalculatePCFKernelParameters_id138(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id163;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id164;
}
float Compute_id420()
{
    return InputValue_id245;
}
float Compute_id408()
{
    return InputValue_id236;
}
float4 Compute_id396(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id228[id];
    return float4(p.Col, 1);
}
float FilterShadow_id184(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id188(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id191(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id190(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id179(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id177(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id178(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id168(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id166(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id167(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id155(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id156(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id268(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id252(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id134(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id146(GetFilterRadiusInPixels_id144(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id145(GetFilterRadiusInPixels_id144(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id147(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id133(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id138(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id139(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id140(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id423(inout PS_STREAMS streams)
{
    streams.Input_2_id244 = Compute_id420();
}
void Compute_id411(inout PS_STREAMS streams)
{
    streams.Input_1_id235 = Compute_id408();
}
void Compute_id399(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id227 = Compute_id396(streams);
}
float4 EvaluateSphericalHarmonics_id206(float3 sphericalColors[TOrder_id217 * TOrder_id217], float3 direction)
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
float ComputeShadowFromCascade_id187(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id206[cascadeIndex + lightIndex * TCascadeCountBase_id204]);
    shadowPosition.z -= DepthBiases_id210[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id184(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id186(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id202.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id180(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id179(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id169(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id168(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id158(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id155(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id282(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id256 * d * d);
}
float VisibilitySmithSchlickGGX_id270(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id268(alphaR, nDotL) * VisibilityhSchlickGGX_id268(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id258(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id252(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id137(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id166;
    return FilterThickness_id134(pixelPositionWS, meshNormalWS, DepthRanges_id171[arrayIndex], WorldToShadowCascadeUV_id168[arrayIndex], InverseWorldToShadowCascadeUV_id169[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id136(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id168[cascadeIndex + lightIndex * TCascadeCountBase_id166]);
    shadowPosition.z -= DepthBiases_id172[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id133(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id135(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id164.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id426(inout PS_STREAMS streams)
{
    return streams.Input_2_id244;
}
void Compute_id425(inout PS_STREAMS streams)
{

    {
        Compute_id423(streams);
    }
}
float Compute_id414(inout PS_STREAMS streams)
{
    return streams.Input_1_id235;
}
void Compute_id413(inout PS_STREAMS streams)
{

    {
        Compute_id411(streams);
    }
}
float4 Compute_id402(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id227;
}
void Compute_id401(inout PS_STREAMS streams)
{

    {
        Compute_id399(streams);
    }
}
float4 Compute_id382(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id221;
    return CubeMap_id222.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id377(float3 direction)
{
    return EvaluateSphericalHarmonics_id206(SphericalColors_id220, direction);
}
void PrepareEnvironmentLight_id210(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id432(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id257.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id201(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id175(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id174(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id173(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id186(OffsetScales_id211[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float3 shadow = ComputeShadowFromCascade_id187(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id158 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id172(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id199[lightIndex].PositionWS;
    data.DirectionWS = Lights_id199[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id199[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id199[lightIndex].Color;
    ProcessLight_id180(streams, data);
}
float3 ComputeSpecularTextureProjection_id164(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id163(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id162(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id161(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id169(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id153(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id152(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id151(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id150(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id191.Load(streams.lightIndex_id189);
    streams.lightIndex_id189++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id195.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id195.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id158(streams, pointLight);
}
void PrepareLightData_id157(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id185.y / (projectedDepth - ZProjection_id185.x);
    float2 texCoord = float2(streams.ScreenPosition_id182.x + 1, 1 - streams.ScreenPosition_id182.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id192 + ClusterDepthBias_id193), 0));
    streams.lightData_id188 = LightClusters_id190.Load(int4(texCoord * ClusterStride_id194, slice, 0));
    streams.lightIndex_id189 = streams.lightData_id188.x;
}
float Compute_id524(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id282(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id494(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id270(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id464(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id258(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id129(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id128(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id127(inout PS_STREAMS streams, float3 position, int lightIndex)
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
    shadowPosition += GetShadowPositionOffset_id135(OffsetScales_id173[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    if (cascadeIndex < TCascadeCount_id174)
    {
        shadow = ComputeShadowFromCascade_id136(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id136(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id158 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id126(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id161[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id161[lightIndex].DirectionWS;
}
float Compute_id429(inout PS_STREAMS streams)
{
    Compute_id425(streams);
    return Compute_id426(streams);
}
float Compute_id417(inout PS_STREAMS streams)
{
    Compute_id413(streams);
    return Compute_id414(streams);
}
float4 Compute_id405(inout PS_STREAMS streams)
{
    Compute_id401(streams);
    return Compute_id402(streams);
}
void ResetStream_id285()
{
}
void AfterLightingAndShading_id581()
{
}
void AfterLightingAndShading_id562()
{
}
void PrepareEnvironmentLight_id395(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id392(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id210(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id223);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id377(sampleDirection).rgb * Intensity_id224 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id223);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id382(streams, sampleDirection).rgb * Intensity_id224 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id611(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id432(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id555(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id387(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id201(streams);
    float3 lightColor = AmbientLight_id215 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id344(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id172(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id173(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id174(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id175(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id346()
{
    return LightCount_id197;
}
int GetMaxLightCount_id347()
{
    return TMaxLightCount_id198;
}
void PrepareDirectLights_id342()
{
}
void PrepareDirectLight_id332(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id161(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id162(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id163(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id164(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id336(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y >> 16;
}
int GetMaxLightCount_id335(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y >> 16;
}
void PrepareDirectLights_id330()
{
}
void PrepareDirectLight_id319(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id150(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id151(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id152(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id153(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id324(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y & 0xFFFF;
}
int GetMaxLightCount_id323(inout PS_STREAMS streams)
{
    return streams.lightData_id188.y & 0xFFFF;
}
void PrepareDirectLights_id322(inout PS_STREAMS streams)
{
    PrepareLightData_id157(streams);
}
float3 ComputeDirectLightContribution_id610(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id464(streams, specularColor);
    float geometricShadowing = Compute_id494(streams);
    float normalDistribution = Compute_id524(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id554(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id256 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id93(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id295(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id126(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id127(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id128(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id129(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id297()
{
    return LightCount_id159;
}
int GetMaxLightCount_id298()
{
    return TMaxLightCount_id160;
}
void PrepareDirectLights_id293()
{
}
void PrepareForLightingAndShading_id578()
{
}
void PrepareForLightingAndShading_id559()
{
}
void PrepareMaterialForLightingAndShading_id284(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id283(inout PS_STREAMS streams)
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
float4 Compute_id431(inout PS_STREAMS streams)
{
    float x = Compute_id429(streams);
    return float4(x, x, x, x);
}
float4 Compute_id419(inout PS_STREAMS streams)
{
    float x = Compute_id417(streams);
    return float4(x, x, x, x);
}
float4 Compute_id407(inout PS_STREAMS streams)
{
    return Compute_id405(streams);
}
void ResetStream_id286(inout PS_STREAMS streams)
{
    ResetStream_id285();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id642(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id283(streams);
    PrepareMaterialForLightingAndShading_id284(streams);

    {
        PrepareForLightingAndShading_id559();
    }

    {
        PrepareForLightingAndShading_id578();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id293();
        const int maxLightCount = GetMaxLightCount_id298();
        int count = GetLightCount_id297();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id295(streams, i);
            PrepareMaterialPerDirectLight_id93(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id554(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id610(streams);
            }
        }
    }

    {
        PrepareDirectLights_id322(streams);
        const int maxLightCount = GetMaxLightCount_id323(streams);
        int count = GetLightCount_id324(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id319(streams, i);
            PrepareMaterialPerDirectLight_id93(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id554(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id610(streams);
            }
        }
    }

    {
        PrepareDirectLights_id330();
        const int maxLightCount = GetMaxLightCount_id335(streams);
        int count = GetLightCount_id336(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id332(streams, i);
            PrepareMaterialPerDirectLight_id93(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id554(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id610(streams);
            }
        }
    }

    {
        PrepareDirectLights_id342();
        const int maxLightCount = GetMaxLightCount_id347();
        int count = GetLightCount_id346();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id344(streams, i);
            PrepareMaterialPerDirectLight_id93(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id554(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id610(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id387(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id555(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id611(streams);
        }
    }

    {
        PrepareEnvironmentLight_id392(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id555(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id611(streams);
        }
    }

    {
        PrepareEnvironmentLight_id395(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id555(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id611(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id256 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id562();
    }

    {
        AfterLightingAndShading_id581();
    }
}
void Compute_id626(inout PS_STREAMS streams)
{
    float metalness = Compute_id431(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id621(inout PS_STREAMS streams)
{
    float glossiness = Compute_id419(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id616(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id407(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id287(inout PS_STREAMS streams)
{
    ResetStream_id286(streams);
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
void Compute_id116(inout PS_STREAMS streams)
{

    {
        Compute_id616(streams);
    }

    {
        Compute_id621(streams);
    }

    {
        Compute_id626(streams);
    }

    {
        Compute_id642(streams);
    }
}
void ResetStream_id115(inout PS_STREAMS streams)
{
    ResetStream_id287(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
float3 EncodeNormal_id120(float3 n)
{
    return n * 0.5 + 0.5;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id115(streams);
    Compute_id116(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
void PostTransformPosition_id89(inout VS_STREAMS streams)
{
    streams.VID_id155 = streams.VertexID_id154;
    streams.InstanceID_id13 = streams.VertexID_id154;
    streams.ShadingPosition_id0 = streams.Position_id23;
}
void TransformPosition_id88()
{
}
void PreTransformPosition_id87()
{
}
float4 Compute_id114()
{
    return MaterialIndex_id156;
}
float4 Compute_id113(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id73, sqrt(streams.alphaRoughness_id72));
}
float4 Compute_id112(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id120(streams.normalWS_id21), 1);
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
    PreTransformPosition_id87();
    TransformPosition_id88();
    PostTransformPosition_id89(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id32(streams);
    streams.ColorTarget1_id3 = Compute_id112(streams);
    streams.ColorTarget2_id4 = Compute_id113(streams);
    streams.ColorTarget3_id5 = Compute_id114();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id21, streams.normalWS_id21) > 0)
        streams.normalWS_id21 = normalize(streams.normalWS_id21);
    streams.meshNormalWS_id19 = streams.normalWS_id21;
}
float3 CubeVert_id91(in uint vertexID)
{
    uint b = 1 << vertexID;
    return float3((0xFA55A & b) != 0, (0x5A0F33 & b) != 0, (0x33330F & b) != 0) - 0.5;
}
void GenerateNormal_VS_id90()
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
void SpawnQuad_id92(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, SMGridParticle p, float3 AxisX, float3 AxisY, float3 AxisZ)
{
    normal = normalize(mul(float4(normal, 0), World_id34).xyz);

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id133 = QuadUV_id149[i % 4].xy;
        float4 posWorld = float4(p.Pos, 1);
        float3 qPos = CubeVert_id91(i);
        posWorld.xyz += qPos.x * AxisX * streams.PSize_id153.x;
        posWorld.xyz += qPos.y * AxisY * streams.PSize_id153.y;
        posWorld.xyz += qPos.z * AxisZ * streams.PSize_id153.z;
        posWorld = mul(posWorld, World_id34);
        streams.PositionWS_id24 = posWorld;
        streams.normalWS_id21 = normal;
        streams.meshNormalWS_id19 = normal;
        streams.ShadingPosition_id0 = mul(posWorld, ViewProjection_id31);
        streams.DepthVS_id25 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id24 = streams.PositionWS_id24;
            output.normalWS_id21 = streams.normalWS_id21;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.DepthVS_id25 = streams.DepthVS_id25;
            output.ScreenPosition_id182 = streams.ScreenPosition_id182;
            output.InstanceID_id13 = streams.InstanceID_id13;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
}
float3x3 rot3x3_id67(float3 rotation)
{
    float3 z = float3(-rotation.x, rotation.y, -rotation.z) * acos(-1) * 2;
    float3 x = cos(z), y = sin(z);
    return float3x3(x.y * x.z + y.x * y.y * y.z, -x.x * y.z, y.x * x.y * y.z - y.y * x.z, x.y * y.z - y.x * y.y * x.z, x.x * x.z, -y.y * y.z - y.x * x.y * x.z, x.x * y.y, y.x, x.x * x.y);
}
void VSMain_id19(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id90();
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id24 = __input__.PositionWS_id24;
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id25 = __input__.DepthVS_id25;
    streams.ScreenPosition_id182 = __input__.ScreenPosition_id182;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id182 /= streams.ScreenPosition_id182.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    __output__.ColorTarget3_id5 = streams.ColorTarget3_id5;
    return __output__;
}
[maxvertexcount(12)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id155 = input[0].VID_id155;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id182 = input[0].ScreenPosition_id182;
    uint id = streams.VID_id155;
    SMGridParticle p = ParticlesBuffer_id151[id];
    streams.PositionWS_id24 = float4(p.Pos.xyz, 1);
    streams.PSize_id153 = p.Size * ParticleSize_id152;
    if (dot(streams.PSize_id153, streams.PSize_id153) <= 0)
        return;
    float3x3 or = rot3x3_id67(p.Rot);
    float3 AxisX = or[0];
    float3 AxisY = or[1];
    float3 AxisZ = or[2];
    float3 viewDir = mul(float4(Eye_id33.xyz, 1), WorldInverse_id35).xyz - p.Pos;
    if (dot(viewDir, AxisZ) > 0)
        SpawnQuad_id92(streams, 0, triangleStream, AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisZ) > 0)
        SpawnQuad_id92(streams, 4, triangleStream, -AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisY) > 0)
        SpawnQuad_id92(streams, 8, triangleStream, AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisY) > 0)
        SpawnQuad_id92(streams, 12, triangleStream, -AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisX) > 0)
        SpawnQuad_id92(streams, 16, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisX) > 0)
        SpawnQuad_id92(streams, 20, triangleStream, -AxisX, p, AxisX, AxisY, AxisZ);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id154 = __input__.VertexID_id154;
    streams.Position_id23 = __input__.Position_id23;
    VSMain_id19(streams);
    streams.ScreenPosition_id182 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id155 = streams.VID_id155;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id182 = streams.ScreenPosition_id182;
    return __output__;
}

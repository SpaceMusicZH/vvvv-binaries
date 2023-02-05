/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ParticleColor_ShaderFXResult_0> [{Value = ParticleColor_ShaderFX}]]}]}, {Value = GetVarFloat4<ParticleColor_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ParticleColor_ShaderFXResult_0> [{Value = ParticleColor_ShaderFX}]]}]}, {Value = GetVarFloat4<ParticleColor_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_3>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<8>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin BoxGeomExt_ShaderFX [{ShadingColor0 = ComputeColor}]
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 992]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id147 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id188 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id190 => LightSpotGroup.Lights.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    InputValue_id211 => ShaderFX.InputValueFloat
@C    InputValue_id220 => ShaderFX.InputValueFloat.i1
@C    InputValue_id237 => ShaderFX.InputValueFloat.i2
cbuffer PerView [Size: 1664]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
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
@C    AmbientLight_id191 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id196 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id197 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id199 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id200 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    Particles_id143 => ParticleBuffer.Particles [Stage: None, Slot: (-1--1)]
@R    Particles_id143 => ParticleBuffer.Particles [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id249 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id249 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    CubeMap_id198 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id198 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    Particles_id143 => ParticleBuffer.Particles [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerView => PerView [Stage: Geometry, Slot: (1-1)]
@R    LinearSampler_id113 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id115 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    Particles_id143 => ParticleBuffer.Particles [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id249 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id153 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id181 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id182 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id186 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id187 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id198 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    BoxGeomExt_ShaderFX => 645a08e15ca902e8081aaa07800cd925
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    VertexIDStream => 9d1d889df6ab3d2e141f4e6e5d369333
@S    ParticleBuffer => a64a4612fd198ca64a3658584f8219de
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
@S    ParticleColor_ShaderFX => 19d01b8d73ddb40ea5353bc362712568
@S    ParticleProvider => 1e5c6603fb751c6c541c9bf7d22a6ec3
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
@S    MaterialSurfaceSetStreamFromComputeColor => 3e54cdd2886f251ff6eed5013522c912
@S    IMaterialSurfaceVertex => b2f1bea807f62236e68fd5811c18ecb7
@S    MaterialVertexStream => 26b99458392c9ae358c2abbf2ff17606
@S    MaterialDisplacementStream => b317c013b5abf2b9d8f5c73d7079aa7a
@S    IMaterialSurfaceDomain => 9bb58dff109214db65496519fb4f2754
@S    MaterialDomainStream => 3df34fbfe4c0cd5f484018f1f0b47cfa
@S    MaterialTessellationStream => 2b26ea82d4b1f1f43837972725e3b785
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
@S    MaterialSurfaceEmissiveShading => cc1fb614620d3cc66d504194c91856f3
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => e08cf387562e2c6c287a48852dca80a6
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// SV_VertexID              0   x           1   VERTID    uint   x   
// NORMAL                   0   xyz         2     NONE   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// VERTEXID_ID142_SEM       0   x           1     NONE    uint   x   
// SCREENPOSITION_ID173_SEM     0   xyzw        2     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyzw
dcl_input_sgv v1.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.x
dcl_output o2.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.VertexID_VS_id141; 
//   v2.x <- __input__.meshNormal_id16.x; v2.y <- __input__.meshNormal_id16.y; v2.z <- __input__.meshNormal_id16.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id173.x; o2.y <- <VSMain return value>.ScreenPosition_id173.y; o2.z <- <VSMain return value>.ScreenPosition_id173.z; o2.w <- <VSMain return value>.ScreenPosition_id173.w; 
//   o1.x <- <VSMain return value>.VertexID_id142; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 1618 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_0813f4219aef7b22fca8798ba5cfa9c0.hlsl"
mov o0.xyzw, v0.xyzw
mov o1.x, v1.x
mov o2.xyzw, v0.xyzw
ret 
// Approximately 4 instruction slots used
@G    Geometry => 3e412556d8d96983bcab1a0ccb7594c3
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
//   uint MaterialIndex_id147;          // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id188;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id190[8];                 // Offset:  464 Size:   508 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  976 Size:    16 [unused]
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
//   float3 AmbientLight_id191;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id196[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id197;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id199;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id200;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for Particles_id143
// {
//
//   struct Particle
//   {
//       
//       float3 Velocity;               // Offset:    0
//       float3 Position;               // Offset:   12
//       float4 Color;                  // Offset:   24
//       float Drag;                    // Offset:   40
//       int Cycle;                     // Offset:   44
//       float Age;                     // Offset:   48
//       float LifeTime;                // Offset:   52
//       int Id;                        // Offset:   56
//       float3 AxisY;                  // Offset:   60
//       float3 AxisX;                  // Offset:   72
//       float3 AxisZ;                  // Offset:   84
//       float3 Size3;                  // Offset:   96
//
//   } $Element;                        // Offset:    0 Size:   108
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Particles_id143                   texture  struct         r/o             t0      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// VERTEXID_ID142_SEM       0   x           1     NONE    uint   x   
// SCREENPOSITION_ID173_SEM     0   xyzw        2     NONE   float   xyzw
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
// SCREENPOSITION_ID173_SEM     0   xyzw        3     NONE   float   xyzw
// VERTEXID_ID142_SEM       0   x           4     NONE    uint   x   
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { -1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, 1.000000, -1.000000, 0},
                              { 1.000000, -1.000000, -1.000000, 0},
                              { -1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, -1.000000, 1.000000, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { 1.000000, -1.000000, -1.000000, 0},
                              { 1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, 1.000000, 0},
                              { -1.000000, 1.000000, -1.000000, 0},
                              { -1.000000, -1.000000, -1.000000, 0} }
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[12], immediateIndexed
dcl_resource_structured t0, 108
dcl_input_siv v[1][0].xyzw, position
dcl_input v[1][1].x
dcl_input v[1][2].xyzw
dcl_temps 9
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o1.w
dcl_output_siv o2.xyzw, position
dcl_output o3.xyzw
dcl_output o4.x
dcl_maxout 24
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[0][1].x <- input[0].VertexID_id142; 
//   v[0][2].x <- input[0].ScreenPosition_id173.x; v[0][2].y <- input[0].ScreenPosition_id173.y; v[0][2].z <- input[0].ScreenPosition_id173.z; v[0][2].w <- input[0].ScreenPosition_id173.w
//
#line 1596 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_0813f4219aef7b22fca8798ba5cfa9c0.hlsl"
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r0.xy, v[0][1].x, l(44), t0.xyxx  // r0.x <- p.Cycle; r0.y <- p.Age

#line 1597
ieq r0.x, r0.x, l(0)
lt r0.y, r0.y, l(0.000000)
or r0.x, r0.y, r0.x
if_nz r0.x

#line 1598
  ret 
endif 

#line 1596
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r0.xyz, v[0][1].x, l(12), t0.xyzx  // r0.x <- p.Position.x; r0.y <- p.Position.y; r0.z <- p.Position.z
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r1.xyzw, v[0][1].x, l(60), t0.xyzw  // r1.x <- p.AxisY.x; r1.y <- p.AxisY.y; r1.z <- p.AxisY.z; r1.w <- p.AxisX.x
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r2.xyzw, v[0][1].x, l(76), t0.zxyw  // r2.y <- p.AxisX.y; r2.z <- p.AxisX.z; r2.x <- p.AxisZ.x; r2.w <- p.AxisZ.y
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r3.xyzw, v[0][1].x, l(92), t0.xyzw  // r3.x <- p.AxisZ.z; r3.y <- p.Size3.x; r3.z <- p.Size3.y; r3.w <- p.Size3.z

#line 1544
mov r4.x, r1.w
mov r4.yz, r2.yyzy

#line 1546
mov r5.xy, r2.xwxx
mov r5.z, r3.x

#line 1547
mov r6.w, l(1.000000)

#line 1540
mov r0.w, l(0)  // r0.w <- i
loop 
  uge r4.w, r0.w, l(4)
  breakc_nz r4.w

#line 1544
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].xxxx
  mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 1545
  mul r8.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r7.xyz, r8.xyzx, r3.zzzz, r7.xyzx

#line 1546
  mul r8.xyz, r5.xyzx, icb[r0.w + 0].zzzz
  mad r6.xyz, r8.xyzx, r3.wwww, r7.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1547
  dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
  dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
  dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
  dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 1550
  dp4 r8.x, r7.xyzw, cb1[0].xyzw  // r8.x <- posView.x
  dp4 r8.y, r7.xyzw, cb1[1].xyzw  // r8.y <- posView.y
  dp4 r8.z, r7.xyzw, cb1[2].xyzw  // r8.z <- posView.z
  dp4 r8.w, r7.xyzw, cb1[3].xyzw  // r8.w <- posView.w

#line 1551
  dp4 r4.w, r8.xyzw, cb1[8].xyzw  // r4.w <- streams.ShadingPosition_id0.x
  dp4 r5.w, r8.xyzw, cb1[9].xyzw  // r5.w <- streams.ShadingPosition_id0.y
  dp4 r6.x, r8.xyzw, cb1[10].xyzw  // r6.x <- streams.ShadingPosition_id0.z
  dp4 r6.y, r8.xyzw, cb1[11].xyzw  // r6.y <- streams.ShadingPosition_id0.w

#line 1562
  mov o0.xyzw, r7.xyzw
  mov o1.xy, r2.xwxx
  mov o1.z, r3.x
  mov o1.w, r6.y
  mov o2.x, r4.w
  mov o2.y, r5.w
  mov o2.z, r6.x
  mov o2.w, r6.y
  mov o3.xyzw, v[0][2].xyzw
  mov o4.x, v[0][1].x
  emit_stream m0

#line 1564
  iadd r0.w, r0.w, l(1)
endloop 

#line 1565
cut_stream m0

#line 1600
mov r4.xy, r2.xwxx
mov r4.z, r3.x

#line 1544
mov r2.x, r1.w

#line 1547
mov r5.w, l(1.000000)

#line 1540
mov r0.w, l(4)  // r0.w <- i
loop 
  uge r2.w, r0.w, l(8)
  breakc_nz r2.w

#line 1544
  mul r6.xyz, r2.xyzx, icb[r0.w + 0].xxxx
  mad r6.xyz, r6.xyzx, r3.yyyy, r0.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1545
  mul r7.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r6.xyz, r7.xyzx, r3.zzzz, r6.xyzx

#line 1546
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].zzzz
  mad r5.xyz, r7.xyzx, r3.wwww, r6.xyzx  // r5.x <- posWorld.x; r5.y <- posWorld.y; r5.z <- posWorld.z

#line 1547
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
  dp4 r6.y, r5.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
  dp4 r6.z, r5.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
  dp4 r6.w, r5.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1550
  dp4 r7.x, r6.xyzw, cb1[0].xyzw  // r7.x <- posView.x
  dp4 r7.y, r6.xyzw, cb1[1].xyzw  // r7.y <- posView.y
  dp4 r7.z, r6.xyzw, cb1[2].xyzw  // r7.z <- posView.z
  dp4 r7.w, r6.xyzw, cb1[3].xyzw  // r7.w <- posView.w

#line 1551
  dp4 r2.w, r7.xyzw, cb1[8].xyzw  // r2.w <- streams.ShadingPosition_id0.x
  dp4 r3.x, r7.xyzw, cb1[9].xyzw  // r3.x <- streams.ShadingPosition_id0.y
  dp4 r4.w, r7.xyzw, cb1[10].xyzw  // r4.w <- streams.ShadingPosition_id0.z
  dp4 r5.x, r7.xyzw, cb1[11].xyzw  // r5.x <- streams.ShadingPosition_id0.w

#line 1562
  mov o0.xyzw, r6.xyzw
  mov o1.xyz, -r4.xyzx
  mov o1.w, r5.x
  mov o2.x, r2.w
  mov o2.y, r3.x
  mov o2.z, r4.w
  mov o2.w, r5.x
  mov o3.xyzw, v[0][2].xyzw
  mov o4.x, v[0][1].x
  emit_stream m0

#line 1564
  iadd r0.w, r0.w, l(1)
endloop 

#line 1565
cut_stream m0

#line 1544
mov r2.x, r1.w

#line 1547
mov r5.w, l(1.000000)

#line 1540
mov r0.w, l(8)  // r0.w <- i
loop 
  uge r2.w, r0.w, l(12)
  breakc_nz r2.w

#line 1544
  mul r6.xyz, r2.xyzx, icb[r0.w + 0].xxxx
  mad r6.xyz, r6.xyzx, r3.yyyy, r0.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1545
  mul r7.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r6.xyz, r7.xyzx, r3.zzzz, r6.xyzx

#line 1546
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].zzzz
  mad r5.xyz, r7.xyzx, r3.wwww, r6.xyzx  // r5.x <- posWorld.x; r5.y <- posWorld.y; r5.z <- posWorld.z

#line 1547
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
  dp4 r6.y, r5.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
  dp4 r6.z, r5.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
  dp4 r6.w, r5.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1550
  dp4 r7.x, r6.xyzw, cb1[0].xyzw  // r7.x <- posView.x
  dp4 r7.y, r6.xyzw, cb1[1].xyzw  // r7.y <- posView.y
  dp4 r7.z, r6.xyzw, cb1[2].xyzw  // r7.z <- posView.z
  dp4 r7.w, r6.xyzw, cb1[3].xyzw  // r7.w <- posView.w

#line 1551
  dp4 r2.w, r7.xyzw, cb1[8].xyzw  // r2.w <- streams.ShadingPosition_id0.x
  dp4 r3.x, r7.xyzw, cb1[9].xyzw  // r3.x <- streams.ShadingPosition_id0.y
  dp4 r4.w, r7.xyzw, cb1[10].xyzw  // r4.w <- streams.ShadingPosition_id0.z
  dp4 r5.x, r7.xyzw, cb1[11].xyzw  // r5.x <- streams.ShadingPosition_id0.w

#line 1562
  mov o0.xyzw, r6.xyzw
  mov o1.xyz, r1.xyzx
  mov o1.w, r5.x
  mov o2.x, r2.w
  mov o2.y, r3.x
  mov o2.z, r4.w
  mov o2.w, r5.x
  mov o3.xyzw, v[0][2].xyzw
  mov o4.x, v[0][1].x
  emit_stream m0

#line 1564
  iadd r0.w, r0.w, l(1)
endloop 

#line 1565
cut_stream m0

#line 1544
mov r2.x, r1.w

#line 1547
mov r5.w, l(1.000000)

#line 1540
mov r0.w, l(12)  // r0.w <- i
loop 
  uge r2.w, r0.w, l(16)
  breakc_nz r2.w

#line 1544
  mul r6.xyz, r2.xyzx, icb[r0.w + 0].xxxx
  mad r6.xyz, r6.xyzx, r3.yyyy, r0.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1545
  mad r6.xyz, -r3.zzzz, r1.xyzx, r6.xyzx

#line 1546
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].zzzz
  mad r5.xyz, r7.xyzx, r3.wwww, r6.xyzx  // r5.x <- posWorld.x; r5.y <- posWorld.y; r5.z <- posWorld.z

#line 1547
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
  dp4 r6.y, r5.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
  dp4 r6.z, r5.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
  dp4 r6.w, r5.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1550
  dp4 r7.x, r6.xyzw, cb1[0].xyzw  // r7.x <- posView.x
  dp4 r7.y, r6.xyzw, cb1[1].xyzw  // r7.y <- posView.y
  dp4 r7.z, r6.xyzw, cb1[2].xyzw  // r7.z <- posView.z
  dp4 r7.w, r6.xyzw, cb1[3].xyzw  // r7.w <- posView.w

#line 1551
  dp4 r2.w, r7.xyzw, cb1[8].xyzw  // r2.w <- streams.ShadingPosition_id0.x
  dp4 r3.x, r7.xyzw, cb1[9].xyzw  // r3.x <- streams.ShadingPosition_id0.y
  dp4 r4.w, r7.xyzw, cb1[10].xyzw  // r4.w <- streams.ShadingPosition_id0.z
  dp4 r5.x, r7.xyzw, cb1[11].xyzw  // r5.x <- streams.ShadingPosition_id0.w

#line 1562
  mov o0.xyzw, r6.xyzw
  mov o1.xyz, -r1.xyzx
  mov o1.w, r5.x
  mov o2.x, r2.w
  mov o2.y, r3.x
  mov o2.z, r4.w
  mov o2.w, r5.x
  mov o3.xyzw, v[0][2].xyzw
  mov o4.x, v[0][1].x
  emit_stream m0

#line 1564
  iadd r0.w, r0.w, l(1)
endloop 

#line 1565
cut_stream m0

#line 1544
mov r2.x, r1.w

#line 1547
mov r5.w, l(1.000000)

#line 1540
mov r0.w, l(16)  // r0.w <- i
loop 
  uge r2.w, r0.w, l(20)
  breakc_nz r2.w

#line 1544
  mul r6.xyz, r2.xyzx, icb[r0.w + 0].xxxx
  mad r6.xyz, r6.xyzx, r3.yyyy, r0.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1545
  mul r7.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r6.xyz, r7.xyzx, r3.zzzz, r6.xyzx

#line 1546
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].zzzz
  mad r5.xyz, r7.xyzx, r3.wwww, r6.xyzx  // r5.x <- posWorld.x; r5.y <- posWorld.y; r5.z <- posWorld.z

#line 1547
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
  dp4 r6.y, r5.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
  dp4 r6.z, r5.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
  dp4 r6.w, r5.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1550
  dp4 r7.x, r6.xyzw, cb1[0].xyzw  // r7.x <- posView.x
  dp4 r7.y, r6.xyzw, cb1[1].xyzw  // r7.y <- posView.y
  dp4 r7.z, r6.xyzw, cb1[2].xyzw  // r7.z <- posView.z
  dp4 r7.w, r6.xyzw, cb1[3].xyzw  // r7.w <- posView.w

#line 1551
  dp4 r2.w, r7.xyzw, cb1[8].xyzw  // r2.w <- streams.ShadingPosition_id0.x
  dp4 r3.x, r7.xyzw, cb1[9].xyzw  // r3.x <- streams.ShadingPosition_id0.y
  dp4 r4.w, r7.xyzw, cb1[10].xyzw  // r4.w <- streams.ShadingPosition_id0.z
  dp4 r5.x, r7.xyzw, cb1[11].xyzw  // r5.x <- streams.ShadingPosition_id0.w

#line 1562
  mov o0.xyzw, r6.xyzw
  mov o1.x, r1.w
  mov o1.yz, r2.yyzy
  mov o1.w, r5.x
  mov o2.x, r2.w
  mov o2.y, r3.x
  mov o2.z, r4.w
  mov o2.w, r5.x
  mov o3.xyzw, v[0][2].xyzw
  mov o4.x, v[0][1].x
  emit_stream m0

#line 1564
  iadd r0.w, r0.w, l(1)
endloop 

#line 1565
cut_stream m0

#line 1604
mov r2.x, r1.w

#line 1544
mad r0.xyz, -r3.yyyy, r2.xyzx, r0.xyzx  // r0.x <- posWorld.x; r0.y <- posWorld.y; r0.z <- posWorld.z

#line 1547
mov r5.w, l(1.000000)

#line 1540
mov r0.w, l(20)  // r0.w <- i
loop 
  uge r1.w, r0.w, l(24)
  breakc_nz r1.w

#line 1545
  mul r6.xyz, r1.xyzx, icb[r0.w + 0].yyyy
  mad r6.xyz, r6.xyzx, r3.zzzz, r0.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1546
  mul r7.xyz, r4.xyzx, icb[r0.w + 0].zzzz
  mad r5.xyz, r7.xyzx, r3.wwww, r6.xyzx  // r5.x <- posWorld.x; r5.y <- posWorld.y; r5.z <- posWorld.z

#line 1547
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
  dp4 r6.y, r5.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
  dp4 r6.z, r5.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
  dp4 r6.w, r5.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1550
  dp4 r7.x, r6.xyzw, cb1[0].xyzw  // r7.x <- posView.x
  dp4 r7.y, r6.xyzw, cb1[1].xyzw  // r7.y <- posView.y
  dp4 r7.z, r6.xyzw, cb1[2].xyzw  // r7.z <- posView.z
  dp4 r7.w, r6.xyzw, cb1[3].xyzw  // r7.w <- posView.w

#line 1551
  dp4 r1.w, r7.xyzw, cb1[8].xyzw  // r1.w <- streams.ShadingPosition_id0.x
  dp4 r2.w, r7.xyzw, cb1[9].xyzw  // r2.w <- streams.ShadingPosition_id0.y
  dp4 r3.x, r7.xyzw, cb1[10].xyzw  // r3.x <- streams.ShadingPosition_id0.z
  dp4 r3.y, r7.xyzw, cb1[11].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 1562
  mov o0.xyzw, r6.xyzw
  mov o1.xyz, -r2.xyzx
  mov o1.w, r3.y
  mov o2.x, r1.w
  mov o2.y, r2.w
  mov o2.z, r3.x
  mov o2.w, r3.y
  mov o3.xyzw, v[0][2].xyzw
  mov o4.x, v[0][1].x
  emit_stream m0

#line 1564
  iadd r0.w, r0.w, l(1)
endloop 

#line 1565
cut_stream m0

#line 1605
ret 
// Approximately 239 instruction slots used
@G    Pixel => 0b7087a613daf239271c05b25bb505b9
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
//   uint MaterialIndex_id147;          // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id188;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id190[8];                 // Offset:  464 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset:  976 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float InputValue_id211;            // Offset:    0 Size:     4
//   float InputValue_id220;            // Offset:    4 Size:     4
//   float InputValue_id237;            // Offset:    8 Size:     4
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
//   float3 AmbientLight_id191;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id196[9];   // Offset: 1424 Size:   140
//   float MipCount_id197;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id199;          // Offset: 1568 Size:    64
//   float Intensity_id200;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for Particles_id143
// {
//
//   struct Particle
//   {
//       
//       float3 Velocity;               // Offset:    0
//       float3 Position;               // Offset:   12
//       float4 Color;                  // Offset:   24
//       float Drag;                    // Offset:   40
//       int Cycle;                     // Offset:   44
//       float Age;                     // Offset:   48
//       float LifeTime;                // Offset:   52
//       int Id;                        // Offset:   56
//       float3 AxisY;                  // Offset:   60
//       float3 AxisX;                  // Offset:   72
//       float3 AxisZ;                  // Offset:   84
//       float3 Size3;                  // Offset:   96
//
//   } $Element;                        // Offset:    0 Size:   108
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
// Particles_id143                   texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id249    texture  float4          2d             t1      1 
// ShadowMapTexture_id153            texture  float4          2d             t2      1 
// LightClusters_id181               texture   uint2          3d             t3      1 
// LightIndices_id182                texture    uint         buf             t4      1 
// PointLights_id186                 texture  float4         buf             t5      1 
// SpotLights_id187                  texture  float4         buf             t6      1 
// CubeMap_id198                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID173_SEM     0   xyzw        3     NONE   float   xy w
// VERTEXID_ID142_SEM       0   x           4     NONE    uint   x   
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
dcl_constantbuffer CB0[61], dynamicIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_structured t0, 108
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texturecube (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps_siv linear noperspective v2.z, position
dcl_input_ps linear v3.xyw
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 22
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.normalWS_id19.x; v1.y <- __input__.normalWS_id19.y; v1.z <- __input__.normalWS_id19.z; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v1.w <- __input__.DepthVS_id23; 
//   v3.x <- __input__.ScreenPosition_id173.x; v3.y <- __input__.ScreenPosition_id173.y; v3.z <- __input__.ScreenPosition_id173.z; v3.w <- __input__.ScreenPosition_id173.w; 
//   v4.x <- __input__.VertexID_id142; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1582 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_0813f4219aef7b22fca8798ba5cfa9c0.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id173.x; r0.y <- streams.ScreenPosition_id173.y

#line 1518
dp3 r0.z, v1.xyzx, v1.xyzx
lt r0.w, l(0.000000), r0.z

#line 1519
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v1.xyzx

#line 1472
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id68.x; r3.y <- streams.viewWS_id68.y; r3.z <- streams.viewWS_id68.z

#line 447
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r4.xyzw, v4.x, l(24), t0.xyzw  // r4.x <- <GetParticle_id43 return value>.Color.x; r4.y <- <GetParticle_id43 return value>.Color.y; r4.z <- <GetParticle_id43 return value>.Color.z; r4.w <- <GetParticle_id43 return value>.Color.w

#line 1396
add r0.w, -cb1[0].x, l(1.000000)  // r0.w <- glossiness

#line 1388
add r5.xyz, r4.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb1[0].yyyy, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id55.x; r5.y <- streams.matSpecular_id55.y; r5.z <- streams.matSpecular_id55.z

#line 1389
mad r4.xyz, cb1[0].yyyy, -r4.xyzx, r4.xyzx  // r4.x <- streams.matDiffuse_id53.x; r4.y <- streams.matDiffuse_id53.y; r4.z <- streams.matDiffuse_id53.z

#line 447
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r6.xyz, v4.x, l(24), t0.xyzx  // r6.x <- <GetParticle_id43 return value>.Color.x; r6.y <- <GetParticle_id43 return value>.Color.y; r6.z <- <GetParticle_id43 return value>.Color.z

#line 1221
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1165
dp3 r1.w, r1.xyzx, r3.xyzx
max r7.y, r1.w, l(0.000100)  // r7.y <- streams.NdotV_id72

#line 1166
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 1167
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id70

#line 1245
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 1135
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id49

#line 936
  lt r2.w, cb2[83].x, v1.w

#line 939
  and r2.w, r2.w, l(1)  // r2.w <- cascadeIndex

#line 936
  lt r3.w, cb2[84].x, v1.w

#line 939
  movc r2.w, r3.w, l(2), r2.w

#line 936
  lt r3.w, cb2[85].x, v1.w

#line 939
  movc r2.w, r3.w, l(3), r2.w

#line 739
  add r5.w, -r1.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- normalOffsetScale

#line 740
  mul r6.w, cb2[28].z, cb2[82].x
  dp2 r5.w, r6.wwww, r5.wwww

#line 944
  mad r8.xyz, r5.wwww, r1.xyzx, v0.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 732
  ishl r5.w, r2.w, l(2)
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r6.w, r8.xyzw, cb2[r5.w + 31].xyzw  // r6.w <- shadowPosition.z
  dp4 r7.z, r8.xyzw, cb2[r5.w + 32].xyzw  // r7.z <- shadowPosition.w

#line 733
  add r9.z, r6.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 734
  div r9.xyz, r9.xyzx, r7.zzzz

#line 539
  mad r7.zw, r9.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r9.xy, r7.zwzz  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 540
  add r7.zw, r7.zzzw, -r9.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 541
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 542
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 421
  mad r10.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 422
  mad r11.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 424
  mad r12.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 423
  div r12.xy, r12.xyxx, r11.yxyy
  add r13.xw, r12.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 424
  div r12.xy, r12.zwzz, r10.xyxx
  add r13.yz, r12.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 425
  mad r12.xy, r7.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r12.xy, r12.xyxx, r10.wzww
  add r12.xw, r12.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 426
  div r7.zw, r7.zzzw, r11.zzzw
  add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 428
  mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 433
  mov r12.yz, r13.wwyw

#line 434
  mov r14.zw, r12.yyyz

#line 432
  mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 433
  mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 434
  mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 435
  mov r13.y, r12.x
  mul r7.zw, -r10.wwwz, r11.xxxy

#line 436
  mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
  mul r14.zw, r10.yyyx, -r10.wwwz

#line 437
  mad r20.xy, r12.wxww, cb2[28].zwzz, r9.xyxx
  mul r20.zw, r10.yyyz, r10.xxxw

#line 438
  mov r13.w, r14.x
  mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 440
  mov r12.xz, r13.xxzx

#line 439
  mov r12.y, r14.y
  mul r13.xz, r11.xxyx, -r11.zzwz

#line 440
  mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.xz, r10.yyxy, -r11.zzwz

#line 441
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
  mul r10.xyzw, r10.xyzw, r11.xyzw

#line 442
  mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
  mul r11.xy, r11.xwxx, r11.yzyy

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r15.xyxx, t2.xxxx, s1, r9.z  // r6.w <- <SampleTextureAndCompare_id76 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r15.zwzz, t2.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id76 return value>

#line 635
  mul r9.w, r9.w, r10.x
  mad r6.w, r11.x, r6.w, r9.w  // r6.w <- shadow

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r17.xyxx, t2.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id76 return value>

#line 635
  mad r6.w, r7.z, r9.w, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r18.xyxx, t2.xxxx, s1, r9.z  // r7.z <- <SampleTextureAndCompare_id76 return value>

#line 635
  mad r6.w, r13.x, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r16.xyxx, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r10.y, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r16.zwzz, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r20.z, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r17.zwzz, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r14.z, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r18.zwzz, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r12.x, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r19.xyxx, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r7.w, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r19.zwzz, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r14.w, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r20.xyxx, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r20.w, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r13.ywyy, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r10.z, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r21.xyxx, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r13.z, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r21.zwzz, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r12.z, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r12.ywyy, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r10.w, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r9.xyxx, t2.xxxx, s1, r9.z

#line 635
  mad r6.w, r11.y, r7.z, r6.w

#line 637
  mul r9.xyz, r6.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r9.z <- shadow

#line 950
  ilt r7.z, l(0), r2.w
  if_nz r7.z

#line 952
    iadd r7.z, r2.w, l(-1)
    add r7.z, -cb2[r7.z + 83].x, cb2[r2.w + 83].x  // r7.z <- splitSize

#line 953
  else 
    mov r7.z, cb2[r2.w + 83].x  // r7.z <- splitSize
  endif 

#line 954
  add r2.w, -v1.w, cb2[r2.w + 83].x
  div r2.w, r2.w, r7.z  // r2.w <- splitDist

#line 955
  lt r7.z, r2.w, l(0.200000)
  if_nz r7.z

#line 958
    if_nz r3.w

#line 960
      mov r9.xyz, r9.zzzz  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z
    else 

#line 957
      mul_sat r2.w, r2.w, l(5.000000)
      mad r3.w, r2.w, l(-2.000000), l(3.000000)
      mul r2.w, r2.w, r2.w
      mul r2.w, r2.w, r3.w  // r2.w <- lerpAmt

#line 732
      dp4 r10.x, r8.xyzw, cb2[r5.w + 33].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r8.xyzw, cb2[r5.w + 34].xyzw  // r10.y <- shadowPosition.y
      dp4 r3.w, r8.xyzw, cb2[r5.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r5.w, r8.xyzw, cb2[r5.w + 36].xyzw  // r5.w <- shadowPosition.w

#line 733
      add r10.z, r3.w, -cb2[81].x  // r10.z <- shadowPosition.z

#line 734
      div r8.xyz, r10.xyzx, r5.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 539
      mad r7.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r8.xy, r7.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 540
      add r7.zw, r7.zzzw, -r8.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 541
      add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 542
      mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 421
      mad r10.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 422
      mad r11.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 424
      mad r12.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 423
      div r12.xy, r12.xyxx, r11.yxyy
      add r13.xw, r12.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 424
      div r12.xy, r12.zwzz, r10.xyxx
      add r13.yz, r12.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 425
      mad r12.xy, r7.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r12.xy, r12.xyxx, r10.wzww
      add r12.xw, r12.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 426
      div r7.zw, r7.zzzw, r11.zzzw
      add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 428
      mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r8.xyxy

#line 433
      mov r12.yz, r13.wwyw

#line 434
      mov r14.zw, r12.yyyz

#line 432
      mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r8.xyxy

#line 433
      mad r17.xyzw, r12.wywz, cb2[28].zwzw, r8.xyxy

#line 434
      mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r8.xyxy

#line 435
      mov r13.y, r12.x
      mul r7.zw, -r10.wwwz, r11.xxxy

#line 436
      mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r8.xyxy
      mul r14.zw, r10.yyyx, -r10.wwwz

#line 437
      mad r20.xy, r12.wxww, cb2[28].zwzz, r8.xyxx
      mul r20.zw, r10.yyyz, r10.xxxw

#line 438
      mov r13.w, r14.x
      mad r13.yw, r13.wwwy, cb2[28].zzzw, r8.xxxy

#line 440
      mov r12.xz, r13.xxzx

#line 439
      mov r12.y, r14.y
      mul r13.xz, r11.xxyx, -r11.zzwz

#line 440
      mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy
      mul r12.xz, r10.yyxy, -r11.zzwz

#line 441
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r8.xxxy
      mul r10.xyzw, r10.xyzw, r11.xyzw

#line 442
      mad r8.xy, r14.xyxx, cb2[28].zwzz, r8.xyxx
      mul r11.xy, r11.xwxx, r11.yzyy

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.xyxx, t2.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id76 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t2.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id76 return value>

#line 635
      mul r5.w, r5.w, r10.x
      mad r3.w, r11.x, r3.w, r5.w  // r3.w <- shadow

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r17.xyxx, t2.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id76 return value>

#line 635
      mad r3.w, r7.z, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r18.xyxx, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r13.x, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.xyxx, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r10.y, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.zwzz, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r20.z, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r17.zwzz, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r14.z, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r18.zwzz, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r12.x, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r19.xyxx, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r7.w, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r19.zwzz, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r14.w, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.xyxx, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r20.w, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r13.ywyy, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r10.z, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r21.xyxx, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r13.z, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r21.zwzz, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r12.z, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.ywyy, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r10.w, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r8.xyxx, t2.xxxx, s1, r8.z

#line 635
      mad r3.w, r11.y, r5.w, r3.w

#line 637
      mul r3.w, r3.w, l(0.000370)

#line 964
      mad r5.w, r6.w, l(0.000370), -r3.w
      mad r9.xyz, r2.wwww, r5.wwww, r3.wwww  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z

#line 965
    endif 

#line 966
  endif 

#line 1137
  mul r8.xyz, r9.xyzx, cb2[27].xyzx
  mul r8.xyz, r1.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id44.x; r8.y <- streams.lightColorNdotL_id44.y; r8.z <- streams.lightColorNdotL_id44.z

#line 1127
  mad r2.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.z, r0.z
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.H_id75.x; r2.y <- streams.H_id75.y; r2.z <- streams.H_id75.z

#line 1128
  dp3_sat r0.z, r1.xyzx, r2.xyzx  // r0.z <- streams.NdotH_id76

#line 1129
  dp3_sat r2.x, -cb2[26].xyzx, r2.xyzx  // r2.x <- streams.LdotH_id77

#line 1123
  mul r2.yzw, r4.xxyz, r8.xxyz

#line 605
  add r9.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.x, -r2.x, l(1.000000)
  mul r3.w, r2.x, r2.x
  mul r3.w, r3.w, r3.w
  mul r2.x, r2.x, r3.w
  mad r9.xyz, r9.xyzx, r2.xxxx, r5.xyzx  // r9.x <- <FresnelSchlick_id179 return value>.x; r9.y <- <FresnelSchlick_id179 return value>.y; r9.z <- <FresnelSchlick_id179 return value>.z

#line 600
  mul r2.x, r0.w, l(0.500000)  // r2.x <- k

#line 601
  mad r3.w, -r0.w, l(0.500000), l(1.000000)
  mad r5.w, r1.w, r3.w, r2.x
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id195 return value>
  mad r2.x, r7.y, r3.w, r2.x
  div r2.x, r7.y, r2.x  // r2.x <- <VisibilityhSchlickGGX_id195 return value>

#line 719
  mul r2.x, r2.x, r5.w
  mul r1.w, r7.y, r1.w
  div r1.w, r2.x, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id197 return value>

#line 713
  mul r2.x, r0.w, r0.w  // r2.x <- alphaR2

#line 714
  mul r0.z, r0.z, r0.z
  mad r3.w, r0.w, r0.w, l(-1.000000)
  mad r0.z, r0.z, r3.w, l(1.000000)
  max r0.z, r0.z, l(0.000100)  // r0.z <- d

#line 715
  mul r0.z, r0.z, r0.z
  mul r0.z, r0.z, l(3.141593)
  div r0.z, r2.x, r0.z  // r0.z <- <NormalDistributionGGX_id209 return value>

#line 1117
  mul r9.xyz, r1.wwww, r9.xyzx
  mul r9.xyz, r0.zzzz, r9.xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx

#line 1118
  mul r8.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r8.x <- <ComputeDirectLightContribution_id550 return value>.x; r8.y <- <ComputeDirectLightContribution_id550 return value>.y; r8.z <- <ComputeDirectLightContribution_id550 return value>.z

#line 1253
  mad r2.xyz, r2.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 1254
else 
  mov r2.xyz, l(0,0,0,0)  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z
endif 

#line 901
add r0.z, v2.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 902
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 903
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 904
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 903
ftoi r8.xyz, r0.xyzx  // r8.z <- slice

#line 904
mov r8.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r8.xyzw, t3.xyzw  // r0.x <- streams.lightData_id179.x; r0.y <- streams.lightData_id179.y

#line 1105
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id253 return value>

#line 1263
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r8.w, v0.x  // r8.w <- streams.PositionWS_id22.x
mov r9.xy, v0.yzyy  // r9.x <- streams.PositionWS_id22.y; r9.y <- streams.PositionWS_id22.z
mov r9.zw, r3.xxxy  // r9.z <- streams.viewWS_id68.x; r9.w <- streams.viewWS_id68.y
mov r10.z, r3.z  // r10.z <- streams.viewWS_id68.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matDiffuseVisible_id69.x; r11.y <- streams.matDiffuseVisible_id69.y; r11.z <- streams.matDiffuseVisible_id69.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matSpecularVisible_id71.x; r12.y <- streams.matSpecularVisible_id71.y; r12.z <- streams.matSpecularVisible_id71.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id70
mov r7.w, r7.y  // r7.w <- streams.NdotV_id72
mov r7.z, r0.x  // r7.z <- streams.lightIndex_id180
mov r13.xyz, r2.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.z
  breakc_nz r2.w

#line 1265
  if_nz r2.w

#line 1267
    break 

#line 1268
  endif 

#line 888
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r7.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 889
  iadd r7.z, r7.z, l(1)  // r7.z <- streams.lightIndex_id180

#line 891
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r3.wwww, t5.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 892
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r2.wwww, t5.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 592
  mov r16.x, r8.w
  mov r16.yz, r9.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 593
  dp3 r2.w, r14.xyzx, r14.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 594
  div r14.xyz, r14.xyzx, r3.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 480
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 367
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 368
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 369
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id90 return value>

#line 481
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1091
  dp3 r3.w, r8.xyzx, r14.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 1093
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 1127
  mov r10.xy, r9.zwzz
  add r10.xyw, r14.xyxz, r10.xyxz
  dp3 r2.w, r10.xywx, r10.xywx
  rsq r2.w, r2.w
  mul r10.xyw, r2.wwww, r10.xyxw  // r10.x <- streams.H_id75.x; r10.y <- streams.H_id75.y; r10.w <- streams.H_id75.z

#line 1128
  dp3_sat r2.w, r8.xyzx, r10.xywx  // r2.w <- streams.NdotH_id76

#line 1129
  dp3_sat r5.w, r14.xyzx, r10.xywx  // r5.w <- streams.LdotH_id77

#line 1123
  mul r10.xyw, r11.xyxz, r15.xyxz

#line 1273
  mad r10.xyw, r10.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 605
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r14.xyz, r14.xyzx, r5.wwww, r12.xyzx  // r14.x <- <FresnelSchlick_id179 return value>.x; r14.y <- <FresnelSchlick_id179 return value>.y; r14.z <- <FresnelSchlick_id179 return value>.z

#line 600
  mul r5.w, r12.w, l(0.500000)  // r5.w <- k

#line 601
  mad r6.w, -r12.w, l(0.500000), l(1.000000)
  mad r11.w, r3.w, r6.w, r5.w
  div r11.w, r3.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id195 return value>
  mad r5.w, r7.w, r6.w, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id195 return value>

#line 719
  mul r5.w, r5.w, r11.w
  mul r3.w, r7.w, r3.w
  div r3.w, r5.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id197 return value>

#line 713
  mul r5.w, r12.w, r12.w  // r5.w <- alphaR2

#line 714
  mul r2.w, r2.w, r2.w
  mad r6.w, r12.w, r12.w, l(-1.000000)
  mad r2.w, r2.w, r6.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 715
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r5.w, r2.w  // r2.w <- <NormalDistributionGGX_id209 return value>

#line 1117
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1277
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r10.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1263
  iadd r1.w, r1.w, l(1)

#line 1279
endloop   // r7.z <- streams.lightIndex_id180

#line 1083
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id265 return value>

#line 1287
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id22.x; r2.y <- streams.PositionWS_id22.y; r2.z <- streams.PositionWS_id22.z
mov r8.y, r0.w  // r8.y <- streams.alphaRoughness_id70
mov r8.w, r7.y  // r8.w <- streams.NdotV_id72
mov r9.xyz, r1.xyzx  // r9.x <- streams.normalWS_id19.x; r9.y <- streams.normalWS_id19.y; r9.z <- streams.normalWS_id19.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.viewWS_id68.x; r10.y <- streams.viewWS_id68.y
mov r11.xyz, r4.xyzx
mov r12.xyz, r5.xyzx
mov r14.xyz, r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r0.y, r7.z  // r0.y <- streams.lightIndex_id180
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r1.w, r0.z, r0.x
  breakc_nz r1.w

#line 1289
  if_nz r1.w

#line 1291
    break 

#line 1292
  endif 

#line 860
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t4.yzwx  // r1.w <- realLightIndex

#line 861
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id180

#line 863
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r2.wwww, t6.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 866
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 864
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t6.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 865
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t6.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z

#line 866
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t6.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 579
  add r15.xyz, -r2.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 580
  dp3 r1.w, r15.xyzx, r15.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 581
  div r15.xyz, r15.xyzx, r2.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 473
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 361
  mul r1.w, r16.w, r1.w  // r1.w <- factor

#line 362
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 363
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id101 return value>

#line 474
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 465
  dp3 r2.w, -r17.xyzx, r15.xyzx  // r2.w <- cd

#line 466
  mad_sat r2.w, r2.w, r16.x, r16.y  // r2.w <- attenuation

#line 467
  mul r2.w, r2.w, r2.w

#line 587
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1069
  dp3 r2.w, r9.xyzx, r15.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 1071
  mul r16.xyz, r1.wwww, r18.xyzx
  mul r16.xyz, r2.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id44.x; r16.y <- streams.lightColorNdotL_id44.y; r16.z <- streams.lightColorNdotL_id44.z

#line 1127
  add r17.xyz, r10.xyzx, r15.xyzx
  dp3 r1.w, r17.xyzx, r17.xyzx
  rsq r1.w, r1.w
  mul r17.xyz, r1.wwww, r17.xyzx  // r17.x <- streams.H_id75.x; r17.y <- streams.H_id75.y; r17.z <- streams.H_id75.z

#line 1128
  dp3_sat r1.w, r9.xyzx, r17.xyzx  // r1.w <- streams.NdotH_id76

#line 1129
  dp3_sat r3.w, r15.xyzx, r17.xyzx  // r3.w <- streams.LdotH_id77

#line 1123
  mul r15.xyz, r11.xyzx, r16.xyzx

#line 1297
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 605
  add r17.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r5.w, r3.w, r3.w
  mul r5.w, r5.w, r5.w
  mul r3.w, r3.w, r5.w
  mad r17.xyz, r17.xyzx, r3.wwww, r12.xyzx  // r17.x <- <FresnelSchlick_id179 return value>.x; r17.y <- <FresnelSchlick_id179 return value>.y; r17.z <- <FresnelSchlick_id179 return value>.z

#line 600
  mul r3.w, r8.y, l(0.500000)  // r3.w <- k

#line 601
  mad r5.w, -r8.y, l(0.500000), l(1.000000)
  mad r6.w, r2.w, r5.w, r3.w
  div r6.w, r2.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id195 return value>
  mad r3.w, r8.w, r5.w, r3.w
  div r3.w, r8.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id195 return value>

#line 719
  mul r3.w, r3.w, r6.w
  mul r2.w, r8.w, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id197 return value>

#line 713
  mul r3.w, r8.y, r8.y  // r3.w <- alphaR2

#line 714
  mul r1.w, r1.w, r1.w
  mad r5.w, r8.y, r8.y, l(-1.000000)
  mad r1.w, r1.w, r5.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 715
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id209 return value>

#line 1117
  mul r17.xyz, r2.wwww, r17.xyzx
  mul r17.xyz, r1.wwww, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1301
  mad r14.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 1287
  iadd r0.z, r0.z, l(1)

#line 1303
endloop   // r0.y <- streams.lightIndex_id180

#line 1311
mov r0.xyz, v0.xyzx  // r0.x <- streams.PositionWS_id22.x; r0.y <- streams.PositionWS_id22.y; r0.z <- streams.PositionWS_id22.z
mov r2.y, r0.w  // r2.y <- streams.alphaRoughness_id70
mov r2.w, r7.y  // r2.w <- streams.NdotV_id72
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id68.x; r9.y <- streams.viewWS_id68.y; r9.z <- streams.viewWS_id68.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r12.xyz, r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.x, r1.w, l(8)
  breakc_nz r2.x

#line 1313
  ige r2.x, r1.w, cb0[28].x
  if_nz r2.x

#line 1315
    break 

#line 1316
  endif 

#line 839
  ishl r2.x, r1.w, l(2)

#line 566
  add r13.xyz, -r0.xyzx, cb0[r2.x + 29].xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 567
  dp3 r2.z, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.z  // r3.w <- lightVectorLength

#line 568
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 459
  max r3.w, r2.z, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 355
  mul r2.z, r2.z, cb0[r2.x + 31].z  // r2.z <- factor

#line 356
  mad r2.z, -r2.z, r2.z, l(1.000000)
  max r2.z, r2.z, l(0.000000)  // r2.z <- smoothFactor

#line 357
  mul r2.z, r2.z, r2.z  // r2.z <- <SmoothDistanceAttenuation_id112 return value>

#line 460
  mul r2.z, r2.z, r3.w  // r2.z <- attenuation

#line 451
  dp3 r3.w, -cb0[r2.x + 30].xyzx, r13.xyzx  // r3.w <- cd

#line 452
  mad_sat r3.w, r3.w, cb0[r2.x + 31].x, cb0[r2.x + 31].y  // r3.w <- attenuation

#line 453
  mul r3.w, r3.w, r3.w

#line 574
  mul r2.z, r2.z, r3.w  // r2.z <- attenuation

#line 1047
  dp3 r3.w, r8.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 1049
  mul r15.xyz, r2.zzzz, cb0[r2.x + 32].xyzx
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 1127
  add r16.xyz, r9.xyzx, r13.xyzx
  dp3 r2.x, r16.xyzx, r16.xyzx
  rsq r2.x, r2.x
  mul r16.xyz, r2.xxxx, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 1128
  dp3_sat r2.x, r8.xyzx, r16.xyzx  // r2.x <- streams.NdotH_id76

#line 1129
  dp3_sat r2.z, r13.xyzx, r16.xyzx  // r2.z <- streams.LdotH_id77

#line 1123
  mul r13.xyz, r10.xyzx, r15.xyzx

#line 1321
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 605
  add r16.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.z, -r2.z, l(1.000000)
  mul r5.w, r2.z, r2.z
  mul r5.w, r5.w, r5.w
  mul r2.z, r2.z, r5.w
  mad r16.xyz, r16.xyzx, r2.zzzz, r11.xyzx  // r16.x <- <FresnelSchlick_id179 return value>.x; r16.y <- <FresnelSchlick_id179 return value>.y; r16.z <- <FresnelSchlick_id179 return value>.z

#line 600
  mul r2.z, r2.y, l(0.500000)  // r2.z <- k

#line 601
  mad r5.w, -r2.y, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r2.z
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id195 return value>
  mad r2.z, r2.w, r5.w, r2.z
  div r2.z, r2.w, r2.z  // r2.z <- <VisibilityhSchlickGGX_id195 return value>

#line 719
  mul r2.z, r2.z, r6.w
  mul r3.w, r2.w, r3.w
  div r2.z, r2.z, r3.w  // r2.z <- <VisibilitySmithSchlickGGX_id197 return value>

#line 713
  mul r3.w, r2.y, r2.y  // r3.w <- alphaR2

#line 714
  mul r2.x, r2.x, r2.x
  mad r5.w, r2.y, r2.y, l(-1.000000)
  mad r2.x, r2.x, r5.w, l(1.000000)
  max r2.x, r2.x, l(0.000100)  // r2.x <- d

#line 715
  mul r2.x, r2.x, r2.x
  mul r2.x, r2.x, l(3.141593)
  div r2.x, r3.w, r2.x  // r2.x <- <NormalDistributionGGX_id209 return value>

#line 1117
  mul r16.xyz, r2.zzzz, r16.xyzx
  mul r16.xyz, r2.xxxx, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1325
  mad r12.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1311
  iadd r1.w, r1.w, l(1)

#line 1327
endloop 

#line 814
sqrt r0.x, r0.w
add r7.x, -r0.x, l(1.000000)  // r7.x <- glossiness

#line 815
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r7.xyxx, t1.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 816
mad r0.yzw, r5.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id372 return value>.x; r0.z <- <Compute_id372 return value>.y; r0.w <- <Compute_id372 return value>.z

#line 1030
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id551 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id551 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id551 return value>.z

#line 1339
mad r2.xyz, r4.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1019
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[100].xyzx  // r3.w <- sampleDirection.z

#line 667
mul r5.x, r2.w, r2.w  // r5.x <- y2

#line 668
mul r5.y, r3.w, r3.w  // r5.y <- z2

#line 672
mad r7.xyz, cb2[90].xyzx, r2.wwww, cb2[89].xyzx  // r7.x <- color.x; r7.y <- color.y; r7.z <- color.z

#line 673
mad r7.xyz, cb2[91].xyzx, -r3.wwww, r7.xyzx

#line 674
mad r7.xyz, cb2[92].xyzx, r1.wwww, r7.xyzx

#line 677
mul r8.xyz, r2.wwww, cb2[93].xyzx
mad r7.xyz, r8.xyzx, r1.wwww, r7.xyzx

#line 678
mul r8.xyz, r2.wwww, cb2[94].xyzx
mad r7.xyz, r8.xyzx, -r3.wwww, r7.xyzx

#line 679
mad r2.w, r5.y, l(3.000000), l(-1.000000)
mad r5.yzw, cb2[95].xxyz, r2.wwww, r7.xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 680
mul r7.xyz, r1.wwww, cb2[96].xyzx
mad r5.yzw, r7.xxyz, -r3.wwww, r5.yyzw

#line 681
mad r1.w, r1.w, r1.w, -r5.x
mad r5.xyz, cb2[97].xyzx, r1.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 1021
mul r5.xyz, r5.xyzx, cb2[102].xxxx  // r5.x <- streams.envLightDiffuseColor_id47.x; r5.y <- streams.envLightDiffuseColor_id47.y; r5.z <- streams.envLightDiffuseColor_id47.z

#line 1022
dp3 r1.w, -r3.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r3.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 1023
dp3 r3.x, r1.xyzx, cb2[98].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r1.xyzx, cb2[99].xyzx  // r3.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[100].xyzx  // r1.x <- sampleDirection.z

#line 1024
mov r3.z, -r1.x  // r3.z <- sampleDirection.z

#line 800
mul r0.x, r0.x, cb2[97].w  // r0.x <- mipLevel

#line 801
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r3.xyzx, t7.xyzw, s0, r0.x  // r1.x <- <Compute_id298 return value>.x; r1.y <- <Compute_id298 return value>.y; r1.z <- <Compute_id298 return value>.z

#line 1025
mul r1.xyz, r1.xyzx, cb2[102].xxxx  // r1.x <- streams.envLightSpecularColor_id48.x; r1.y <- streams.envLightSpecularColor_id48.y; r1.z <- streams.envLightSpecularColor_id48.z

#line 1347
mad r2.xyz, r4.xyzx, r5.xyzx, r2.xyzx

#line 1351
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1366
mad r0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id73.x; r0.y <- streams.shadingColor_id73.y; r0.z <- streams.shadingColor_id73.z

#line 1215
mad o0.xyz, r6.xyzx, cb1[0].zzzz, r0.xyzx

#line 1492
utof o1.xyzw, cb0[26].xxxx

#line 1587
mov o0.w, r4.w
ret 
// Approximately 546 instruction slots used
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
const static int TMaxLightCount_id189 = 8;
const static int TOrder_id193 = 3;
const static int TOrder_id195 = 3;
const static bool TInvert_id217 = true;
const static bool TIsEnergyConservative_id246 = false;
static const float PI_id248 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id258 = false;
static const float3 QuadPositions_id145[24] = { float3(-1, 1, 1), float3(1, 1, 1), float3(-1, -1, 1), float3(1, -1, 1), float3(1, 1, -1), float3(-1, 1, -1), float3(1, -1, -1), float3(-1, -1, -1), float3(1, 1, 1), float3(-1, 1, 1), float3(1, 1, -1), float3(-1, 1, -1), float3(-1, -1, 1), float3(1, -1, 1), float3(-1, -1, -1), float3(1, -1, -1), float3(1, -1, 1), float3(1, 1, 1), float3(1, -1, -1), float3(1, 1, -1), float3(-1, 1, 1), float3(-1, -1, 1), float3(-1, 1, -1), float3(-1, -1, -1)};
static const float2 QuadUV_id146[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id173;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    uint VertexID_id142;
    float DepthVS_id23;
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
    float4 ParticleColor_ShaderFXResult_0_id203;
    float Input_1_id210;
    float Input_2_id219;
    float Input_3_id236;
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
    float thicknessWS_id149;
    float3 shadowColor_id148;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id179;
    int lightIndex_id180;
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
    float3 normalWS_id19 : NORMALWS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float4 ScreenPosition_id173 : SCREENPOSITION_ID173_SEM;
    uint VertexID_id142 : VERTEXID_ID142_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VertexID_id142;
    float4 ScreenPosition_id173;
    float2 TexCoord_id131;
    float4 PositionWS_id22;
    float3 normalWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float3 normalWS_id19 : NORMALWS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float4 ScreenPosition_id173 : SCREENPOSITION_ID173_SEM;
    uint VertexID_id142 : VERTEXID_ID142_SEM;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id142 : VERTEXID_ID142_SEM;
    float4 ScreenPosition_id173 : SCREENPOSITION_ID173_SEM;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint VertexID_VS_id141;
    float3 meshNormal_id16;
    bool Skip_id144;
    float3 meshNormalWS_id17;
    float3 normalWS_id19;
    float4 ShadingPosition_id0;
    uint VertexID_id142;
    float4 ScreenPosition_id173;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id142 : VERTEXID_ID142_SEM;
    float4 ScreenPosition_id173 : SCREENPOSITION_ID173_SEM;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    uint VertexID_VS_id141 : SV_VertexID;
    float3 meshNormal_id16 : NORMAL;
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
struct Particle 
{
    float3 Velocity;
    float3 Position;
    float4 Color;
    float Drag;
    int Cycle;
    float Age;
    float LifeTime;
    int Id;
    float3 AxisY;
    float3 AxisX;
    float3 AxisZ;
    float3 Size3;
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
    uint MaterialIndex_id147;
    float4 _padding_PerDraw_Default;
    int LightCount_id188;
    SpotLightData Lights_id190[TMaxLightCount_id189];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float InputValue_id211;
    float InputValue_id220;
    float InputValue_id237;
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
    float3 AmbientLight_id191;
    float3 SphericalColors_id196[TOrder_id195 * TOrder_id195];
    float MipCount_id197;
    float4x4 SkyMatrix_id199;
    float Intensity_id200;
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
StructuredBuffer<Particle> Particles_id143;
Texture2D EnvironmentLightingDFG_LUT_id249;
Texture2D ShadowMapTexture_id153;
Texture3D<uint2> LightClusters_id181;
Buffer<uint> LightIndices_id182;
Buffer<float4> PointLights_id186;
Buffer<float4> SpotLights_id187;
TextureCube CubeMap_id198;
float4 Project_id68(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id155, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id155, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id155, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id155, uvW1.x * uvW1.y);
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
float SampleThickness_id79(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id153.SampleLevel(LinearBorderSampler_id114, shadowSpaceCoordinate.xy, 0).r;
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
Particle GetParticle_id43(inout PS_STREAMS streams)
{
    return Particles_id143[streams.VertexID_id142];
}
float GetAngularAttenuation_id114(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id113(float lightVectorLength, float lightInvSquareRadius)
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
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id154;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id155;
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
    const float4 topRightTexelWS = Project_id68(float4(ShadowMapTextureTexelSize_id155.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id68(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id81(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id68(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id68(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id155.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
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
    return ShadowMapTexture_id153.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id115, position, positionDepth);
}
void CalculatePCFKernelParameters_id74(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id154;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id155;
}
float Compute_id360()
{
    return InputValue_id237;
}
float4 Compute_id348(inout PS_STREAMS streams)
{
    return GetParticle_id43(streams).Color;
}
float Compute_id336()
{
    return InputValue_id220;
}
float Compute_id324()
{
    return InputValue_id211;
}
float4 Compute_id312(inout PS_STREAMS streams)
{
    return GetParticle_id43(streams).Color;
}
float ComputeAttenuation_id115(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id113(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id114(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
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
float VisibilityhSchlickGGX_id195(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id179(float3 f0, float3 f90, float lOrVDotH)
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
void Compute_id363(inout PS_STREAMS streams)
{
    streams.Input_3_id236 = Compute_id360();
}
void Compute_id351(inout PS_STREAMS streams)
{
    streams.ParticleColor_ShaderFXResult_0_id203 = Compute_id348(streams);
}
void Compute_id339(inout PS_STREAMS streams)
{
    streams.Input_2_id219 = Compute_id336();
}
void Compute_id327(inout PS_STREAMS streams)
{
    streams.Input_1_id210 = Compute_id324();
}
void Compute_id315(inout PS_STREAMS streams)
{
    streams.ParticleColor_ShaderFXResult_0_id203 = Compute_id312(streams);
}
float4 EvaluateSphericalHarmonics_id125(float3 sphericalColors[TOrder_id193 * TOrder_id193], float3 direction)
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
void ProcessLight_id116(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id115(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id105(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id104(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id94(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id91(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id209(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id248 * d * d);
}
float VisibilitySmithSchlickGGX_id197(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id195(alphaR, nDotL) * VisibilityhSchlickGGX_id195(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id185(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id179(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id73(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id157;
    return FilterThickness_id70(pixelPositionWS, meshNormalWS, DepthRanges_id162[arrayIndex], WorldToShadowCascadeUV_id159[arrayIndex], InverseWorldToShadowCascadeUV_id160[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id72(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id159[cascadeIndex + lightIndex * TCascadeCountBase_id157]);
    shadowPosition.z -= DepthBiases_id163[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id69(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id71(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id155.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id366(inout PS_STREAMS streams)
{
    return streams.Input_3_id236;
}
void Compute_id365(inout PS_STREAMS streams)
{

    {
        Compute_id363(streams);
    }
}
float4 Compute_id354(inout PS_STREAMS streams)
{
    return streams.ParticleColor_ShaderFXResult_0_id203;
}
void Compute_id353(inout PS_STREAMS streams)
{

    {
        Compute_id351(streams);
    }
}
float Compute_id342(inout PS_STREAMS streams)
{
    return streams.Input_2_id219;
}
void Compute_id341(inout PS_STREAMS streams)
{

    {
        Compute_id339(streams);
    }
}
float Compute_id330(inout PS_STREAMS streams)
{
    return streams.Input_1_id210;
}
void Compute_id329(inout PS_STREAMS streams)
{

    {
        Compute_id327(streams);
    }
}
float4 Compute_id318(inout PS_STREAMS streams)
{
    return streams.ParticleColor_ShaderFXResult_0_id203;
}
void Compute_id317(inout PS_STREAMS streams)
{

    {
        Compute_id315(streams);
    }
}
float4 Compute_id298(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id197;
    return CubeMap_id198.SampleLevel(LinearSampler_id113, direction, mipLevel);
}
float4 Compute_id293(float3 direction)
{
    return EvaluateSphericalHarmonics_id125(SphericalColors_id196, direction);
}
void PrepareEnvironmentLight_id129(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id372(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id249.SampleLevel(LinearSampler_id113, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id120(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id111(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id110(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id109(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id108(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id190[lightIndex].PositionWS;
    data.DirectionWS = Lights_id190[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id190[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id190[lightIndex].Color;
    ProcessLight_id116(streams, data);
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
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id97(inout PS_STREAMS streams, int lightIndexIgnored)
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
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id182.Load(streams.lightIndex_id180);
    streams.lightIndex_id180++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id186.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id186.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id94(streams, pointLight);
}
void PrepareLightData_id93(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id176.y / (projectedDepth - ZProjection_id176.x);
    float2 texCoord = float2(streams.ScreenPosition_id173.x + 1, 1 - streams.ScreenPosition_id173.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id183 + ClusterDepthBias_id184), 0));
    streams.lightData_id179 = LightClusters_id181.Load(int4(texCoord * ClusterStride_id185, slice, 0));
    streams.lightIndex_id180 = streams.lightData_id179.x;
}
float Compute_id464(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id209(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id434(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id197(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id404(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id185(f0, streams.LdotH_id77);
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
    int cascadeIndexBase = lightIndex * TCascadeCount_id165;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id165 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id171[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id71(OffsetScales_id164[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id165)
    {
        shadow = ComputeShadowFromCascade_id72(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id165 - 1)
            {
            }
            else if (TBlendCascades_id167)
            {
                float nextShadow = ComputeShadowFromCascade_id72(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id149 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id62(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id152[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id152[lightIndex].DirectionWS;
}
float Compute_id369(inout PS_STREAMS streams)
{
    Compute_id365(streams);
    return Compute_id366(streams);
}
float4 Compute_id357(inout PS_STREAMS streams)
{
    Compute_id353(streams);
    return Compute_id354(streams);
}
float Compute_id345(inout PS_STREAMS streams)
{
    Compute_id341(streams);
    return Compute_id342(streams);
}
float Compute_id333(inout PS_STREAMS streams)
{
    Compute_id329(streams);
    return Compute_id330(streams);
}
float4 Compute_id321(inout PS_STREAMS streams)
{
    Compute_id317(streams);
    return Compute_id318(streams);
}
void ResetStream_id215()
{
}
void AfterLightingAndShading_id521()
{
}
void AfterLightingAndShading_id502()
{
}
void PrepareEnvironmentLight_id311(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id308(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id129(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id199);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id293(sampleDirection).rgb * Intensity_id200 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id199);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id298(streams, sampleDirection).rgb * Intensity_id200 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id551(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id372(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id495(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id303(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id120(streams);
    float3 lightColor = AmbientLight_id191 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id274(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id108(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id109(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id148 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id110(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id111(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id276()
{
    return LightCount_id188;
}
int GetMaxLightCount_id277()
{
    return TMaxLightCount_id189;
}
void PrepareDirectLights_id272()
{
}
void PrepareDirectLight_id262(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id97(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id98(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id148 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id99(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id100(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id266(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y >> 16;
}
int GetMaxLightCount_id265(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y >> 16;
}
void PrepareDirectLights_id260()
{
}
void PrepareDirectLight_id249(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id87(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id148 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id88(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id89(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id254(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y & 0xFFFF;
}
int GetMaxLightCount_id253(inout PS_STREAMS streams)
{
    return streams.lightData_id179.y & 0xFFFF;
}
void PrepareDirectLights_id252(inout PS_STREAMS streams)
{
    PrepareLightData_id93(streams);
}
float3 ComputeDirectLightContribution_id550(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id404(streams, specularColor);
    float geometricShadowing = Compute_id434(streams);
    float normalDistribution = Compute_id464(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id494(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id248 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id225(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id62(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id63(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id148 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id64(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id65(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id227()
{
    return LightCount_id150;
}
int GetMaxLightCount_id228()
{
    return TMaxLightCount_id151;
}
void PrepareDirectLights_id223()
{
}
void PrepareForLightingAndShading_id518()
{
}
void PrepareForLightingAndShading_id499()
{
}
void PrepareMaterialForLightingAndShading_id211(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id210(inout PS_STREAMS streams)
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
float4 Compute_id371(inout PS_STREAMS streams)
{
    float x = Compute_id369(streams);
    return float4(x, x, x, x);
}
float4 Compute_id359(inout PS_STREAMS streams)
{
    return Compute_id357(streams);
}
float4 Compute_id347(inout PS_STREAMS streams)
{
    float x = Compute_id345(streams);
    return float4(x, x, x, x);
}
float4 Compute_id335(inout PS_STREAMS streams)
{
    float x = Compute_id333(streams);
    return float4(x, x, x, x);
}
float4 Compute_id323(inout PS_STREAMS streams)
{
    return Compute_id321(streams);
}
void ResetStream_id216(inout PS_STREAMS streams)
{
    ResetStream_id215();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id593(inout PS_STREAMS streams)
{
    streams.shadingColor_id73 += streams.matEmissive_id62.rgb * streams.matEmissiveIntensity_id63;
}
void Compute_id592(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id210(streams);
    PrepareMaterialForLightingAndShading_id211(streams);

    {
        PrepareForLightingAndShading_id499();
    }

    {
        PrepareForLightingAndShading_id518();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id223();
        const int maxLightCount = GetMaxLightCount_id228();
        int count = GetLightCount_id227();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id225(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id550(streams);
            }
        }
    }

    {
        PrepareDirectLights_id252(streams);
        const int maxLightCount = GetMaxLightCount_id253(streams);
        int count = GetLightCount_id254(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id249(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id550(streams);
            }
        }
    }

    {
        PrepareDirectLights_id260();
        const int maxLightCount = GetMaxLightCount_id265(streams);
        int count = GetLightCount_id266(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id262(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id550(streams);
            }
        }
    }

    {
        PrepareDirectLights_id272();
        const int maxLightCount = GetMaxLightCount_id277();
        int count = GetLightCount_id276();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id274(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id550(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id303(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id495(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id551(streams);
        }
    }

    {
        PrepareEnvironmentLight_id308(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id495(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id551(streams);
        }
    }

    {
        PrepareEnvironmentLight_id311(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id495(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id551(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id248 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id502();
    }

    {
        AfterLightingAndShading_id521();
    }
}
void Compute_id576(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id63 = Compute_id371(streams).r;
}
void Compute_id571(inout PS_STREAMS streams)
{
    streams.matEmissive_id62 = Compute_id359(streams).rgba;
}
void Compute_id566(inout PS_STREAMS streams)
{
    float metalness = Compute_id347(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id561(inout PS_STREAMS streams)
{
    float glossiness = Compute_id335(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id556(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id323(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id217(inout PS_STREAMS streams)
{
    ResetStream_id216(streams);
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
void Compute_id59(inout PS_STREAMS streams)
{

    {
        Compute_id556(streams);
    }

    {
        Compute_id561(streams);
    }

    {
        Compute_id566(streams);
    }

    {
        Compute_id571(streams);
    }

    {
        Compute_id576(streams);
    }

    {
        Compute_id592(streams);
    }

    {
        Compute_id593(streams);
    }
}
void ResetStream_id58(inout PS_STREAMS streams)
{
    ResetStream_id217(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
void AssignVertexID_id34(inout VS_STREAMS streams)
{
    streams.VertexID_id142 = streams.VertexID_VS_id141;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id58(streams);
    Compute_id59(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
void PostTransformPosition_id37(inout VS_STREAMS streams)
{
    streams.ShadingPosition_id0 = streams.Position_id21;
    AssignVertexID_id34(streams);
    streams.Skip_id144 = false;
}
void TransformPosition_id36()
{
}
void PreTransformPosition_id35()
{
}
float4 Compute_id57()
{
    return MaterialIndex_id147;
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
    PreTransformPosition_id35();
    TransformPosition_id36();
    PostTransformPosition_id37(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id32(streams);
    streams.ColorTarget1_id3 = Compute_id57();
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
void SpawnQuad_id38(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, Particle p)
{

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id131 = QuadUV_id146[i % 4].xy;
        float4 posWorld = float4(p.Position, 1);
        posWorld.xyz += QuadPositions_id145[i].x * p.AxisX * p.Size3.x;
        posWorld.xyz += QuadPositions_id145[i].y * p.AxisY * p.Size3.y;
        posWorld.xyz += QuadPositions_id145[i].z * p.AxisZ * p.Size3.z;
        posWorld = mul(posWorld, World_id32);
        streams.PositionWS_id22 = posWorld;
        streams.normalWS_id19 = normal;
        float4 posView = mul(posWorld, View_id25);
        streams.ShadingPosition_id0 = mul(posView, Projection_id27);
        streams.DepthVS_id23 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id22 = streams.PositionWS_id22;
            output.normalWS_id19 = streams.normalWS_id19;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.DepthVS_id23 = streams.DepthVS_id23;
            output.ScreenPosition_id173 = streams.ScreenPosition_id173;
            output.VertexID_id142 = streams.VertexID_id142;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
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
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.ScreenPosition_id173 = __input__.ScreenPosition_id173;
    streams.VertexID_id142 = __input__.VertexID_id142;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id173 /= streams.ScreenPosition_id173.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
[maxvertexcount(24)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.VertexID_id142 = input[0].VertexID_id142;
    streams.ScreenPosition_id173 = input[0].ScreenPosition_id173;
    Particle p = Particles_id143[streams.VertexID_id142];
    if (p.Cycle == 0 || p.Age < 0)
        return;
    SpawnQuad_id38(streams, 0, triangleStream, p.AxisZ, p);
    SpawnQuad_id38(streams, 4, triangleStream, -p.AxisZ, p);
    SpawnQuad_id38(streams, 8, triangleStream, p.AxisY, p);
    SpawnQuad_id38(streams, 12, triangleStream, -p.AxisY, p);
    SpawnQuad_id38(streams, 16, triangleStream, p.AxisX, p);
    SpawnQuad_id38(streams, 20, triangleStream, -p.AxisX, p);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.VertexID_VS_id141 = __input__.VertexID_VS_id141;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id19(streams);
    streams.ScreenPosition_id173 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.VertexID_id142 = streams.VertexID_id142;
    __output__.ScreenPosition_id173 = streams.ScreenPosition_id173;
    return __output__;
}

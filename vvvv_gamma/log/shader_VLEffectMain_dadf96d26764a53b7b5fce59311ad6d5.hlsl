/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,3>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<8>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMSphereImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 992]
@C    World_id33 => Transformation.World
@C    WorldInverse_id34 => Transformation.WorldInverse
@C    WorldInverseTranspose_id35 => Transformation.WorldInverseTranspose
@C    WorldView_id36 => Transformation.WorldView
@C    WorldViewInverse_id37 => Transformation.WorldViewInverse
@C    WorldViewProjection_id38 => Transformation.WorldViewProjection
@C    WorldScale_id39 => Transformation.WorldScale
@C    EyeMS_id40 => Transformation.EyeMS
@C    MaterialIndex_id155 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id196 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id198 => LightSpotGroup.Lights.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id151 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id220 => ShaderFX.InputValueFloat
@C    InputValue_id229 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1664]
@C    View_id26 => Transformation.View
@C    ViewInverse_id27 => Transformation.ViewInverse
@C    Projection_id28 => Transformation.Projection
@C    ProjectionInverse_id29 => Transformation.ProjectionInverse
@C    ViewProjection_id30 => Transformation.ViewProjection
@C    ProjScreenRay_id31 => Transformation.ProjScreenRay
@C    Eye_id32 => Transformation.Eye
@C    NearClipPlane_id182 => Camera.NearClipPlane
@C    FarClipPlane_id183 => Camera.FarClipPlane
@C    ZProjection_id184 => Camera.ZProjection
@C    ViewSize_id185 => Camera.ViewSize
@C    AspectRatio_id186 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id158 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id160 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id162 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id163 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id167 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id168 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id169 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id170 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id171 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id172 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id179 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id191 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id192 => LightClustered.ClusterDepthBias
@C    ClusterStride_id193 => LightClustered.ClusterStride
@C    AmbientLight_id199 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id204 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id205 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id207 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id208 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id150 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id150 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id212 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id212 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id241 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id241 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id161 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id161 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id189 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id189 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id190 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id190 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id194 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id194 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id195 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id195 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id206 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id206 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id150 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id114 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id116 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ParticlesBuffer_id212 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id241 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id161 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id189 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id190 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id194 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id195 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id206 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 8f9165a70dca23240caf1fc21930c3db
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
// VID_ID154_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float   xyzw
// SCREENPOSITION_ID181_SEM     0   xyzw        2     NONE   float   xyzw
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
//   v0.x <- __input__.VertexID_id153; 
//   v1.x <- __input__.Position_id22.x; v1.y <- __input__.Position_id22.y; v1.z <- __input__.Position_id22.z; v1.w <- __input__.Position_id22.w; 
//   v2.x <- __input__.normalWS_id20.x; v2.y <- __input__.normalWS_id20.y; v2.z <- __input__.normalWS_id20.z; 
//   o3.x <- <VSMain return value>.normalWS_id20.x; o3.y <- <VSMain return value>.normalWS_id20.y; o3.z <- <VSMain return value>.normalWS_id20.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id181.x; o2.y <- <VSMain return value>.ScreenPosition_id181.y; o2.z <- <VSMain return value>.ScreenPosition_id181.z; o2.w <- <VSMain return value>.ScreenPosition_id181.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id154; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 1562 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_dadf96d26764a53b7b5fce59311ad6d5.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
mov o3.xyz, v2.xyzx
ret 
// Approximately 5 instruction slots used
@G    Geometry => 0277d934afca547315c70555cf0088da
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
//   float4x4 WorldInverseTranspose_id35;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id36;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id37;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id38; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id39;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id40;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id155;          // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id196;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id198[8];                 // Offset:  464 Size:   508 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  976 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id151;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id220;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id229;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id26;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id27;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id28;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id29;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id30;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id31;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id32;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id182;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id183;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id184;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id185;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id186;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id158;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id160;                    // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id162; // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id163;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id167[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id168[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id169[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id170[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id171;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id172;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id179[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id191;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id192;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id193;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id199;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id204[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id205;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id207;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id208;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id150
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
// ParticlesBuffer_id150             texture  struct         r/o             t0      1 
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
// VID_ID154_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float       
// SCREENPOSITION_ID181_SEM     0   xyzw        2     NONE   float   xyzw
// NORMALWS                 0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID152_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float   xyzw
// SCREENPOSITION_ID181_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v[0][0].x <- input[0].VID_id154; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id181.x; v[0][2].y <- input[0].ScreenPosition_id181.y; v[0][2].z <- input[0].ScreenPosition_id181.z; v[0][2].w <- input[0].ScreenPosition_id181.w; 
//   v[0][3].x <- input[0].normalWS_id20.x; v[0][3].y <- input[0].normalWS_id20.y; v[0][3].z <- input[0].normalWS_id20.z
//
#line 1520 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_dadf96d26764a53b7b5fce59311ad6d5.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 1522
mul r0.w, r0.x, cb1[0].x

#line 1523
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 1524
  ret 
endif 

#line 1520
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 1521
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id23.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id23.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id23.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id23.w

#line 1527
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 1532
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id152

#line 1533
mov r4.w, l(1.000000)

#line 1529
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 1531
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id132.x; r5.y <- streams.TexCoord_id132.y

#line 1532
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 1533
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 1544
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

#line 1546
  iadd r1.w, r1.w, l(1)
endloop 

#line 1547
ret 
// Approximately 43 instruction slots used
@G    Pixel => 37548016506d5ce446d5e64b07464310
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
//   uint MaterialIndex_id155;          // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id196;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id198[8];                 // Offset:  464 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset:  976 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id151;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id220;            // Offset:    4 Size:     4
//   float InputValue_id229;            // Offset:    8 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id26;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id27;         // Offset:   64 Size:    64
//   float4x4 Projection_id28;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id29;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id30;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id31;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id32;                   // Offset:  336 Size:    16
//   float NearClipPlane_id182;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id183;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id184;          // Offset:  360 Size:     8
//   float2 ViewSize_id185;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id186;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id158;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id160;                    // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id162; // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id163;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id167[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id168[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id169[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id170[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id171;           // Offset: 1296 Size:     4
//   float OffsetScales_id172;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id179[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id191;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id192;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id193;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id199;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id204[9];   // Offset: 1424 Size:   140
//   float MipCount_id205;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id207;          // Offset: 1568 Size:    64
//   float Intensity_id208;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id212
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
// LinearSampler_id114               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id116  sampler_c      NA          NA             s1      1 
// ParticlesBuffer_id212             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id241    texture  float4          2d             t1      1 
// ShadowMapTexture_id161            texture  float4          2d             t2      1 
// LightClusters_id189               texture   uint2          3d             t3      1 
// LightIndices_id190                texture    uint         buf             t4      1 
// PointLights_id194                 texture  float4         buf             t5      1 
// SpotLights_id195                  texture  float4         buf             t6      1 
// CubeMap_id206                     texture  float4        cube             t7      1 
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
// PSIZE_ID152_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float     z 
// SCREENPOSITION_ID181_SEM     0   xyzw        3     NONE   float   xy w
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
// SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[61], dynamicIndexed
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
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps_siv linear noperspective v2.z, position
dcl_input_ps linear v3.xyw
dcl_input_ps constant v5.x
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output oDepth
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id23.x; v0.y <- __input__.PositionWS_id23.y; v0.z <- __input__.PositionWS_id23.z; v0.w <- __input__.PositionWS_id23.w; 
//   v1.x <- __input__.PSize_id152; v1.y <- __input__.TexCoord_id132.x; v1.z <- __input__.TexCoord_id132.y; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v3.x <- __input__.ScreenPosition_id181.x; v3.y <- __input__.ScreenPosition_id181.y; v3.z <- __input__.ScreenPosition_id181.z; v3.w <- __input__.ScreenPosition_id181.w; 
//   v4.x <- __input__.normalWS_id20.x; v4.y <- __input__.normalWS_id20.y; v4.z <- __input__.normalWS_id20.z; 
//   v5.x <- __input__.InstanceID_id13; 
//   v6.x <- __input__.IsFrontFace_id1; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w; 
//   oDepth <- <PSMain return value>.Depth_id10
//
#line 1411 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_dadf96d26764a53b7b5fce59311ad6d5.hlsl"
dp2 r0.x, v1.yzyy, v1.yzyy  // r0.x <- lenSqr

#line 1412
lt r0.y, l(1.000000), r0.x

#line 1413
discard_nz r0.y

#line 1414
add r0.x, -r0.x, l(1.000000)
sqrt r0.z, r0.x  // r0.z <- z

#line 1416
mov r0.xy, v1.yzyy
dp3 r1.x, r0.xyzx, cb2[4].xyzx
dp3 r1.y, r0.xyzx, cb2[5].xyzx
dp3 r1.z, r0.xyzx, cb2[6].xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r1.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1417
mad r1.xyz, r0.xyzx, v1.xxxx, v0.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 1501
div r2.xy, v3.xyxx, v3.wwww  // r2.x <- streams.ScreenPosition_id181.x; r2.y <- streams.ScreenPosition_id181.y

#line 1402
mov r1.w, l(1.000000)
dp4 r0.w, r1.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.w, r1.xyzw, cb2[19].xyzw  // r1.w <- posWVP.w

#line 1406
div oDepth, r0.w, r1.w

#line 1389
add r3.xyz, -r1.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, r3.xyzx  // r4.x <- streams.viewWS_id69.x; r4.y <- streams.viewWS_id69.y; r4.z <- streams.viewWS_id69.z

#line 555
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, v5.x, l(48), t0.xyzx  // r5.x <- p.Col.x; r5.y <- p.Col.y; r5.z <- p.Col.z

#line 1329
add r2.z, -cb1[0].y, l(1.000000)  // r2.z <- glossiness

#line 1321
add r6.xyz, r5.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r6.xyz, cb1[0].zzzz, r6.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r6.x <- streams.matSpecular_id56.x; r6.y <- streams.matSpecular_id56.y; r6.z <- streams.matSpecular_id56.z

#line 1322
mad r5.xyz, cb1[0].zzzz, -r5.xyzx, r5.xyzx  // r5.x <- streams.matDiffuse_id54.x; r5.y <- streams.matDiffuse_id54.y; r5.z <- streams.matDiffuse_id54.z

#line 1162
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id20.x; r0.y <- streams.normalWS_id20.y; r0.z <- streams.normalWS_id20.z

#line 1119
dp3 r2.w, r0.xyzx, r4.xyzx
max r7.y, r2.w, l(0.000100)  // r7.y <- streams.NdotV_id73

#line 1120
add r2.z, -r2.z, l(1.000000)  // r2.z <- roughness

#line 1121
mul r2.z, r2.z, r2.z
max r2.z, r2.z, l(0.001000)  // r2.z <- streams.alphaRoughness_id71

#line 1186
ilt r2.w, l(0), cb2[25].x
if_nz r2.w

#line 1089
  dp3 r2.w, r0.xyzx, -cb2[26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id50

#line 900
  lt r3.w, cb2[83].x, r1.w

#line 903
  and r3.w, r3.w, l(1)  // r3.w <- cascadeIndex

#line 900
  lt r4.w, cb2[84].x, r1.w

#line 903
  movc r3.w, r4.w, l(2), r3.w

#line 900
  lt r4.w, cb2[85].x, r1.w

#line 903
  movc r3.w, r4.w, l(3), r3.w

#line 725
  add r5.w, -r2.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- normalOffsetScale

#line 726
  mul r6.w, cb2[28].z, cb2[82].x
  dp2 r5.w, r6.wwww, r5.wwww

#line 908
  mad r8.xyz, r5.wwww, r0.xyzx, r1.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 718
  ishl r5.w, r3.w, l(2)
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r6.w, r8.xyzw, cb2[r5.w + 31].xyzw  // r6.w <- shadowPosition.z
  dp4 r7.z, r8.xyzw, cb2[r5.w + 32].xyzw  // r7.z <- shadowPosition.w

#line 719
  add r9.z, r6.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 720
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

#line 377
  mad r10.xy, -r7.wzww, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 378
  mad r10.zw, r7.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r10.z <- uvW1.x; r10.w <- uvW1.y

#line 379
  add r11.xy, -r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r10.yxyy
  add r11.zw, r11.xxxy, l(0.000000, 0.000000, -1.000000, -1.000000)  // r11.z <- uv0.x; r11.w <- uv0.y

#line 380
  div r7.zw, r7.zzzw, r10.zzzw
  add r11.xy, r7.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)  // r11.x <- uv1.x; r11.y <- uv1.y

#line 381
  mul r6.w, r10.x, r10.y

#line 382
  mad r12.xyzw, r11.zwxw, cb2[28].zwzw, r9.xyxy

#line 383
  mul r7.zw, r10.xxxy, r10.zzzw

#line 384
  mad r11.xyzw, r11.zyxy, cb2[28].zwzw, r9.xyxy
  mul r9.x, r10.w, r10.z

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.y, r12.xyxx, t2.xxxx, s1, r9.z  // r9.y <- <SampleTextureAndCompare_id105 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r12.zwzz, t2.xxxx, s1, r9.z  // r9.w <- <SampleTextureAndCompare_id105 return value>

#line 629
  mul r7.z, r7.z, r9.w
  mad r6.w, r6.w, r9.y, r7.z  // r6.w <- shadow

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r11.xyxx, t2.xxxx, s1, r9.z  // r7.z <- <SampleTextureAndCompare_id105 return value>

#line 629
  mad r6.w, r7.w, r7.z, r6.w

#line 534
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.z, r11.zwzz, t2.xxxx, s1, r9.z

#line 629
  mad r6.w, r9.x, r7.z, r6.w

#line 631
  mul r9.xyz, r6.wwww, l(0.062500, 0.062500, 0.062500, 0.000000)  // r9.z <- shadow

#line 914
  ilt r7.z, l(0), r3.w
  if_nz r7.z

#line 916
    iadd r7.z, r3.w, l(-1)
    add r7.z, -cb2[r7.z + 83].x, cb2[r3.w + 83].x  // r7.z <- splitSize

#line 917
  else 
    mov r7.z, cb2[r3.w + 83].x  // r7.z <- splitSize
  endif 

#line 918
  add r1.w, -r1.w, cb2[r3.w + 83].x
  div r1.w, r1.w, r7.z  // r1.w <- splitDist

#line 919
  lt r3.w, r1.w, l(0.200000)
  if_nz r3.w

#line 922
    if_nz r4.w

#line 924
      mov r9.xyz, r9.zzzz  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z
    else 

#line 921
      mul_sat r1.w, r1.w, l(5.000000)
      mad r3.w, r1.w, l(-2.000000), l(3.000000)
      mul r1.w, r1.w, r1.w
      mul r1.w, r1.w, r3.w  // r1.w <- lerpAmt

#line 718
      dp4 r10.x, r8.xyzw, cb2[r5.w + 33].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r8.xyzw, cb2[r5.w + 34].xyzw  // r10.y <- shadowPosition.y
      dp4 r3.w, r8.xyzw, cb2[r5.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r8.xyzw, cb2[r5.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 719
      add r10.z, r3.w, -cb2[81].x  // r10.z <- shadowPosition.z

#line 720
      div r8.xyz, r10.xyzx, r4.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 539
      mad r7.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r8.xy, r7.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 540
      add r7.zw, r7.zzzw, -r8.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 541
      add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 542
      mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 377
      mad r10.xy, -r7.wzww, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 378
      mad r10.zw, r7.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r10.z <- uvW1.x; r10.w <- uvW1.y

#line 379
      add r11.xy, -r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)
      div r11.xy, r11.xyxx, r10.yxyy
      add r11.zw, r11.xxxy, l(0.000000, 0.000000, -1.000000, -1.000000)  // r11.z <- uv0.x; r11.w <- uv0.y

#line 380
      div r7.zw, r7.zzzw, r10.zzzw
      add r11.xy, r7.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)  // r11.x <- uv1.x; r11.y <- uv1.y

#line 381
      mul r3.w, r10.x, r10.y

#line 382
      mad r12.xyzw, r11.zwxw, cb2[28].zwzw, r8.xyxy

#line 383
      mul r7.zw, r10.xxxy, r10.zzzw

#line 384
      mad r11.xyzw, r11.zyxy, cb2[28].zwzw, r8.xyxy
      mul r4.w, r10.w, r10.z

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.xyxx, t2.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id105 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r12.zwzz, t2.xxxx, s1, r8.z  // r8.x <- <SampleTextureAndCompare_id105 return value>

#line 629
      mul r7.z, r7.z, r8.x
      mad r3.w, r3.w, r5.w, r7.z  // r3.w <- shadow

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.xyxx, t2.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id105 return value>

#line 629
      mad r3.w, r7.w, r5.w, r3.w

#line 534
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.zwzz, t2.xxxx, s1, r8.z

#line 629
      mad r3.w, r4.w, r5.w, r3.w

#line 631
      mul r3.w, r3.w, l(0.062500)

#line 928
      mad r4.w, r6.w, l(0.062500), -r3.w
      mad r9.xyz, r1.wwww, r4.wwww, r3.wwww  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z

#line 929
    endif 

#line 930
  endif 

#line 1091
  mul r8.xyz, r9.xyzx, cb2[27].xyzx
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id45.x; r8.y <- streams.lightColorNdotL_id45.y; r8.z <- streams.lightColorNdotL_id45.z

#line 1081
  mad r3.xyz, r3.xyzx, r0.wwww, -cb2[26].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.H_id76.x; r3.y <- streams.H_id76.y; r3.z <- streams.H_id76.z

#line 1082
  dp3_sat r0.w, r0.xyzx, r3.xyzx  // r0.w <- streams.NdotH_id77

#line 1083
  dp3_sat r1.w, -cb2[26].xyzx, r3.xyzx  // r1.w <- streams.LdotH_id78

#line 1077
  mul r3.xyz, r5.xyzx, r8.xyzx

#line 599
  add r9.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r3.w, r1.w, r1.w
  mul r3.w, r3.w, r3.w
  mul r1.w, r1.w, r3.w
  mad r9.xyz, r9.xyzx, r1.wwww, r6.xyzx  // r9.x <- <FresnelSchlick_id200 return value>.x; r9.y <- <FresnelSchlick_id200 return value>.y; r9.z <- <FresnelSchlick_id200 return value>.z

#line 594
  mul r1.w, r2.z, l(0.500000)  // r1.w <- k

#line 595
  mad r3.w, -r2.z, l(0.500000), l(1.000000)
  mad r4.w, r2.w, r3.w, r1.w
  div r4.w, r2.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r1.w, r7.y, r3.w, r1.w
  div r1.w, r7.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id216 return value>

#line 705
  mul r1.w, r1.w, r4.w
  mul r2.w, r7.y, r2.w
  div r1.w, r1.w, r2.w  // r1.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 699
  mul r2.w, r2.z, r2.z  // r2.w <- alphaR2

#line 700
  mul r0.w, r0.w, r0.w
  mad r3.w, r2.z, r2.z, l(-1.000000)
  mad r0.w, r0.w, r3.w, l(1.000000)
  max r0.w, r0.w, l(0.000100)  // r0.w <- d

#line 701
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, l(3.141593)
  div r0.w, r2.w, r0.w  // r0.w <- <NormalDistributionGGX_id230 return value>

#line 1071
  mul r9.xyz, r1.wwww, r9.xyzx
  mul r9.xyz, r0.wwww, r9.xyzx
  mul r8.xyz, r8.xyzx, r9.xyzx

#line 1072
  mul r8.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r8.x <- <ComputeDirectLightContribution_id544 return value>.x; r8.y <- <ComputeDirectLightContribution_id544 return value>.y; r8.z <- <ComputeDirectLightContribution_id544 return value>.z

#line 1194
  mad r3.xyz, r3.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r3.x <- directLightingContribution.x; r3.y <- directLightingContribution.y; r3.z <- directLightingContribution.z

#line 1195
else   // Prior locations: r1.w <- posWVP.w
  mov r3.xyz, l(0,0,0,0)  // r3.x <- directLightingContribution.x; r3.y <- directLightingContribution.y; r3.z <- directLightingContribution.z
endif 

#line 865
add r0.w, v2.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 866
mad r2.xy, r2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb2[87].xyxx

#line 867
mad r0.w, r0.w, cb2[86].y, cb2[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)
ftoi r8.z, r0.w  // r8.z <- slice

#line 868
mul r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r8.xy, r2.xyxx
mov r8.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.xy, r8.xyzw, t3.xyzw  // r2.x <- streams.lightData_id187.x; r2.y <- streams.lightData_id187.y

#line 1059
and r0.w, r2.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id271 return value>

#line 1204
mov r8.xyz, r0.xyzx  // r8.x <- streams.normalWS_id20.x; r8.y <- streams.normalWS_id20.y; r8.z <- streams.normalWS_id20.z
mov r8.w, r1.x  // r8.w <- streams.PositionWS_id23.x
mov r9.xy, r1.yzyy  // r9.x <- streams.PositionWS_id23.y; r9.y <- streams.PositionWS_id23.z
mov r9.zw, r4.xxxy  // r9.z <- streams.viewWS_id69.x; r9.w <- streams.viewWS_id69.y
mov r10.z, r4.z  // r10.z <- streams.viewWS_id69.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matDiffuseVisible_id70.x; r11.y <- streams.matDiffuseVisible_id70.y; r11.z <- streams.matDiffuseVisible_id70.z
mov r12.xyz, r6.xyzx  // r12.x <- streams.matSpecularVisible_id72.x; r12.y <- streams.matSpecularVisible_id72.y; r12.z <- streams.matSpecularVisible_id72.z
mov r12.w, r2.z  // r12.w <- streams.alphaRoughness_id71
mov r7.w, r7.y  // r7.w <- streams.NdotV_id73
mov r7.z, r2.x  // r7.z <- streams.lightIndex_id188
mov r13.xyz, r3.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 1206
  if_nz r2.w

#line 1208
    break 

#line 1209
  endif 

#line 852
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r7.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 853
  iadd r7.z, r7.z, l(1)  // r7.z <- streams.lightIndex_id188

#line 855
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r3.wwww, t5.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 856
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r2.wwww, t5.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 586
  mov r16.x, r8.w
  mov r16.yz, r9.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 587
  dp3 r2.w, r14.xyzx, r14.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 588
  div r14.xyz, r14.xyzx, r3.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 480
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 371
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 372
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 373
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id119 return value>

#line 481
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1045
  dp3 r3.w, r8.xyzx, r14.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id50

#line 1047
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id45.x; r15.y <- streams.lightColorNdotL_id45.y; r15.z <- streams.lightColorNdotL_id45.z

#line 1081
  mov r10.xy, r9.zwzz
  add r10.xyw, r14.xyxz, r10.xyxz
  dp3 r2.w, r10.xywx, r10.xywx
  rsq r2.w, r2.w
  mul r10.xyw, r2.wwww, r10.xyxw  // r10.x <- streams.H_id76.x; r10.y <- streams.H_id76.y; r10.w <- streams.H_id76.z

#line 1082
  dp3_sat r2.w, r8.xyzx, r10.xywx  // r2.w <- streams.NdotH_id77

#line 1083
  dp3_sat r4.w, r14.xyzx, r10.xywx  // r4.w <- streams.LdotH_id78

#line 1077
  mul r10.xyw, r11.xyxz, r15.xyxz

#line 1214
  mad r10.xyw, r10.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 599
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r14.xyz, r14.xyzx, r4.wwww, r12.xyzx  // r14.x <- <FresnelSchlick_id200 return value>.x; r14.y <- <FresnelSchlick_id200 return value>.y; r14.z <- <FresnelSchlick_id200 return value>.z

#line 594
  mul r4.w, r12.w, l(0.500000)  // r4.w <- k

#line 595
  mad r5.w, -r12.w, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r4.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r4.w, r7.w, r5.w, r4.w
  div r4.w, r7.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id216 return value>

#line 705
  mul r4.w, r4.w, r6.w
  mul r3.w, r7.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 699
  mul r4.w, r12.w, r12.w  // r4.w <- alphaR2

#line 700
  mul r2.w, r2.w, r2.w
  mad r5.w, r12.w, r12.w, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 701
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id230 return value>

#line 1071
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1218
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r10.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1204
  iadd r1.w, r1.w, l(1)

#line 1220
endloop   // r7.z <- streams.lightIndex_id188

#line 1037
ushr r0.w, r2.y, l(16)  // r0.w <- <GetMaxLightCount_id283 return value>

#line 1228
mov r2.xyw, r1.xyxz  // r2.x <- streams.PositionWS_id23.x; r2.y <- streams.PositionWS_id23.y; r2.w <- streams.PositionWS_id23.z
mov r3.xyz, r0.xyzx  // r3.x <- streams.normalWS_id20.x; r3.y <- streams.normalWS_id20.y; r3.z <- streams.normalWS_id20.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.viewWS_id69.x; r8.y <- streams.viewWS_id69.y; r8.z <- streams.viewWS_id69.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matDiffuseVisible_id70.x; r9.y <- streams.matDiffuseVisible_id70.y; r9.z <- streams.matDiffuseVisible_id70.z
mov r10.xyz, r6.xyzx  // r10.x <- streams.matSpecularVisible_id72.x; r10.y <- streams.matSpecularVisible_id72.y; r10.z <- streams.matSpecularVisible_id72.z
mov r11.x, r2.z  // r11.x <- streams.alphaRoughness_id71
mov r11.z, r7.y  // r11.z <- streams.NdotV_id73
mov r12.xyz, r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, r7.z  // r1.w <- streams.lightIndex_id188
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r0.w
  breakc_nz r4.w

#line 1230
  if_nz r4.w

#line 1232
    break 

#line 1233
  endif 

#line 824
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r1.wwww, t4.yzwx  // r4.w <- realLightIndex

#line 825
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id188

#line 827
  ishl r5.w, r4.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r5.wwww, t6.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 830
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r4.wwww, l(1, 2, 3, 0)

#line 828
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t6.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 829
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t6.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 830
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t6.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 573
  add r14.xyz, -r2.xywx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 574
  dp3 r4.w, r14.xyzx, r14.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength

#line 575
  div r14.xyz, r14.xyzx, r5.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 473
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 365
  mul r4.w, r15.w, r4.w  // r4.w <- factor

#line 366
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 367
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id130 return value>

#line 474
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 465
  dp3 r5.w, -r16.xyzx, r14.xyzx  // r5.w <- cd

#line 466
  mad_sat r5.w, r5.w, r15.x, r15.y  // r5.w <- attenuation

#line 467
  mul r5.w, r5.w, r5.w

#line 581
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 1023
  dp3 r5.w, r3.xyzx, r14.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id50

#line 1025
  mul r15.xyz, r4.wwww, r17.xyzx
  mul r15.xyz, r5.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id45.x; r15.y <- streams.lightColorNdotL_id45.y; r15.z <- streams.lightColorNdotL_id45.z

#line 1081
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r4.w, r16.xyzx, r16.xyzx
  rsq r4.w, r4.w
  mul r16.xyz, r4.wwww, r16.xyzx  // r16.x <- streams.H_id76.x; r16.y <- streams.H_id76.y; r16.z <- streams.H_id76.z

#line 1082
  dp3_sat r4.w, r3.xyzx, r16.xyzx  // r4.w <- streams.NdotH_id77

#line 1083
  dp3_sat r6.w, r14.xyzx, r16.xyzx  // r6.w <- streams.LdotH_id78

#line 1077
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 1238
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 599
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.w, -r6.w, l(1.000000)
  mul r7.w, r6.w, r6.w
  mul r7.w, r7.w, r7.w
  mul r6.w, r6.w, r7.w
  mad r16.xyz, r16.xyzx, r6.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id200 return value>.x; r16.y <- <FresnelSchlick_id200 return value>.y; r16.z <- <FresnelSchlick_id200 return value>.z

#line 594
  mul r6.w, r11.x, l(0.500000)  // r6.w <- k

#line 595
  mad r7.w, -r11.x, l(0.500000), l(1.000000)
  mad r8.w, r5.w, r7.w, r6.w
  div r8.w, r5.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r6.w, r11.z, r7.w, r6.w
  div r6.w, r11.z, r6.w  // r6.w <- <VisibilityhSchlickGGX_id216 return value>

#line 705
  mul r6.w, r6.w, r8.w
  mul r5.w, r11.z, r5.w
  div r5.w, r6.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 699
  mul r6.w, r11.x, r11.x  // r6.w <- alphaR2

#line 700
  mul r4.w, r4.w, r4.w
  mad r7.w, r11.x, r11.x, l(-1.000000)
  mad r4.w, r4.w, r7.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 701
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r6.w, r4.w  // r4.w <- <NormalDistributionGGX_id230 return value>

#line 1071
  mul r16.xyz, r5.wwww, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1242
  mad r12.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1228
  iadd r3.w, r3.w, l(1)

#line 1244
endloop   // r1.w <- streams.lightIndex_id188

#line 1252
mov r2.xyw, r1.xyxz
mov r3.xyz, r0.xyzx
mov r8.xyz, r4.xyzx
mov r9.xyz, r5.xyzx
mov r10.xyz, r6.xyzx
mov r11.x, r2.z
mov r11.z, r7.y
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(8)
  breakc_nz r1.w

#line 1254
  ige r1.w, r0.w, cb0[28].x
  if_nz r1.w

#line 1256
    break 

#line 1257
  endif 

#line 803
  ishl r1.w, r0.w, l(2)

#line 560
  add r14.xyz, -r2.xywx, cb0[r1.w + 29].xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 561
  dp3 r3.w, r14.xyzx, r14.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 562
  div r14.xyz, r14.xyzx, r4.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 459
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 359
  mul r3.w, r3.w, cb0[r1.w + 31].z  // r3.w <- factor

#line 360
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 361
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id141 return value>

#line 460
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 451
  dp3 r4.w, -cb0[r1.w + 30].xyzx, r14.xyzx  // r4.w <- cd

#line 452
  mad_sat r4.w, r4.w, cb0[r1.w + 31].x, cb0[r1.w + 31].y  // r4.w <- attenuation

#line 453
  mul r4.w, r4.w, r4.w

#line 568
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1001
  dp3 r4.w, r3.xyzx, r14.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id50

#line 1003
  mul r15.xyz, r3.wwww, cb0[r1.w + 32].xyzx
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id45.x; r15.y <- streams.lightColorNdotL_id45.y; r15.z <- streams.lightColorNdotL_id45.z

#line 1081
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id76.x; r16.y <- streams.H_id76.y; r16.z <- streams.H_id76.z

#line 1082
  dp3_sat r1.w, r3.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id77

#line 1083
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id78

#line 1077
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 1262
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 599
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r5.w, r3.w, r3.w
  mul r5.w, r5.w, r5.w
  mul r3.w, r3.w, r5.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id200 return value>.x; r16.y <- <FresnelSchlick_id200 return value>.y; r16.z <- <FresnelSchlick_id200 return value>.z

#line 594
  mul r3.w, r11.x, l(0.500000)  // r3.w <- k

#line 595
  mad r5.w, -r11.x, l(0.500000), l(1.000000)
  mad r6.w, r4.w, r5.w, r3.w
  div r6.w, r4.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r3.w, r11.z, r5.w, r3.w
  div r3.w, r11.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id216 return value>

#line 705
  mul r3.w, r3.w, r6.w
  mul r4.w, r11.z, r4.w
  div r3.w, r3.w, r4.w  // r3.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 699
  mul r4.w, r11.x, r11.x  // r4.w <- alphaR2

#line 700
  mul r1.w, r1.w, r1.w
  mad r5.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r5.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 701
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r4.w, r1.w  // r1.w <- <NormalDistributionGGX_id230 return value>

#line 1071
  mul r16.xyz, r3.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1266
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1252
  iadd r0.w, r0.w, l(1)

#line 1268
endloop 

#line 778
sqrt r0.w, r2.z
add r7.x, -r0.w, l(1.000000)  // r7.x <- glossiness

#line 779
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r7.xyxx, t1.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 780
mad r1.xyz, r6.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id366 return value>.x; r1.y <- <Compute_id366 return value>.y; r1.z <- <Compute_id366 return value>.z

#line 984
mul r2.xyz, r1.xyzx, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id545 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id545 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id545 return value>.z

#line 1280
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 973
dp3 r1.w, r0.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.x, r0.xyzx, cb2[100].xyzx  // r3.x <- sampleDirection.z

#line 653
mul r3.y, r2.w, r2.w  // r3.y <- y2

#line 654
mul r3.z, r3.x, r3.x  // r3.z <- z2

#line 658
mad r6.xyz, cb2[90].xyzx, r2.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 659
mad r6.xyz, cb2[91].xyzx, -r3.xxxx, r6.xyzx

#line 660
mad r6.xyz, cb2[92].xyzx, r1.wwww, r6.xyzx

#line 663
mul r7.xyz, r2.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r1.wwww, r6.xyzx

#line 664
mul r7.xyz, r2.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r3.xxxx, r6.xyzx

#line 665
mad r2.w, r3.z, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[95].xyzx, r2.wwww, r6.xyzx

#line 666
mul r7.xyz, r1.wwww, cb2[96].xyzx
mad r3.xzw, r7.xxyz, -r3.xxxx, r6.xxyz  // r3.x <- color.x; r3.z <- color.y; r3.w <- color.z

#line 667
mad r1.w, r1.w, r1.w, -r3.y
mad r3.xyz, cb2[97].xyzx, r1.wwww, r3.xzwx  // r3.y <- color.y; r3.z <- color.z

#line 975
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightDiffuseColor_id48.x; r3.y <- streams.envLightDiffuseColor_id48.y; r3.z <- streams.envLightDiffuseColor_id48.z

#line 976
dp3 r1.w, -r4.xyzx, r0.xyzx
add r1.w, r1.w, r1.w
mad r4.xyz, r0.xyzx, -r1.wwww, -r4.xyzx  // r4.x <- sampleDirection.x; r4.y <- sampleDirection.y; r4.z <- sampleDirection.z

#line 977
dp3 r6.x, r4.xyzx, cb2[98].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r4.xyzx, cb2[99].xyzx  // r6.y <- sampleDirection.y
dp3 r1.w, r4.xyzx, cb2[100].xyzx  // r1.w <- sampleDirection.z

#line 978
mov r6.z, -r1.w  // r6.z <- sampleDirection.z

#line 764
mul r0.w, r0.w, cb2[97].w  // r0.w <- mipLevel

#line 765
sample_l_indexable(texturecube)(float,float,float,float) r4.xyz, r6.xyzx, t7.xyzw, s0, r0.w  // r4.x <- <Compute_id316 return value>.x; r4.y <- <Compute_id316 return value>.y; r4.z <- <Compute_id316 return value>.z

#line 979
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightSpecularColor_id49.x; r4.y <- streams.envLightSpecularColor_id49.y; r4.z <- streams.envLightSpecularColor_id49.z

#line 1288
mad r2.xyz, r5.xyzx, r3.xyzx, r2.xyzx

#line 1292
mad r1.xyz, r1.xyzx, r4.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1307
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r1.xyzx

#line 1397
mad o1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1433
utof o2.xyzw, cb0[26].xxxx

#line 1508
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
ret 
// Approximately 465 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id159 = 1;
const static int TCascadeCountBase_id165 = 4;
const static int TLightCountBase_id166 = 1;
const static int TCascadeCount_id173 = 4;
const static int TLightCount_id174 = 1;
const static bool TBlendCascades_id175 = true;
const static bool TDepthRangeAuto_id176 = true;
const static bool TCascadeDebug_id177 = false;
const static bool TComputeTransmittance_id178 = false;
const static int TFilterSize_id180 = 3;
const static int TMaxLightCount_id197 = 8;
const static int TOrder_id201 = 3;
const static int TOrder_id203 = 3;
const static bool TInvert_id226 = true;
const static bool TIsEnergyConservative_id238 = false;
static const float PI_id240 = 3.14159265358979323846;
static const float3 QuadPositions_id147[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id148[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id181;
    float3 normalWS_id20;
    float PSize_id152;
    float2 TexCoord_id132;
    float4 PositionWS_id23;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id18;
    float DepthVS_id24;
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
    float4 ColorPerParticle_ShaderFXResult_0_id211;
    float Input_1_id219;
    float Input_2_id228;
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
    float thicknessWS_id157;
    float3 shadowColor_id156;
    float3 H_id76;
    float NdotH_id77;
    float LdotH_id78;
    float VdotH_id79;
    uint2 lightData_id187;
    int lightIndex_id188;
    float Depth_id10;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
    float4 ColorTarget2_id4;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
    float4 ColorTarget2_id4 : SV_Target2;
};
struct PS_INPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float PSize_id152 : PSIZE_ID152_SEM;
    float2 TexCoord_id132 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id181 : SCREENPOSITION_ID181_SEM;
    float3 normalWS_id20 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id154;
    float4 ScreenPosition_id181;
    float3 normalWS_id20;
    uint InstanceID_id13;
    float4 PositionWS_id23;
    float PSize_id152;
    float2 TexCoord_id132;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float PSize_id152 : PSIZE_ID152_SEM;
    float2 TexCoord_id132 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id181 : SCREENPOSITION_ID181_SEM;
    float3 normalWS_id20 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id154 : VID_ID154_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id181 : SCREENPOSITION_ID181_SEM;
    float3 normalWS_id20 : NORMALWS;
};
struct VS_STREAMS 
{
    uint VertexID_id153;
    float4 Position_id22;
    float3 normalWS_id20;
    uint VID_id154;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    float4 ScreenPosition_id181;
};
struct VS_OUTPUT 
{
    uint VID_id154 : VID_ID154_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id181 : SCREENPOSITION_ID181_SEM;
    float3 normalWS_id20 : NORMALWS;
};
struct VS_INPUT 
{
    uint VertexID_id153 : SV_VertexID;
    float4 Position_id22 : POSITION;
    float3 normalWS_id20 : NORMALWS;
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
    float4x4 World_id33;
    float4x4 WorldInverse_id34;
    float4x4 WorldInverseTranspose_id35;
    float4x4 WorldView_id36;
    float4x4 WorldViewInverse_id37;
    float4x4 WorldViewProjection_id38;
    float3 WorldScale_id39;
    float4 EyeMS_id40;
    uint MaterialIndex_id155;
    float4 _padding_PerDraw_Default;
    int LightCount_id196;
    SpotLightData Lights_id198[TMaxLightCount_id197];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float ParticleSize_id151 = 0.1;
    float InputValue_id220;
    float InputValue_id229;
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
    float NearClipPlane_id182 = 1.0f;
    float FarClipPlane_id183 = 100.0f;
    float2 ZProjection_id184;
    float2 ViewSize_id185;
    float AspectRatio_id186;
    float4 _padding_PerView_Default;
    int LightCount_id158;
    DirectionalLightData Lights_id160[TMaxLightCount_id159];
    float2 ShadowMapTextureSize_id162;
    float2 ShadowMapTextureTexelSize_id163;
    float4x4 WorldToShadowCascadeUV_id167[TCascadeCountBase_id165 * TLightCountBase_id166];
    float4x4 InverseWorldToShadowCascadeUV_id168[TCascadeCountBase_id165 * TLightCountBase_id166];
    float4x4 ViewMatrices_id169[TCascadeCountBase_id165 * TLightCountBase_id166];
    float2 DepthRanges_id170[TCascadeCountBase_id165 * TLightCountBase_id166];
    float DepthBiases_id171[TLightCountBase_id166];
    float OffsetScales_id172[TLightCountBase_id166];
    float CascadeDepthSplits_id179[TCascadeCount_id173 * TLightCount_id174];
    float ClusterDepthScale_id191;
    float ClusterDepthBias_id192;
    float2 ClusterStride_id193;
    float3 AmbientLight_id199;
    float3 SphericalColors_id204[TOrder_id203 * TOrder_id203];
    float MipCount_id205;
    float4x4 SkyMatrix_id207;
    float Intensity_id208;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id85;
    float2 Texture1TexelSize_id87;
    float2 Texture2TexelSize_id89;
    float2 Texture3TexelSize_id91;
    float2 Texture4TexelSize_id93;
    float2 Texture5TexelSize_id95;
    float2 Texture6TexelSize_id97;
    float2 Texture7TexelSize_id99;
    float2 Texture8TexelSize_id101;
    float2 Texture9TexelSize_id103;
};
Texture2D Texture0_id84;
Texture2D Texture1_id86;
Texture2D Texture2_id88;
Texture2D Texture3_id90;
Texture2D Texture4_id92;
Texture2D Texture5_id94;
Texture2D Texture6_id96;
Texture2D Texture7_id98;
Texture2D Texture8_id100;
Texture2D Texture9_id102;
TextureCube TextureCube0_id104;
TextureCube TextureCube1_id105;
TextureCube TextureCube2_id106;
TextureCube TextureCube3_id107;
Texture3D Texture3D0_id108;
Texture3D Texture3D1_id109;
Texture3D Texture3D2_id110;
Texture3D Texture3D3_id111;
SamplerState Sampler_id112;
SamplerState PointSampler_id113 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id114 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id115 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id116 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id117 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id118 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id119 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id120 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id121 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id122;
SamplerState Sampler1_id123;
SamplerState Sampler2_id124;
SamplerState Sampler3_id125;
SamplerState Sampler4_id126;
SamplerState Sampler5_id127;
SamplerState Sampler6_id128;
SamplerState Sampler7_id129;
SamplerState Sampler8_id130;
SamplerState Sampler9_id131;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id150;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id212;
Texture2D EnvironmentLightingDFG_LUT_id241;
Texture2D ShadowMapTexture_id161;
Texture3D<uint2> LightClusters_id189;
Buffer<uint> LightIndices_id190;
Buffer<float4> PointLights_id194;
Buffer<float4> SpotLights_id195;
TextureCube CubeMap_id206;
float4 Project_id97(float4 vec, float4x4 mat)
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
float SmoothDistanceAttenuation_id130(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id119(float squaredDistance, float lightInvSquareRadius)
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id163, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id163, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id163, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id163, uvW1.x * uvW1.y);
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id163, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id163, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id163, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id163, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id163, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id163, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id163, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id163, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id163, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id108(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id161.SampleLevel(LinearBorderSampler_id115, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id97(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id163, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id163, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id163, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id163, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id163, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id163, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id163, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id163, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id163, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id163, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id163, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id163, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id163, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id163, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id163, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id163, uvW3.x * uvW3.y);
    return 2704.0;
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
float GetAngularAttenuation_id132(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id131(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id130(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id121(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id119(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id112(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id162;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id163;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[4];
        normalizationFactor = Get3x3FilterKernel_id107(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id108(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id111(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id97(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id97(float4(ShadowMapTextureTexelSize_id163.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id97(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id110(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id97(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id97(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id163.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id97(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id109()
{

    {
        return 2.5;
    }
}
float SampleTextureAndCompare_id105(float2 position, float positionDepth)
{
    return ShadowMapTexture_id161.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id116, position, positionDepth);
}
void CalculatePCFKernelParameters_id103(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id162;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id163;
}
float Compute_id354()
{
    return InputValue_id229;
}
float Compute_id342()
{
    return InputValue_id220;
}
float4 Compute_id330(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id212[id];
    return float4(p.Col, 1);
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
float ComputeAttenuation_id133(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id131(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id132(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id120(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id121(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id216(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id200(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id99(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id111(GetFilterRadiusInPixels_id109(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id110(GetFilterRadiusInPixels_id109(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id112(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id98(float2 position, float positionDepth)
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
void Compute_id357(inout PS_STREAMS streams)
{
    streams.Input_2_id228 = Compute_id354();
}
void Compute_id345(inout PS_STREAMS streams)
{
    streams.Input_1_id219 = Compute_id342();
}
void Compute_id333(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id211 = Compute_id330(streams);
}
float4 EvaluateSphericalHarmonics_id154(float3 sphericalColors[TOrder_id201 * TOrder_id201], float3 direction)
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
void ProcessLight_id145(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id144(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id134(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id133(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id123(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id120(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
float NormalDistributionGGX_id230(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id240 * d * d);
}
float VisibilitySmithSchlickGGX_id218(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id216(alphaR, nDotL) * VisibilityhSchlickGGX_id216(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id206(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id200(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id102(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id165;
    return FilterThickness_id99(pixelPositionWS, meshNormalWS, DepthRanges_id170[arrayIndex], WorldToShadowCascadeUV_id167[arrayIndex], InverseWorldToShadowCascadeUV_id168[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id101(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id167[cascadeIndex + lightIndex * TCascadeCountBase_id165]);
    shadowPosition.z -= DepthBiases_id171[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id98(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id100(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id163.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id360(inout PS_STREAMS streams)
{
    return streams.Input_2_id228;
}
void Compute_id359(inout PS_STREAMS streams)
{

    {
        Compute_id357(streams);
    }
}
float Compute_id348(inout PS_STREAMS streams)
{
    return streams.Input_1_id219;
}
void Compute_id347(inout PS_STREAMS streams)
{

    {
        Compute_id345(streams);
    }
}
float4 Compute_id336(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id211;
}
void Compute_id335(inout PS_STREAMS streams)
{

    {
        Compute_id333(streams);
    }
}
float4 Compute_id316(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id71;
    float mipLevel = sqrt(alpha) * MipCount_id205;
    return CubeMap_id206.SampleLevel(LinearSampler_id114, direction, mipLevel);
}
float4 Compute_id311(float3 direction)
{
    return EvaluateSphericalHarmonics_id154(SphericalColors_id204, direction);
}
void PrepareEnvironmentLight_id158(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
float3 Compute_id366(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id241.SampleLevel(LinearSampler_id114, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id149(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
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
    streams.thicknessWS_id157 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id137(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id198[lightIndex].PositionWS;
    data.DirectionWS = Lights_id198[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id198[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id198[lightIndex].Color;
    ProcessLight_id145(streams, data);
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
    streams.thicknessWS_id157 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id126(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id190.Load(streams.lightIndex_id188);
    streams.lightIndex_id188++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id195.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id195.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id195.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id195.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id134(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id118(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id117(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id116(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id157 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id115(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id190.Load(streams.lightIndex_id188);
    streams.lightIndex_id188++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id194.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id194.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id123(streams, pointLight);
}
void PrepareLightData_id122(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id184.y / (projectedDepth - ZProjection_id184.x);
    float2 texCoord = float2(streams.ScreenPosition_id181.x + 1, 1 - streams.ScreenPosition_id181.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id191 + ClusterDepthBias_id192), 0));
    streams.lightData_id187 = LightClusters_id189.Load(int4(texCoord * ClusterStride_id193, slice, 0));
    streams.lightIndex_id188 = streams.lightData_id187.x;
}
float Compute_id458(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id230(streams.alphaRoughness_id71, streams.NdotH_id77);
}
float Compute_id428(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id218(streams.alphaRoughness_id71, streams.NdotL_id50, streams.NdotV_id73);
}
float3 Compute_id398(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id206(f0, streams.LdotH_id78);
}
float3 ComputeSpecularTextureProjection_id94(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id93(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id92(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id173;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id173 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id24 > CascadeDepthSplits_id179[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id100(OffsetScales_id172[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    if (cascadeIndex < TCascadeCount_id173)
    {
        shadow = ComputeShadowFromCascade_id101(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id179[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id179[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id24) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id173 - 1)
            {
            }
            else if (TBlendCascades_id175)
            {
                float nextShadow = ComputeShadowFromCascade_id101(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id157 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id91(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id44 = Lights_id160[lightIndex].Color;
    streams.lightDirectionWS_id43 = -Lights_id160[lightIndex].DirectionWS;
}
float Compute_id363(inout PS_STREAMS streams)
{
    Compute_id359(streams);
    return Compute_id360(streams);
}
float Compute_id351(inout PS_STREAMS streams)
{
    Compute_id347(streams);
    return Compute_id348(streams);
}
float4 Compute_id339(inout PS_STREAMS streams)
{
    Compute_id335(streams);
    return Compute_id336(streams);
}
void ResetStream_id233()
{
}
void AfterLightingAndShading_id515()
{
}
void AfterLightingAndShading_id496()
{
}
void PrepareEnvironmentLight_id329(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
void PrepareEnvironmentLight_id326(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id158(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id58;
    float3 sampleDirection = mul(streams.normalWS_id20, (float3x3)SkyMatrix_id207);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id48 = Compute_id311(sampleDirection).rgb * Intensity_id208 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.x;
    sampleDirection = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id207);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id49 = Compute_id316(streams, sampleDirection).rgb * Intensity_id208 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeEnvironmentLightContribution_id545(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id72;
    return Compute_id366(specularColor, streams.alphaRoughness_id71, streams.NdotV_id73) * streams.envLightSpecularColor_id49;
}
float3 ComputeEnvironmentLightContribution_id489(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor * streams.envLightDiffuseColor_id48;
}
void PrepareEnvironmentLight_id321(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id149(streams);
    float3 lightColor = AmbientLight_id199 * streams.matAmbientOcclusion_id58;
    streams.envLightDiffuseColor_id48 = lightColor;
    streams.envLightSpecularColor_id49 = lightColor;
}
void PrepareDirectLight_id292(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id137(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id156 = ComputeShadow_id138(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id156 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id139(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id140(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id294()
{
    return LightCount_id196;
}
int GetMaxLightCount_id295()
{
    return TMaxLightCount_id197;
}
void PrepareDirectLights_id290()
{
}
void PrepareDirectLight_id280(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id126(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id156 = ComputeShadow_id127(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id156 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id128(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id129(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id284(inout PS_STREAMS streams)
{
    return streams.lightData_id187.y >> 16;
}
int GetMaxLightCount_id283(inout PS_STREAMS streams)
{
    return streams.lightData_id187.y >> 16;
}
void PrepareDirectLights_id278()
{
}
void PrepareDirectLight_id267(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id115(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id156 = ComputeShadow_id116(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id156 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id117(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id118(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id272(inout PS_STREAMS streams)
{
    return streams.lightData_id187.y & 0xFFFF;
}
int GetMaxLightCount_id271(inout PS_STREAMS streams)
{
    return streams.lightData_id187.y & 0xFFFF;
}
void PrepareDirectLights_id270(inout PS_STREAMS streams)
{
    PrepareLightData_id122(streams);
}
float3 ComputeDirectLightContribution_id544(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id72;
    float3 fresnel = Compute_id398(streams, specularColor);
    float geometricShadowing = Compute_id428(streams);
    float normalDistribution = Compute_id458(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeDirectLightContribution_id488(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor / PI_id240 * streams.lightColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id66.x;
}
void PrepareMaterialPerDirectLight_id64(inout PS_STREAMS streams)
{
    streams.H_id76 = normalize(streams.viewWS_id69 + streams.lightDirectionWS_id43);
    streams.NdotH_id77 = saturate(dot(streams.normalWS_id20, streams.H_id76));
    streams.LdotH_id78 = saturate(dot(streams.lightDirectionWS_id43, streams.H_id76));
    streams.VdotH_id79 = streams.LdotH_id78;
}
void PrepareDirectLight_id243(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id91(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id156 = ComputeShadow_id92(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id156 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id93(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id94(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id245()
{
    return LightCount_id158;
}
int GetMaxLightCount_id246()
{
    return TMaxLightCount_id159;
}
void PrepareDirectLights_id241()
{
}
void PrepareForLightingAndShading_id512()
{
}
void PrepareForLightingAndShading_id493()
{
}
void PrepareMaterialForLightingAndShading_id232(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id51 = lerp(1.0, streams.matAmbientOcclusion_id58, streams.matAmbientOcclusionDirectLightingFactor_id59);
    streams.matDiffuseVisible_id70 = streams.matDiffuse_id54.rgb * lerp(1.0f, streams.matCavity_id60, streams.matCavityDiffuse_id61) * streams.matDiffuseSpecularAlphaBlend_id66.r * streams.matAlphaBlendColor_id67;
    streams.matSpecularVisible_id72 = streams.matSpecular_id56.rgb * streams.matSpecularIntensity_id57 * lerp(1.0f, streams.matCavity_id60, streams.matCavitySpecular_id62) * streams.matDiffuseSpecularAlphaBlend_id66.g * streams.matAlphaBlendColor_id67;
    streams.NdotV_id73 = max(dot(streams.normalWS_id20, streams.viewWS_id69), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id55;
    streams.alphaRoughness_id71 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id231(inout PS_STREAMS streams)
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
float4 Compute_id365(inout PS_STREAMS streams)
{
    float x = Compute_id363(streams);
    return float4(x, x, x, x);
}
float4 Compute_id353(inout PS_STREAMS streams)
{
    float x = Compute_id351(streams);
    return float4(x, x, x, x);
}
float4 Compute_id341(inout PS_STREAMS streams)
{
    return Compute_id339(streams);
}
void ResetStream_id234(inout PS_STREAMS streams)
{
    ResetStream_id233();
    streams.matBlend_id41 = 0.0f;
}
void Compute_id576(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id52);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id20 = -streams.normalWS_id20;
    ResetLightStream_id231(streams);
    PrepareMaterialForLightingAndShading_id232(streams);

    {
        PrepareForLightingAndShading_id493();
    }

    {
        PrepareForLightingAndShading_id512();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id241();
        const int maxLightCount = GetMaxLightCount_id246();
        int count = GetLightCount_id245();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id243(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id488(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id544(streams);
            }
        }
    }

    {
        PrepareDirectLights_id270(streams);
        const int maxLightCount = GetMaxLightCount_id271(streams);
        int count = GetLightCount_id272(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id267(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id488(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id544(streams);
            }
        }
    }

    {
        PrepareDirectLights_id278();
        const int maxLightCount = GetMaxLightCount_id283(streams);
        int count = GetLightCount_id284(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id280(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id488(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id544(streams);
            }
        }
    }

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
                directLightingContribution += ComputeDirectLightContribution_id488(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id544(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id321(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id489(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id545(streams);
        }
    }

    {
        PrepareEnvironmentLight_id326(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id489(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id545(streams);
        }
    }

    {
        PrepareEnvironmentLight_id329(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id489(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id545(streams);
        }
    }
    streams.shadingColor_id74 += directLightingContribution * PI_id240 + environmentLightingContribution;
    streams.shadingColorAlpha_id75 = streams.matDiffuse_id54.a;

    {
        AfterLightingAndShading_id496();
    }

    {
        AfterLightingAndShading_id515();
    }
}
void Compute_id560(inout PS_STREAMS streams)
{
    float metalness = Compute_id365(streams).r;
    streams.matSpecular_id56 = lerp(0.02, streams.matDiffuse_id54.rgb, metalness);
    streams.matDiffuse_id54.rgb = lerp(streams.matDiffuse_id54.rgb, 0, metalness);
}
void Compute_id555(inout PS_STREAMS streams)
{
    float glossiness = Compute_id353(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id55 = glossiness;
}
void Compute_id550(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id341(streams);
    streams.matDiffuse_id54 = colorBase;
    streams.matColorBase_id53 = colorBase;
}
void ResetStream_id235(inout PS_STREAMS streams)
{
    ResetStream_id234(streams);
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
void Compute_id84(inout PS_STREAMS streams)
{

    {
        Compute_id550(streams);
    }

    {
        Compute_id555(streams);
    }

    {
        Compute_id560(streams);
    }

    {
        Compute_id576(streams);
    }
}
void ResetStream_id83(inout PS_STREAMS streams)
{
    ResetStream_id235(streams);
    streams.shadingColorAlpha_id75 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id69 = normalize(Eye_id32.xyz - streams.PositionWS_id23.xyz);
    streams.shadingColor_id74 = 0;
    ResetStream_id83(streams);
    Compute_id84(streams);
    return float4(streams.shadingColor_id74, streams.shadingColorAlpha_id75);
}
float3 EncodeNormal_id88(float3 n)
{
    return n * 0.5 + 0.5;
}
float4 StrideShadingWorldNormal_id33(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id23 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id23, ViewProjection_id30);
    streams.normalWS_id20 = normal;
    streams.meshNormalWS_id18 = normal;
    streams.DepthVS_id24 = posWVP.w;
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
    normal = normalize(mul(float4(normal, 0), ViewInverse_id27).xyz);
    pos = float4((normal * sphereRadius) + spherePos, 1);
}
void PostTransformPosition_id59(inout VS_STREAMS streams)
{
    streams.VID_id154 = streams.VertexID_id153;
    streams.InstanceID_id13 = streams.VertexID_id153;
    streams.ShadingPosition_id0 = streams.Position_id22;
}
void TransformPosition_id58()
{
}
void PreTransformPosition_id57()
{
}
float4 Compute_id82()
{
    return MaterialIndex_id155;
}
float4 Compute_id81(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id88(streams.normalWS_id20), 1);
}
float4 Shading_id63(inout PS_STREAMS streams)
{
    float size = streams.PSize_id152;
    float2 mapping = streams.TexCoord_id132;
    float3 worldPos, worldNormal;
    sphereImpostorSimple_id62(mapping, streams.PositionWS_id23.xyz, size, worldPos, worldNormal);
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
    streams.ColorTarget1_id3 = Compute_id81(streams);
    streams.ColorTarget2_id4 = Compute_id82();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id20, streams.normalWS_id20) > 0)
        streams.normalWS_id20 = normalize(streams.normalWS_id20);
    streams.meshNormalWS_id18 = streams.normalWS_id20;
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
    streams.PositionWS_id23 = __input__.PositionWS_id23;
    streams.PSize_id152 = __input__.PSize_id152;
    streams.TexCoord_id132 = __input__.TexCoord_id132;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.ScreenPosition_id181 = __input__.ScreenPosition_id181;
    streams.normalWS_id20 = __input__.normalWS_id20;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id181 /= streams.ScreenPosition_id181.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id154 = input[0].VID_id154;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id181 = input[0].ScreenPosition_id181;
    streams.normalWS_id20 = input[0].normalWS_id20;
    uint id = streams.VID_id154;
    SMGridParticle p = ParticlesBuffer_id150[id];
    streams.PositionWS_id23 = mul(float4(p.Pos.xyz, 1), World_id33);
    streams.PSize_id152 = ParticleSize_id151 * p.Size.x * 0.5;
    if (streams.PSize_id152 <= 0)
        return;
    float padding = 1.5;
    float2 offset;
    float4 posView = mul(streams.PositionWS_id23, View_id26);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id132 = QuadUV_id148[i].xy * 2 - 1;
        float4 viewCornerPos = float4(posView.xyz + QuadPositions_id147[i].xyz * streams.PSize_id152, 1);
        streams.ShadingPosition_id0 = mul(viewCornerPos, Projection_id28);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id23 = streams.PositionWS_id23;
            output.PSize_id152 = streams.PSize_id152;
            output.TexCoord_id132 = streams.TexCoord_id132;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.ScreenPosition_id181 = streams.ScreenPosition_id181;
            output.normalWS_id20 = streams.normalWS_id20;
            output.InstanceID_id13 = streams.InstanceID_id13;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id153 = __input__.VertexID_id153;
    streams.Position_id22 = __input__.Position_id22;
    streams.normalWS_id20 = __input__.normalWS_id20;
    VSMain_id19(streams);
    streams.ScreenPosition_id181 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id154 = streams.VID_id154;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id181 = streams.ScreenPosition_id181;
    __output__.normalWS_id20 = streams.normalWS_id20;
    return __output__;
}

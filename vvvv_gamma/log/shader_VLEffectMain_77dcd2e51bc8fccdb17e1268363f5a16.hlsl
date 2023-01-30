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
@P VLEffectParameters.MaterialExtensionShader: mixin SMBoxImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MaterialIndex_id154 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id195 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id197 => LightSpotGroup.Lights.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id150 => SMBoxImpostor_ShaderFX.ParticleSize
@C    InputValue_id219 => ShaderFX.InputValueFloat
@C    InputValue_id228 => ShaderFX.InputValueFloat.i1
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
@C    AmbientLight_id198 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id203 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id204 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id206 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id207 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id211 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id211 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id240 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id240 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    CubeMap_id205 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id205 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMBoxImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id113 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id115 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    ParticlesBuffer_id211 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id240 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id160 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id188 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id189 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id193 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id194 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id205 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
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
@S    SMBoxImpostor_ShaderFX => 63c5822b9804d0a1a1802c940e1bd54d
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
@G    Vertex => 080475cd5fdaf501ba46cbbaafd55bb0
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
// VID_ID153_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float   xyzw
// SCREENPOSITION_ID180_SEM     0   xyzw        2     NONE   float   xyzw
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
//   v0.x <- __input__.VertexID_id152; 
//   v1.x <- __input__.Position_id21.x; v1.y <- __input__.Position_id21.y; v1.z <- __input__.Position_id21.z; v1.w <- __input__.Position_id21.w; 
//   o2.x <- <VSMain return value>.ScreenPosition_id180.x; o2.y <- <VSMain return value>.ScreenPosition_id180.y; o2.z <- <VSMain return value>.ScreenPosition_id180.z; o2.w <- <VSMain return value>.ScreenPosition_id180.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id153; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 1549 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_77dcd2e51bc8fccdb17e1268363f5a16.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
ret 
// Approximately 4 instruction slots used
@G    Geometry => e634a769a6f7ce0fd943742b4f1de88f
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
//   } Lights_id197[8];                 // Offset:  464 Size:   508 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  976 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id150;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id219;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id228;            // Offset:    8 Size:     4 [unused]
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
//   float4 Eye_id31;                   // Offset:  336 Size:    16
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
//   float3 AmbientLight_id198;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id203[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id204;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id206;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id207;             // Offset: 1632 Size:     4 [unused]
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
// SCREENPOSITION_ID180_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[22], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v[1][0].x
dcl_input v[1][0].y
dcl_input_siv v[1][1].xyzw, position
dcl_input v[1][2].xyzw
dcl_temps 11
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
//   v[0][0].x <- input[0].VID_id153; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id180.x; v[0][2].y <- input[0].ScreenPosition_id180.y; v[0][2].z <- input[0].ScreenPosition_id180.z; v[0][2].w <- input[0].ScreenPosition_id180.w
//
#line 1514 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_77dcd2e51bc8fccdb17e1268363f5a16.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v[0][0].x, l(24), t0.xyzw  // r0.x <- p.Rot.x; r0.y <- p.Rot.y; r0.z <- p.Rot.z; r0.w <- p.Size.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xy, v[0][0].x, l(40), t0.xyxx  // r1.x <- p.Size.y; r1.y <- p.Size.z

#line 1516
mov r1.z, r0.w
mul r1.xyz, r1.zxyz, cb1[0].xxxx  // r1.x <- streams.PSize_id151.x; r1.y <- streams.PSize_id151.y; r1.z <- streams.PSize_id151.z

#line 1517
dp3 r0.w, r1.xyzx, r1.xyzx
ge r0.w, l(0.000000), r0.w
if_nz r0.w

#line 1518
  ret 
endif 

#line 1514
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, v[0][0].x, l(0), t0.xyzx  // r2.x <- p.Pos.x; r2.y <- p.Pos.y; r2.z <- p.Pos.z

#line 1479
mul r0.xyz, r0.xyzx, l(-6.283185, 6.283185, -6.283185, 0.000000)  // r0.x <- z.x; r0.y <- z.y; r0.z <- z.z

#line 1480
sincos r0.xyz, r3.xyz, r0.xyzx  // r3.x <- x.x; r3.y <- x.y; r3.z <- x.z; r0.x <- y.x; r0.y <- y.y; r0.z <- y.z

#line 1481
mul r4.xyz, r3.zzyz, r3.yxxy  // r4.y <- <rot3x3_id67 return value>._m11; r4.z <- <rot3x3_id67 return value>._m22
mul r0.w, r0.y, r0.x
mad r5.x, r0.w, r0.z, r4.x  // r5.x <- <rot3x3_id67 return value>._m00
mul r5.y, r0.z, -r3.x  // r5.y <- <rot3x3_id67 return value>._m01
mul r6.xyzw, r0.xyzy, r3.yzyx  // r6.w <- <rot3x3_id67 return value>._m20

#line 1526
mov r7.xy, r6.ywyy
mov r7.z, r0.x
mov r7.w, r4.z

#line 1481
mad r5.z, r6.x, r0.z, -r7.x  // r5.z <- <rot3x3_id67 return value>._m02
mad r8.x, -r0.w, r3.z, r6.z  // r8.x <- <rot3x3_id67 return value>._m10
mul r0.w, r3.z, r6.x
mad r8.y, -r0.y, r0.z, -r0.w  // r8.y <- <rot3x3_id67 return value>._m12

#line 1523
add r0.yzw, -r2.xxyz, cb2[21].xxyz  // r0.y <- viewDir.x; r0.z <- viewDir.y; r0.w <- viewDir.z

#line 1524
dp3 r1.w, r0.yzwy, r7.yzwy
lt r1.w, l(0.000000), r1.w
if_nz r1.w

#line 1455
  mov r8.z, r4.y

#line 1457
  mov r3.w, l(1.000000)

#line 1449
  mov r1.w, l(0)  // r1.w <- i
  loop 
    uge r2.w, r1.w, l(4)
    breakc_nz r2.w

#line 1430
    ishl r2.w, l(1), r1.w  // r2.w <- b

#line 1431
    and r6.xyz, r2.wwww, l(90, 51, 15, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 1454
    mul r9.xyz, r5.xyzx, r6.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1455
    mul r10.xyz, r8.xzyx, r6.yyyy
    mad r9.xyz, r10.xyzx, r1.yyyy, r9.xyzx

#line 1456
    mul r6.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r6.xyzx, r1.zzzz, r9.xyzx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 1457
    dp4 r9.x, r3.xyzw, cb0[0].xyzw  // r9.x <- posWorld.x
    dp4 r9.y, r3.xyzw, cb0[1].xyzw  // r9.y <- posWorld.y
    dp4 r9.z, r3.xyzw, cb0[2].xyzw  // r9.z <- posWorld.z
    dp4 r9.w, r3.xyzw, cb0[3].xyzw  // r9.w <- posWorld.w

#line 1461
    dp4 r2.w, r9.xyzw, cb2[16].xyzw  // r2.w <- streams.ShadingPosition_id0.x
    dp4 r3.x, r9.xyzw, cb2[17].xyzw  // r3.x <- streams.ShadingPosition_id0.y
    dp4 r3.y, r9.xyzw, cb2[18].xyzw  // r3.y <- streams.ShadingPosition_id0.z
    dp4 r3.z, r9.xyzw, cb2[19].xyzw  // r3.z <- streams.ShadingPosition_id0.w

#line 1472
    mov o0.xyzw, r9.xyzw
    mov o1.x, r6.w
    mov o1.y, r0.x
    mov o1.z, r4.z
    mov o1.w, r3.z
    mov o2.x, r2.w
    mov o2.y, r3.x
    mov o2.z, r3.y
    mov o2.w, r3.z
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1474
    iadd r1.w, r1.w, l(1)
  endloop 

#line 1475
  cut_stream m0

#line 1525
endif 

#line 1526
dp3 r0.x, r0.yzwy, -r7.yzwy
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 1455
  mov r8.w, r4.y

#line 1457
  mov r3.w, l(1.000000)

#line 1449
  mov r0.x, l(4)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(8)
    breakc_nz r1.w

#line 1430
    ishl r1.w, l(1), r0.x  // r1.w <- b

#line 1431
    and r6.xyz, r1.wwww, l(0x0000a55a, 3891, 0x0000330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 1454
    mul r9.xyz, r5.xyzx, r6.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1455
    mul r6.xyw, r8.xwxy, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r9.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 1456
    mul r9.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r9.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 1457
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1461
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 1472
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, -r7.yzwy
    mov o1.w, r3.y
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.x
    mov o2.w, r3.y
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1474
    iadd r0.x, r0.x, l(1)
  endloop 

#line 1475
  cut_stream m0

#line 1527
endif 

#line 1528
mov r4.xz, r8.xxyx
dp3 r0.x, r0.yzwy, r4.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 1457
  mov r3.w, l(1.000000)

#line 1449
  mov r0.x, l(8)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(12)
    breakc_nz r1.w

#line 1430
    ishl r1.w, l(1), r0.x  // r1.w <- b

#line 1431
    and r6.xyz, r1.wwww, l(0x0000a500, 3840, 0x00003300, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 1454
    mul r9.xyz, r5.xyzx, r6.xxxx
    mad r9.xyz, r9.xyzx, r1.xxxx, r2.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 1455
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r9.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 1456
    mul r9.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r9.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 1457
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1461
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 1472
    mov o0.xyzw, r6.xyzw
    mov o1.xz, r8.xxyx
    mov o1.y, r4.y
    mov o1.w, r3.y
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.x
    mov o2.w, r3.y
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1474
    iadd r0.x, r0.x, l(1)
  endloop 

#line 1475
  cut_stream m0

#line 1529
endif 

#line 1530
dp3 r0.x, r0.yzwy, -r4.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 1457
  mov r3.w, l(1.000000)

#line 1449
  mov r0.x, l(12)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(16)
    breakc_nz r1.w

#line 1430
    ishl r1.w, l(1), r0.x  // r1.w <- b

#line 1431
    and r6.xyz, r1.wwww, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 1454
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 1455
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 1456
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 1457
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1461
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 1472
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, -r4.xyzx
    mov o1.w, r3.y
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.x
    mov o2.w, r3.y
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1474
    iadd r0.x, r0.x, l(1)
  endloop 

#line 1475
  cut_stream m0

#line 1531
endif 

#line 1532
dp3 r0.x, r0.yzwy, r5.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 1457
  mov r3.w, l(1.000000)

#line 1449
  mov r0.x, l(16)  // r0.x <- i
  loop 
    uge r1.w, r0.x, l(20)
    breakc_nz r1.w

#line 1430
    ishl r1.w, l(1), r0.x  // r1.w <- b

#line 1431
    and r6.xyz, r1.wwww, l(0x000f0000, 0x005a0000, 0x00330000, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id91 return value>.x; r6.y <- <CubeVert_id91 return value>.y; r6.z <- <CubeVert_id91 return value>.z

#line 1454
    mul r8.xyz, r5.xyzx, r6.xxxx
    mad r8.xyz, r8.xyzx, r1.xxxx, r2.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 1455
    mul r6.xyw, r4.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r1.yyyy, r8.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 1456
    mul r8.xyz, r7.yzwy, r6.zzzz
    mad r3.xyz, r8.xyzx, r1.zzzz, r6.xywx  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.z <- posWorld.z

#line 1457
    dp4 r6.x, r3.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r3.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r3.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r3.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 1461
    dp4 r1.w, r6.xyzw, cb2[16].xyzw  // r1.w <- streams.ShadingPosition_id0.x
    dp4 r2.w, r6.xyzw, cb2[17].xyzw  // r2.w <- streams.ShadingPosition_id0.y
    dp4 r3.x, r6.xyzw, cb2[18].xyzw  // r3.x <- streams.ShadingPosition_id0.z
    dp4 r3.y, r6.xyzw, cb2[19].xyzw  // r3.y <- streams.ShadingPosition_id0.w

#line 1472
    mov o0.xyzw, r6.xyzw
    mov o1.xyz, r5.xyzx
    mov o1.w, r3.y
    mov o2.x, r1.w
    mov o2.y, r2.w
    mov o2.z, r3.x
    mov o2.w, r3.y
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1474
    iadd r0.x, r0.x, l(1)
  endloop 

#line 1475
  cut_stream m0

#line 1533
endif 

#line 1534
dp3 r0.x, r0.yzwy, -r5.xyzx
lt r0.x, l(0.000000), r0.x
if_nz r0.x

#line 1457
  mov r0.w, l(1.000000)

#line 1449
  mov r1.w, l(20)  // r1.w <- i
  loop 
    uge r2.w, r1.w, l(24)
    breakc_nz r2.w

#line 1430
    ishl r2.w, l(1), r1.w  // r2.w <- b

#line 1431
    and r3.xyz, r2.wwww, l(0x000f0000, 0x005a0000, 0x00330000, 0)
    movc r3.xyz, r3.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r3.x <- <CubeVert_id91 return value>.x; r3.y <- <CubeVert_id91 return value>.y; r3.z <- <CubeVert_id91 return value>.z

#line 1454
    mul r6.xyz, r5.xyzx, r3.xxxx
    mad r6.xyz, r6.xyzx, r1.xxxx, r2.xyzx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 1455
    mul r3.xyw, r4.xyxz, r3.yyyy
    mad r3.xyw, r3.xyxw, r1.yyyy, r6.xyxz  // r3.x <- posWorld.x; r3.y <- posWorld.y; r3.w <- posWorld.z

#line 1456
    mul r6.xyz, r7.yzwy, r3.zzzz
    mad r0.xyz, r6.xyzx, r1.zzzz, r3.xywx  // r0.x <- posWorld.x; r0.y <- posWorld.y; r0.z <- posWorld.z

#line 1457
    dp4 r3.x, r0.xyzw, cb0[0].xyzw  // r3.x <- posWorld.x
    dp4 r3.y, r0.xyzw, cb0[1].xyzw  // r3.y <- posWorld.y
    dp4 r3.z, r0.xyzw, cb0[2].xyzw  // r3.z <- posWorld.z
    dp4 r3.w, r0.xyzw, cb0[3].xyzw  // r3.w <- posWorld.w

#line 1461
    dp4 r0.x, r3.xyzw, cb2[16].xyzw  // r0.x <- streams.ShadingPosition_id0.x
    dp4 r0.y, r3.xyzw, cb2[17].xyzw  // r0.y <- streams.ShadingPosition_id0.y
    dp4 r0.z, r3.xyzw, cb2[18].xyzw  // r0.z <- streams.ShadingPosition_id0.z
    dp4 r2.w, r3.xyzw, cb2[19].xyzw  // r2.w <- streams.ShadingPosition_id0.w

#line 1472
    mov o0.xyzw, r3.xyzw
    mov o1.xyz, r5.xyzx
    mov o1.w, r2.w
    mov o2.x, r0.x
    mov o2.y, r0.y
    mov o2.z, r0.z
    mov o2.w, r2.w
    mov o3.xyzw, v[0][2].xyzw
    mov o4.x, v[0][0].y
    emit_stream m0

#line 1474
    iadd r1.w, r1.w, l(1)
  endloop 

#line 1475
  cut_stream m0

#line 1535
endif 

#line 1536
ret 
// Approximately 266 instruction slots used
@G    Pixel => ff924dc3e54a8e072c8086ea3df05a80
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
//   } Lights_id197[8];                 // Offset:  464 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset:  976 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id150;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id219;            // Offset:    4 Size:     4
//   float InputValue_id228;            // Offset:    8 Size:     4
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
//   float3 AmbientLight_id198;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id203[9];   // Offset: 1424 Size:   140
//   float MipCount_id204;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id206;          // Offset: 1568 Size:    64
//   float Intensity_id207;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id211
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
// ParticlesBuffer_id211             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id240    texture  float4          2d             t1      1 
// ShadowMapTexture_id160            texture  float4          2d             t2      1 
// LightClusters_id188               texture   uint2          3d             t3      1 
// LightIndices_id189                texture    uint         buf             t4      1 
// PointLights_id193                 texture  float4         buf             t5      1 
// SpotLights_id194                  texture  float4         buf             t6      1 
// CubeMap_id205                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID180_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps_siv linear noperspective v2.z, position
dcl_input_ps linear v3.xyw
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.normalWS_id19.x; v1.y <- __input__.normalWS_id19.y; v1.z <- __input__.normalWS_id19.z; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v1.w <- __input__.DepthVS_id23; 
//   v3.x <- __input__.ScreenPosition_id180.x; v3.y <- __input__.ScreenPosition_id180.y; v3.z <- __input__.ScreenPosition_id180.z; v3.w <- __input__.ScreenPosition_id180.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1498 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_77dcd2e51bc8fccdb17e1268363f5a16.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id180.x; r0.y <- streams.ScreenPosition_id180.y

#line 1424
dp3 r0.z, v1.xyzx, v1.xyzx
lt r0.w, l(0.000000), r0.z

#line 1425
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v1.xyzx

#line 1378
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id68.x; r3.y <- streams.viewWS_id68.y; r3.z <- streams.viewWS_id68.z

#line 544
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, v4.x, l(48), t0.xyzx  // r4.x <- p.Col.x; r4.y <- p.Col.y; r4.z <- p.Col.z

#line 1318
add r0.w, -cb1[0].y, l(1.000000)  // r0.w <- glossiness

#line 1310
add r5.xyz, r4.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb1[0].zzzz, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id55.x; r5.y <- streams.matSpecular_id55.y; r5.z <- streams.matSpecular_id55.z

#line 1311
mad r4.xyz, cb1[0].zzzz, -r4.xyzx, r4.xyzx  // r4.x <- streams.matDiffuse_id53.x; r4.y <- streams.matDiffuse_id53.y; r4.z <- streams.matDiffuse_id53.z

#line 1151
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1108
dp3 r1.w, r1.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id72

#line 1109
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 1110
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id70

#line 1175
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 1078
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id49

#line 889
  lt r2.w, cb2[83].x, v1.w

#line 892
  and r2.w, r2.w, l(1)  // r2.w <- cascadeIndex

#line 889
  lt r3.w, cb2[84].x, v1.w

#line 892
  movc r2.w, r3.w, l(2), r2.w

#line 889
  lt r3.w, cb2[85].x, v1.w

#line 892
  movc r2.w, r3.w, l(3), r2.w

#line 714
  add r4.w, -r1.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 715
  mul r5.w, cb2[28].z, cb2[82].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 897
  mad r7.xyz, r4.wwww, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 707
  ishl r4.w, r2.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r4.w + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r4.w + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r5.w, r7.xyzw, cb2[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
  dp4 r6.z, r7.xyzw, cb2[r4.w + 32].xyzw  // r6.z <- shadowPosition.w

#line 708
  add r8.z, r5.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 709
  div r8.xyz, r8.xyzx, r6.zzzz

#line 528
  mad r6.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 529
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 530
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 531
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 366
  mad r9.xy, -r6.wzww, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 367
  mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW1.x; r9.w <- uvW1.y

#line 368
  add r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.zw, r10.xxxy, l(0.000000, 0.000000, -1.000000, -1.000000)  // r10.z <- uv0.x; r10.w <- uv0.y

#line 369
  div r6.zw, r6.zzzw, r9.zzzw
  add r10.xy, r6.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)  // r10.x <- uv1.x; r10.y <- uv1.y

#line 370
  mul r5.w, r9.x, r9.y

#line 371
  mad r11.xyzw, r10.zwxw, cb2[28].zwzw, r8.xyxy

#line 372
  mul r6.zw, r9.xxxy, r9.zzzw

#line 373
  mad r10.xyzw, r10.zyxy, cb2[28].zwzw, r8.xyxy
  mul r8.x, r9.w, r9.z

#line 523
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.y, r11.xyxx, t2.xxxx, s1, r8.z  // r8.y <- <SampleTextureAndCompare_id128 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r11.zwzz, t2.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id128 return value>

#line 618
  mul r6.z, r6.z, r8.w
  mad r5.w, r5.w, r8.y, r6.z  // r5.w <- shadow

#line 523
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t2.xxxx, s1, r8.z  // r6.z <- <SampleTextureAndCompare_id128 return value>

#line 618
  mad r5.w, r6.w, r6.z, r5.w

#line 523
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.zwzz, t2.xxxx, s1, r8.z

#line 618
  mad r5.w, r8.x, r6.z, r5.w

#line 620
  mul r8.xyz, r5.wwww, l(0.062500, 0.062500, 0.062500, 0.000000)  // r8.z <- shadow

#line 903
  ilt r6.z, l(0), r2.w
  if_nz r6.z

#line 905
    iadd r6.z, r2.w, l(-1)
    add r6.z, -cb2[r6.z + 83].x, cb2[r2.w + 83].x  // r6.z <- splitSize

#line 906
  else 
    mov r6.z, cb2[r2.w + 83].x  // r6.z <- splitSize
  endif 

#line 907
  add r2.w, -v1.w, cb2[r2.w + 83].x
  div r2.w, r2.w, r6.z  // r2.w <- splitDist

#line 908
  lt r6.z, r2.w, l(0.200000)
  if_nz r6.z

#line 911
    if_nz r3.w

#line 913
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 910
      mul_sat r2.w, r2.w, l(5.000000)
      mad r3.w, r2.w, l(-2.000000), l(3.000000)
      mul r2.w, r2.w, r2.w
      mul r2.w, r2.w, r3.w  // r2.w <- lerpAmt

#line 707
      dp4 r9.x, r7.xyzw, cb2[r4.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r4.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r3.w, r7.xyzw, cb2[r4.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r7.xyzw, cb2[r4.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 708
      add r9.z, r3.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 709
      div r7.xyz, r9.xyzx, r4.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 528
      mad r6.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r7.xy, r6.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 529
      add r6.zw, r6.zzzw, -r7.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 530
      add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 531
      mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 366
      mad r9.xy, -r6.wzww, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 367
      mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW1.x; r9.w <- uvW1.y

#line 368
      add r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)
      div r10.xy, r10.xyxx, r9.yxyy
      add r10.zw, r10.xxxy, l(0.000000, 0.000000, -1.000000, -1.000000)  // r10.z <- uv0.x; r10.w <- uv0.y

#line 369
      div r6.zw, r6.zzzw, r9.zzzw
      add r10.xy, r6.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)  // r10.x <- uv1.x; r10.y <- uv1.y

#line 370
      mul r3.w, r9.x, r9.y

#line 371
      mad r11.xyzw, r10.zwxw, cb2[28].zwzw, r7.xyxy

#line 372
      mul r6.zw, r9.xxxy, r9.zzzw

#line 373
      mad r10.xyzw, r10.zyxy, cb2[28].zwzw, r7.xyxy
      mul r4.w, r9.w, r9.z

#line 523
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r11.xyxx, t2.xxxx, s1, r7.z  // r7.x <- <SampleTextureAndCompare_id128 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.y, r11.zwzz, t2.xxxx, s1, r7.z  // r7.y <- <SampleTextureAndCompare_id128 return value>

#line 618
      mul r6.z, r6.z, r7.y
      mad r3.w, r3.w, r7.x, r6.z  // r3.w <- shadow

#line 523
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t2.xxxx, s1, r7.z  // r6.z <- <SampleTextureAndCompare_id128 return value>

#line 618
      mad r3.w, r6.w, r6.z, r3.w

#line 523
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.zwzz, t2.xxxx, s1, r7.z

#line 618
      mad r3.w, r4.w, r6.z, r3.w

#line 620
      mul r3.w, r3.w, l(0.062500)

#line 917
      mad r4.w, r5.w, l(0.062500), -r3.w
      mad r8.xyz, r2.wwww, r4.wwww, r3.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 918
    endif 

#line 919
  endif 

#line 1080
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r1.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id44.x; r7.y <- streams.lightColorNdotL_id44.y; r7.z <- streams.lightColorNdotL_id44.z

#line 1070
  mad r2.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.z, r0.z
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.H_id75.x; r2.y <- streams.H_id75.y; r2.z <- streams.H_id75.z

#line 1071
  dp3_sat r0.z, r1.xyzx, r2.xyzx  // r0.z <- streams.NdotH_id76

#line 1072
  dp3_sat r2.x, -cb2[26].xyzx, r2.xyzx  // r2.x <- streams.LdotH_id77

#line 1066
  mul r2.yzw, r4.xxyz, r7.xxyz

#line 588
  add r8.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.x, -r2.x, l(1.000000)
  mul r3.w, r2.x, r2.x
  mul r3.w, r3.w, r3.w
  mul r2.x, r2.x, r3.w
  mad r8.xyz, r8.xyzx, r2.xxxx, r5.xyzx  // r8.x <- <FresnelSchlick_id223 return value>.x; r8.y <- <FresnelSchlick_id223 return value>.y; r8.z <- <FresnelSchlick_id223 return value>.z

#line 583
  mul r2.x, r0.w, l(0.500000)  // r2.x <- k

#line 584
  mad r3.w, -r0.w, l(0.500000), l(1.000000)
  mad r4.w, r1.w, r3.w, r2.x
  div r4.w, r1.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r2.x, r6.y, r3.w, r2.x
  div r2.x, r6.y, r2.x  // r2.x <- <VisibilityhSchlickGGX_id239 return value>

#line 694
  mul r2.x, r2.x, r4.w
  mul r1.w, r6.y, r1.w
  div r1.w, r2.x, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 688
  mul r2.x, r0.w, r0.w  // r2.x <- alphaR2

#line 689
  mul r0.z, r0.z, r0.z
  mad r3.w, r0.w, r0.w, l(-1.000000)
  mad r0.z, r0.z, r3.w, l(1.000000)
  max r0.z, r0.z, l(0.000100)  // r0.z <- d

#line 690
  mul r0.z, r0.z, r0.z
  mul r0.z, r0.z, l(3.141593)
  div r0.z, r2.x, r0.z  // r0.z <- <NormalDistributionGGX_id253 return value>

#line 1060
  mul r8.xyz, r1.wwww, r8.xyzx
  mul r8.xyz, r0.zzzz, r8.xyzx
  mul r7.xyz, r7.xyzx, r8.xyzx

#line 1061
  mul r7.xyz, r7.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r7.x <- <ComputeDirectLightContribution_id567 return value>.x; r7.y <- <ComputeDirectLightContribution_id567 return value>.y; r7.z <- <ComputeDirectLightContribution_id567 return value>.z

#line 1183
  mad r2.xyz, r2.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 1184
else 
  mov r2.xyz, l(0,0,0,0)  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z
endif 

#line 854
add r0.z, v2.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 855
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 856
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 857
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 856
ftoi r7.xyz, r0.xyzx  // r7.z <- slice

#line 857
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r7.xyzw, t3.xyzw  // r0.x <- streams.lightData_id186.x; r0.y <- streams.lightData_id186.y

#line 1048
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id294 return value>

#line 1193
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id22.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id22.y; r8.y <- streams.PositionWS_id22.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id68.x; r8.w <- streams.viewWS_id68.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id68.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r11.w, r0.w  // r11.w <- streams.alphaRoughness_id70
mov r6.w, r6.y  // r6.w <- streams.NdotV_id72
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id187
mov r12.xyz, r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.z
  breakc_nz r2.w

#line 1195
  if_nz r2.w

#line 1197
    break 

#line 1198
  endif 

#line 841
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r6.zzzz, t4.yzwx  // r2.w <- realLightIndex

#line 842
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id187

#line 844
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t5.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 845
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t5.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 575
  mov r15.x, r7.w
  mov r15.yz, r8.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 576
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 577
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 469
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 360
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 361
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 362
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id142 return value>

#line 470
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1034
  dp3 r3.w, r7.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 1036
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 1070
  mov r9.xy, r8.zwzz
  add r9.xyw, r13.xyxz, r9.xyxz
  dp3 r2.w, r9.xywx, r9.xywx
  rsq r2.w, r2.w
  mul r9.xyw, r2.wwww, r9.xyxw  // r9.x <- streams.H_id75.x; r9.y <- streams.H_id75.y; r9.w <- streams.H_id75.z

#line 1071
  dp3_sat r2.w, r7.xyzx, r9.xywx  // r2.w <- streams.NdotH_id76

#line 1072
  dp3_sat r4.w, r13.xyzx, r9.xywx  // r4.w <- streams.LdotH_id77

#line 1066
  mul r9.xyw, r10.xyxz, r14.xyxz

#line 1203
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 588
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id223 return value>.x; r13.y <- <FresnelSchlick_id223 return value>.y; r13.z <- <FresnelSchlick_id223 return value>.z

#line 583
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 584
  mad r5.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r5.w, r4.w
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r4.w, r6.w, r5.w, r4.w
  div r4.w, r6.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id239 return value>

#line 694
  mul r4.w, r4.w, r10.w
  mul r3.w, r6.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 688
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 689
  mul r2.w, r2.w, r2.w
  mad r5.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 690
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id253 return value>

#line 1060
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 1207
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1193
  iadd r1.w, r1.w, l(1)

#line 1209
endloop   // r6.z <- streams.lightIndex_id187

#line 1026
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id306 return value>

#line 1217
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id22.x; r2.y <- streams.PositionWS_id22.y; r2.z <- streams.PositionWS_id22.z
mov r7.xyz, r1.xyzx
mov r8.xyz, r3.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y; r8.z <- streams.viewWS_id68.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r11.x, r0.w  // r11.x <- streams.alphaRoughness_id70
mov r11.z, r6.y  // r11.z <- streams.NdotV_id72
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r6.z  // r0.y <- streams.lightIndex_id187
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r1.w, r0.z, r0.x
  breakc_nz r1.w

#line 1219
  if_nz r1.w

#line 1221
    break 

#line 1222
  endif 

#line 813
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t4.yzwx  // r1.w <- realLightIndex

#line 814
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id187

#line 816
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t6.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 819
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 817
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t6.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 818
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t6.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 819
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t6.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 562
  add r14.xyz, -r2.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 563
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 564
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 462
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 354
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 355
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 356
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id153 return value>

#line 463
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 454
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 455
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 456
  mul r2.w, r2.w, r2.w

#line 570
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1012
  dp3 r2.w, r7.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 1014
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 1070
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 1071
  dp3_sat r1.w, r7.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id76

#line 1072
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id77

#line 1066
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 1227
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 588
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id223 return value>.x; r16.y <- <FresnelSchlick_id223 return value>.y; r16.z <- <FresnelSchlick_id223 return value>.z

#line 583
  mul r3.w, r11.x, l(0.500000)  // r3.w <- k

#line 584
  mad r4.w, -r11.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id239 return value>
  mad r3.w, r11.z, r4.w, r3.w
  div r3.w, r11.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id239 return value>

#line 694
  mul r3.w, r3.w, r5.w
  mul r2.w, r11.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 688
  mul r3.w, r11.x, r11.x  // r3.w <- alphaR2

#line 689
  mul r1.w, r1.w, r1.w
  mad r4.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 690
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id253 return value>

#line 1060
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1231
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1217
  iadd r0.z, r0.z, l(1)

#line 1233
endloop   // r0.y <- streams.lightIndex_id187

#line 1241
mov r0.xyz, v0.xyzx  // r0.x <- streams.PositionWS_id22.x; r0.y <- streams.PositionWS_id22.y; r0.z <- streams.PositionWS_id22.z
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.viewWS_id68.x; r7.y <- streams.viewWS_id68.y; r7.z <- streams.viewWS_id68.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matDiffuseVisible_id69.x; r8.y <- streams.matDiffuseVisible_id69.y; r8.z <- streams.matDiffuseVisible_id69.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matSpecularVisible_id71.x; r9.y <- streams.matSpecularVisible_id71.y; r9.z <- streams.matSpecularVisible_id71.z
mov r10.x, r0.w  // r10.x <- streams.alphaRoughness_id70
mov r10.z, r6.y  // r10.z <- streams.NdotV_id72
mov r11.xyz, r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 1243
  ige r2.w, r1.w, cb0[28].x
  if_nz r2.w

#line 1245
    break 

#line 1246
  endif 

#line 792
  ishl r2.w, r1.w, l(2)

#line 549
  add r12.xyz, -r0.xyzx, cb0[r2.w + 29].xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 550
  dp3 r3.w, r12.xyzx, r12.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 551
  div r12.xyz, r12.xyzx, r4.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 448
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 348
  mul r3.w, r3.w, cb0[r2.w + 31].z  // r3.w <- factor

#line 349
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 350
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id164 return value>

#line 449
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 440
  dp3 r4.w, -cb0[r2.w + 30].xyzx, r12.xyzx  // r4.w <- cd

#line 441
  mad_sat r4.w, r4.w, cb0[r2.w + 31].x, cb0[r2.w + 31].y  // r4.w <- attenuation

#line 442
  mul r4.w, r4.w, r4.w

#line 557
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 990
  dp3 r4.w, r2.xyzx, r12.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 992
  mul r14.xyz, r3.wwww, cb0[r2.w + 32].xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 1070
  add r15.xyz, r7.xyzx, r12.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id75.x; r15.y <- streams.H_id75.y; r15.z <- streams.H_id75.z

#line 1071
  dp3_sat r2.w, r2.xyzx, r15.xyzx  // r2.w <- streams.NdotH_id76

#line 1072
  dp3_sat r3.w, r12.xyzx, r15.xyzx  // r3.w <- streams.LdotH_id77

#line 1066
  mul r12.xyz, r8.xyzx, r14.xyzx

#line 1251
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 588
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r5.w, r3.w, r3.w
  mul r5.w, r5.w, r5.w
  mul r3.w, r3.w, r5.w
  mad r15.xyz, r15.xyzx, r3.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id223 return value>.x; r15.y <- <FresnelSchlick_id223 return value>.y; r15.z <- <FresnelSchlick_id223 return value>.z

#line 583
  mul r3.w, r10.x, l(0.500000)  // r3.w <- k

#line 584
  mad r5.w, -r10.x, l(0.500000), l(1.000000)
  mad r6.z, r4.w, r5.w, r3.w
  div r6.z, r4.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id239 return value>
  mad r3.w, r10.z, r5.w, r3.w
  div r3.w, r10.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id239 return value>

#line 694
  mul r3.w, r3.w, r6.z
  mul r4.w, r10.z, r4.w
  div r3.w, r3.w, r4.w  // r3.w <- <VisibilitySmithSchlickGGX_id241 return value>

#line 688
  mul r4.w, r10.x, r10.x  // r4.w <- alphaR2

#line 689
  mul r2.w, r2.w, r2.w
  mad r5.w, r10.x, r10.x, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 690
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id253 return value>

#line 1060
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1255
  mad r11.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1241
  iadd r1.w, r1.w, l(1)

#line 1257
endloop 

#line 767
sqrt r0.x, r0.w
add r6.x, -r0.x, l(1.000000)  // r6.x <- glossiness

#line 768
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r6.xyxx, t1.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 769
mad r0.yzw, r5.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id389 return value>.x; r0.z <- <Compute_id389 return value>.y; r0.w <- <Compute_id389 return value>.z

#line 973
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id568 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id568 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id568 return value>.z

#line 1269
mad r2.xyz, r4.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 962
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[100].xyzx  // r3.w <- sampleDirection.z

#line 642
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 643
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 647
mad r5.yzw, cb2[90].xxyz, r2.wwww, cb2[89].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 648
mad r5.yzw, cb2[91].xxyz, -r3.wwww, r5.yyzw

#line 649
mad r5.yzw, cb2[92].xxyz, r1.wwww, r5.yyzw

#line 652
mul r6.xyz, r2.wwww, cb2[93].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 653
mul r6.xyz, r2.wwww, cb2[94].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 654
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[95].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 655
mul r6.xyz, r1.wwww, cb2[96].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 656
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[97].xyzx, r1.wwww, r5.xyzx

#line 964
mul r5.xyz, r5.xyzx, cb2[102].xxxx  // r5.x <- streams.envLightDiffuseColor_id47.x; r5.y <- streams.envLightDiffuseColor_id47.y; r5.z <- streams.envLightDiffuseColor_id47.z

#line 965
dp3 r1.w, -r3.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r3.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 966
dp3 r3.x, r1.xyzx, cb2[98].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r1.xyzx, cb2[99].xyzx  // r3.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[100].xyzx  // r1.x <- sampleDirection.z

#line 967
mov r3.z, -r1.x  // r3.z <- sampleDirection.z

#line 753
mul r0.x, r0.x, cb2[97].w  // r0.x <- mipLevel

#line 754
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r3.xyzx, t7.xyzw, s0, r0.x  // r1.x <- <Compute_id339 return value>.x; r1.y <- <Compute_id339 return value>.y; r1.z <- <Compute_id339 return value>.z

#line 968
mul r1.xyz, r1.xyzx, cb2[102].xxxx  // r1.x <- streams.envLightSpecularColor_id48.x; r1.y <- streams.envLightSpecularColor_id48.y; r1.z <- streams.envLightSpecularColor_id48.z

#line 1277
mad r2.xyz, r4.xyzx, r5.xyzx, r2.xyzx

#line 1281
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1296
mad o0.xyz, r11.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1398
utof o1.xyzw, cb0[26].xxxx

#line 1503
mov o0.w, l(1.000000)
ret 
// Approximately 450 instruction slots used
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
const static int TFilterSize_id179 = 3;
const static int TMaxLightCount_id196 = 8;
const static int TOrder_id200 = 3;
const static int TOrder_id202 = 3;
const static bool TInvert_id225 = true;
const static bool TIsEnergyConservative_id237 = false;
static const float PI_id239 = 3.14159265358979323846;
static const float2 QuadUV_id147[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id180;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    uint InstanceID_id13;
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
    float4 ColorPerParticle_ShaderFXResult_0_id210;
    float Input_1_id218;
    float Input_2_id227;
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
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id153;
    float4 ScreenPosition_id180;
    uint InstanceID_id13;
    float3 PSize_id151;
    float2 TexCoord_id131;
    float3 meshNormalWS_id17;
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
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id153 : VID_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id180 : SCREENPOSITION_ID180_SEM;
};
struct VS_STREAMS 
{
    uint VertexID_id152;
    float4 Position_id21;
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
};
struct VS_INPUT 
{
    uint VertexID_id152 : SV_VertexID;
    float4 Position_id21 : POSITION;
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
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float ParticleSize_id150 = 0.1;
    float InputValue_id219;
    float InputValue_id228;
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
    float3 AmbientLight_id198;
    float3 SphericalColors_id203[TOrder_id202 * TOrder_id202];
    float MipCount_id204;
    float4x4 SkyMatrix_id206;
    float Intensity_id207;
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
StructuredBuffer<SMGridParticle> ParticlesBuffer_id149;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id211;
Texture2D EnvironmentLightingDFG_LUT_id240;
Texture2D ShadowMapTexture_id160;
Texture3D<uint2> LightClusters_id188;
Buffer<uint> LightIndices_id189;
Buffer<float4> PointLights_id193;
Buffer<float4> SpotLights_id194;
TextureCube CubeMap_id205;
float4 Project_id120(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id164(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id153(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id142(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id130(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id129(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id131(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id160.SampleLevel(LinearBorderSampler_id114, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id120(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id127(float2 base_uv, float2 st, out float3 kernel[16])
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
float GetAngularAttenuation_id166(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id165(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id164(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id155(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id154(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id153(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id144(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id142(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id135(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id161;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id162;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[4];
        normalizationFactor = Get3x3FilterKernel_id130(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id131(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id134(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id120(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id120(float4(ShadowMapTextureTexelSize_id162.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id120(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id133(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id120(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id120(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id162.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id120(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id132()
{

    {
        return 2.5;
    }
}
float SampleTextureAndCompare_id128(float2 position, float positionDepth)
{
    return ShadowMapTexture_id160.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id115, position, positionDepth);
}
void CalculatePCFKernelParameters_id126(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id161;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id162;
}
float Compute_id377()
{
    return InputValue_id228;
}
float Compute_id365()
{
    return InputValue_id219;
}
float4 Compute_id353(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id211[id];
    return float4(p.Col, 1);
}
float ComputeAttenuation_id167(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id165(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id166(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id156(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id154(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id155(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id143(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id144(lightVectorLength, lightInvSquareRadius);
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
float FilterThickness_id122(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id134(GetFilterRadiusInPixels_id132(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id133(GetFilterRadiusInPixels_id132(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id135(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id121(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id126(position, base_uv, st);

    {
        float3 kernel[4];
        float normalizationFactor = Get3x3FilterKernel_id130(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id128(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id380(inout PS_STREAMS streams)
{
    streams.Input_2_id227 = Compute_id377();
}
void Compute_id368(inout PS_STREAMS streams)
{
    streams.Input_1_id218 = Compute_id365();
}
void Compute_id356(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id210 = Compute_id353(streams);
}
float4 EvaluateSphericalHarmonics_id177(float3 sphericalColors[TOrder_id200 * TOrder_id200], float3 direction)
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
void ProcessLight_id168(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id167(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id157(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id156(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id146(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id143(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id253(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id239 * d * d);
}
float VisibilitySmithSchlickGGX_id241(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id239(alphaR, nDotL) * VisibilityhSchlickGGX_id239(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id229(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id223(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id125(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id164;
    return FilterThickness_id122(pixelPositionWS, meshNormalWS, DepthRanges_id169[arrayIndex], WorldToShadowCascadeUV_id166[arrayIndex], InverseWorldToShadowCascadeUV_id167[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id124(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id166[cascadeIndex + lightIndex * TCascadeCountBase_id164]);
    shadowPosition.z -= DepthBiases_id170[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id121(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id123(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id162.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id383(inout PS_STREAMS streams)
{
    return streams.Input_2_id227;
}
void Compute_id382(inout PS_STREAMS streams)
{

    {
        Compute_id380(streams);
    }
}
float Compute_id371(inout PS_STREAMS streams)
{
    return streams.Input_1_id218;
}
void Compute_id370(inout PS_STREAMS streams)
{

    {
        Compute_id368(streams);
    }
}
float4 Compute_id359(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id210;
}
void Compute_id358(inout PS_STREAMS streams)
{

    {
        Compute_id356(streams);
    }
}
float4 Compute_id339(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id204;
    return CubeMap_id205.SampleLevel(LinearSampler_id113, direction, mipLevel);
}
float4 Compute_id334(float3 direction)
{
    return EvaluateSphericalHarmonics_id177(SphericalColors_id203, direction);
}
void PrepareEnvironmentLight_id181(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id389(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id240.SampleLevel(LinearSampler_id113, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id172(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id163(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id162(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id161(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id160(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id197[lightIndex].PositionWS;
    data.DirectionWS = Lights_id197[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id197[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id197[lightIndex].Color;
    ProcessLight_id168(streams, data);
}
float3 ComputeSpecularTextureProjection_id152(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id151(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id150(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id149(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id157(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id141(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id140(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id139(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id138(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id189.Load(streams.lightIndex_id187);
    streams.lightIndex_id187++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id193.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id193.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id146(streams, pointLight);
}
void PrepareLightData_id145(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id183.y / (projectedDepth - ZProjection_id183.x);
    float2 texCoord = float2(streams.ScreenPosition_id180.x + 1, 1 - streams.ScreenPosition_id180.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id190 + ClusterDepthBias_id191), 0));
    streams.lightData_id186 = LightClusters_id188.Load(int4(texCoord * ClusterStride_id192, slice, 0));
    streams.lightIndex_id187 = streams.lightData_id186.x;
}
float Compute_id481(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id253(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id451(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id241(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id421(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id229(f0, streams.LdotH_id77);
}
float3 ComputeSpecularTextureProjection_id117(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id116(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id115(inout PS_STREAMS streams, float3 position, int lightIndex)
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
    shadowPosition += GetShadowPositionOffset_id123(OffsetScales_id171[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id172)
    {
        shadow = ComputeShadowFromCascade_id124(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id124(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id156 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id114(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id159[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id159[lightIndex].DirectionWS;
}
float Compute_id386(inout PS_STREAMS streams)
{
    Compute_id382(streams);
    return Compute_id383(streams);
}
float Compute_id374(inout PS_STREAMS streams)
{
    Compute_id370(streams);
    return Compute_id371(streams);
}
float4 Compute_id362(inout PS_STREAMS streams)
{
    Compute_id358(streams);
    return Compute_id359(streams);
}
void ResetStream_id256()
{
}
void AfterLightingAndShading_id538()
{
}
void AfterLightingAndShading_id519()
{
}
void PrepareEnvironmentLight_id352(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id349(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id181(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id206);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id334(sampleDirection).rgb * Intensity_id207 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id206);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id339(streams, sampleDirection).rgb * Intensity_id207 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id568(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id389(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id512(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id344(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id172(streams);
    float3 lightColor = AmbientLight_id198 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id315(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id160(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id161(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id162(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id163(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id317()
{
    return LightCount_id195;
}
int GetMaxLightCount_id318()
{
    return TMaxLightCount_id196;
}
void PrepareDirectLights_id313()
{
}
void PrepareDirectLight_id303(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id149(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id150(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id151(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id152(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id307(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y >> 16;
}
int GetMaxLightCount_id306(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y >> 16;
}
void PrepareDirectLights_id301()
{
}
void PrepareDirectLight_id290(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id138(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id139(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id140(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id141(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id295(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y & 0xFFFF;
}
int GetMaxLightCount_id294(inout PS_STREAMS streams)
{
    return streams.lightData_id186.y & 0xFFFF;
}
void PrepareDirectLights_id293(inout PS_STREAMS streams)
{
    PrepareLightData_id145(streams);
}
float3 ComputeDirectLightContribution_id567(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id421(streams, specularColor);
    float geometricShadowing = Compute_id451(streams);
    float normalDistribution = Compute_id481(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id511(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id239 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id266(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id114(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id115(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id116(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id117(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id268()
{
    return LightCount_id157;
}
int GetMaxLightCount_id269()
{
    return TMaxLightCount_id158;
}
void PrepareDirectLights_id264()
{
}
void PrepareForLightingAndShading_id535()
{
}
void PrepareForLightingAndShading_id516()
{
}
void PrepareMaterialForLightingAndShading_id255(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id254(inout PS_STREAMS streams)
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
float4 Compute_id388(inout PS_STREAMS streams)
{
    float x = Compute_id386(streams);
    return float4(x, x, x, x);
}
float4 Compute_id376(inout PS_STREAMS streams)
{
    float x = Compute_id374(streams);
    return float4(x, x, x, x);
}
float4 Compute_id364(inout PS_STREAMS streams)
{
    return Compute_id362(streams);
}
void ResetStream_id257(inout PS_STREAMS streams)
{
    ResetStream_id256();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id599(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id254(streams);
    PrepareMaterialForLightingAndShading_id255(streams);

    {
        PrepareForLightingAndShading_id516();
    }

    {
        PrepareForLightingAndShading_id535();
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id511(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id567(streams);
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id511(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id567(streams);
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id511(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id567(streams);
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
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id511(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id567(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id344(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id512(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id568(streams);
        }
    }

    {
        PrepareEnvironmentLight_id349(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id512(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id568(streams);
        }
    }

    {
        PrepareEnvironmentLight_id352(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id512(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id568(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id239 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id519();
    }

    {
        AfterLightingAndShading_id538();
    }
}
void Compute_id583(inout PS_STREAMS streams)
{
    float metalness = Compute_id388(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id578(inout PS_STREAMS streams)
{
    float glossiness = Compute_id376(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id573(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id364(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id258(inout PS_STREAMS streams)
{
    ResetStream_id257(streams);
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
void Compute_id111(inout PS_STREAMS streams)
{

    {
        Compute_id573(streams);
    }

    {
        Compute_id578(streams);
    }

    {
        Compute_id583(streams);
    }

    {
        Compute_id599(streams);
    }
}
void ResetStream_id110(inout PS_STREAMS streams)
{
    ResetStream_id258(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id110(streams);
    Compute_id111(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
void PostTransformPosition_id89(inout VS_STREAMS streams)
{
    streams.VID_id153 = streams.VertexID_id152;
    streams.InstanceID_id13 = streams.VertexID_id152;
    streams.ShadingPosition_id0 = streams.Position_id21;
}
void TransformPosition_id88()
{
}
void PreTransformPosition_id87()
{
}
float4 Compute_id109()
{
    return MaterialIndex_id154;
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
    streams.ColorTarget1_id3 = Compute_id109();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
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

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id131 = QuadUV_id147[i % 4].xy;
        float4 posWorld = float4(p.Pos, 1);
        float3 qPos = CubeVert_id91(i);
        posWorld.xyz += qPos.x * AxisX * streams.PSize_id151.x;
        posWorld.xyz += qPos.y * AxisY * streams.PSize_id151.y;
        posWorld.xyz += qPos.z * AxisZ * streams.PSize_id151.z;
        posWorld = mul(posWorld, World_id32);
        streams.PositionWS_id22 = posWorld;
        streams.normalWS_id19 = normal;
        streams.meshNormalWS_id17 = normal;
        streams.ShadingPosition_id0 = mul(posWorld, ViewProjection_id29);
        streams.DepthVS_id23 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id22 = streams.PositionWS_id22;
            output.normalWS_id19 = streams.normalWS_id19;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.DepthVS_id23 = streams.DepthVS_id23;
            output.ScreenPosition_id180 = streams.ScreenPosition_id180;
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
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.ScreenPosition_id180 = __input__.ScreenPosition_id180;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id180 /= streams.ScreenPosition_id180.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
[maxvertexcount(12)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id153 = input[0].VID_id153;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id180 = input[0].ScreenPosition_id180;
    uint id = streams.VID_id153;
    SMGridParticle p = ParticlesBuffer_id149[id];
    streams.PositionWS_id22 = float4(p.Pos.xyz, 1);
    streams.PSize_id151 = p.Size * ParticleSize_id150;
    if (dot(streams.PSize_id151, streams.PSize_id151) <= 0)
        return;
    float3x3 or = rot3x3_id67(p.Rot);
    float3 AxisX = or[0];
    float3 AxisY = or[1];
    float3 AxisZ = or[2];
    float3 viewDir = Eye_id31.xyz - p.Pos;
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
        SpawnQuad_id92(streams, 20, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id152 = __input__.VertexID_id152;
    streams.Position_id21 = __input__.Position_id21;
    VSMain_id19(streams);
    streams.ScreenPosition_id180 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id153 = streams.VID_id153;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id180 = streams.ScreenPosition_id180;
    return __output__;
}

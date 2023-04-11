/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.HasSkinningPosition: True
@P Material.HasSkinningNormal: False
@P Material.HasSkinningTangent: False
@P Material.SkinningMaxBones: 56
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, EnvironmentLight
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 4016]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    BlendMatrixArray_id40 => TransformationSkinning.BlendMatrixArray
@C    MaterialIndex_id87 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 32]
@C    InputValue_id188 => ShaderFX.InputValueFloat4
@C    InputValue_id196 => ShaderFX.InputValueFloat
@C    InputValue_id205 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1440]
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
@C    LightCount_id90 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id92 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id94 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id95 => ShadowMap.TextureTexelSize.directLightGroups[0]
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
@C    AmbientLight_id186 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id93 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id93 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id179 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id179 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id180 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id180 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id184 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id184 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id185 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id185 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id126 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id128 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id93 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id179 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id180 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id184 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id185 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
@S    TransformationSkinning => 60032fe1990f2cb9e39a13ddddf607c7
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
@S    LightDirectionalGroup => 4b30b0154f396d93fd98b65dbdd2fe7f
@S    DirectLightGroupPerView => dba9b0c7c0e05b5469cf8940cc91d69c
@S    LightDirectional => 0e45e8c12e5e36d4bb0df5d5b2739bb1
@S    ShadowMapReceiverDirectional => b81b909e86a10160b58697624ea36c97
@S    ShadowMapReceiverBase => ecd55bb03a327260ea2ea0fddfaff4b5
@S    ShadowMapGroup => 6cd78766a20ef1d6d95cbbe5eec432b6
@S    ShadowMapCommon => 53c84311eb33d99ade37ecb188ae5785
@S    ShadowMapFilterBase => e42061be9b71cb375d3566138e7d8b8d
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
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
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
@G    Vertex => e579d2e76fd5393da4ea3e114be58d86
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
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   float4x4 BlendMatrixArray_id40[56];// Offset:  416 Size:  3584
//   uint MaterialIndex_id87;           // Offset: 4000 Size:     4 [unused]
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
//   int LightCount_id90;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id92;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id94;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id95;// Offset:  456 Size:     8 [unused]
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
//   float3 AmbientLight_id186;         // Offset: 1408 Size:    12 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1424 Size:    16 [unused]
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
// POSITION                 0   xyzw        0     NONE   float   xyz 
// BLENDINDICES             0   xyzw        1     NONE    uint   xyzw
// BLENDWEIGHT              0   xyzw        2     NONE   float   xyzw
// NORMAL                   0   xyz         3     NONE   float   xyz 
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
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[250], dynamicIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.BlendIndices_id42.x; v1.y <- __input__.BlendIndices_id42.y; v1.z <- __input__.BlendIndices_id42.z; v1.w <- __input__.BlendIndices_id42.w; 
//   v2.x <- __input__.BlendWeights_id41.x; v2.y <- __input__.BlendWeights_id41.y; v2.z <- __input__.BlendWeights_id41.z; v2.w <- __input__.BlendWeights_id41.w; 
//   v3.x <- __input__.meshNormal_id16.x; v3.y <- __input__.meshNormal_id16.y; v3.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id171.x; o3.y <- <VSMain return value>.ScreenPosition_id171.y; o3.z <- <VSMain return value>.ScreenPosition_id171.z; o3.w <- <VSMain return value>.ScreenPosition_id171.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.normalWS_id19.x; o2.z <- <VSMain return value>.normalWS_id19.y; o2.w <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1189 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_7cbb98881df5f19a6c6657a5dfd0f4f2.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 1144
ishl r1.xyzw, v1.xyzw, l(2, 2, 2, 2)

#line 1188
mul r2.xyzw, v2.yyyy, cb0[r1.y + 26].xyzw
mad r2.xyzw, cb0[r1.x + 26].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 26].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 26].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id43._m00; r2.y <- streams.skinningBlendMatrix_id43._m10; r2.z <- streams.skinningBlendMatrix_id43._m20; r2.w <- streams.skinningBlendMatrix_id43._m30

#line 1189
dp4 r2.x, r0.xyzw, r2.xyzw  // r2.x <- blendPos.x

#line 1188
mul r3.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r3.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r3.xyzw
mad r3.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r3.xyzw  // r3.x <- streams.skinningBlendMatrix_id43._m01; r3.y <- streams.skinningBlendMatrix_id43._m11; r3.z <- streams.skinningBlendMatrix_id43._m21; r3.w <- streams.skinningBlendMatrix_id43._m31

#line 1189
dp4 r2.y, r0.xyzw, r3.xyzw  // r2.y <- blendPos.y

#line 1188
mul r3.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r3.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r3.xyzw
mad r3.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r3.xyzw  // r3.x <- streams.skinningBlendMatrix_id43._m02; r3.y <- streams.skinningBlendMatrix_id43._m12; r3.z <- streams.skinningBlendMatrix_id43._m22; r3.w <- streams.skinningBlendMatrix_id43._m32

#line 1189
dp4 r2.z, r0.xyzw, r3.xyzw  // r2.z <- blendPos.z

#line 1188
mul r3.xyzw, v2.yyyy, cb0[r1.y + 29].xyzw
mad r3.xyzw, cb0[r1.x + 29].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 29].xyzw, v2.zzzz, r3.xyzw
mad r1.xyzw, cb0[r1.w + 29].xyzw, v2.wwww, r3.xyzw  // r1.x <- streams.skinningBlendMatrix_id43._m03; r1.y <- streams.skinningBlendMatrix_id43._m13; r1.z <- streams.skinningBlendMatrix_id43._m23; r1.w <- streams.skinningBlendMatrix_id43._m33

#line 1189
dp4 r2.w, r0.xyzw, r1.xyzw  // r2.w <- blendPos.w

#line 1190
div r0.xyzw, r2.xyzw, r2.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 1280
mov o0.xyzw, r0.xyzw

#line 1137
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1280
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1231
dp3 o2.y, v3.xyzx, cb0[8].xyzx
dp3 o2.z, v3.xyzx, cb0[9].xyzx
dp3 o2.w, v3.xyzx, cb0[10].xyzx

#line 1280
ret 
// Approximately 36 instruction slots used
@G    Pixel => b05e5edd85950f3addca07f5ec6d93b7
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
//   float4x4 BlendMatrixArray_id40[56];// Offset:  416 Size:  3584 [unused]
//   uint MaterialIndex_id87;           // Offset: 4000 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id188;           // Offset:    0 Size:    16
//   float InputValue_id196;            // Offset:   16 Size:     4
//   float InputValue_id205;            // Offset:   20 Size:     4
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
//   int LightCount_id90;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id92;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id94;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id95;// Offset:  456 Size:     8
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
//   float3 AmbientLight_id186;         // Offset: 1408 Size:    12
//   float4 _padding_PerView_Lighting;  // Offset: 1424 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id126               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id128  sampler_c      NA          NA             s1      1 
// EnvironmentLightingDFG_LUT_id217    texture  float4          2d             t0      1 
// ShadowMapTexture_id93             texture  float4          2d             t1      1 
// LightClusters_id179               texture   uint2          3d             t2      1 
// LightIndices_id180                texture    uint         buf             t3      1 
// PointLights_id184                 texture  float4         buf             t4      1 
// SpotLights_id185                  texture  float4         buf             t5      1 
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
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
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
dcl_constantbuffer CB0[251], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[89], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 19
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; v2.y <- __input__.normalWS_id19.x; v2.z <- __input__.normalWS_id19.y; v2.w <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id171.x; v3.y <- __input__.ScreenPosition_id171.y; v3.z <- __input__.ScreenPosition_id171.z; v3.w <- __input__.ScreenPosition_id171.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1258 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_7cbb98881df5f19a6c6657a5dfd0f4f2.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id171.x; r0.y <- streams.ScreenPosition_id171.y

#line 1225
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1226
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1199
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id72.x; r3.y <- streams.viewWS_id72.y; r3.z <- streams.viewWS_id72.z

#line 1101
add r0.w, -cb1[1].x, l(1.000000)  // r0.w <- glossiness

#line 1093
add r4.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[1].yyyy, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id59.x; r4.y <- streams.matSpecular_id59.y; r4.z <- streams.matSpecular_id59.z

#line 1094
mad r5.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r5.x <- streams.matDiffuse_id57.x; r5.y <- streams.matDiffuse_id57.y; r5.z <- streams.matDiffuse_id57.z

#line 970
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 924
dp3 r1.w, r1.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id76

#line 925
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 926
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id74

#line 994
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 894
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id53

#line 739
  lt r2.w, cb2[83].x, v2.x

#line 742
  and r2.w, r2.w, l(1)  // r2.w <- cascadeIndex

#line 739
  lt r3.w, cb2[84].x, v2.x

#line 742
  movc r2.w, r3.w, l(2), r2.w

#line 739
  lt r3.w, cb2[85].x, v2.x

#line 742
  movc r2.w, r3.w, l(3), r2.w

#line 601
  add r4.w, -r1.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- normalOffsetScale

#line 602
  mul r5.w, cb2[28].z, cb2[82].x
  dp2 r4.w, r5.wwww, r4.wwww

#line 747
  mad r7.xyz, r4.wwww, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 594
  ishl r4.w, r2.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r4.w + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r4.w + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r5.w, r7.xyzw, cb2[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
  dp4 r6.z, r7.xyzw, cb2[r4.w + 32].xyzw  // r6.z <- shadowPosition.w

#line 595
  add r8.z, r5.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 596
  div r8.xyz, r8.xyzx, r6.zzzz

#line 463
  mad r6.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 464
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 465
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 466
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 327
  mad r9.xy, -r6.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 329
  mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 330
  mad r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 331
  add r11.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 332
  div r6.zw, r6.zzzw, r9.zzzw
  add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 333
  mul r5.w, r9.x, r9.y

#line 334
  mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r8.xyxy

#line 338
  mov r11.zw, r10.wwwy

#line 336
  mul r6.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 337
  mad r13.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy

#line 338
  mad r14.xyzw, r11.xzxw, cb2[28].zwzw, r8.xyxy

#line 339
  mov r10.y, r11.y
  mul r9.xy, r9.xyxx, r9.zwzz

#line 340
  mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 341
  mad r8.xy, r11.xyxx, cb2[28].zwzz, r8.xyxx
  mul r8.w, r9.w, r9.z

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.z, r12.xyxx, t1.xxxx, s1, r8.z  // r9.z <- <SampleTextureAndCompare_id67 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.w, r12.zwzz, t1.xxxx, s1, r8.z  // r9.w <- <SampleTextureAndCompare_id67 return value>

#line 538
  mul r6.z, r6.z, r9.w
  mad r5.w, r5.w, r9.z, r6.z  // r5.w <- shadow

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.xyxx, t1.xxxx, s1, r8.z  // r6.z <- <SampleTextureAndCompare_id67 return value>

#line 538
  mad r5.w, r9.x, r6.z, r5.w

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.xyxx, t1.xxxx, s1, r8.z

#line 538
  mad r5.w, r6.w, r6.z, r5.w

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.zwzz, t1.xxxx, s1, r8.z

#line 538
  mad r5.w, r6.z, l(49.000000), r5.w

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.zwzz, t1.xxxx, s1, r8.z

#line 538
  mad r5.w, r11.z, r6.z, r5.w

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t1.xxxx, s1, r8.z

#line 538
  mad r5.w, r9.y, r6.z, r5.w

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.zwzz, t1.xxxx, s1, r8.z

#line 538
  mad r5.w, r11.w, r6.z, r5.w

#line 458
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r8.xyxx, t1.xxxx, s1, r8.z

#line 538
  mad r5.w, r8.w, r6.z, r5.w

#line 540
  mul r8.xyz, r5.wwww, l(0.006944, 0.006944, 0.006944, 0.000000)  // r8.z <- shadow

#line 753
  ilt r6.z, l(0), r2.w
  if_nz r6.z

#line 755
    iadd r6.z, r2.w, l(-1)
    add r6.z, -cb2[r6.z + 83].x, cb2[r2.w + 83].x  // r6.z <- splitSize

#line 756
  else 
    mov r6.z, cb2[r2.w + 83].x  // r6.z <- splitSize
  endif 

#line 757
  add r2.w, -v2.x, cb2[r2.w + 83].x
  div r2.w, r2.w, r6.z  // r2.w <- splitDist

#line 758
  lt r6.z, r2.w, l(0.200000)
  if_nz r6.z

#line 761
    if_nz r3.w

#line 763
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 760
      mul_sat r2.w, r2.w, l(5.000000)
      mad r3.w, r2.w, l(-2.000000), l(3.000000)
      mul r2.w, r2.w, r2.w
      mul r2.w, r2.w, r3.w  // r2.w <- lerpAmt

#line 594
      dp4 r9.x, r7.xyzw, cb2[r4.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r4.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r3.w, r7.xyzw, cb2[r4.w + 35].xyzw  // r3.w <- shadowPosition.z
      dp4 r4.w, r7.xyzw, cb2[r4.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 595
      add r9.z, r3.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 596
      div r7.xyz, r9.xyzx, r4.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 463
      mad r6.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r7.xy, r6.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 464
      add r6.zw, r6.zzzw, -r7.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 465
      add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 466
      mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 327
      mad r9.xy, -r6.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 329
      mad r9.zw, r6.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 330
      mad r10.xy, -r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r10.xy, r10.xyxx, r9.yxyy
      add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 331
      add r11.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 332
      div r6.zw, r6.zzzw, r9.zzzw
      add r11.xy, r6.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 333
      mul r3.w, r9.x, r9.y

#line 334
      mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r7.xyxy

#line 338
      mov r11.zw, r10.wwwy

#line 336
      mul r6.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 337
      mad r13.xyzw, r10.xyzy, cb2[28].zwzw, r7.xyxy

#line 338
      mad r14.xyzw, r11.xzxw, cb2[28].zwzw, r7.xyxy

#line 339
      mov r10.y, r11.y
      mul r9.xy, r9.xyxx, r9.zwzz

#line 340
      mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r7.xyxy
      mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 341
      mad r7.xy, r11.xyxx, cb2[28].zwzz, r7.xyxx
      mul r4.w, r9.w, r9.z

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r12.xyxx, t1.xxxx, s1, r7.z  // r7.w <- <SampleTextureAndCompare_id67 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r12.zwzz, t1.xxxx, s1, r7.z  // r8.w <- <SampleTextureAndCompare_id67 return value>

#line 538
      mul r6.z, r6.z, r8.w
      mad r3.w, r3.w, r7.w, r6.z  // r3.w <- shadow

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.xyxx, t1.xxxx, s1, r7.z  // r6.z <- <SampleTextureAndCompare_id67 return value>

#line 538
      mad r3.w, r9.x, r6.z, r3.w

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.xyxx, t1.xxxx, s1, r7.z

#line 538
      mad r3.w, r6.w, r6.z, r3.w

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.zwzz, t1.xxxx, s1, r7.z

#line 538
      mad r3.w, r6.z, l(49.000000), r3.w

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.zwzz, t1.xxxx, s1, r7.z

#line 538
      mad r3.w, r11.z, r6.z, r3.w

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t1.xxxx, s1, r7.z

#line 538
      mad r3.w, r9.y, r6.z, r3.w

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.zwzz, t1.xxxx, s1, r7.z

#line 538
      mad r3.w, r11.w, r6.z, r3.w

#line 458
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r7.xyxx, t1.xxxx, s1, r7.z

#line 538
      mad r3.w, r4.w, r6.z, r3.w

#line 540
      mul r3.w, r3.w, l(0.006944)

#line 767
      mad r4.w, r5.w, l(0.006944), -r3.w
      mad r8.xyz, r2.wwww, r4.wwww, r3.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 768
    endif 

#line 769
  endif 

#line 896
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r1.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id48.x; r7.y <- streams.lightColorNdotL_id48.y; r7.z <- streams.lightColorNdotL_id48.z

#line 886
  mad r2.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.z, r0.z
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.H_id79.x; r2.y <- streams.H_id79.y; r2.z <- streams.H_id79.z

#line 887
  dp3_sat r0.z, r1.xyzx, r2.xyzx  // r0.z <- streams.NdotH_id80

#line 888
  dp3_sat r2.x, -cb2[26].xyzx, r2.xyzx  // r2.x <- streams.LdotH_id81

#line 882
  mul r2.yzw, r5.xxyz, r7.xxyz

#line 508
  add r8.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.x, -r2.x, l(1.000000)
  mul r3.w, r2.x, r2.x
  mul r3.w, r3.w, r3.w
  mul r2.x, r2.x, r3.w
  mad r8.xyz, r8.xyzx, r2.xxxx, r4.xyzx  // r8.x <- <FresnelSchlick_id142 return value>.x; r8.y <- <FresnelSchlick_id142 return value>.y; r8.z <- <FresnelSchlick_id142 return value>.z

#line 503
  mul r2.x, r0.w, l(0.500000)  // r2.x <- k

#line 504
  mad r3.w, -r0.w, l(0.500000), l(1.000000)
  mad r4.w, r1.w, r3.w, r2.x
  div r4.w, r1.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id158 return value>
  mad r2.x, r6.y, r3.w, r2.x
  div r2.x, r6.y, r2.x  // r2.x <- <VisibilityhSchlickGGX_id158 return value>

#line 581
  mul r2.x, r2.x, r4.w
  mul r1.w, r6.y, r1.w
  div r1.w, r2.x, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id160 return value>

#line 575
  mul r2.x, r0.w, r0.w  // r2.x <- alphaR2

#line 576
  mul r0.z, r0.z, r0.z
  mad r3.w, r0.w, r0.w, l(-1.000000)
  mad r0.z, r0.z, r3.w, l(1.000000)
  max r0.z, r0.z, l(0.000100)  // r0.z <- d

#line 577
  mul r0.z, r0.z, r0.z
  mul r0.z, r0.z, l(3.141593)
  div r0.z, r2.x, r0.z  // r0.z <- <NormalDistributionGGX_id172 return value>

#line 876
  mul r8.xyz, r1.wwww, r8.xyzx
  mul r8.xyz, r0.zzzz, r8.xyzx
  mul r7.xyz, r7.xyzx, r8.xyzx

#line 877
  mul r7.xyz, r7.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r7.x <- <ComputeDirectLightContribution_id449 return value>.x; r7.y <- <ComputeDirectLightContribution_id449 return value>.y; r7.z <- <ComputeDirectLightContribution_id449 return value>.z

#line 1002
  mad r2.xyz, r2.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 1003
else 
  mov r2.xyz, l(0,0,0,0)  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z
endif 

#line 704
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 705
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 706
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 707
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 706
ftoi r7.xyz, r0.xyzx  // r7.z <- slice

#line 707
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r7.xyzw, t2.xyzw  // r0.x <- streams.lightData_id177.x; r0.y <- streams.lightData_id177.y

#line 864
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id213 return value>

#line 1012
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id22.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id22.y; r8.y <- streams.PositionWS_id22.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id72.x; r8.w <- streams.viewWS_id72.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id72.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id73.x; r10.y <- streams.matDiffuseVisible_id73.y; r10.z <- streams.matDiffuseVisible_id73.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id75.x; r11.y <- streams.matSpecularVisible_id75.y; r11.z <- streams.matSpecularVisible_id75.z
mov r11.w, r0.w  // r11.w <- streams.alphaRoughness_id74
mov r6.w, r6.y  // r6.w <- streams.NdotV_id76
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id178
mov r12.xyz, r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.z
  breakc_nz r2.w

#line 1014
  if_nz r2.w

#line 1016
    break 

#line 1017
  endif 

#line 691
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r6.zzzz, t3.yzwx  // r2.w <- realLightIndex

#line 692
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id178

#line 694
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t4.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 695
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t4.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 495
  mov r15.x, r7.w
  mov r15.yz, r8.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 496
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 497
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 404
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 309
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 310
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 311
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id81 return value>

#line 405
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 850
  dp3 r3.w, r7.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id53

#line 852
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id48.x; r14.y <- streams.lightColorNdotL_id48.y; r14.z <- streams.lightColorNdotL_id48.z

#line 886
  mov r9.xy, r8.zwzz
  add r9.xyw, r13.xyxz, r9.xyxz
  dp3 r2.w, r9.xywx, r9.xywx
  rsq r2.w, r2.w
  mul r9.xyw, r2.wwww, r9.xyxw  // r9.x <- streams.H_id79.x; r9.y <- streams.H_id79.y; r9.w <- streams.H_id79.z

#line 887
  dp3_sat r2.w, r7.xyzx, r9.xywx  // r2.w <- streams.NdotH_id80

#line 888
  dp3_sat r4.w, r13.xyzx, r9.xywx  // r4.w <- streams.LdotH_id81

#line 882
  mul r9.xyw, r10.xyxz, r14.xyxz

#line 1022
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 508
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id142 return value>.x; r13.y <- <FresnelSchlick_id142 return value>.y; r13.z <- <FresnelSchlick_id142 return value>.z

#line 503
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 504
  mad r5.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r5.w, r4.w
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id158 return value>
  mad r4.w, r6.w, r5.w, r4.w
  div r4.w, r6.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id158 return value>

#line 581
  mul r4.w, r4.w, r10.w
  mul r3.w, r6.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id160 return value>

#line 575
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 576
  mul r2.w, r2.w, r2.w
  mad r5.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 577
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id172 return value>

#line 876
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 1026
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1012
  iadd r1.w, r1.w, l(1)

#line 1028
endloop   // r6.z <- streams.lightIndex_id178

#line 842
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id225 return value>

#line 1036
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r2.w, v0.x  // r2.w <- streams.PositionWS_id22.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id22.y; r7.y <- streams.PositionWS_id22.z
mov r7.zw, r3.xxxy  // r7.z <- streams.viewWS_id72.x; r7.w <- streams.viewWS_id72.y
mov r8.z, r3.z  // r8.z <- streams.viewWS_id72.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matDiffuseVisible_id73.x; r9.y <- streams.matDiffuseVisible_id73.y; r9.z <- streams.matDiffuseVisible_id73.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id75.x; r10.y <- streams.matSpecularVisible_id75.y; r10.z <- streams.matSpecularVisible_id75.z
mov r11.x, r0.w  // r11.x <- streams.alphaRoughness_id74
mov r11.z, r6.y  // r11.z <- streams.NdotV_id76
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r6.z  // r0.y <- streams.lightIndex_id178
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r1.w, r0.z, r0.x
  breakc_nz r1.w

#line 1038
  if_nz r1.w

#line 1040
    break 

#line 1041
  endif 

#line 663
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t3.yzwx  // r1.w <- realLightIndex

#line 664
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id178

#line 666
  ishl r3.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r3.wwww, t5.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 669
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 667
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t5.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 668
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t5.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 669
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t5.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 482
  mov r18.x, r2.w
  mov r18.yz, r7.xxyx
  add r14.xyz, r14.xyzx, -r18.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 483
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r3.w, r1.w  // r3.w <- lightVectorLength

#line 484
  div r14.xyz, r14.xyzx, r3.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 397
  max r3.w, r1.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 303
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 304
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 305
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id92 return value>

#line 398
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 389
  dp3 r3.w, -r16.xyzx, r14.xyzx  // r3.w <- cd

#line 390
  mad_sat r3.w, r3.w, r15.x, r15.y  // r3.w <- attenuation

#line 391
  mul r3.w, r3.w, r3.w

#line 490
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 828
  dp3 r3.w, r2.xyzx, r14.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id53

#line 830
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id48.x; r15.y <- streams.lightColorNdotL_id48.y; r15.z <- streams.lightColorNdotL_id48.z

#line 886
  mov r8.xy, r7.zwzz
  add r8.xyw, r14.xyxz, r8.xyxz
  dp3 r1.w, r8.xywx, r8.xywx
  rsq r1.w, r1.w
  mul r8.xyw, r1.wwww, r8.xyxw  // r8.x <- streams.H_id79.x; r8.y <- streams.H_id79.y; r8.w <- streams.H_id79.z

#line 887
  dp3_sat r1.w, r2.xyzx, r8.xywx  // r1.w <- streams.NdotH_id80

#line 888
  dp3_sat r4.w, r14.xyzx, r8.xywx  // r4.w <- streams.LdotH_id81

#line 882
  mul r8.xyw, r9.xyxz, r15.xyxz

#line 1046
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 508
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r14.xyz, r14.xyzx, r4.wwww, r10.xyzx  // r14.x <- <FresnelSchlick_id142 return value>.x; r14.y <- <FresnelSchlick_id142 return value>.y; r14.z <- <FresnelSchlick_id142 return value>.z

#line 503
  mul r4.w, r11.x, l(0.500000)  // r4.w <- k

#line 504
  mad r5.w, -r11.x, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r4.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id158 return value>
  mad r4.w, r11.z, r5.w, r4.w
  div r4.w, r11.z, r4.w  // r4.w <- <VisibilityhSchlickGGX_id158 return value>

#line 581
  mul r4.w, r4.w, r6.w
  mul r3.w, r11.z, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id160 return value>

#line 575
  mul r4.w, r11.x, r11.x  // r4.w <- alphaR2

#line 576
  mul r1.w, r1.w, r1.w
  mad r5.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r5.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 577
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r4.w, r1.w  // r1.w <- <NormalDistributionGGX_id172 return value>

#line 876
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r1.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1050
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1036
  iadd r0.z, r0.z, l(1)

#line 1052
endloop   // r0.y <- streams.lightIndex_id178

#line 639
sqrt r0.x, r0.w
add r6.x, -r0.x, l(1.000000)  // r6.x <- glossiness

#line 640
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r6.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 641
mad r0.xyz, r4.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id271 return value>.x; r0.y <- <Compute_id271 return value>.y; r0.z <- <Compute_id271 return value>.z

#line 811
mul r0.xyz, r0.xyzx, cb2[88].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id450 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id450 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id450 return value>.z

#line 1064
mad r0.xyz, r5.xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1079
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1195
utof o1.xyzw, cb0[250].xxxx

#line 1263
mov o0.w, cb1[0].w
ret 
// Approximately 388 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id91 = 1;
const static int TCascadeCountBase_id155 = 4;
const static int TLightCountBase_id156 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static bool TComputeTransmittance_id168 = false;
const static int TFilterSize_id170 = 5;
const static bool TInvert_id202 = true;
const static bool TIsEnergyConservative_id214 = false;
static const float PI_id216 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id171;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float DepthVS_id23;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
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
    float4 Input_0_id187;
    float Input_1_id195;
    float Input_2_id204;
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
    float thicknessWS_id89;
    float3 shadowColor_id88;
    float3 H_id79;
    float NdotH_id80;
    float LdotH_id81;
    float VdotH_id82;
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
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint4 BlendIndices_id42;
    float4 BlendWeights_id41;
    float3 meshNormal_id16;
    float4x4 skinningBlendMatrix_id43;
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
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    uint4 BlendIndices_id42 : BLENDINDICES;
    float4 BlendWeights_id41 : BLENDWEIGHT;
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
    float4x4 BlendMatrixArray_id40[56];
    uint MaterialIndex_id87;
};
cbuffer PerMaterial 
{
    float4 InputValue_id188;
    float InputValue_id196;
    float InputValue_id205;
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
    int LightCount_id90;
    DirectionalLightData Lights_id92[TMaxLightCount_id91];
    float2 ShadowMapTextureSize_id94;
    float2 ShadowMapTextureTexelSize_id95;
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
    float3 AmbientLight_id186;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id97;
    float2 Texture1TexelSize_id99;
    float2 Texture2TexelSize_id101;
    float2 Texture3TexelSize_id103;
    float2 Texture4TexelSize_id105;
    float2 Texture5TexelSize_id107;
    float2 Texture6TexelSize_id109;
    float2 Texture7TexelSize_id111;
    float2 Texture8TexelSize_id113;
    float2 Texture9TexelSize_id115;
};
Texture2D Texture0_id96;
Texture2D Texture1_id98;
Texture2D Texture2_id100;
Texture2D Texture3_id102;
Texture2D Texture4_id104;
Texture2D Texture5_id106;
Texture2D Texture6_id108;
Texture2D Texture7_id110;
Texture2D Texture8_id112;
Texture2D Texture9_id114;
TextureCube TextureCube0_id116;
TextureCube TextureCube1_id117;
TextureCube TextureCube2_id118;
TextureCube TextureCube3_id119;
Texture3D Texture3D0_id120;
Texture3D Texture3D1_id121;
Texture3D Texture3D2_id122;
Texture3D Texture3D3_id123;
SamplerState Sampler_id124;
SamplerState PointSampler_id125 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id126 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id127 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id128 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id129 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id130 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id131 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id132 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id133 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id134;
SamplerState Sampler1_id135;
SamplerState Sampler2_id136;
SamplerState Sampler3_id137;
SamplerState Sampler4_id138;
SamplerState Sampler5_id139;
SamplerState Sampler6_id140;
SamplerState Sampler7_id141;
SamplerState Sampler8_id142;
SamplerState Sampler9_id143;
Texture2D EnvironmentLightingDFG_LUT_id217;
Texture2D ShadowMapTexture_id93;
Texture3D<uint2> LightClusters_id179;
Buffer<uint> LightIndices_id180;
Buffer<float4> PointLights_id184;
Buffer<float4> SpotLights_id185;
float4 Project_id59(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id92(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id81(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id69(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id95, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id95, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id95, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id95, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id68(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id95, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id95, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id95, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id95, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id95, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id95, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id95, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id95, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id95, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id70(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id93.SampleLevel(LinearBorderSampler_id127, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id59(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id66(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id95, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id95, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id95, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id95, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id95, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id95, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id95, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id95, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id95, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id95, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id95, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id95, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id95, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id95, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id95, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id95, uvW3.x * uvW3.y);
    return 2704.0;
}
float GetAngularAttenuation_id94(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id93(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id92(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id83(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id81(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id74(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id94;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id95;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id68(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id70(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id73(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id59(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id59(float4(ShadowMapTextureTexelSize_id95.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id59(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id72(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id59(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id59(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id95.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id59(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id71()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id67(float2 position, float positionDepth)
{
    return ShadowMapTexture_id93.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id128, position, positionDepth);
}
void CalculatePCFKernelParameters_id65(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id94;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id95;
}
float Compute_id259()
{
    return InputValue_id205;
}
float Compute_id247()
{
    return InputValue_id196;
}
float4 Compute_id235()
{
    return InputValue_id188;
}
float ComputeAttenuation_id95(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id93(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id94(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id82(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id83(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id158(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id142(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id61(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id73(GetFilterRadiusInPixels_id71(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id72(GetFilterRadiusInPixels_id71(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id74(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id60(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id65(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id68(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id67(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id262(inout PS_STREAMS streams)
{
    streams.Input_2_id204 = Compute_id259();
}
void Compute_id250(inout PS_STREAMS streams)
{
    streams.Input_1_id195 = Compute_id247();
}
void Compute_id238(inout PS_STREAMS streams)
{
    streams.Input_0_id187 = Compute_id235();
}
void ProcessLight_id96(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id95(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id47 = light.Color;
    streams.lightAttenuation_id50 = attenuation;
    streams.lightDirectionWS_id46 = lightVectorNorm;
}
void ProcessLight_id85(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id82(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id45 = light.PositionWS;
    streams.lightColor_id47 = light.Color;
    streams.lightAttenuation_id50 = attenuation;
    streams.lightDirectionWS_id46 = lightVectorNorm;
}
float NormalDistributionGGX_id172(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id216 * d * d);
}
float VisibilitySmithSchlickGGX_id160(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id158(alphaR, nDotL) * VisibilityhSchlickGGX_id158(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id148(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id142(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id64(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id155;
    return FilterThickness_id61(pixelPositionWS, meshNormalWS, DepthRanges_id160[arrayIndex], WorldToShadowCascadeUV_id157[arrayIndex], InverseWorldToShadowCascadeUV_id158[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id63(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id157[cascadeIndex + lightIndex * TCascadeCountBase_id155]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id60(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id62(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id95.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id265(inout PS_STREAMS streams)
{
    return streams.Input_2_id204;
}
void Compute_id264(inout PS_STREAMS streams)
{

    {
        Compute_id262(streams);
    }
}
float Compute_id253(inout PS_STREAMS streams)
{
    return streams.Input_1_id195;
}
void Compute_id252(inout PS_STREAMS streams)
{

    {
        Compute_id250(streams);
    }
}
float4 Compute_id241(inout PS_STREAMS streams)
{
    return streams.Input_0_id187;
}
void Compute_id240(inout PS_STREAMS streams)
{

    {
        Compute_id238(streams);
    }
}
float3 Compute_id271(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id217.SampleLevel(LinearSampler_id126, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id100(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id51 = 0;
    streams.envLightSpecularColor_id52 = 0;
}
float3 ComputeSpecularTextureProjection_id91(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id90(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id89(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id89 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id88(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id96(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id80(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id79(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id78(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id89 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id77(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id180.Load(streams.lightIndex_id178);
    streams.lightIndex_id178++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id184.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id184.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id85(streams, pointLight);
}
void PrepareLightData_id84(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id174.y / (projectedDepth - ZProjection_id174.x);
    float2 texCoord = float2(streams.ScreenPosition_id171.x + 1, 1 - streams.ScreenPosition_id171.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id181 + ClusterDepthBias_id182), 0));
    streams.lightData_id177 = LightClusters_id179.Load(int4(texCoord * ClusterStride_id183, slice, 0));
    streams.lightIndex_id178 = streams.lightData_id177.x;
}
float Compute_id363(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id172(streams.alphaRoughness_id74, streams.NdotH_id80);
}
float Compute_id333(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id160(streams.alphaRoughness_id74, streams.NdotL_id53, streams.NdotV_id76);
}
float3 Compute_id303(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id148(f0, streams.LdotH_id81);
}
float3 ComputeSpecularTextureProjection_id56(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id55(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id54(inout PS_STREAMS streams, float3 position, int lightIndex)
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
    shadowPosition += GetShadowPositionOffset_id62(OffsetScales_id162[lightIndex], streams.NdotL_id53, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id63(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id63(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id89 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id53(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id47 = Lights_id92[lightIndex].Color;
    streams.lightDirectionWS_id46 = -Lights_id92[lightIndex].DirectionWS;
}
float Compute_id268(inout PS_STREAMS streams)
{
    Compute_id264(streams);
    return Compute_id265(streams);
}
float Compute_id256(inout PS_STREAMS streams)
{
    Compute_id252(streams);
    return Compute_id253(streams);
}
float4 Compute_id244(inout PS_STREAMS streams)
{
    Compute_id240(streams);
    return Compute_id241(streams);
}
void ResetStream_id175()
{
}
void AfterLightingAndShading_id420()
{
}
void AfterLightingAndShading_id401()
{
}
void PrepareEnvironmentLight_id234(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id51 = 0;
    streams.envLightSpecularColor_id52 = 0;
}
float3 ComputeEnvironmentLightContribution_id450(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id75;
    return Compute_id271(specularColor, streams.alphaRoughness_id74, streams.NdotV_id76) * streams.envLightSpecularColor_id52;
}
float3 ComputeEnvironmentLightContribution_id394(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id73;
    return diffuseColor * streams.envLightDiffuseColor_id51;
}
void PrepareEnvironmentLight_id231(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id100(streams);
    float3 lightColor = AmbientLight_id186 * streams.matAmbientOcclusion_id61;
    streams.envLightDiffuseColor_id51 = lightColor;
    streams.envLightSpecularColor_id52 = lightColor;
}
void PrepareDirectLight_id222(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id88(streams, lightIndex);
    streams.NdotL_id53 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id46), 0.0001f);
    streams.shadowColor_id88 = ComputeShadow_id89(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id48 = streams.lightColor_id47 * streams.lightAttenuation_id50 * streams.shadowColor_id88 * streams.NdotL_id53 * streams.lightDirectAmbientOcclusion_id54;
    streams.lightSpecularColorNdotL_id49 = streams.lightColorNdotL_id48;
    streams.lightColorNdotL_id48 *= ComputeTextureProjection_id90(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id72, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id49 *= ComputeSpecularTextureProjection_id91(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id226(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y >> 16;
}
int GetMaxLightCount_id225(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y >> 16;
}
void PrepareDirectLights_id220()
{
}
void PrepareDirectLight_id209(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id77(streams, lightIndex);
    streams.NdotL_id53 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id46), 0.0001f);
    streams.shadowColor_id88 = ComputeShadow_id78(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id48 = streams.lightColor_id47 * streams.lightAttenuation_id50 * streams.shadowColor_id88 * streams.NdotL_id53 * streams.lightDirectAmbientOcclusion_id54;
    streams.lightSpecularColorNdotL_id49 = streams.lightColorNdotL_id48;
    streams.lightColorNdotL_id48 *= ComputeTextureProjection_id79(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id72, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id49 *= ComputeSpecularTextureProjection_id80(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id214(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y & 0xFFFF;
}
int GetMaxLightCount_id213(inout PS_STREAMS streams)
{
    return streams.lightData_id177.y & 0xFFFF;
}
void PrepareDirectLights_id212(inout PS_STREAMS streams)
{
    PrepareLightData_id84(streams);
}
float3 ComputeDirectLightContribution_id449(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id75;
    float3 fresnel = Compute_id303(streams, specularColor);
    float geometricShadowing = Compute_id333(streams);
    float normalDistribution = Compute_id363(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id49 * streams.matDiffuseSpecularAlphaBlend_id69.y;
}
float3 ComputeDirectLightContribution_id393(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id73;
    return diffuseColor / PI_id216 * streams.lightColorNdotL_id48 * streams.matDiffuseSpecularAlphaBlend_id69.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id79 = normalize(streams.viewWS_id72 + streams.lightDirectionWS_id46);
    streams.NdotH_id80 = saturate(dot(streams.normalWS_id19, streams.H_id79));
    streams.LdotH_id81 = saturate(dot(streams.lightDirectionWS_id46, streams.H_id79));
    streams.VdotH_id82 = streams.LdotH_id81;
}
void PrepareDirectLight_id185(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id53(streams, lightIndex);
    streams.NdotL_id53 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id46), 0.0001f);
    streams.shadowColor_id88 = ComputeShadow_id54(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id48 = streams.lightColor_id47 * streams.lightAttenuation_id50 * streams.shadowColor_id88 * streams.NdotL_id53 * streams.lightDirectAmbientOcclusion_id54;
    streams.lightSpecularColorNdotL_id49 = streams.lightColorNdotL_id48;
    streams.lightColorNdotL_id48 *= ComputeTextureProjection_id55(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id72, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id49 *= ComputeSpecularTextureProjection_id56(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id187()
{
    return LightCount_id90;
}
int GetMaxLightCount_id188()
{
    return TMaxLightCount_id91;
}
void PrepareDirectLights_id183()
{
}
void PrepareForLightingAndShading_id417()
{
}
void PrepareForLightingAndShading_id398()
{
}
void PrepareMaterialForLightingAndShading_id174(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id54 = lerp(1.0, streams.matAmbientOcclusion_id61, streams.matAmbientOcclusionDirectLightingFactor_id62);
    streams.matDiffuseVisible_id73 = streams.matDiffuse_id57.rgb * lerp(1.0f, streams.matCavity_id63, streams.matCavityDiffuse_id64) * streams.matDiffuseSpecularAlphaBlend_id69.r * streams.matAlphaBlendColor_id70;
    streams.matSpecularVisible_id75 = streams.matSpecular_id59.rgb * streams.matSpecularIntensity_id60 * lerp(1.0f, streams.matCavity_id63, streams.matCavitySpecular_id65) * streams.matDiffuseSpecularAlphaBlend_id69.g * streams.matAlphaBlendColor_id70;
    streams.NdotV_id76 = max(dot(streams.normalWS_id19, streams.viewWS_id72), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id58;
    streams.alphaRoughness_id74 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id173(inout PS_STREAMS streams)
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
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id270(inout PS_STREAMS streams)
{
    float x = Compute_id268(streams);
    return float4(x, x, x, x);
}
float4 Compute_id258(inout PS_STREAMS streams)
{
    float x = Compute_id256(streams);
    return float4(x, x, x, x);
}
float4 Compute_id246(inout PS_STREAMS streams)
{
    return Compute_id244(streams);
}
void ResetStream_id176(inout PS_STREAMS streams)
{
    ResetStream_id175();
    streams.matBlend_id44 = 0.0f;
}
void PreTransformPosition_id4()
{
}
void Compute_id481(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id55);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id173(streams);
    PrepareMaterialForLightingAndShading_id174(streams);

    {
        PrepareForLightingAndShading_id398();
    }

    {
        PrepareForLightingAndShading_id417();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id183();
        const int maxLightCount = GetMaxLightCount_id188();
        int count = GetLightCount_id187();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id185(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id393(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id449(streams);
            }
        }
    }

    {
        PrepareDirectLights_id212(streams);
        const int maxLightCount = GetMaxLightCount_id213(streams);
        int count = GetLightCount_id214(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id209(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id393(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id449(streams);
            }
        }
    }

    {
        PrepareDirectLights_id220();
        const int maxLightCount = GetMaxLightCount_id225(streams);
        int count = GetLightCount_id226(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id222(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id393(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id449(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id231(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id394(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id450(streams);
        }
    }

    {
        PrepareEnvironmentLight_id234(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id394(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id450(streams);
        }
    }
    streams.shadingColor_id77 += directLightingContribution * PI_id216 + environmentLightingContribution;
    streams.shadingColorAlpha_id78 = streams.matDiffuse_id57.a;

    {
        AfterLightingAndShading_id401();
    }

    {
        AfterLightingAndShading_id420();
    }
}
void Compute_id465(inout PS_STREAMS streams)
{
    float metalness = Compute_id270(streams).r;
    streams.matSpecular_id59 = lerp(0.02, streams.matDiffuse_id57.rgb, metalness);
    streams.matDiffuse_id57.rgb = lerp(streams.matDiffuse_id57.rgb, 0, metalness);
}
void Compute_id460(inout PS_STREAMS streams)
{
    float glossiness = Compute_id258(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id58 = glossiness;
}
void Compute_id455(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id246(streams);
    streams.matDiffuse_id57 = colorBase;
    streams.matColorBase_id56 = colorBase;
}
void ResetStream_id177(inout PS_STREAMS streams)
{
    ResetStream_id176(streams);
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
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
float4x4 GetBlendMatrix_id24(int index)
{
    return BlendMatrixArray_id40[index];
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id22 = mul(streams.Position_id21, World_id32);
}
void Compute_id50(inout PS_STREAMS streams)
{

    {
        Compute_id455(streams);
    }

    {
        Compute_id460(streams);
    }

    {
        Compute_id465(streams);
    }

    {
        Compute_id481(streams);
    }
}
void ResetStream_id49(inout PS_STREAMS streams)
{
    ResetStream_id177(streams);
    streams.shadingColorAlpha_id78 = 1.0f;
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
void PreTransformPosition_id25(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    streams.skinningBlendMatrix_id43 = GetBlendMatrix_id24(streams.BlendIndices_id42[0]) * streams.BlendWeights_id41[0] + GetBlendMatrix_id24(streams.BlendIndices_id42[1]) * streams.BlendWeights_id41[1] + GetBlendMatrix_id24(streams.BlendIndices_id42[2]) * streams.BlendWeights_id41[2] + GetBlendMatrix_id24(streams.BlendIndices_id42[3]) * streams.BlendWeights_id41[3];
    float4 blendPos = mul(float4(streams.Position_id21.xyz, 1.0f), streams.skinningBlendMatrix_id43);
    blendPos /= blendPos.w;
    streams.PositionWS_id22 = blendPos;
}
float4 Compute_id48()
{
    return MaterialIndex_id87;
}
float4 Shading_id33(inout PS_STREAMS streams)
{
    streams.viewWS_id72 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id77 = 0;
    ResetStream_id49(streams);
    Compute_id50(streams);
    return float4(streams.shadingColor_id77, streams.shadingColorAlpha_id78);
}
void PSMain_id1()
{
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id25(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id33(streams);
    streams.ColorTarget1_id3 = Compute_id48();
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
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id171 = __input__.ScreenPosition_id171;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id171 /= streams.ScreenPosition_id171.w;
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
    streams.BlendIndices_id42 = __input__.BlendIndices_id42;
    streams.BlendWeights_id41 = __input__.BlendWeights_id41;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id19(streams);
    streams.ScreenPosition_id171 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id171 = streams.ScreenPosition_id171;
    return __output__;
}

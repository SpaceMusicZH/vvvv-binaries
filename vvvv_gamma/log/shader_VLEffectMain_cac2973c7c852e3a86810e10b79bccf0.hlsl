/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,7>, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
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
@C    MaterialIndex_id83 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id182 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id184 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id186 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id187 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id190 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id191 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id192 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id193 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id194 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    LightCount_id196 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id198 => LightSpotGroup.Lights.directLightGroups[4]
@C    ShadowMapTextureSize_id200 => ShadowMap.TextureSize.directLightGroups[4]
@C    ShadowMapTextureTexelSize_id201 => ShadowMap.TextureTexelSize.directLightGroups[4]
@C    WorldToShadowCascadeUV_id205 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[4]
@C    InverseWorldToShadowCascadeUV_id206 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[4]
@C    ViewMatrices_id207 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[4]
@C    DepthRanges_id208 => ShadowMapReceiverBase.DepthRanges.directLightGroups[4]
@C    DepthBiases_id209 => ShadowMapReceiverBase.DepthBiases.directLightGroups[4]
@C    OffsetScales_id210 => ShadowMapReceiverBase.OffsetScales.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    constantColor_id226 => Material.DiffuseValue
cbuffer PerView [Size: 1664]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id168 => Camera.NearClipPlane
@C    FarClipPlane_id169 => Camera.FarClipPlane
@C    ZProjection_id170 => Camera.ZProjection
@C    ViewSize_id171 => Camera.ViewSize
@C    AspectRatio_id172 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id86 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id88 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id90 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id91 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id153 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id154 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id155 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id156 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id157 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id158 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id165 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id177 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id178 => LightClustered.ClusterDepthBias
@C    ClusterStride_id179 => LightClustered.ClusterStride
@C    AmbientLight_id214 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id219 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id220 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id222 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id223 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id199 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id199 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id221 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id221 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id124 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id199 => ShadowMap.ShadowMapTexture.directLightGroups[4] [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
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
@S    ComputeColorConstantColorLink => 618d8a5815dc0efacfb27f012a443d05
@S    MaterialSurfaceLightingAndShading => 632084a1d51a33d288c188803e2d5afc
@S    IMaterialSurfaceShading => 1c45b326cd8616074872dd56496a9b5a
@S    MaterialSurfaceShadingDiffuseLambert => 8e2e1baa4a7bcb427f3ca539f81dd15c
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 22731900f4ca88603809638a49572b4d
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
//   uint MaterialIndex_id83;           // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id182;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id184;                    // Offset:  464 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id186; // Offset:  496 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id187;// Offset:  504 Size:     8 [unused]
//   float4x4 WorldToShadow_id190[6];   // Offset:  512 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id191[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id192;           // Offset: 1280 Size:     4 [unused]
//   float OffsetScales_id193;          // Offset: 1296 Size:     4 [unused]
//   float2 DepthParameters_id194;      // Offset: 1312 Size:     8 [unused]
//   int LightCount_id196;              // Offset: 1320 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id198;                    // Offset: 1328 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id200; // Offset: 1392 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id201;// Offset: 1400 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id205;// Offset: 1408 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id206;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id207;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id208;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id209;           // Offset: 1616 Size:     4 [unused]
//   float OffsetScales_id210;          // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
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
//   float NearClipPlane_id168;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id169;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id170;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id171;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id172;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id90;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id91;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id153[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id154[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id155[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id156[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id157;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id158;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id165[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id177;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id178;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id179;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id214;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id219[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id220;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id222;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id223;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
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
// SCREENPOSITION_ID167_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id167.x; o3.y <- <VSMain return value>.ScreenPosition_id167.y; o3.z <- <VSMain return value>.ScreenPosition_id167.z; o3.w <- <VSMain return value>.ScreenPosition_id167.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.normalWS_id19.x; o2.z <- <VSMain return value>.normalWS_id19.y; o2.w <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1603 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_cac2973c7c852e3a86810e10b79bccf0.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1690
mov o0.xyzw, r0.xyzw

#line 1566
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1690
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1643
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1690
ret 
// Approximately 16 instruction slots used
@G    Pixel => 68d2469aefd815fb7c28043fb4f50b22
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
//   uint MaterialIndex_id83;           // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id182;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id184;                    // Offset:  464 Size:    28
//   float2 ShadowMapTextureSize_id186; // Offset:  496 Size:     8
//   float2 ShadowMapTextureTexelSize_id187;// Offset:  504 Size:     8
//   float4x4 WorldToShadow_id190[6];   // Offset:  512 Size:   384
//   float4x4 InverseWorldToShadow_id191[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id192;           // Offset: 1280 Size:     4
//   float OffsetScales_id193;          // Offset: 1296 Size:     4
//   float2 DepthParameters_id194;      // Offset: 1312 Size:     8
//   int LightCount_id196;              // Offset: 1320 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1328
//       float3 DirectionWS;            // Offset: 1344
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1360
//       float3 Color;                  // Offset: 1376
//
//   } Lights_id198;                    // Offset: 1328 Size:    60
//   float2 ShadowMapTextureSize_id200; // Offset: 1392 Size:     8
//   float2 ShadowMapTextureTexelSize_id201;// Offset: 1400 Size:     8
//   float4x4 WorldToShadowCascadeUV_id205;// Offset: 1408 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id206;// Offset: 1472 Size:    64 [unused]
//   float4x4 ViewMatrices_id207;       // Offset: 1536 Size:    64 [unused]
//   float2 DepthRanges_id208;          // Offset: 1600 Size:     8 [unused]
//   float DepthBiases_id209;           // Offset: 1616 Size:     4
//   float OffsetScales_id210;          // Offset: 1632 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id226;        // Offset:    0 Size:    16
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
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id168;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id169;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id170;          // Offset:  360 Size:     8
//   float2 ViewSize_id171;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id172;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id90;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id91;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id153[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id154[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id155[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id156[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id157;           // Offset: 1296 Size:     4
//   float OffsetScales_id158;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id165[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id177;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id178;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id179;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id214;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id219[9];   // Offset: 1424 Size:   140
//   float MipCount_id220;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id222;          // Offset: 1568 Size:    64
//   float Intensity_id223;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearClampCompareLessEqualSampler_id124  sampler_c      NA          NA             s0      1 
// ShadowMapTexture_id185            texture  float4          2d             t0      1 
// ShadowMapTexture_id199            texture  float4          2d             t1      1 
// ShadowMapTexture_id89             texture  float4          2d             t2      1 
// LightClusters_id175               texture   uint2          3d             t3      1 
// LightIndices_id176                texture    uint         buf             t4      1 
// PointLights_id180                 texture  float4         buf             t5      1 
// SpotLights_id181                  texture  float4         buf             t6      1 
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
// SCREENPOSITION_ID167_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_constantbuffer CB0[103], dynamicIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 17
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; v2.y <- __input__.normalWS_id19.x; v2.z <- __input__.normalWS_id19.y; v2.w <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id167.x; v3.y <- __input__.ScreenPosition_id167.y; v3.z <- __input__.ScreenPosition_id167.z; v3.w <- __input__.ScreenPosition_id167.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1670 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_cac2973c7c852e3a86810e10b79bccf0.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id167.x; r0.y <- streams.ScreenPosition_id167.y

#line 1637
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1638
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1394
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1414
ilt r0.z, l(0), cb2[25].x
if_nz r0.z

#line 1334
  dp3 r0.z, r1.xyzx, -cb2[26].xyzx
  max r0.z, r0.z, l(0.000100)  // r0.z <- streams.NdotL_id49

#line 1155
  lt r0.w, cb2[83].x, v2.x

#line 1158
  and r0.w, r0.w, l(1)  // r0.w <- cascadeIndex

#line 1155
  lt r1.w, cb2[84].x, v2.x

#line 1158
  movc r0.w, r1.w, l(2), r0.w

#line 1155
  lt r1.w, cb2[85].x, v2.x

#line 1158
  movc r0.w, r1.w, l(3), r0.w

#line 967
  add r2.x, -r0.z, l(1.000000)
  max r2.x, r2.x, l(0.000000)  // r2.x <- normalOffsetScale

#line 968
  mul r2.y, cb2[28].z, cb2[82].x
  dp2 r2.x, r2.yyyy, r2.xxxx

#line 1163
  mad r2.xyz, r2.xxxx, r1.xyzx, v0.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 960
  ishl r3.x, r0.w, l(2)
  mov r2.w, l(1.000000)
  dp4 r4.x, r2.xyzw, cb2[r3.x + 29].xyzw  // r4.x <- shadowPosition.x
  dp4 r4.y, r2.xyzw, cb2[r3.x + 30].xyzw  // r4.y <- shadowPosition.y
  dp4 r3.y, r2.xyzw, cb2[r3.x + 31].xyzw  // r3.y <- shadowPosition.z
  dp4 r3.z, r2.xyzw, cb2[r3.x + 32].xyzw  // r3.z <- shadowPosition.w

#line 961
  add r4.z, r3.y, -cb2[81].x  // r4.z <- shadowPosition.z

#line 962
  div r3.yzw, r4.xxyz, r3.zzzz  // r3.y <- shadowPosition.x; r3.z <- shadowPosition.y; r3.w <- shadowPosition.z

#line 720
  mad r3.yz, r3.yyzy, cb2[28].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r4.xy, r3.yzyy  // r4.x <- base_uv.x; r4.y <- base_uv.y

#line 721
  add r3.yz, r3.yyzy, -r4.xxyx  // r3.y <- st.x; r3.z <- st.y

#line 722
  add r4.xy, r4.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 723
  mul r4.xy, r4.xyxx, cb2[28].zwzz

#line 480
  mad r5.xyzw, r3.yzzy, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r5.x <- uvW1.x; r5.y <- uvW1.y

#line 481
  mad r6.xyzw, r3.zyyz, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r6.x <- uvW0.y; r6.y <- uvW0.x

#line 483
  mad r7.xyzw, r3.yzyz, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 482
  div r4.zw, r7.xxxy, r6.yyyx
  add r8.xw, r4.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r8.x <- uv0.x; r8.w <- uv0.y

#line 483
  div r4.zw, r7.zzzw, r5.xxxy
  add r8.yz, r4.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r8.y <- uv1.y; r8.z <- uv1.x

#line 484
  mad r4.zw, r3.yyyz, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
  div r4.zw, r4.zzzw, r5.wwwz
  add r7.xw, r4.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r7.x <- uv2.y; r7.w <- uv2.x

#line 485
  div r3.yz, r3.yyzy, r6.zzwz
  add r9.xy, r3.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000)  // r9.x <- uv3.x; r9.y <- uv3.y

#line 487
  mad r10.xyzw, r8.xwzw, cb2[28].zwzw, r4.xyxy

#line 492
  mov r7.yz, r8.wwyw

#line 493
  mov r9.zw, r7.yyyz

#line 491
  mad r11.xyzw, r8.xyzy, cb2[28].zwzw, r4.xyxy

#line 492
  mad r12.xyzw, r7.wywz, cb2[28].zwzw, r4.xyxy

#line 493
  mad r13.xyzw, r9.xzxw, cb2[28].zwzw, r4.xyxy

#line 494
  mov r8.y, r7.x
  mul r3.yz, -r5.wwzw, r6.xxyx

#line 495
  mad r14.xyzw, r8.xyzy, cb2[28].zwzw, r4.xyxy
  mul r4.zw, r5.yyyx, -r5.wwwz

#line 496
  mad r9.zw, r7.wwwx, cb2[28].zzzw, r4.xxxy
  mul r15.xy, r5.yzyy, r5.xwxx

#line 497
  mov r8.w, r9.x
  mad r8.yw, r8.wwwy, cb2[28].zzzw, r4.xxxy

#line 499
  mov r7.xz, r8.xxzx

#line 498
  mov r7.y, r9.y
  mul r8.xz, r6.xxyx, -r6.zzwz

#line 499
  mad r16.xyzw, r7.xyzy, cb2[28].zwzw, r4.xyxy
  mul r7.xz, r5.yyxy, -r6.zzwz

#line 500
  mad r7.yw, r7.wwwy, cb2[28].zzzw, r4.xxxy
  mul r5.xyzw, r5.xyzw, r6.xyzw

#line 501
  mad r4.xy, r9.xyxx, cb2[28].zwzz, r4.xyxx
  mul r6.xy, r6.xwxx, r6.yzyy

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r10.xyxx, t2.xxxx, s0, r3.w  // r6.z <- <SampleTextureAndCompare_id63 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r10.zwzz, t2.xxxx, s0, r3.w  // r6.w <- <SampleTextureAndCompare_id63 return value>

#line 841
  mul r5.x, r5.x, r6.w
  mad r5.x, r6.x, r6.z, r5.x  // r5.x <- shadow

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.x, r12.xyxx, t2.xxxx, s0, r3.w  // r6.x <- <SampleTextureAndCompare_id63 return value>

#line 841
  mad r3.y, r3.y, r6.x, r5.x  // r3.y <- shadow

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r13.xyxx, t2.xxxx, s0, r3.w  // r5.x <- <SampleTextureAndCompare_id63 return value>

#line 841
  mad r3.y, r8.x, r5.x, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r11.xyxx, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r5.y, r5.x, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r11.zwzz, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r15.x, r5.x, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r12.zwzz, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r4.z, r5.x, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r13.zwzz, t2.xxxx, s0, r3.w  // r4.z <- <SampleTextureAndCompare_id63 return value>

#line 841
  mad r3.y, r7.x, r4.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r14.xyxx, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r3.z, r4.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r14.zwzz, t2.xxxx, s0, r3.w  // r3.z <- <SampleTextureAndCompare_id63 return value>

#line 841
  mad r3.y, r4.w, r3.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r9.zwzz, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r15.y, r3.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r8.ywyy, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r5.z, r3.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r16.xyxx, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r8.z, r3.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r16.zwzz, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r7.z, r3.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r7.ywyy, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r5.w, r3.z, r3.y

#line 715
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.z, r4.xyxx, t2.xxxx, s0, r3.w

#line 841
  mad r3.y, r6.y, r3.z, r3.y

#line 843
  mul r4.xyz, r3.yyyy, l(0.000370, 0.000370, 0.000370, 0.000000)  // r4.z <- shadow

#line 1169
  ilt r3.z, l(0), r0.w
  if_nz r3.z

#line 1171
    iadd r3.z, r0.w, l(-1)
    add r3.z, -cb2[r3.z + 83].x, cb2[r0.w + 83].x  // r3.z <- splitSize

#line 1172
  else 
    mov r3.z, cb2[r0.w + 83].x  // r3.z <- splitSize
  endif 

#line 1173
  add r0.w, -v2.x, cb2[r0.w + 83].x
  div r0.w, r0.w, r3.z  // r0.w <- splitDist

#line 1174
  lt r3.z, r0.w, l(0.200000)
  if_nz r3.z

#line 1177
    if_nz r1.w

#line 1179
      mov r4.xyz, r4.zzzz  // r4.x <- shadow.x; r4.y <- shadow.y; r4.z <- shadow.z
    else 

#line 1176
      mul_sat r0.w, r0.w, l(5.000000)
      mad r1.w, r0.w, l(-2.000000), l(3.000000)
      mul r0.w, r0.w, r0.w
      mul r0.w, r0.w, r1.w  // r0.w <- lerpAmt

#line 960
      dp4 r5.x, r2.xyzw, cb2[r3.x + 33].xyzw  // r5.x <- shadowPosition.x
      dp4 r5.y, r2.xyzw, cb2[r3.x + 34].xyzw  // r5.y <- shadowPosition.y
      dp4 r1.w, r2.xyzw, cb2[r3.x + 35].xyzw  // r1.w <- shadowPosition.z
      dp4 r2.x, r2.xyzw, cb2[r3.x + 36].xyzw  // r2.x <- shadowPosition.w

#line 961
      add r5.z, r1.w, -cb2[81].x  // r5.z <- shadowPosition.z

#line 962
      div r2.xyz, r5.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 720
      mad r2.xy, r2.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r3.xz, r2.xxyx  // r3.x <- base_uv.x; r3.z <- base_uv.y

#line 721
      add r2.xy, r2.xyxx, -r3.xzxx  // r2.x <- st.x; r2.y <- st.y

#line 722
      add r3.xz, r3.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)

#line 723
      mul r3.xz, r3.xxzx, cb2[28].zzwz

#line 480
      mad r5.xyzw, r2.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r5.x <- uvW1.x; r5.y <- uvW1.y

#line 481
      mad r6.xyzw, r2.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r6.x <- uvW0.y; r6.y <- uvW0.x

#line 483
      mad r7.xyzw, r2.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 482
      div r7.xy, r7.xyxx, r6.yxyy
      add r8.xw, r7.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r8.x <- uv0.x; r8.w <- uv0.y

#line 483
      div r7.xy, r7.zwzz, r5.xyxx
      add r8.yz, r7.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r8.y <- uv1.y; r8.z <- uv1.x

#line 484
      mad r7.xy, r2.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r7.xy, r7.xyxx, r5.wzww
      add r7.xw, r7.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r7.x <- uv2.y; r7.w <- uv2.x

#line 485
      div r2.xy, r2.xyxx, r6.zwzz
      add r9.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r9.x <- uv3.x; r9.y <- uv3.y

#line 487
      mad r10.xyzw, r8.xwzw, cb2[28].zwzw, r3.xzxz

#line 492
      mov r7.yz, r8.wwyw

#line 493
      mov r9.zw, r7.yyyz

#line 491
      mad r11.xyzw, r8.xyzy, cb2[28].zwzw, r3.xzxz

#line 492
      mad r12.xyzw, r7.wywz, cb2[28].zwzw, r3.xzxz

#line 493
      mad r13.xyzw, r9.xzxw, cb2[28].zwzw, r3.xzxz

#line 494
      mov r8.y, r7.x
      mul r2.xy, -r5.wzww, r6.xyxx

#line 495
      mad r14.xyzw, r8.xyzy, cb2[28].zwzw, r3.xzxz
      mul r9.zw, r5.yyyx, -r5.wwwz

#line 496
      mad r15.xy, r7.wxww, cb2[28].zwzz, r3.xzxx
      mul r15.zw, r5.yyyz, r5.xxxw

#line 497
      mov r8.w, r9.x
      mad r8.yw, r8.wwwy, cb2[28].zzzw, r3.xxxz

#line 499
      mov r7.xz, r8.xxzx

#line 498
      mov r7.y, r9.y
      mul r8.xz, r6.xxyx, -r6.zzwz

#line 499
      mad r16.xyzw, r7.xyzy, cb2[28].zwzw, r3.xzxz
      mul r7.xz, r5.yyxy, -r6.zzwz

#line 500
      mad r7.yw, r7.wwwy, cb2[28].zzzw, r3.xxxz
      mul r5.xyzw, r5.xyzw, r6.xyzw

#line 501
      mad r3.xz, r9.xxyx, cb2[28].zzwz, r3.xxzx
      mul r6.xy, r6.xwxx, r6.yzyy

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r10.xyxx, t2.xxxx, s0, r2.z  // r1.w <- <SampleTextureAndCompare_id63 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r10.zwzz, t2.xxxx, s0, r2.z  // r2.w <- <SampleTextureAndCompare_id63 return value>

#line 841
      mul r2.w, r2.w, r5.x
      mad r1.w, r6.x, r1.w, r2.w  // r1.w <- shadow

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r12.xyxx, t2.xxxx, s0, r2.z  // r2.w <- <SampleTextureAndCompare_id63 return value>

#line 841
      mad r1.w, r2.x, r2.w, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r13.xyxx, t2.xxxx, s0, r2.z  // r2.x <- <SampleTextureAndCompare_id63 return value>

#line 841
      mad r1.w, r8.x, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r11.xyxx, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r5.y, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r11.zwzz, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r15.z, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r12.zwzz, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r9.z, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r13.zwzz, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r7.x, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r14.xyxx, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r2.y, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r14.zwzz, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r9.w, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r15.xyxx, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r15.w, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r8.ywyy, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r5.z, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r16.xyxx, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r8.z, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r16.zwzz, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r7.z, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r7.ywyy, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r5.w, r2.x, r1.w

#line 715
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r3.xzxx, t2.xxxx, s0, r2.z

#line 841
      mad r1.w, r6.y, r2.x, r1.w

#line 843
      mul r1.w, r1.w, l(0.000370)

#line 1183
      mad r2.x, r3.y, l(0.000370), -r1.w
      mad r4.xyz, r0.wwww, r2.xxxx, r1.wwww  // r4.x <- shadow.x; r4.y <- shadow.y; r4.z <- shadow.z

#line 1184
    endif 

#line 1185
  endif 

#line 1336
  mul r2.xyz, r4.xyzx, cb2[27].xyzx
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.lightColorNdotL_id44.x; r2.y <- streams.lightColorNdotL_id44.y; r2.z <- streams.lightColorNdotL_id44.z

#line 1322
  mul r2.xyz, r2.xyzx, cb1[0].xyzx
  mul r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000)  // r2.x <- <ComputeDirectLightContribution_id313 return value>.x; r2.y <- <ComputeDirectLightContribution_id313 return value>.y; r2.z <- <ComputeDirectLightContribution_id313 return value>.z

#line 1419
else 
  mov r2.xyz, l(0,0,0,0)
endif 

#line 1132
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 1133
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1134
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 1135
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 1134
ftoi r3.xyz, r0.xyzx  // r3.z <- slice

#line 1135
mov r3.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r3.xyzw, t3.xyzw  // r0.x <- streams.lightData_id173.x; r0.y <- streams.lightData_id173.y

#line 1313
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id212 return value>

#line 1428
mov r3.xyz, r1.xyzx  // r3.x <- streams.normalWS_id19.x; r3.y <- streams.normalWS_id19.y; r3.z <- streams.normalWS_id19.z
mov r3.w, v0.x  // r3.w <- streams.PositionWS_id22.x
mov r4.yz, v0.yyzy  // r4.y <- streams.PositionWS_id22.y; r4.z <- streams.PositionWS_id22.z
mov r5.xyz, cb1[0].xyzx  // r5.x <- streams.matDiffuseVisible_id69.x; r5.y <- streams.matDiffuseVisible_id69.y; r5.z <- streams.matDiffuseVisible_id69.z
mov r6.xyz, r2.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r7.x, r0.x  // r7.x <- streams.lightIndex_id174
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 1430
  if_nz r1.w

#line 1432
    break 

#line 1433
  endif 

#line 1119
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r7.xxxx, t4.yzwx  // r1.w <- realLightIndex

#line 1120
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id174

#line 1122
  ishl r2.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.xyzw, r2.wwww, t5.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w

#line 1123
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r1.wwww, t5.wxyz  // r7.y <- pointLight2.x; r7.z <- pointLight2.y; r7.w <- pointLight2.z

#line 807
  mov r4.x, r3.w
  add r8.xyz, -r4.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 808
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 809
  div r8.xyz, r8.xyzx, r2.wwww  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 661
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 426
  mul r1.w, r8.w, r1.w  // r1.w <- factor

#line 427
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 428
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id77 return value>

#line 662
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1299
  dp3 r2.w, r3.xyzx, r8.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 1301
  mul r7.yzw, r1.wwww, r7.yyzw
  mul r7.yzw, r2.wwww, r7.yyzw  // r7.y <- streams.lightColorNdotL_id44.x; r7.z <- streams.lightColorNdotL_id44.y; r7.w <- streams.lightColorNdotL_id44.z

#line 1322
  mul r7.yzw, r7.yyzw, r5.xxyz

#line 1438
  mad r6.xyz, r7.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 1428
  iadd r0.w, r0.w, l(1)

#line 1440
endloop   // r7.x <- streams.lightIndex_id174

#line 1291
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id224 return value>

#line 1448
mov r0.yzw, r1.xxyz  // r0.y <- streams.normalWS_id19.x; r0.z <- streams.normalWS_id19.y; r0.w <- streams.normalWS_id19.z
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id22.x; r2.y <- streams.PositionWS_id22.y; r2.z <- streams.PositionWS_id22.z
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id69.x; r3.y <- streams.matDiffuseVisible_id69.y; r3.z <- streams.matDiffuseVisible_id69.z
mov r4.xyz, r6.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r7.x  // r1.w <- streams.lightIndex_id174
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 1450
  if_nz r3.w

#line 1452
    break 

#line 1453
  endif 

#line 1091
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t4.yzwx  // r3.w <- realLightIndex

#line 1092
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id174

#line 1094
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r5.xyz, r4.wwww, t6.xyzw  // r5.x <- spotLight1.x; r5.y <- spotLight1.y; r5.z <- spotLight1.z

#line 1097
  bfi r7.yzw, l(0, 30, 30, 30), l(0, 2, 2, 2), r3.wwww, l(0, 1, 2, 3)

#line 1095
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.yyyy, t6.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 1096
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t6.xyzw  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.z <- spotLight3.z

#line 1097
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r7.wwww, t6.wxyz  // r7.y <- spotLight4.x; r7.z <- spotLight4.y; r7.w <- spotLight4.z

#line 794
  add r5.xyz, -r2.xyzx, r5.xyzx  // r5.x <- lightVector.x; r5.y <- lightVector.y; r5.z <- lightVector.z

#line 795
  dp3 r3.w, r5.xyzx, r5.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 796
  div r5.xyz, r5.xyzx, r4.wwww  // r5.x <- lightVectorNorm.x; r5.y <- lightVectorNorm.y; r5.z <- lightVectorNorm.z

#line 654
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 420
  mul r3.w, r9.z, r3.w  // r3.w <- factor

#line 421
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 422
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id88 return value>

#line 655
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 646
  dp3 r4.w, -r8.xyzx, r5.xyzx  // r4.w <- cd

#line 647
  mad_sat r4.w, r4.w, r9.x, r9.y  // r4.w <- attenuation

#line 648
  mul r4.w, r4.w, r4.w

#line 802
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1277
  dp3 r4.w, r0.yzwy, r5.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 1279
  mul r5.xyz, r3.wwww, r7.yzwy
  mul r5.xyz, r4.wwww, r5.xyzx  // r5.x <- streams.lightColorNdotL_id44.x; r5.y <- streams.lightColorNdotL_id44.y; r5.z <- streams.lightColorNdotL_id44.z

#line 1322
  mul r5.xyz, r3.xyzx, r5.xyzx

#line 1458
  mad r4.xyz, r5.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1448
  iadd r2.w, r2.w, l(1)

#line 1460
endloop   // r1.w <- streams.lightIndex_id174

#line 1474
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 786
  add r0.xyz, -v0.xyzx, cb0[29].xyzx  // r0.x <- lightVector.x; r0.y <- lightVector.y; r0.z <- lightVector.z

#line 787
  dp3 r0.w, r0.xyzx, r0.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength

#line 788
  div r0.xyz, r0.xyzx, r1.wwww  // r0.x <- lightVectorNorm.x; r0.y <- lightVectorNorm.y; r0.z <- lightVectorNorm.z

#line 640
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 414
  mul r0.w, r0.w, cb0[29].w  // r0.w <- factor

#line 415
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor

#line 416
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id99 return value>

#line 641
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 1255
  dp3 r0.x, r1.xyzx, r0.xyzx
  max r0.x, r0.x, l(0.000100)  // r0.x <- streams.NdotL_id49

#line 1030
  add r2.xyz, v0.xyzx, -cb0[29].xyzx  // r2.x <- lightDelta.x; r2.y <- lightDelta.y; r2.z <- lightDelta.z

#line 1031
  dp3 r0.y, r2.xyzx, r2.xyzx
  sqrt r0.y, r0.y  // r0.y <- distanceToLight

#line 1032
  div r3.xyz, r2.xyzx, r0.yyyy  // r3.x <- direction.x; r3.y <- direction.y; r3.z <- direction.z

#line 1034
  max r0.y, |r3.z|, |r3.y|
  max r0.y, r0.y, |r3.x|  // r0.y <- longestAxis

#line 1043
  eq r0.yz, r0.yyyy, |r3.xxyx|

#line 1052
  mov r2.w, l(4)
  mov r3.xz, l(0,0,2,0)
  mov r3.yw, r2.zzzx
  movc r2.xy, r0.zzzz, r2.wyww, r3.xyxx  // r2.x <- faceIndex; r2.y <- lightSpaceZ
  movc r0.yz, r0.yyyy, r3.zzwz, r2.xxyx  // r0.y <- faceIndex; r0.z <- lightSpaceZ

#line 1061
  add r1.w, |r0.z|, -cb0[80].x  // r1.w <- lightSpaceZ

#line 1062
  div r1.w, cb0[82].y, r1.w
  add r1.w, r1.w, cb0[82].x  // r1.w <- depth

#line 1063
  lt r2.x, r1.w, l(0.000000)
  lt r2.y, l(1.000000), r1.w
  or r2.x, r2.y, r2.x

#line 1065
  if_z r2.x

#line 1053
    lt r2.x, l(0.000000), r0.z
    lt r0.z, r0.z, l(0.000000)
    iadd r0.z, -r2.x, r0.z
    itof r0.z, r0.z  // r0.z <- lightSpaceZDirection

#line 1054
    min r0.z, r0.z, l(0.000000)
    ftoi r0.z, -r0.z
    iadd r0.y, r0.z, r0.y

#line 914
    add r0.z, -r0.x, l(1.000000)
    max r0.z, r0.z, l(0.000000)  // r0.z <- normalOffsetScale

#line 915
    mul r2.x, cb0[31].z, cb0[81].x
    dp2 r0.z, r2.xxxx, r0.zzzz

#line 1057
    mad r2.xyz, r0.zzzz, r1.xyzx, v0.xyzx  // r2.x <- positionWS.x; r2.y <- positionWS.y; r2.z <- positionWS.z

#line 1058
    ishl r0.y, r0.y, l(2)
    mov r2.w, l(1.000000)
    dp4 r3.x, r2.xyzw, cb0[r0.y + 32].xyzw  // r3.x <- projectedPosition.x
    dp4 r3.y, r2.xyzw, cb0[r0.y + 33].xyzw  // r3.y <- projectedPosition.y
    dp4 r0.y, r2.xyzw, cb0[r0.y + 35].xyzw  // r0.y <- projectedPosition.w

#line 1059
    div r0.yz, r3.xxyx, r0.yyyy  // r0.y <- projectedPosition.x; r0.z <- projectedPosition.y

#line 765
    mad r0.yz, r0.yyzy, cb0[31].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
    round_ni r2.xy, r0.yzyy  // r2.x <- base_uv.x; r2.y <- base_uv.y

#line 766
    add r0.yz, r0.yyzy, -r2.xxyx  // r0.y <- st.x; r0.z <- st.y

#line 767
    add r2.xy, r2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 768
    mul r2.xy, r2.xyxx, cb0[31].zwzz

#line 388
    mad r3.xyzw, r0.yzzy, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r3.x <- uvW1.x; r3.y <- uvW1.y

#line 389
    mad r5.xyzw, r0.zyyz, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r5.x <- uvW0.y; r5.y <- uvW0.x

#line 391
    mad r6.xyzw, r0.yzyz, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 390
    div r2.zw, r6.xxxy, r5.yyyx
    add r7.xw, r2.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r7.x <- uv0.x; r7.w <- uv0.y

#line 391
    div r2.zw, r6.zzzw, r3.xxxy
    add r7.yz, r2.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r7.y <- uv1.y; r7.z <- uv1.x

#line 392
    mad r2.zw, r0.yyyz, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
    div r2.zw, r2.zzzw, r3.wwwz
    add r6.xw, r2.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r6.x <- uv2.y; r6.w <- uv2.x

#line 393
    div r0.yz, r0.yyzy, r5.zzwz
    add r8.xy, r0.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000)  // r8.x <- uv3.x; r8.y <- uv3.y

#line 395
    mad r9.xyzw, r7.xwzw, cb0[31].zwzw, r2.xyxy

#line 400
    mov r6.yz, r7.wwyw

#line 401
    mov r8.zw, r6.yyyz

#line 399
    mad r10.xyzw, r7.xyzy, cb0[31].zwzw, r2.xyxy

#line 400
    mad r11.xyzw, r6.wywz, cb0[31].zwzw, r2.xyxy

#line 401
    mad r12.xyzw, r8.xzxw, cb0[31].zwzw, r2.xyxy

#line 402
    mov r7.y, r6.x
    mul r0.yz, -r3.wwzw, r5.xxyx

#line 403
    mad r13.xyzw, r7.xyzy, cb0[31].zwzw, r2.xyxy
    mul r2.zw, r3.yyyx, -r3.wwwz

#line 404
    mad r8.zw, r6.wwwx, cb0[31].zzzw, r2.xxxy
    mul r14.xy, r3.yzyy, r3.xwxx

#line 405
    mov r7.w, r8.x
    mad r7.yw, r7.wwwy, cb0[31].zzzw, r2.xxxy

#line 407
    mov r6.xz, r7.xxzx

#line 406
    mov r6.y, r8.y
    mul r7.xz, r5.xxyx, -r5.zzwz

#line 407
    mad r15.xyzw, r6.xyzy, cb0[31].zwzw, r2.xyxy
    mul r6.xz, r3.yyxy, -r5.zzwz

#line 408
    mad r6.yw, r6.wwwy, cb0[31].zzzw, r2.xxxy
    mul r3.xyzw, r3.xyzw, r5.xyzw

#line 409
    mad r2.xy, r8.xyxx, cb0[31].zwzz, r2.xyxx
    mul r5.xy, r5.xwxx, r5.yzyy

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.xyxx, t0.xxxx, s0, r1.w  // r4.w <- <SampleTextureAndCompare_id111 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r9.zwzz, t0.xxxx, s0, r1.w  // r5.z <- <SampleTextureAndCompare_id111 return value>

#line 906
    mul r3.x, r3.x, r5.z
    mad r3.x, r5.x, r4.w, r3.x  // r3.x <- shadow

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r11.xyxx, t0.xxxx, s0, r1.w  // r4.w <- <SampleTextureAndCompare_id111 return value>

#line 906
    mad r0.y, r0.y, r4.w, r3.x  // r0.y <- shadow

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r12.xyxx, t0.xxxx, s0, r1.w  // r3.x <- <SampleTextureAndCompare_id111 return value>

#line 906
    mad r0.y, r7.x, r3.x, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r10.xyxx, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r3.y, r3.x, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r10.zwzz, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r14.x, r3.x, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r11.zwzz, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r2.z, r3.x, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r12.zwzz, t0.xxxx, s0, r1.w  // r2.z <- <SampleTextureAndCompare_id111 return value>

#line 906
    mad r0.y, r6.x, r2.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r13.xyxx, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r0.z, r2.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r13.zwzz, t0.xxxx, s0, r1.w  // r0.z <- <SampleTextureAndCompare_id111 return value>

#line 906
    mad r0.y, r2.w, r0.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r8.zwzz, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r14.y, r0.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r7.ywyy, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r3.z, r0.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r15.xyxx, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r7.z, r0.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r15.zwzz, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r6.z, r0.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r6.ywyy, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r3.w, r0.z, r0.y

#line 760
    sample_c_lz_indexable(texture2d)(float,float,float,float) r0.z, r2.xyxx, t0.xxxx, s0, r1.w

#line 906
    mad r0.y, r5.y, r0.z, r0.y

#line 908
    mul r2.xyz, r0.yyyy, l(0.000370, 0.000370, 0.000370, 0.000000)  // r2.z <- shadow

#line 1066
  else   // Prior locations: r2.z <- lightDelta.z; r0.y <- faceIndex
    mov r2.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1257
  mul r0.yzw, r0.wwww, cb0[30].xxyz
  mul r0.yzw, r2.xxyz, r0.yyzw
  mul r0.xyz, r0.xxxx, r0.yzwy  // r0.x <- streams.lightColorNdotL_id44.x; r0.y <- streams.lightColorNdotL_id44.y; r0.z <- streams.lightColorNdotL_id44.z

#line 1322
  mul r0.xyz, r0.xyzx, cb1[0].xyzx

#line 1478
  mad r4.xyz, r0.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1479
endif 

#line 1494
ilt r0.x, l(0), cb0[82].z
if_nz r0.x

#line 747
  add r0.xyz, -v0.xyzx, cb0[83].xyzx  // r0.x <- lightVector.x; r0.y <- lightVector.y; r0.z <- lightVector.z

#line 748
  dp3 r0.w, r0.xyzx, r0.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength

#line 749
  div r0.xyz, r0.xyzx, r1.wwww  // r0.x <- lightVectorNorm.x; r0.y <- lightVectorNorm.y; r0.z <- lightVectorNorm.z

#line 585
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 334
  mul r0.w, r0.w, cb0[85].z  // r0.w <- factor

#line 335
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor

#line 336
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id125 return value>

#line 586
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 577
  dp3 r1.w, -cb0[84].xyzx, r0.xyzx  // r1.w <- cd

#line 578
  mad_sat r1.w, r1.w, cb0[85].x, cb0[85].y  // r1.w <- attenuation

#line 579
  mul r1.w, r1.w, r1.w

#line 755
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 1233
  dp3 r0.x, r1.xyzx, r0.xyzx
  max r0.x, r0.x, l(0.000100)  // r0.x <- streams.NdotL_id49

#line 881
  add r0.y, -r0.x, l(1.000000)
  max r0.y, r0.y, l(0.000000)  // r0.y <- normalOffsetScale

#line 882
  mul r0.z, cb0[87].z, cb0[102].x
  dp2 r0.y, r0.zzzz, r0.yyyy

#line 1001
  mad r2.xyz, r0.yyyy, r1.xyzx, v0.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 874
  mov r2.w, l(1.000000)
  dp4 r3.x, r2.xyzw, cb0[88].xyzw  // r3.x <- shadowPosition.x
  dp4 r3.y, r2.xyzw, cb0[89].xyzw  // r3.y <- shadowPosition.y
  dp4 r0.y, r2.xyzw, cb0[90].xyzw  // r0.y <- shadowPosition.z
  dp4 r0.z, r2.xyzw, cb0[91].xyzw  // r0.z <- shadowPosition.w

#line 875
  add r3.z, r0.y, -cb0[101].x  // r3.z <- shadowPosition.z

#line 876
  div r2.xyz, r3.xyzx, r0.zzzz  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 570
  mad r0.yz, r2.xxyx, cb0[87].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r2.xy, r0.yzyy  // r2.x <- base_uv.x; r2.y <- base_uv.y

#line 571
  add r0.yz, r0.yyzy, -r2.xxyx  // r0.y <- st.x; r0.z <- st.y

#line 572
  add r2.xy, r2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 573
  mul r2.xy, r2.xyxx, cb0[87].zwzz

#line 518
  mad r3.xy, -r0.zyzz, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r3.x <- uvW0.y; r3.y <- uvW0.x

#line 520
  mad r3.zw, r0.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r3.z <- uvW2.x; r3.w <- uvW2.y

#line 521
  mad r5.xy, -r0.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r5.xy, r5.xyxx, r3.yxyy
  add r5.xw, r5.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r5.x <- uv0.x; r5.w <- uv0.y

#line 522
  add r6.xy, r0.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r5.yz, r6.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r5.y <- uv1.y; r5.z <- uv1.x

#line 523
  div r0.yz, r0.yyzy, r3.zzwz
  add r6.xy, r0.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r6.x <- uv2.x; r6.y <- uv2.y

#line 532
  mul r0.yz, r3.xxwx, r3.yyzy

#line 525
  mad r7.xyzw, r5.xwzw, cb0[87].zwzw, r2.xyxy

#line 529
  mov r6.zw, r5.wwwy

#line 527
  mul r8.xy, r3.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 528
  mad r9.xyzw, r5.xyzy, cb0[87].zwzw, r2.xyxy

#line 529
  mad r10.xyzw, r6.xzxw, cb0[87].zwzw, r2.xyxy

#line 530
  mov r5.y, r6.y
  mul r3.xy, r3.xyxx, r3.zwzz

#line 531
  mad r5.xyzw, r5.xyzy, cb0[87].zwzw, r2.xyxy
  mul r6.zw, r3.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 532
  mad r2.xy, r6.xyxx, cb0[87].zwzz, r2.xyxx

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r7.xyxx, t1.xxxx, s0, r2.z  // r1.w <- <SampleTextureAndCompare_id139 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r7.zwzz, t1.xxxx, s0, r2.z  // r2.w <- <SampleTextureAndCompare_id139 return value>

#line 739
  mul r2.w, r2.w, r8.x
  mad r0.y, r0.y, r1.w, r2.w  // r0.y <- shadow

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r10.xyxx, t1.xxxx, s0, r2.z  // r1.w <- <SampleTextureAndCompare_id139 return value>

#line 739
  mad r0.y, r3.x, r1.w, r0.y

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r9.xyxx, t1.xxxx, s0, r2.z

#line 739
  mad r0.y, r8.y, r1.w, r0.y

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r9.zwzz, t1.xxxx, s0, r2.z

#line 739
  mad r0.y, r1.w, l(49.000000), r0.y

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r10.zwzz, t1.xxxx, s0, r2.z

#line 739
  mad r0.y, r6.z, r1.w, r0.y

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r5.xyxx, t1.xxxx, s0, r2.z

#line 739
  mad r0.y, r3.y, r1.w, r0.y

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r5.zwzz, t1.xxxx, s0, r2.z

#line 739
  mad r0.y, r6.w, r1.w, r0.y

#line 537
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t1.xxxx, s0, r2.z

#line 739
  mad r0.y, r0.z, r1.w, r0.y

#line 741
  mul r0.y, r0.y, l(0.006944)

#line 1235
  mul r2.xyz, r0.wwww, cb0[86].xyzx
  mul r0.yzw, r0.yyyy, r2.xxyz
  mul r0.xyz, r0.xxxx, r0.yzwy  // r0.x <- streams.lightColorNdotL_id44.x; r0.y <- streams.lightColorNdotL_id44.y; r0.z <- streams.lightColorNdotL_id44.z

#line 1322
  mul r0.xyz, r0.xyzx, cb1[0].xyzx

#line 1498
  mad r4.xyz, r0.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1499
endif 

#line 1210
dp3 r0.x, r1.xyzx, cb2[98].xyzx  // r0.x <- sampleDirection.x
dp3 r0.y, r1.xyzx, cb2[99].xyzx  // r0.y <- sampleDirection.y
dp3 r0.z, r1.xyzx, cb2[100].xyzx  // r0.z <- sampleDirection.z

#line 853
mul r0.w, r0.y, r0.y  // r0.w <- y2

#line 854
mul r1.x, r0.z, r0.z  // r1.x <- z2

#line 858
mad r1.yzw, cb2[90].xxyz, r0.yyyy, cb2[89].xxyz  // r1.y <- color.x; r1.z <- color.y; r1.w <- color.z

#line 859
mad r1.yzw, cb2[91].xxyz, -r0.zzzz, r1.yyzw

#line 860
mad r1.yzw, cb2[92].xxyz, r0.xxxx, r1.yyzw

#line 863
mul r2.xyz, r0.yyyy, cb2[93].xyzx
mad r1.yzw, r2.xxyz, r0.xxxx, r1.yyzw

#line 864
mul r2.xyz, r0.yyyy, cb2[94].xyzx
mad r1.yzw, r2.xxyz, -r0.zzzz, r1.yyzw

#line 865
mad r0.y, r1.x, l(3.000000), l(-1.000000)
mad r1.xyz, cb2[95].xyzx, r0.yyyy, r1.yzwy  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 866
mul r2.xyz, r0.xxxx, cb2[96].xyzx
mad r1.xyz, r2.xyzx, -r0.zzzz, r1.xyzx

#line 867
mad r0.x, r0.x, r0.x, -r0.w
mad r0.xyz, cb2[97].xyzx, r0.xxxx, r1.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 1212
mul r0.xyz, r0.xyzx, cb2[102].xxxx  // r0.x <- streams.envLightDiffuseColor_id47.x; r0.y <- streams.envLightDiffuseColor_id47.y; r0.z <- streams.envLightDiffuseColor_id47.z

#line 1221
mul r0.xyz, r0.xyzx, cb1[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id314 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id314 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id314 return value>.z

#line 1516
mad r0.xyz, cb1[0].xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1527
mad o0.xyz, r4.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1607
utof o1.xyzw, cb0[26].xxxx

#line 1675
mov o0.w, cb1[0].w
ret 
// Approximately 546 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id87 = 1;
const static int TCascadeCountBase_id151 = 4;
const static int TLightCountBase_id152 = 1;
const static int TCascadeCount_id159 = 4;
const static int TLightCount_id160 = 1;
const static bool TBlendCascades_id161 = true;
const static bool TDepthRangeAuto_id162 = true;
const static bool TCascadeDebug_id163 = false;
const static bool TComputeTransmittance_id164 = false;
const static int TFilterSize_id166 = 7;
const static int TMaxLightCount_id183 = 1;
const static int TLightCount_id189 = 1;
const static int TFilterSize_id195 = 7;
const static int TMaxLightCount_id197 = 1;
const static int TCascadeCountBase_id203 = 1;
const static int TLightCountBase_id204 = 1;
const static bool TCascadeDebug_id212 = false;
const static int TFilterSize_id213 = 5;
const static int TOrder_id216 = 3;
const static int TOrder_id218 = 3;
static const float PI_id229 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id230 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id167;
    float3 normalWS_id19;
    float4 PositionWS_id22;
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
    float thicknessWS_id85;
    float3 shadowColor_id84;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id173;
    int lightIndex_id174;
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
    float4 ScreenPosition_id167 : SCREENPOSITION_ID167_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
    float3 normalWS_id19;
    float4 ScreenPosition_id167;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id167 : SCREENPOSITION_ID167_SEM;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
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
    uint MaterialIndex_id83;
    float4 _padding_PerDraw_Default;
    int LightCount_id182;
    PointLightData Lights_id184[TMaxLightCount_id183];
    float2 ShadowMapTextureSize_id186;
    float2 ShadowMapTextureTexelSize_id187;
    float4x4 WorldToShadow_id190[TLightCount_id189 * 6];
    float4x4 InverseWorldToShadow_id191[TLightCount_id189 * 6];
    float DepthBiases_id192[TLightCount_id189];
    float OffsetScales_id193[TLightCount_id189];
    float2 DepthParameters_id194[TLightCount_id189];
    int LightCount_id196;
    SpotLightData Lights_id198[TMaxLightCount_id197];
    float2 ShadowMapTextureSize_id200;
    float2 ShadowMapTextureTexelSize_id201;
    float4x4 WorldToShadowCascadeUV_id205[TCascadeCountBase_id203 * TLightCountBase_id204];
    float4x4 InverseWorldToShadowCascadeUV_id206[TCascadeCountBase_id203 * TLightCountBase_id204];
    float4x4 ViewMatrices_id207[TCascadeCountBase_id203 * TLightCountBase_id204];
    float2 DepthRanges_id208[TCascadeCountBase_id203 * TLightCountBase_id204];
    float DepthBiases_id209[TLightCountBase_id204];
    float OffsetScales_id210[TLightCountBase_id204];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 constantColor_id226;
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
    float NearClipPlane_id168 = 1.0f;
    float FarClipPlane_id169 = 100.0f;
    float2 ZProjection_id170;
    float2 ViewSize_id171;
    float AspectRatio_id172;
    float4 _padding_PerView_Default;
    int LightCount_id86;
    DirectionalLightData Lights_id88[TMaxLightCount_id87];
    float2 ShadowMapTextureSize_id90;
    float2 ShadowMapTextureTexelSize_id91;
    float4x4 WorldToShadowCascadeUV_id153[TCascadeCountBase_id151 * TLightCountBase_id152];
    float4x4 InverseWorldToShadowCascadeUV_id154[TCascadeCountBase_id151 * TLightCountBase_id152];
    float4x4 ViewMatrices_id155[TCascadeCountBase_id151 * TLightCountBase_id152];
    float2 DepthRanges_id156[TCascadeCountBase_id151 * TLightCountBase_id152];
    float DepthBiases_id157[TLightCountBase_id152];
    float OffsetScales_id158[TLightCountBase_id152];
    float CascadeDepthSplits_id165[TCascadeCount_id159 * TLightCount_id160];
    float ClusterDepthScale_id177;
    float ClusterDepthBias_id178;
    float2 ClusterStride_id179;
    float3 AmbientLight_id214;
    float3 SphericalColors_id219[TOrder_id218 * TOrder_id218];
    float MipCount_id220;
    float4x4 SkyMatrix_id222;
    float Intensity_id223;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id93;
    float2 Texture1TexelSize_id95;
    float2 Texture2TexelSize_id97;
    float2 Texture3TexelSize_id99;
    float2 Texture4TexelSize_id101;
    float2 Texture5TexelSize_id103;
    float2 Texture6TexelSize_id105;
    float2 Texture7TexelSize_id107;
    float2 Texture8TexelSize_id109;
    float2 Texture9TexelSize_id111;
};
Texture2D Texture0_id92;
Texture2D Texture1_id94;
Texture2D Texture2_id96;
Texture2D Texture3_id98;
Texture2D Texture4_id100;
Texture2D Texture5_id102;
Texture2D Texture6_id104;
Texture2D Texture7_id106;
Texture2D Texture8_id108;
Texture2D Texture9_id110;
TextureCube TextureCube0_id112;
TextureCube TextureCube1_id113;
TextureCube TextureCube2_id114;
TextureCube TextureCube3_id115;
Texture3D Texture3D0_id116;
Texture3D Texture3D1_id117;
Texture3D Texture3D2_id118;
Texture3D Texture3D3_id119;
SamplerState Sampler_id120;
SamplerState PointSampler_id121 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id122 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id124 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id125 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id126 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id127 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id128 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id129 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id130;
SamplerState Sampler1_id131;
SamplerState Sampler2_id132;
SamplerState Sampler3_id133;
SamplerState Sampler4_id134;
SamplerState Sampler5_id135;
SamplerState Sampler6_id136;
SamplerState Sampler7_id137;
SamplerState Sampler8_id138;
SamplerState Sampler9_id139;
Texture2D ShadowMapTexture_id185;
Texture2D ShadowMapTexture_id199;
Texture2D ShadowMapTexture_id89;
Texture3D<uint2> LightClusters_id175;
Buffer<uint> LightIndices_id176;
Buffer<float4> PointLights_id180;
Buffer<float4> SpotLights_id181;
TextureCube CubeMap_id221;
float4 Project_id104(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id55(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id187, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id187, uvW1.x * uvW1.y);
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id187, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id187, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id187, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id114(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id185.SampleLevel(LinearBorderSampler_id123, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id104(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
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
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id187, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id187, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id187, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id187, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id187, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id187, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id187, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id187, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id187, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id187, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id99(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id88(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id77(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id65(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id64(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id91, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id66(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id89.SampleLevel(LinearBorderSampler_id123, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id55(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id62(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id91, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id91, uvW3.x * uvW3.y);
    return 2704.0;
}
float Get3x3FilterKernel_id141(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id201, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id201, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id201, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id201, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id140(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id201, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id201, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id201, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id201, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id201, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id201, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id201, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id201, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id201, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id139(float2 position, float positionDepth)
{
    return ShadowMapTexture_id199.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
float Get7x7FilterKernel_id138(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id201, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id201, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id201, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id201, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id201, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id201, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id201, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id201, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id201, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id201, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id201, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id201, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id201, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id201, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id201, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id201, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id137(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id200;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id201;
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
float SampleAndFilter_id118(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id186;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id187;
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
    float4 bottomLeftTexelWS = Project_id104(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id104(float4(ShadowMapTextureTexelSize_id187.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id104(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id116(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id104(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id104(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id187.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id104(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id115()
{

    {
        return 4.5;
    }
}
float GetDistanceAttenuation_id101(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id99(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id90(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id89(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id88(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id79(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id77(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id70(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id90;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id91;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id62(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id66(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id69(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id55(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id55(float4(ShadowMapTextureTexelSize_id91.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id55(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id68(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id55(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id55(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id91.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id55(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id67()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id63(float2 position, float positionDepth)
{
    return ShadowMapTexture_id89.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
void CalculatePCFKernelParameters_id61(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id90;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id91;
}
float FilterShadow_id133(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id137(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id140(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id139(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
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
float SampleTextureAndCompare_id111(float2 position, float positionDepth)
{
    return ShadowMapTexture_id185.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
void CalculatePCFKernelParameters_id109(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id186;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id187;
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
float ComputeAttenuation_id100(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id101(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id91(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id89(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id90(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id78(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id79(lightVectorLength, lightInvSquareRadius);
}
float FilterThickness_id57(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id69(GetFilterRadiusInPixels_id67(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id68(GetFilterRadiusInPixels_id67(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id70(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id56(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id61(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id62(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id63(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float4 EvaluateSphericalHarmonics_id155(float3 sphericalColors[TOrder_id216 * TOrder_id216], float3 direction)
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
float ComputeShadowFromCascade_id136(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id205[cascadeIndex + lightIndex * TCascadeCountBase_id203]);
    shadowPosition.z -= DepthBiases_id209[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id133(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id135(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id201.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id129(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id128(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float FilterShadow_id108(float2 position, float positionDepth)
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
float3 GetShadowPositionOffset_id107(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id187.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id106(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id105(positionWS, streams.meshNormalWS_id17, float2(0.0f, 1.0f), WorldToShadow_id190[cascadeIndex], InverseWorldToShadow_id191[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id102(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id100(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id92(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id91(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id81(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id78(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float ComputeThicknessFromCascade_id60(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id151;
    return FilterThickness_id57(pixelPositionWS, meshNormalWS, DepthRanges_id156[arrayIndex], WorldToShadowCascadeUV_id153[arrayIndex], InverseWorldToShadowCascadeUV_id154[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id59(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id153[cascadeIndex + lightIndex * TCascadeCountBase_id151]);
    shadowPosition.z -= DepthBiases_id157[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id56(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id58(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id91.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id297(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id220;
    return CubeMap_id221.SampleLevel(LinearSampler_id122, direction, mipLevel);
}
float4 Compute_id292(float3 direction)
{
    return EvaluateSphericalHarmonics_id155(SphericalColors_id219, direction);
}
void PrepareEnvironmentLight_id159(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id150(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
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
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id135(OffsetScales_id210[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id136(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id85 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id121(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id198[lightIndex].PositionWS;
    data.DirectionWS = Lights_id198[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id198[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id198[lightIndex].Color;
    ProcessLight_id129(streams, data);
}
float3 ComputeSpecularTextureProjection_id98(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id97(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id96(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id184[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id85 = ComputeThickness_id106(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id107(OffsetScales_id193[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id190[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id192[lightIndex];
    float depth = DepthParameters_id194[lightIndex].x + (DepthParameters_id194[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id108(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id95(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id184[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id184[lightIndex].InvSquareRadius;
    data.Color = Lights_id184[lightIndex].Color;
    ProcessLight_id102(streams, data);
}
float3 ComputeSpecularTextureProjection_id87(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id86(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id85(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id84(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id176.Load(streams.lightIndex_id174);
    streams.lightIndex_id174++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id181.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id181.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id181.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id181.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id92(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id76(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id75(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id74(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id73(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id176.Load(streams.lightIndex_id174);
    streams.lightIndex_id174++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id180.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id180.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id81(streams, pointLight);
}
void PrepareLightData_id80(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id170.y / (projectedDepth - ZProjection_id170.x);
    float2 texCoord = float2(streams.ScreenPosition_id167.x + 1, 1 - streams.ScreenPosition_id167.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id177 + ClusterDepthBias_id178), 0));
    streams.lightData_id173 = LightClusters_id175.Load(int4(texCoord * ClusterStride_id179, slice, 0));
    streams.lightIndex_id174 = streams.lightData_id173.x;
}
float3 ComputeSpecularTextureProjection_id52(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id51(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id50(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id159;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id159 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id165[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id58(OffsetScales_id158[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id159)
    {
        shadow = ComputeShadowFromCascade_id59(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id165[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id165[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id159 - 1)
            {
            }
            else if (TBlendCascades_id161)
            {
                float nextShadow = ComputeShadowFromCascade_id59(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id85 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id49(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id88[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id88[lightIndex].DirectionWS;
}
void ResetStream_id174()
{
}
void AfterLightingAndShading_id321()
{
}
void PrepareEnvironmentLight_id310(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id307(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id159(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id222);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id292(sampleDirection).rgb * Intensity_id223 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id222);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id297(streams, sampleDirection).rgb * Intensity_id223 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id314(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id302(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id150(streams);
    float3 lightColor = AmbientLight_id214 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id259(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id121(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id122(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id123(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id124(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id261()
{
    return LightCount_id196;
}
int GetMaxLightCount_id262()
{
    return TMaxLightCount_id197;
}
void PrepareDirectLights_id257()
{
}
void PrepareDirectLight_id234(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id95(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id96(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id97(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id98(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id236()
{
    return LightCount_id182;
}
int GetMaxLightCount_id238()
{
    return TMaxLightCount_id183;
}
void PrepareDirectLights_id232()
{
}
void PrepareDirectLight_id221(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id84(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id85(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id86(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id87(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id225(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
int GetMaxLightCount_id224(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
void PrepareDirectLights_id219()
{
}
void PrepareDirectLight_id208(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id73(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id74(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id75(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id76(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id213(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
int GetMaxLightCount_id212(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
void PrepareDirectLights_id211(inout PS_STREAMS streams)
{
    PrepareLightData_id80(streams);
}
float3 ComputeDirectLightContribution_id313(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id229 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id184(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id49(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id50(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id51(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id52(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id186()
{
    return LightCount_id86;
}
int GetMaxLightCount_id187()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id182()
{
}
void PrepareForLightingAndShading_id318()
{
}
void PrepareMaterialForLightingAndShading_id173(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id172(inout PS_STREAMS streams)
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
float4 Compute_id311()
{
    return constantColor_id226;
}
void ResetStream_id175(inout PS_STREAMS streams)
{
    ResetStream_id174();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id355(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id172(streams);
    PrepareMaterialForLightingAndShading_id173(streams);

    {
        PrepareForLightingAndShading_id318();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id182();
        const int maxLightCount = GetMaxLightCount_id187();
        int count = GetLightCount_id186();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id184(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id313(streams);
            }
        }
    }

    {
        PrepareDirectLights_id211(streams);
        const int maxLightCount = GetMaxLightCount_id212(streams);
        int count = GetLightCount_id213(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id208(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id313(streams);
            }
        }
    }

    {
        PrepareDirectLights_id219();
        const int maxLightCount = GetMaxLightCount_id224(streams);
        int count = GetLightCount_id225(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id221(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id313(streams);
            }
        }
    }

    {
        PrepareDirectLights_id232();
        const int maxLightCount = GetMaxLightCount_id238();
        int count = GetLightCount_id236();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id234(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id313(streams);
            }
        }
    }

    {
        PrepareDirectLights_id257();
        const int maxLightCount = GetMaxLightCount_id262();
        int count = GetLightCount_id261();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id259(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id313(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id302(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id314(streams);
        }
    }

    {
        PrepareEnvironmentLight_id307(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id314(streams);
        }
    }

    {
        PrepareEnvironmentLight_id310(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id314(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id229 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id321();
    }
}
void Compute_id339(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id311();
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id176(inout PS_STREAMS streams)
{
    ResetStream_id175(streams);
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
void Compute_id46(inout PS_STREAMS streams)
{

    {
        Compute_id339(streams);
    }

    {
        Compute_id355(streams);
    }
}
void ResetStream_id45(inout PS_STREAMS streams)
{
    ResetStream_id176(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
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
float4 Compute_id44()
{
    return MaterialIndex_id83;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id45(streams);
    Compute_id46(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
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
    streams.ColorTarget_id2 = Shading_id31(streams);
    streams.ColorTarget1_id3 = Compute_id44();
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
    streams.ScreenPosition_id167 = __input__.ScreenPosition_id167;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id167 /= streams.ScreenPosition_id167.w;
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
    VSMain_id19(streams);
    streams.ScreenPosition_id167 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id167 = streams.ScreenPosition_id167;
    return __output__;
}

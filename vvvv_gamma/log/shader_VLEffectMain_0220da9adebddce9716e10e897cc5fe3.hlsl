/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<2>, ShadowMapReceiverPointCubeMap<2>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 2176]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id180 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id182 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id184 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id185 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id188 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id189 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id190 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id191 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id192 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    constantColor_id206 => Material.DiffuseValue
cbuffer PerView [Size: 1664]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
@C    NearClipPlane_id166 => Camera.NearClipPlane
@C    FarClipPlane_id167 => Camera.FarClipPlane
@C    ZProjection_id168 => Camera.ZProjection
@C    ViewSize_id169 => Camera.ViewSize
@C    AspectRatio_id170 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id84 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id86 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id88 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id89 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id151 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id152 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id153 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id154 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id155 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id156 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id163 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id175 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id176 => LightClustered.ClusterDepthBias
@C    ClusterStride_id177 => LightClustered.ClusterStride
@C    AmbientLight_id194 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id199 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id200 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id202 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id203 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id183 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id183 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id201 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id201 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id122 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id183 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
***************************
*****     Stages      *****
***************************
@G    Vertex => 761d55cce6e70b46a137e172b2136143
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  416 Size:    16 [unused]
//   int LightCount_id180;              // Offset:  432 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  448
//       float InvSquareRadius;         // Offset:  460
//       float3 Color;                  // Offset:  464
//
//   } Lights_id182[2];                 // Offset:  448 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id184; // Offset:  512 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id185;// Offset:  520 Size:     8 [unused]
//   float4x4 WorldToShadow_id188[12];  // Offset:  528 Size:   768 [unused]
//   float4x4 InverseWorldToShadow_id189[12];// Offset: 1296 Size:   768 [unused]
//   float DepthBiases_id190[2];        // Offset: 2064 Size:    20 [unused]
//   float OffsetScales_id191[2];       // Offset: 2096 Size:    20 [unused]
//   float2 DepthParameters_id192[2];   // Offset: 2128 Size:    24 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 2160 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id166;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id167;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id168;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id169;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id170;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id84;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id86;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id88;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id89;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id151[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id152[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id153[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id154[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id155;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id156;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id163[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id175;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id176;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id177;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id194;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id199[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id200;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id202;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id203;             // Offset: 1632 Size:     4 [unused]
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
// SCREENPOSITION_ID165_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id165.x; o3.y <- <VSMain return value>.ScreenPosition_id165.y; o3.z <- <VSMain return value>.ScreenPosition_id165.z; o3.w <- <VSMain return value>.ScreenPosition_id165.w; 
//   o2.x <- <VSMain return value>.DepthVS_id22; o2.y <- <VSMain return value>.normalWS_id18.x; o2.z <- <VSMain return value>.normalWS_id18.y; o2.w <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 1369 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_0220da9adebddce9716e10e897cc5fe3.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 1450
mov o0.xyzw, r0.xyzw

#line 1332
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1450
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1404
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1450
ret 
// Approximately 16 instruction slots used
@G    Pixel => 84c8f1eea3b6bb33a7835fc90d6daabd
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  416 Size:    16 [unused]
//   int LightCount_id180;              // Offset:  432 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  448
//       float InvSquareRadius;         // Offset:  460
//       float3 Color;                  // Offset:  464
//
//   } Lights_id182[2];                 // Offset:  448 Size:    60
//   float2 ShadowMapTextureSize_id184; // Offset:  512 Size:     8
//   float2 ShadowMapTextureTexelSize_id185;// Offset:  520 Size:     8
//   float4x4 WorldToShadow_id188[12];  // Offset:  528 Size:   768
//   float4x4 InverseWorldToShadow_id189[12];// Offset: 1296 Size:   768 [unused]
//   float DepthBiases_id190[2];        // Offset: 2064 Size:    20
//   float OffsetScales_id191[2];       // Offset: 2096 Size:    20
//   float2 DepthParameters_id192[2];   // Offset: 2128 Size:    24
//   float4 _padding_PerDraw_Lighting;  // Offset: 2160 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id206;        // Offset:    0 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id166;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id167;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id168;          // Offset:  360 Size:     8
//   float2 ViewSize_id169;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id170;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id84;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id86;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id88;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id89;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id151[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id152[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id153[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id154[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id155;           // Offset: 1296 Size:     4
//   float OffsetScales_id156;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id163[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id175;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id176;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id177;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id194;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id199[9];   // Offset: 1424 Size:   140
//   float MipCount_id200;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id202;          // Offset: 1568 Size:    64
//   float Intensity_id203;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearClampCompareLessEqualSampler_id122  sampler_c      NA          NA             s0      1 
// ShadowMapTexture_id183            texture  float4          2d             t0      1 
// ShadowMapTexture_id87             texture  float4          2d             t1      1 
// LightClusters_id173               texture   uint2          3d             t2      1 
// LightIndices_id174                texture    uint         buf             t3      1 
// PointLights_id178                 texture  float4         buf             t4      1 
// SpotLights_id179                  texture  float4         buf             t5      1 
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
// SCREENPOSITION_ID165_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[135], dynamicIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[103], dynamicIndexed
dcl_sampler s0, mode_comparison
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
dcl_temps 16
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id22; v2.y <- __input__.normalWS_id18.x; v2.z <- __input__.normalWS_id18.y; v2.w <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.ScreenPosition_id165.x; v3.y <- __input__.ScreenPosition_id165.y; v3.z <- __input__.ScreenPosition_id165.z; v3.w <- __input__.ScreenPosition_id165.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1431 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_0220da9adebddce9716e10e897cc5fe3.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id165.x; r0.y <- streams.ScreenPosition_id165.y

#line 1398
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1399
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1180
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z

#line 805
dp2 r0.z, cb2[82].xxxx, cb2[28].zzzz

#line 797
mov r2.w, l(1.000000)

#line 1194
mov r3.xyz, r1.xyzx  // r3.x <- streams.normalWS_id18.x; r3.y <- streams.normalWS_id18.y; r3.z <- streams.normalWS_id18.z
mov r3.w, v0.x  // r3.w <- streams.PositionWS_id21.x
mov r4.yz, v0.yyzy  // r4.y <- streams.PositionWS_id21.y; r4.z <- streams.PositionWS_id21.z
mov r5.xyz, cb1[0].xyzx  // r5.x <- streams.matDiffuseVisible_id68.x; r5.y <- streams.matDiffuseVisible_id68.y; r5.z <- streams.matDiffuseVisible_id68.z
mov r6.xyz, l(0,0,0,0)  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r0.w, v2.x  // r0.w <- streams.DepthVS_id22
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r4.w, r1.w, l(1)
  breakc_nz r4.w

#line 1196
  ige r4.w, r1.w, cb2[25].x
  if_nz r4.w

#line 1198
    break 

#line 1199
  endif 

#line 1120
  dp3 r4.w, r3.xyzx, -cb2[26].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id48

#line 956
  ishl r5.w, r1.w, l(2)  // r5.w <- cascadeIndexBase

#line 963
  lt r6.w, cb2[r5.w + 83].x, r0.w

#line 966
  and r6.w, r6.w, l(1)  // r6.w <- cascadeIndex

#line 963
  bfi r7.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r1.wwww, l(1, 2, 0, 0)
  lt r7.x, cb2[r7.x + 83].x, r0.w

#line 966
  movc r6.w, r7.x, l(2), r6.w

#line 963
  lt r7.x, cb2[r7.y + 83].x, r0.w

#line 966
  movc r6.w, r7.x, l(3), r6.w

#line 804
  add r7.y, -r4.w, l(1.000000)
  max r7.y, r7.y, l(0.000000)  // r7.y <- normalOffsetScale

#line 805
  mul r7.y, r0.z, r7.y

#line 971
  mov r4.x, r3.w
  mad r2.xyz, r7.yyyy, r3.xyzx, r4.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 797
  bfi r4.x, l(30), l(2), r1.w, r6.w
  ishl r7.y, r6.w, l(2)
  bfi r7.y, l(30), l(4), r1.w, r7.y
  dp4 r8.x, r2.xyzw, cb2[r7.y + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r2.xyzw, cb2[r7.y + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r7.z, r2.xyzw, cb2[r7.y + 31].xyzw  // r7.z <- shadowPosition.z
  dp4 r7.y, r2.xyzw, cb2[r7.y + 32].xyzw  // r7.y <- shadowPosition.w

#line 798
  add r8.z, r7.z, -cb2[81].x  // r8.z <- shadowPosition.z

#line 799
  div r7.yzw, r8.xxyz, r7.yyyy  // r7.y <- shadowPosition.x; r7.z <- shadowPosition.y; r7.w <- shadowPosition.z

#line 610
  mad r7.yz, r7.yyzy, cb2[28].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r8.xy, r7.yzyy  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 611
  add r7.yz, r7.yyzy, -r8.xxyx  // r7.y <- st.x; r7.z <- st.y

#line 612
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 613
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 419
  mad r8.zw, -r7.zzzy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r8.z <- uvW0.y; r8.w <- uvW0.x

#line 421
  mad r9.xy, r7.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uvW2.x; r9.y <- uvW2.y

#line 422
  mad r9.zw, -r7.yyyz, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r9.zw, r9.zzzw, r8.wwwz
  add r10.xw, r9.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 423
  add r9.zw, r7.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000)
  mul r10.yz, r9.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 424
  div r7.yz, r7.yyzy, r9.xxyx
  add r11.xy, r7.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 425
  mul r7.y, r8.z, r8.w

#line 426
  mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r8.xyxy

#line 430
  mov r11.zw, r10.wwwy

#line 428
  mul r9.zw, r8.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 429
  mad r13.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy

#line 430
  mad r14.xyzw, r11.xzxw, cb2[28].zwzw, r8.xyxy

#line 431
  mov r10.y, r11.y
  mul r8.zw, r8.zzzw, r9.xxxy

#line 432
  mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 433
  mad r8.xy, r11.xyxx, cb2[28].zwzz, r8.xyxx
  mul r7.z, r9.y, r9.x

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.x, r12.xyxx, t1.xxxx, s0, r7.w  // r9.x <- <SampleTextureAndCompare_id61 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.y, r12.zwzz, t1.xxxx, s0, r7.w  // r9.y <- <SampleTextureAndCompare_id61 return value>

#line 698
  mul r9.y, r9.y, r9.z
  mad r7.y, r7.y, r9.x, r9.y  // r7.y <- shadow

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.x, r14.xyxx, t1.xxxx, s0, r7.w  // r9.x <- <SampleTextureAndCompare_id61 return value>

#line 698
  mad r7.y, r8.z, r9.x, r7.y

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r13.xyxx, t1.xxxx, s0, r7.w  // r8.z <- <SampleTextureAndCompare_id61 return value>

#line 698
  mad r7.y, r9.w, r8.z, r7.y

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r13.zwzz, t1.xxxx, s0, r7.w

#line 698
  mad r7.y, r8.z, l(49.000000), r7.y

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r14.zwzz, t1.xxxx, s0, r7.w

#line 698
  mad r7.y, r11.z, r8.z, r7.y

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r10.xyxx, t1.xxxx, s0, r7.w

#line 698
  mad r7.y, r8.w, r8.z, r7.y

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r10.zwzz, t1.xxxx, s0, r7.w

#line 698
  mad r7.y, r11.w, r8.z, r7.y

#line 605
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r8.xyxx, t1.xxxx, s0, r7.w  // r7.w <- <SampleTextureAndCompare_id61 return value>

#line 698
  mad r7.y, r7.z, r7.w, r7.y

#line 700
  mul r8.xyz, r7.yyyy, l(0.006944, 0.006944, 0.006944, 0.000000)  // r8.z <- shadow

#line 977
  ilt r7.z, l(0), r6.w
  if_nz r7.z

#line 979
    iadd r7.z, r4.x, l(-1)
    add r7.z, -cb2[r7.z + 83].x, cb2[r4.x + 83].x  // r7.z <- splitSize

#line 980
  else 
    mov r7.z, cb2[r4.x + 83].x  // r7.z <- splitSize
  endif 

#line 981
  add r4.x, -r0.w, cb2[r4.x + 83].x
  div r4.x, r4.x, r7.z  // r4.x <- splitDist

#line 982
  lt r7.z, r4.x, l(0.200000)
  if_nz r7.z

#line 985
    if_nz r7.x

#line 987
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 984
      mul_sat r4.x, r4.x, l(5.000000)
      mad r7.x, r4.x, l(-2.000000), l(3.000000)
      mul r4.x, r4.x, r4.x
      mul r4.x, r4.x, r7.x  // r4.x <- lerpAmt

#line 797
      ishl r5.w, r5.w, l(2)
      imad r5.w, r6.w, l(4), r5.w
      iadd r5.w, r5.w, l(4)
      dp4 r9.x, r2.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r2.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
      dp4 r6.w, r2.xyzw, cb2[r5.w + 31].xyzw  // r6.w <- shadowPosition.z
      dp4 r2.x, r2.xyzw, cb2[r5.w + 32].xyzw  // r2.x <- shadowPosition.w

#line 798
      add r9.z, r6.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 799
      div r2.xyz, r9.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 610
      mad r2.xy, r2.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r7.xz, r2.xxyx  // r7.x <- base_uv.x; r7.z <- base_uv.y

#line 611
      add r2.xy, r2.xyxx, -r7.xzxx  // r2.x <- st.x; r2.y <- st.y

#line 612
      add r7.xz, r7.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)

#line 613
      mul r7.xz, r7.xxzx, cb2[28].zzwz

#line 419
      mad r9.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 421
      mad r9.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 422
      mad r10.xy, -r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r10.xy, r10.xyxx, r9.yxyy
      add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 423
      add r11.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 424
      div r2.xy, r2.xyxx, r9.zwzz
      add r11.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 433
      mul r2.xy, r9.xwxx, r9.yzyy

#line 426
      mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r7.xzxz

#line 430
      mov r11.zw, r10.wwwy

#line 428
      mul r13.xy, r9.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 429
      mad r14.xyzw, r10.xyzy, cb2[28].zwzw, r7.xzxz

#line 430
      mad r15.xyzw, r11.xzxw, cb2[28].zwzw, r7.xzxz

#line 431
      mov r10.y, r11.y
      mul r9.xy, r9.xyxx, r9.zwzz

#line 432
      mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r7.xzxz
      mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 433
      mad r7.xz, r11.xxyx, cb2[28].zzwz, r7.xxzx

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.xyxx, t1.xxxx, s0, r2.z  // r5.w <- <SampleTextureAndCompare_id61 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r12.zwzz, t1.xxxx, s0, r2.z  // r6.w <- <SampleTextureAndCompare_id61 return value>

#line 698
      mul r6.w, r6.w, r13.x
      mad r2.x, r2.x, r5.w, r6.w  // r2.x <- shadow

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t1.xxxx, s0, r2.z  // r5.w <- <SampleTextureAndCompare_id61 return value>

#line 698
      mad r2.x, r9.x, r5.w, r2.x

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.xyxx, t1.xxxx, s0, r2.z

#line 698
      mad r2.x, r13.y, r5.w, r2.x

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.zwzz, t1.xxxx, s0, r2.z

#line 698
      mad r2.x, r5.w, l(49.000000), r2.x

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t1.xxxx, s0, r2.z

#line 698
      mad r2.x, r11.z, r5.w, r2.x

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r10.xyxx, t1.xxxx, s0, r2.z

#line 698
      mad r2.x, r9.y, r5.w, r2.x

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r10.zwzz, t1.xxxx, s0, r2.z

#line 698
      mad r2.x, r11.w, r5.w, r2.x

#line 605
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r7.xzxx, t1.xxxx, s0, r2.z  // r2.z <- <SampleTextureAndCompare_id61 return value>

#line 698
      mad r2.x, r2.y, r2.z, r2.x

#line 700
      mul r2.x, r2.x, l(0.006944)

#line 991
      mad r2.y, r7.y, l(0.006944), -r2.x
      mad r8.xyz, r4.xxxx, r2.yyyy, r2.xxxx  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 992
    endif 

#line 993
  endif 

#line 1122
  mul r2.xyz, r8.xyzx, cb2[27].xyzx
  mul r2.xyz, r4.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id43.x; r2.y <- streams.lightColorNdotL_id43.y; r2.z <- streams.lightColorNdotL_id43.z

#line 1108
  mul r2.xyz, r2.xyzx, r5.xyzx

#line 1204
  mad r6.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 1194
  iadd r1.w, r1.w, l(1)

#line 1206
endloop 

#line 940
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 941
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 942
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 943
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 942
ftoi r2.xyz, r0.xyzx  // r2.z <- slice

#line 943
mov r2.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r2.xyzw, t2.xyzw  // r0.x <- streams.lightData_id171.x; r0.y <- streams.lightData_id171.y

#line 1099
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id182 return value>

#line 1214
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id18.x; r2.y <- streams.normalWS_id18.y; r2.z <- streams.normalWS_id18.z
mov r2.w, v0.x  // r2.w <- streams.PositionWS_id21.x
mov r3.yz, v0.yyzy  // r3.y <- streams.PositionWS_id21.y; r3.z <- streams.PositionWS_id21.z
mov r4.xyz, cb1[0].xyzx  // r4.x <- streams.matDiffuseVisible_id68.x; r4.y <- streams.matDiffuseVisible_id68.y; r4.z <- streams.matDiffuseVisible_id68.z
mov r5.xyz, r6.xyzx  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z
mov r7.x, r0.x  // r7.x <- streams.lightIndex_id172
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 1216
  if_nz r1.w

#line 1218
    break 

#line 1219
  endif 

#line 927
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r7.xxxx, t3.yzwx  // r1.w <- realLightIndex

#line 928
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id172

#line 930
  ishl r3.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.xyzw, r3.wwww, t4.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w

#line 931
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r1.wwww, t4.wxyz  // r7.y <- pointLight2.x; r7.z <- pointLight2.y; r7.w <- pointLight2.z

#line 664
  mov r3.x, r2.w
  add r8.xyz, -r3.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 665
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r3.x, r1.w  // r3.x <- lightVectorLength

#line 666
  div r8.xyz, r8.xyzx, r3.xxxx  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 551
  max r3.x, r1.w, l(0.000100)
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x  // r3.x <- attenuation

#line 401
  mul r1.w, r8.w, r1.w  // r1.w <- factor

#line 402
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 403
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id75 return value>

#line 552
  mul r1.w, r1.w, r3.x  // r1.w <- attenuation

#line 1085
  dp3 r3.x, r2.xyzx, r8.xyzx
  max r3.x, r3.x, l(0.000100)  // r3.x <- streams.NdotL_id48

#line 1087
  mul r7.yzw, r1.wwww, r7.yyzw
  mul r7.yzw, r3.xxxx, r7.yyzw  // r7.y <- streams.lightColorNdotL_id43.x; r7.z <- streams.lightColorNdotL_id43.y; r7.w <- streams.lightColorNdotL_id43.z

#line 1108
  mul r7.yzw, r7.yyzw, r4.xxyz

#line 1224
  mad r5.xyz, r7.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r5.xyzx

#line 1214
  iadd r0.w, r0.w, l(1)

#line 1226
endloop   // r7.x <- streams.lightIndex_id172

#line 1077
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id194 return value>

#line 1234
mov r0.yzw, v0.xxyz  // r0.y <- streams.PositionWS_id21.x; r0.z <- streams.PositionWS_id21.y; r0.w <- streams.PositionWS_id21.z
mov r2.xyz, r1.xyzx
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id68.x; r3.y <- streams.matDiffuseVisible_id68.y; r3.z <- streams.matDiffuseVisible_id68.z
mov r4.xyz, r5.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r7.x  // r1.w <- streams.lightIndex_id172
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 1236
  if_nz r3.w

#line 1238
    break 

#line 1239
  endif 

#line 899
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t3.yzwx  // r3.w <- realLightIndex

#line 900
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id172

#line 902
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r6.xyz, r4.wwww, t5.xyzw  // r6.x <- spotLight1.x; r6.y <- spotLight1.y; r6.z <- spotLight1.z

#line 905
  bfi r7.yzw, l(0, 30, 30, 30), l(0, 2, 2, 2), r3.wwww, l(0, 1, 2, 3)

#line 903
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.yyyy, t5.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 904
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t5.xyzw  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.z <- spotLight3.z

#line 905
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r7.wwww, t5.wxyz  // r7.y <- spotLight4.x; r7.z <- spotLight4.y; r7.w <- spotLight4.z

#line 651
  add r6.xyz, -r0.yzwy, r6.xyzx  // r6.x <- lightVector.x; r6.y <- lightVector.y; r6.z <- lightVector.z

#line 652
  dp3 r3.w, r6.xyzx, r6.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 653
  div r6.xyz, r6.xyzx, r4.wwww  // r6.x <- lightVectorNorm.x; r6.y <- lightVectorNorm.y; r6.z <- lightVectorNorm.z

#line 544
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 395
  mul r3.w, r9.z, r3.w  // r3.w <- factor

#line 396
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 397
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id86 return value>

#line 545
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 536
  dp3 r4.w, -r8.xyzx, r6.xyzx  // r4.w <- cd

#line 537
  mad_sat r4.w, r4.w, r9.x, r9.y  // r4.w <- attenuation

#line 538
  mul r4.w, r4.w, r4.w

#line 659
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1063
  dp3 r4.w, r2.xyzx, r6.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id48

#line 1065
  mul r6.xyz, r3.wwww, r7.yzwy
  mul r6.xyz, r4.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id43.x; r6.y <- streams.lightColorNdotL_id43.y; r6.z <- streams.lightColorNdotL_id43.z

#line 1108
  mul r6.xyz, r3.xyzx, r6.xyzx

#line 1244
  mad r4.xyz, r6.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1234
  iadd r2.w, r2.w, l(1)

#line 1246
endloop   // r1.w <- streams.lightIndex_id172

#line 752
add r0.x, cb0[32].z, cb0[32].z

#line 860
mov r2.w, l(4)
mov r3.xz, l(0,0,2,0)

#line 866
mov r5.w, l(1.000000)

#line 1254
mov r0.yzw, v0.xxyz
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id18.x; r6.y <- streams.normalWS_id18.y; r6.z <- streams.normalWS_id18.z
mov r7.xyz, cb1[0].xyzx  // r7.x <- streams.matDiffuseVisible_id68.x; r7.y <- streams.matDiffuseVisible_id68.y; r7.z <- streams.matDiffuseVisible_id68.z
mov r8.xyz, r4.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r4.w, r1.w, l(2)
  breakc_nz r4.w

#line 1256
  ige r4.w, r1.w, cb0[27].x
  if_nz r4.w

#line 1258
    break 

#line 1259
  endif 

#line 879
  ishl r4.w, r1.w, l(1)

#line 643
  add r9.xyz, -r0.yzwy, cb0[r4.w + 28].xyzx  // r9.x <- lightVector.x; r9.y <- lightVector.y; r9.z <- lightVector.z

#line 644
  dp3 r6.w, r9.xyzx, r9.xyzx
  sqrt r7.w, r6.w  // r7.w <- lightVectorLength

#line 645
  div r9.xyz, r9.xyzx, r7.wwww  // r9.x <- lightVectorNorm.x; r9.y <- lightVectorNorm.y; r9.z <- lightVectorNorm.z

#line 530
  max r7.w, r6.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 389
  mul r6.w, r6.w, cb0[r4.w + 28].w  // r6.w <- factor

#line 390
  mad r6.w, -r6.w, r6.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- smoothFactor

#line 391
  mul r6.w, r6.w, r6.w  // r6.w <- <SmoothDistanceAttenuation_id97 return value>

#line 531
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 1041
  dp3 r7.w, r6.xyzx, r9.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id48

#line 838
  add r2.xyz, r0.yzwy, -cb0[r4.w + 28].xyzx  // r2.x <- lightDelta.x; r2.y <- lightDelta.y; r2.z <- lightDelta.z

#line 839
  dp3 r8.w, r2.xyzx, r2.xyzx
  sqrt r8.w, r8.w  // r8.w <- distanceToLight

#line 840
  div r9.xyz, r2.xyzx, r8.wwww  // r9.x <- direction.x; r9.y <- direction.y; r9.z <- direction.z

#line 842
  max r8.w, |r9.z|, |r9.y|
  max r8.w, r8.w, |r9.x|  // r8.w <- longestAxis

#line 851
  eq r9.xy, r8.wwww, |r9.xyxx|

#line 860
  mov r3.yw, r2.zzzx
  movc r2.xy, r9.yyyy, r2.wyww, r3.xyxx  // r2.x <- faceIndex; r2.y <- lightSpaceZ
  movc r2.xy, r9.xxxx, r3.zwzz, r2.xyxx

#line 869
  add r2.z, |r2.y|, -cb0[r1.w + 129].x  // r2.z <- lightSpaceZ

#line 870
  div r2.z, cb0[r1.w + 133].y, r2.z
  add r2.z, r2.z, cb0[r1.w + 133].x  // r2.z <- depth

#line 871
  lt r3.y, r2.z, l(0.000000)
  lt r3.w, l(1.000000), r2.z
  or r3.y, r3.w, r3.y

#line 873
  if_z r3.y

#line 861
    lt r3.y, l(0.000000), r2.y
    lt r2.y, r2.y, l(0.000000)
    iadd r2.y, -r3.y, r2.y
    itof r2.y, r2.y  // r2.y <- lightSpaceZDirection

#line 862
    min r2.y, r2.y, l(0.000000)
    ftoi r2.y, -r2.y
    iadd r2.x, r2.y, r2.x

#line 863
    imad r2.x, r1.w, l(6), r2.x

#line 751
    add r2.y, -r7.w, l(1.000000)
    max r2.y, r2.y, l(0.000000)  // r2.y <- normalOffsetScale

#line 752
    mul r3.y, r0.x, cb0[r1.w + 131].x
    mul r2.y, r2.y, r3.y

#line 865
    mad r5.xyz, r2.yyyy, r6.xyzx, r0.yzwy  // r5.x <- positionWS.x; r5.y <- positionWS.y; r5.z <- positionWS.z

#line 866
    ishl r2.x, r2.x, l(2)
    dp4 r9.x, r5.xyzw, cb0[r2.x + 33].xyzw  // r9.x <- projectedPosition.x
    dp4 r9.y, r5.xyzw, cb0[r2.x + 34].xyzw  // r9.y <- projectedPosition.y
    dp4 r2.x, r5.xyzw, cb0[r2.x + 36].xyzw  // r2.x <- projectedPosition.w

#line 867
    div r2.xy, r9.xyxx, r2.xxxx  // r2.x <- projectedPosition.x; r2.y <- projectedPosition.y

#line 622
    mad r2.xy, r2.xyxx, cb0[32].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
    round_ni r3.yw, r2.xxxy  // r3.y <- base_uv.x; r3.w <- base_uv.y

#line 623
    add r2.xy, r2.xyxx, -r3.ywyy  // r2.x <- st.x; r2.y <- st.y

#line 624
    add r3.yw, r3.yyyw, l(0.000000, -0.500000, 0.000000, -0.500000)

#line 625
    mul r3.yw, r3.yyyw, cb0[32].zzzw

#line 327
    mad r5.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r5.x <- uvW0.y; r5.y <- uvW0.x

#line 329
    mad r9.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uvW2.x; r9.y <- uvW2.y

#line 330
    mad r9.zw, -r2.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
    div r9.zw, r9.zzzw, r5.yyyx
    add r10.xw, r9.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 331
    add r9.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
    mul r10.yz, r9.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 332
    div r2.xy, r2.xyxx, r9.xyxx
    add r11.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 333
    mul r2.x, r5.x, r5.y

#line 334
    mad r12.xyzw, r10.xwzw, cb0[32].zwzw, r3.ywyw

#line 338
    mov r11.zw, r10.wwwy

#line 336
    mul r9.zw, r5.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 337
    mad r13.xyzw, r10.xyzy, cb0[32].zwzw, r3.ywyw

#line 338
    mad r14.xyzw, r11.xzxw, cb0[32].zwzw, r3.ywyw

#line 339
    mov r10.y, r11.y
    mul r5.xy, r5.xyxx, r9.xyxx

#line 340
    mad r10.xyzw, r10.xyzy, cb0[32].zwzw, r3.ywyw
    mul r11.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 341
    mad r3.yw, r11.xxxy, cb0[32].zzzw, r3.yyyw
    mul r2.y, r9.y, r9.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r12.xyxx, t0.xxxx, s0, r2.z  // r5.z <- <SampleTextureAndCompare_id109 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r12.zwzz, t0.xxxx, s0, r2.z  // r8.w <- <SampleTextureAndCompare_id109 return value>

#line 743
    mul r8.w, r8.w, r9.z
    mad r2.x, r2.x, r5.z, r8.w  // r2.x <- shadow

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r14.xyxx, t0.xxxx, s0, r2.z  // r5.z <- <SampleTextureAndCompare_id109 return value>

#line 743
    mad r2.x, r5.x, r5.z, r2.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r13.xyxx, t0.xxxx, s0, r2.z  // r5.x <- <SampleTextureAndCompare_id109 return value>

#line 743
    mad r2.x, r9.w, r5.x, r2.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r13.zwzz, t0.xxxx, s0, r2.z

#line 743
    mad r2.x, r5.x, l(49.000000), r2.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r14.zwzz, t0.xxxx, s0, r2.z

#line 743
    mad r2.x, r11.z, r5.x, r2.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r10.xyxx, t0.xxxx, s0, r2.z

#line 743
    mad r2.x, r5.y, r5.x, r2.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r10.zwzz, t0.xxxx, s0, r2.z

#line 743
    mad r2.x, r11.w, r5.x, r2.x

#line 617
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r3.ywyy, t0.xxxx, s0, r2.z  // r2.z <- <SampleTextureAndCompare_id109 return value>

#line 743
    mad r2.x, r2.y, r2.z, r2.x

#line 745
    mul r2.xyz, r2.xxxx, l(0.006944, 0.006944, 0.006944, 0.000000)  // r2.z <- shadow

#line 874
  else   // Prior locations: r9.z <- direction.z; r8.w <- longestAxis; r2.x <- faceIndex; r2.z <- depth
    mov r2.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1043
  mul r5.xyz, r6.wwww, cb0[r4.w + 29].xyzx
  mul r2.xyz, r2.xyzx, r5.xyzx
  mul r2.xyz, r7.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id43.x; r2.y <- streams.lightColorNdotL_id43.y; r2.z <- streams.lightColorNdotL_id43.z

#line 1108
  mul r2.xyz, r2.xyzx, r7.xyzx

#line 1264
  mad r8.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx

#line 1254
  iadd r1.w, r1.w, l(1)

#line 1266
endloop 

#line 1018
dp3 r0.x, r1.xyzx, cb2[98].xyzx  // r0.x <- sampleDirection.x
dp3 r0.y, r1.xyzx, cb2[99].xyzx  // r0.y <- sampleDirection.y
dp3 r0.z, r1.xyzx, cb2[100].xyzx  // r0.z <- sampleDirection.z

#line 710
mul r0.w, r0.y, r0.y  // r0.w <- y2

#line 711
mul r1.x, r0.z, r0.z  // r1.x <- z2

#line 715
mad r1.yzw, cb2[90].xxyz, r0.yyyy, cb2[89].xxyz  // r1.y <- color.x; r1.z <- color.y; r1.w <- color.z

#line 716
mad r1.yzw, cb2[91].xxyz, -r0.zzzz, r1.yyzw

#line 717
mad r1.yzw, cb2[92].xxyz, r0.xxxx, r1.yyzw

#line 720
mul r2.xyz, r0.yyyy, cb2[93].xyzx
mad r1.yzw, r2.xxyz, r0.xxxx, r1.yyzw

#line 721
mul r2.xyz, r0.yyyy, cb2[94].xyzx
mad r1.yzw, r2.xxyz, -r0.zzzz, r1.yyzw

#line 722
mad r0.y, r1.x, l(3.000000), l(-1.000000)
mad r1.xyz, cb2[95].xyzx, r0.yyyy, r1.yzwy  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 723
mul r2.xyz, r0.xxxx, cb2[96].xyzx
mad r1.xyz, r2.xyzx, -r0.zzzz, r1.xyzx

#line 724
mad r0.x, r0.x, r0.x, -r0.w
mad r0.xyz, cb2[97].xyzx, r0.xxxx, r1.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 1020
mul r0.xyz, r0.xyzx, cb2[102].xxxx  // r0.x <- streams.envLightDiffuseColor_id46.x; r0.y <- streams.envLightDiffuseColor_id46.y; r0.z <- streams.envLightDiffuseColor_id46.z

#line 1029
mul r0.xyz, r0.xyzx, cb1[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id258 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id258 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id258 return value>.z

#line 1282
mad r0.xyz, cb1[0].xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1293
mad o0.xyz, r8.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1435
mov o0.w, cb1[0].w
ret 
// Approximately 412 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id85 = 1;
const static int TCascadeCountBase_id149 = 4;
const static int TLightCountBase_id150 = 1;
const static int TCascadeCount_id157 = 4;
const static int TLightCount_id158 = 1;
const static bool TBlendCascades_id159 = true;
const static bool TDepthRangeAuto_id160 = true;
const static bool TCascadeDebug_id161 = false;
const static bool TComputeTransmittance_id162 = false;
const static int TFilterSize_id164 = 5;
const static int TMaxLightCount_id181 = 2;
const static int TLightCount_id187 = 2;
const static int TFilterSize_id193 = 5;
const static int TOrder_id196 = 3;
const static int TOrder_id198 = 3;
static const float PI_id209 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id210 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id165;
    float3 normalWS_id18;
    float4 PositionWS_id21;
    float DepthVS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id16;
    float3 viewWS_id67;
    float3 shadingColor_id72;
    float matBlend_id39;
    float3 matNormal_id50;
    float4 matColorBase_id51;
    float4 matDiffuse_id52;
    float3 matDiffuseVisible_id68;
    float3 matSpecular_id54;
    float3 matSpecularVisible_id70;
    float matSpecularIntensity_id55;
    float matGlossiness_id53;
    float alphaRoughness_id69;
    float matAmbientOcclusion_id56;
    float matAmbientOcclusionDirectLightingFactor_id57;
    float matCavity_id58;
    float matCavityDiffuse_id59;
    float matCavitySpecular_id60;
    float4 matEmissive_id61;
    float matEmissiveIntensity_id62;
    float matScatteringStrength_id63;
    float2 matDiffuseSpecularAlphaBlend_id64;
    float3 matAlphaBlendColor_id65;
    float matAlphaDiscard_id66;
    float shadingColorAlpha_id73;
    float3 lightPositionWS_id40;
    float3 lightDirectionWS_id41;
    float3 lightColor_id42;
    float3 lightColorNdotL_id43;
    float3 lightSpecularColorNdotL_id44;
    float lightAttenuation_id45;
    float3 envLightDiffuseColor_id46;
    float3 envLightSpecularColor_id47;
    float lightDirectAmbientOcclusion_id49;
    float NdotL_id48;
    float NdotV_id71;
    float thicknessWS_id83;
    float3 shadowColor_id82;
    float3 H_id74;
    float NdotH_id75;
    float LdotH_id76;
    float VdotH_id77;
    uint2 lightData_id171;
    int lightIndex_id172;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id165 : SCREENPOSITION_ID165_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float4 PositionH_id23;
    float3 meshNormalWS_id16;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float DepthVS_id22;
    float3 normalWS_id18;
    float4 ScreenPosition_id165;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id165 : SCREENPOSITION_ID165_SEM;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
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
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
    float4 _padding_PerDraw_Default;
    int LightCount_id180;
    PointLightData Lights_id182[TMaxLightCount_id181];
    float2 ShadowMapTextureSize_id184;
    float2 ShadowMapTextureTexelSize_id185;
    float4x4 WorldToShadow_id188[TLightCount_id187 * 6];
    float4x4 InverseWorldToShadow_id189[TLightCount_id187 * 6];
    float DepthBiases_id190[TLightCount_id187];
    float OffsetScales_id191[TLightCount_id187];
    float2 DepthParameters_id192[TLightCount_id187];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 constantColor_id206;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
    float NearClipPlane_id166 = 1.0f;
    float FarClipPlane_id167 = 100.0f;
    float2 ZProjection_id168;
    float2 ViewSize_id169;
    float AspectRatio_id170;
    float4 _padding_PerView_Default;
    int LightCount_id84;
    DirectionalLightData Lights_id86[TMaxLightCount_id85];
    float2 ShadowMapTextureSize_id88;
    float2 ShadowMapTextureTexelSize_id89;
    float4x4 WorldToShadowCascadeUV_id151[TCascadeCountBase_id149 * TLightCountBase_id150];
    float4x4 InverseWorldToShadowCascadeUV_id152[TCascadeCountBase_id149 * TLightCountBase_id150];
    float4x4 ViewMatrices_id153[TCascadeCountBase_id149 * TLightCountBase_id150];
    float2 DepthRanges_id154[TCascadeCountBase_id149 * TLightCountBase_id150];
    float DepthBiases_id155[TLightCountBase_id150];
    float OffsetScales_id156[TLightCountBase_id150];
    float CascadeDepthSplits_id163[TCascadeCount_id157 * TLightCount_id158];
    float ClusterDepthScale_id175;
    float ClusterDepthBias_id176;
    float2 ClusterStride_id177;
    float3 AmbientLight_id194;
    float3 SphericalColors_id199[TOrder_id198 * TOrder_id198];
    float MipCount_id200;
    float4x4 SkyMatrix_id202;
    float Intensity_id203;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id91;
    float2 Texture1TexelSize_id93;
    float2 Texture2TexelSize_id95;
    float2 Texture3TexelSize_id97;
    float2 Texture4TexelSize_id99;
    float2 Texture5TexelSize_id101;
    float2 Texture6TexelSize_id103;
    float2 Texture7TexelSize_id105;
    float2 Texture8TexelSize_id107;
    float2 Texture9TexelSize_id109;
};
Texture2D Texture0_id90;
Texture2D Texture1_id92;
Texture2D Texture2_id94;
Texture2D Texture3_id96;
Texture2D Texture4_id98;
Texture2D Texture5_id100;
Texture2D Texture6_id102;
Texture2D Texture7_id104;
Texture2D Texture8_id106;
Texture2D Texture9_id108;
TextureCube TextureCube0_id110;
TextureCube TextureCube1_id111;
TextureCube TextureCube2_id112;
TextureCube TextureCube3_id113;
Texture3D Texture3D0_id114;
Texture3D Texture3D1_id115;
Texture3D Texture3D2_id116;
Texture3D Texture3D3_id117;
SamplerState Sampler_id118;
SamplerState PointSampler_id119 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id120 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id121 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id122 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id123 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id124 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id125 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id126 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id127 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id128;
SamplerState Sampler1_id129;
SamplerState Sampler2_id130;
SamplerState Sampler3_id131;
SamplerState Sampler4_id132;
SamplerState Sampler5_id133;
SamplerState Sampler6_id134;
SamplerState Sampler7_id135;
SamplerState Sampler8_id136;
SamplerState Sampler9_id137;
Texture2D ShadowMapTexture_id183;
Texture2D ShadowMapTexture_id87;
Texture3D<uint2> LightClusters_id173;
Buffer<uint> LightIndices_id174;
Buffer<float4> PointLights_id178;
Buffer<float4> SpotLights_id179;
TextureCube CubeMap_id201;
float4 Project_id102(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id53(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float Get3x3FilterKernel_id111(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id185, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id185, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id110(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id185, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id185, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id185, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id112(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id183.SampleLevel(LinearBorderSampler_id121, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id102(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id108(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id185, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id185, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id185, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id185, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id185, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id185, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id185, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id185, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id185, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id185, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id97(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id86(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id75(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id63(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id62(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id89, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id64(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id87.SampleLevel(LinearBorderSampler_id121, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id53(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id60(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id89, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id89, uvW3.x * uvW3.y);
    return 2704.0;
}
float SampleAndFilter_id116(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id184;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id185;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id110(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id112(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id115(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id102(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id102(float4(ShadowMapTextureTexelSize_id185.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id102(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id114(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id102(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id102(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id185.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id102(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id113()
{

    {
        return 3.5;
    }
}
float GetDistanceAttenuation_id99(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id97(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id88(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id87(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id86(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id77(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id75(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id68(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id88;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id89;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id62(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id64(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id67(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id53(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id53(float4(ShadowMapTextureTexelSize_id89.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id53(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id66(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id53(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id53(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id89.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id53(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id65()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id61(float2 position, float positionDepth)
{
    return ShadowMapTexture_id87.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id122, position, positionDepth);
}
void CalculatePCFKernelParameters_id59(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id88;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id89;
}
float SampleTextureAndCompare_id109(float2 position, float positionDepth)
{
    return ShadowMapTexture_id183.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id122, position, positionDepth);
}
void CalculatePCFKernelParameters_id107(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id184;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id185;
}
float FilterThickness_id103(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id115(GetFilterRadiusInPixels_id113(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id114(GetFilterRadiusInPixels_id113(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id116(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id98(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id99(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id89(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id87(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id88(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id76(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id77(lightVectorLength, lightInvSquareRadius);
}
float FilterThickness_id55(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id67(GetFilterRadiusInPixels_id65(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id66(GetFilterRadiusInPixels_id65(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id68(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id54(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id59(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id62(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id61(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float4 EvaluateSphericalHarmonics_id125(float3 sphericalColors[TOrder_id196 * TOrder_id196], float3 direction)
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
float FilterShadow_id106(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id107(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id110(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id109(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id105(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id185.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id104(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id103(positionWS, streams.meshNormalWS_id16, float2(0.0f, 1.0f), WorldToShadow_id188[cascadeIndex], InverseWorldToShadow_id189[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id100(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id98(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id90(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id89(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id79(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id76(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
float ComputeThicknessFromCascade_id58(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id149;
    return FilterThickness_id55(pixelPositionWS, meshNormalWS, DepthRanges_id154[arrayIndex], WorldToShadowCascadeUV_id151[arrayIndex], InverseWorldToShadowCascadeUV_id152[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id57(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id151[cascadeIndex + lightIndex * TCascadeCountBase_id149]);
    shadowPosition.z -= DepthBiases_id155[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id54(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id56(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id89.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id241(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id69;
    float mipLevel = sqrt(alpha) * MipCount_id200;
    return CubeMap_id201.SampleLevel(LinearSampler_id120, direction, mipLevel);
}
float4 Compute_id236(float3 direction)
{
    return EvaluateSphericalHarmonics_id125(SphericalColors_id199, direction);
}
void PrepareEnvironmentLight_id129(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
void PrepareEnvironmentLight_id120(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float3 ComputeSpecularTextureProjection_id96(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id95(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id94(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id182[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id83 = ComputeThickness_id104(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id105(OffsetScales_id191[lightIndex], streams.NdotL_id48, streams.normalWS_id18);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id188[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id190[lightIndex];
    float depth = DepthParameters_id192[lightIndex].x + (DepthParameters_id192[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id106(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id93(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id182[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id182[lightIndex].InvSquareRadius;
    data.Color = Lights_id182[lightIndex].Color;
    ProcessLight_id100(streams, data);
}
float3 ComputeSpecularTextureProjection_id85(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id84(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id83(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id82(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id174.Load(streams.lightIndex_id172);
    streams.lightIndex_id172++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id179.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id179.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id179.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id179.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id90(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id74(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id73(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id72(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id71(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id174.Load(streams.lightIndex_id172);
    streams.lightIndex_id172++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id178.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id178.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id79(streams, pointLight);
}
void PrepareLightData_id78(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id168.y / (projectedDepth - ZProjection_id168.x);
    float2 texCoord = float2(streams.ScreenPosition_id165.x + 1, 1 - streams.ScreenPosition_id165.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id175 + ClusterDepthBias_id176), 0));
    streams.lightData_id171 = LightClusters_id173.Load(int4(texCoord * ClusterStride_id177, slice, 0));
    streams.lightIndex_id172 = streams.lightData_id171.x;
}
float3 ComputeSpecularTextureProjection_id50(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id49(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id48(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id157;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id157 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id22 > CascadeDepthSplits_id163[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id56(OffsetScales_id156[lightIndex], streams.NdotL_id48, streams.normalWS_id18);
    if (cascadeIndex < TCascadeCount_id157)
    {
        shadow = ComputeShadowFromCascade_id57(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id163[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id163[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id22) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id157 - 1)
            {
            }
            else if (TBlendCascades_id159)
            {
                float nextShadow = ComputeShadowFromCascade_id57(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id83 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id47(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id42 = Lights_id86[lightIndex].Color;
    streams.lightDirectionWS_id41 = -Lights_id86[lightIndex].DirectionWS;
}
void ResetStream_id144()
{
}
void AfterLightingAndShading_id265()
{
}
void PrepareEnvironmentLight_id254(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
void PrepareEnvironmentLight_id251(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id129(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id56;
    float3 sampleDirection = mul(streams.normalWS_id18, (float3x3)SkyMatrix_id202);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id46 = Compute_id236(sampleDirection).rgb * Intensity_id203 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id64.x;
    sampleDirection = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id202);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id47 = Compute_id241(streams, sampleDirection).rgb * Intensity_id203 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id64.y;
}
float3 ComputeEnvironmentLightContribution_id258(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id68;
    return diffuseColor * streams.envLightDiffuseColor_id46;
}
void PrepareEnvironmentLight_id246(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id120(streams);
    float3 lightColor = AmbientLight_id194 * streams.matAmbientOcclusion_id56;
    streams.envLightDiffuseColor_id46 = lightColor;
    streams.envLightSpecularColor_id47 = lightColor;
}
void PrepareDirectLight_id204(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id93(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id94(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id95(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id96(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id206()
{
    return LightCount_id180;
}
int GetMaxLightCount_id208()
{
    return TMaxLightCount_id181;
}
void PrepareDirectLights_id202()
{
}
void PrepareDirectLight_id191(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id82(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id83(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id84(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id85(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id195(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y >> 16;
}
int GetMaxLightCount_id194(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y >> 16;
}
void PrepareDirectLights_id189()
{
}
void PrepareDirectLight_id178(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id71(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id72(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id73(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id74(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id183(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y & 0xFFFF;
}
int GetMaxLightCount_id182(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y & 0xFFFF;
}
void PrepareDirectLights_id181(inout PS_STREAMS streams)
{
    PrepareLightData_id78(streams);
}
float3 ComputeDirectLightContribution_id257(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id68;
    return diffuseColor / PI_id209 * streams.lightColorNdotL_id43 * streams.matDiffuseSpecularAlphaBlend_id64.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id74 = normalize(streams.viewWS_id67 + streams.lightDirectionWS_id41);
    streams.NdotH_id75 = saturate(dot(streams.normalWS_id18, streams.H_id74));
    streams.LdotH_id76 = saturate(dot(streams.lightDirectionWS_id41, streams.H_id74));
    streams.VdotH_id77 = streams.LdotH_id76;
}
void PrepareDirectLight_id154(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id47(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id48(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id49(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id50(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id156()
{
    return LightCount_id84;
}
int GetMaxLightCount_id157()
{
    return TMaxLightCount_id85;
}
void PrepareDirectLights_id152()
{
}
void PrepareForLightingAndShading_id262()
{
}
void PrepareMaterialForLightingAndShading_id143(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id49 = lerp(1.0, streams.matAmbientOcclusion_id56, streams.matAmbientOcclusionDirectLightingFactor_id57);
    streams.matDiffuseVisible_id68 = streams.matDiffuse_id52.rgb * lerp(1.0f, streams.matCavity_id58, streams.matCavityDiffuse_id59) * streams.matDiffuseSpecularAlphaBlend_id64.r * streams.matAlphaBlendColor_id65;
    streams.matSpecularVisible_id70 = streams.matSpecular_id54.rgb * streams.matSpecularIntensity_id55 * lerp(1.0f, streams.matCavity_id58, streams.matCavitySpecular_id60) * streams.matDiffuseSpecularAlphaBlend_id64.g * streams.matAlphaBlendColor_id65;
    streams.NdotV_id71 = max(dot(streams.normalWS_id18, streams.viewWS_id67), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id53;
    streams.alphaRoughness_id69 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id142(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id40 = 0;
    streams.lightDirectionWS_id41 = 0;
    streams.lightColor_id42 = 0;
    streams.lightColorNdotL_id43 = 0;
    streams.lightSpecularColorNdotL_id44 = 0;
    streams.lightAttenuation_id45 = 1.0f;
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
    streams.lightDirectAmbientOcclusion_id49 = 1.0f;
    streams.NdotL_id48 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id255()
{
    return constantColor_id206;
}
void ResetStream_id145(inout PS_STREAMS streams)
{
    ResetStream_id144();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id299(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id50);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id142(streams);
    PrepareMaterialForLightingAndShading_id143(streams);

    {
        PrepareForLightingAndShading_id262();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id152();
        const int maxLightCount = GetMaxLightCount_id157();
        int count = GetLightCount_id156();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id154(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id257(streams);
            }
        }
    }

    {
        PrepareDirectLights_id181(streams);
        const int maxLightCount = GetMaxLightCount_id182(streams);
        int count = GetLightCount_id183(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id178(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id257(streams);
            }
        }
    }

    {
        PrepareDirectLights_id189();
        const int maxLightCount = GetMaxLightCount_id194(streams);
        int count = GetLightCount_id195(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id191(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id257(streams);
            }
        }
    }

    {
        PrepareDirectLights_id202();
        const int maxLightCount = GetMaxLightCount_id208();
        int count = GetLightCount_id206();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id204(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id257(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id246(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id258(streams);
        }
    }

    {
        PrepareEnvironmentLight_id251(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id258(streams);
        }
    }

    {
        PrepareEnvironmentLight_id254(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id258(streams);
        }
    }
    streams.shadingColor_id72 += directLightingContribution * PI_id209 + environmentLightingContribution;
    streams.shadingColorAlpha_id73 = streams.matDiffuse_id52.a;

    {
        AfterLightingAndShading_id265();
    }
}
void Compute_id283(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id255();
    streams.matDiffuse_id52 = colorBase;
    streams.matColorBase_id51 = colorBase;
}
void ResetStream_id146(inout PS_STREAMS streams)
{
    ResetStream_id145(streams);
    streams.matNormal_id50 = float3(0, 0, 1);
    streams.matColorBase_id51 = 0.0f;
    streams.matDiffuse_id52 = 0.0f;
    streams.matDiffuseVisible_id68 = 0.0f;
    streams.matSpecular_id54 = 0.0f;
    streams.matSpecularVisible_id70 = 0.0f;
    streams.matSpecularIntensity_id55 = 1.0f;
    streams.matGlossiness_id53 = 0.0f;
    streams.alphaRoughness_id69 = 1.0f;
    streams.matAmbientOcclusion_id56 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id57 = 0.0f;
    streams.matCavity_id58 = 1.0f;
    streams.matCavityDiffuse_id59 = 0.0f;
    streams.matCavitySpecular_id60 = 0.0f;
    streams.matEmissive_id61 = 0.0f;
    streams.matEmissiveIntensity_id62 = 0.0f;
    streams.matScatteringStrength_id63 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id64 = 1.0f;
    streams.matAlphaBlendColor_id65 = 1.0f;
    streams.matAlphaDiscard_id66 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id44(inout PS_STREAMS streams)
{

    {
        Compute_id283(streams);
    }

    {
        Compute_id299(streams);
    }
}
void ResetStream_id43(inout PS_STREAMS streams)
{
    ResetStream_id146(streams);
    streams.shadingColorAlpha_id73 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id67 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id72 = 0;
    ResetStream_id43(streams);
    Compute_id44(streams);
    return float4(streams.shadingColor_id72, streams.shadingColorAlpha_id73);
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
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
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
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id22 = __input__.DepthVS_id22;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.ScreenPosition_id165 = __input__.ScreenPosition_id165;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id165 /= streams.ScreenPosition_id165.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id19(streams);
    streams.ScreenPosition_id165 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.ScreenPosition_id165 = streams.ScreenPosition_id165;
    return __output__;
}

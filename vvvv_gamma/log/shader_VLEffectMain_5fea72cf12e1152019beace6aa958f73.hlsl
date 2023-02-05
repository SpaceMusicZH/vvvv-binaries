/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<1>, ShadowMapReceiverPointCubeMap<1>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1344]
@C    World_id33 => Transformation.World
@C    WorldInverse_id34 => Transformation.WorldInverse
@C    WorldInverseTranspose_id35 => Transformation.WorldInverseTranspose
@C    WorldView_id36 => Transformation.WorldView
@C    WorldViewInverse_id37 => Transformation.WorldViewInverse
@C    WorldViewProjection_id38 => Transformation.WorldViewProjection
@C    WorldScale_id39 => Transformation.WorldScale
@C    EyeMS_id40 => Transformation.EyeMS
@C    MaterialIndex_id84 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id183 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id185 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id187 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id188 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id191 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id192 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id193 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id194 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id195 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    constantColor_id209 => Material.DiffuseValue
cbuffer PerView [Size: 1664]
@C    View_id26 => Transformation.View
@C    ViewInverse_id27 => Transformation.ViewInverse
@C    Projection_id28 => Transformation.Projection
@C    ProjectionInverse_id29 => Transformation.ProjectionInverse
@C    ViewProjection_id30 => Transformation.ViewProjection
@C    ProjScreenRay_id31 => Transformation.ProjScreenRay
@C    Eye_id32 => Transformation.Eye
@C    NearClipPlane_id169 => Camera.NearClipPlane
@C    FarClipPlane_id170 => Camera.FarClipPlane
@C    ZProjection_id171 => Camera.ZProjection
@C    ViewSize_id172 => Camera.ViewSize
@C    AspectRatio_id173 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id87 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id89 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id91 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id92 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id154 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id155 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id156 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id157 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id158 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id159 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id166 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id178 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id179 => LightClustered.ClusterDepthBias
@C    ClusterStride_id180 => LightClustered.ClusterStride
@C    AmbientLight_id197 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id202 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id203 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id205 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id206 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id125 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id186 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
@S    GBufferOutputNormals => 3e4e9266b2241214d3854561b81ccfc5
@S    NormalPack => af1a18518fb63b6295c012c18fe9f9c0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 575b0d8c413aca16a4eeab1c49524aa3
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
//   float4x4 WorldInverseTranspose_id35;// Offset:  128 Size:    64
//   float4x4 WorldView_id36;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id37;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id38; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id39;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id40;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id84;           // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id183;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id185;                    // Offset:  464 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id187; // Offset:  496 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id188;// Offset:  504 Size:     8 [unused]
//   float4x4 WorldToShadow_id191[6];   // Offset:  512 Size:   384 [unused]
//   float4x4 InverseWorldToShadow_id192[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id193;           // Offset: 1280 Size:     4 [unused]
//   float OffsetScales_id194;          // Offset: 1296 Size:     4 [unused]
//   float2 DepthParameters_id195;      // Offset: 1312 Size:     8 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1328 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id26;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id27;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id28;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id29;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id30;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id31;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id32;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id169;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id170;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id171;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id172;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id173;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id87;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id89;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id91;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id92;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id154[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id155[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id156[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id157[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id158;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id159;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id166[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id178;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id179;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id180;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id197;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id202[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id203;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id205;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id206;             // Offset: 1632 Size:     4 [unused]
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
// SCREENPOSITION_ID168_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id22.x; v0.y <- __input__.Position_id22.y; v0.z <- __input__.Position_id22.z; v0.w <- __input__.Position_id22.w; 
//   v1.x <- __input__.meshNormal_id17.x; v1.y <- __input__.meshNormal_id17.y; v1.z <- __input__.meshNormal_id17.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id168.x; o3.y <- <VSMain return value>.ScreenPosition_id168.y; o3.z <- <VSMain return value>.ScreenPosition_id168.z; o3.w <- <VSMain return value>.ScreenPosition_id168.w; 
//   o2.x <- <VSMain return value>.DepthVS_id24; o2.y <- <VSMain return value>.normalWS_id20.x; o2.z <- <VSMain return value>.normalWS_id20.y; o2.w <- <VSMain return value>.normalWS_id20.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id23.x; o0.y <- <VSMain return value>.PositionWS_id23.y; o0.z <- <VSMain return value>.PositionWS_id23.z; o0.w <- <VSMain return value>.PositionWS_id23.w
//
#line 1378 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_5fea72cf12e1152019beace6aa958f73.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id23.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id23.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id23.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id23.w

#line 1471
mov o0.xyzw, r0.xyzw

#line 1337
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1471
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1423
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1471
ret 
// Approximately 16 instruction slots used
@G    Pixel => 46346a0f0963dbcf8ed56c1a2da1dccf
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
//   uint MaterialIndex_id84;           // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id183;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id185;                    // Offset:  464 Size:    28
//   float2 ShadowMapTextureSize_id187; // Offset:  496 Size:     8
//   float2 ShadowMapTextureTexelSize_id188;// Offset:  504 Size:     8
//   float4x4 WorldToShadow_id191[6];   // Offset:  512 Size:   384
//   float4x4 InverseWorldToShadow_id192[6];// Offset:  896 Size:   384 [unused]
//   float DepthBiases_id193;           // Offset: 1280 Size:     4
//   float OffsetScales_id194;          // Offset: 1296 Size:     4
//   float2 DepthParameters_id195;      // Offset: 1312 Size:     8
//   float4 _padding_PerDraw_Lighting;  // Offset: 1328 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id209;        // Offset:    0 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id26;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id27;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id28;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id29;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id30;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id31;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id32;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id169;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id170;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id171;          // Offset:  360 Size:     8
//   float2 ViewSize_id172;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id173;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id87;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id89;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id91;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id92;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id154[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id155[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id156[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id157[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id158;           // Offset: 1296 Size:     4
//   float OffsetScales_id159;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id166[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id178;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id179;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id180;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id197;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id202[9];   // Offset: 1424 Size:   140
//   float MipCount_id203;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id205;          // Offset: 1568 Size:    64
//   float Intensity_id206;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearClampCompareLessEqualSampler_id125  sampler_c      NA          NA             s0      1 
// ShadowMapTexture_id186            texture  float4          2d             t0      1 
// ShadowMapTexture_id90             texture  float4          2d             t1      1 
// LightClusters_id176               texture   uint2          3d             t2      1 
// LightIndices_id177                texture    uint         buf             t3      1 
// PointLights_id181                 texture  float4         buf             t4      1 
// SpotLights_id182                  texture  float4         buf             t5      1 
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
// SCREENPOSITION_ID168_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
// SV_Target                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[83], dynamicIndexed
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
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 11
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id23.x; v0.y <- __input__.PositionWS_id23.y; v0.z <- __input__.PositionWS_id23.z; v0.w <- __input__.PositionWS_id23.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id24; v2.y <- __input__.normalWS_id20.x; v2.z <- __input__.normalWS_id20.y; v2.w <- __input__.normalWS_id20.z; 
//   v3.x <- __input__.ScreenPosition_id168.x; v3.y <- __input__.ScreenPosition_id168.y; v3.z <- __input__.ScreenPosition_id168.z; v3.w <- __input__.ScreenPosition_id168.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1450 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_5fea72cf12e1152019beace6aa958f73.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id168.x; r0.y <- streams.ScreenPosition_id168.y

#line 1417
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1418
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id20.x; r1.y <- streams.normalWS_id20.y; r1.z <- streams.normalWS_id20.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1185
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id20.x; r1.y <- streams.normalWS_id20.y; r1.z <- streams.normalWS_id20.z

#line 1205
ilt r0.z, l(0), cb2[25].x
if_nz r0.z

#line 1125
  dp3 r0.z, r1.xyzx, -cb2[26].xyzx
  max r0.z, r0.z, l(0.000100)  // r0.z <- streams.NdotL_id50

#line 968
  lt r0.w, cb2[83].x, v2.x

#line 971
  and r0.w, r0.w, l(1)  // r0.w <- cascadeIndex

#line 968
  lt r1.w, cb2[84].x, v2.x

#line 971
  movc r0.w, r1.w, l(2), r0.w

#line 968
  lt r1.w, cb2[85].x, v2.x

#line 971
  movc r0.w, r1.w, l(3), r0.w

#line 809
  add r2.x, -r0.z, l(1.000000)
  max r2.x, r2.x, l(0.000000)  // r2.x <- normalOffsetScale

#line 810
  mul r2.y, cb2[28].z, cb2[82].x
  dp2 r2.x, r2.yyyy, r2.xxxx

#line 976
  mad r2.xyz, r2.xxxx, r1.xyzx, v0.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 802
  ishl r3.x, r0.w, l(2)
  mov r2.w, l(1.000000)
  dp4 r4.x, r2.xyzw, cb2[r3.x + 29].xyzw  // r4.x <- shadowPosition.x
  dp4 r4.y, r2.xyzw, cb2[r3.x + 30].xyzw  // r4.y <- shadowPosition.y
  dp4 r3.y, r2.xyzw, cb2[r3.x + 31].xyzw  // r3.y <- shadowPosition.z
  dp4 r3.z, r2.xyzw, cb2[r3.x + 32].xyzw  // r3.z <- shadowPosition.w

#line 803
  add r4.z, r3.y, -cb2[81].x  // r4.z <- shadowPosition.z

#line 804
  div r3.yzw, r4.xxyz, r3.zzzz  // r3.y <- shadowPosition.x; r3.z <- shadowPosition.y; r3.w <- shadowPosition.z

#line 615
  mad r3.yz, r3.yyzy, cb2[28].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r4.xy, r3.yzyy  // r4.x <- base_uv.x; r4.y <- base_uv.y

#line 616
  add r3.yz, r3.yyzy, -r4.xxyx  // r3.y <- st.x; r3.z <- st.y

#line 617
  add r4.xy, r4.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 618
  mul r4.xy, r4.xyxx, cb2[28].zwzz

#line 424
  mad r4.zw, -r3.zzzy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r4.z <- uvW0.y; r4.w <- uvW0.x

#line 426
  mad r5.xy, r3.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r5.x <- uvW2.x; r5.y <- uvW2.y

#line 427
  mad r5.zw, -r3.yyyz, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r5.zw, r5.zzzw, r4.wwwz
  add r6.xw, r5.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r6.x <- uv0.x; r6.w <- uv0.y

#line 428
  add r5.zw, r3.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000)
  mul r6.yz, r5.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r6.y <- uv1.y; r6.z <- uv1.x

#line 429
  div r3.yz, r3.yyzy, r5.xxyx
  add r7.xy, r3.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r7.x <- uv2.x; r7.y <- uv2.y

#line 430
  mul r3.y, r4.z, r4.w

#line 431
  mad r8.xyzw, r6.xwzw, cb2[28].zwzw, r4.xyxy

#line 435
  mov r7.zw, r6.wwwy

#line 433
  mul r5.zw, r4.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 434
  mad r9.xyzw, r6.xyzy, cb2[28].zwzw, r4.xyxy

#line 435
  mad r10.xyzw, r7.xzxw, cb2[28].zwzw, r4.xyxy

#line 436
  mov r6.y, r7.y
  mul r4.zw, r4.zzzw, r5.xxxy

#line 437
  mad r6.xyzw, r6.xyzy, cb2[28].zwzw, r4.xyxy
  mul r7.zw, r5.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 438
  mad r4.xy, r7.xyxx, cb2[28].zwzz, r4.xyxx
  mul r3.z, r5.y, r5.x

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r8.xyxx, t1.xxxx, s0, r3.w  // r5.x <- <SampleTextureAndCompare_id68 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r8.zwzz, t1.xxxx, s0, r3.w  // r5.y <- <SampleTextureAndCompare_id68 return value>

#line 703
  mul r5.y, r5.y, r5.z
  mad r3.y, r3.y, r5.x, r5.y  // r3.y <- shadow

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r10.xyxx, t1.xxxx, s0, r3.w  // r5.x <- <SampleTextureAndCompare_id68 return value>

#line 703
  mad r3.y, r4.z, r5.x, r3.y

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r9.xyxx, t1.xxxx, s0, r3.w  // r4.z <- <SampleTextureAndCompare_id68 return value>

#line 703
  mad r3.y, r5.w, r4.z, r3.y

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r9.zwzz, t1.xxxx, s0, r3.w

#line 703
  mad r3.y, r4.z, l(49.000000), r3.y

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r10.zwzz, t1.xxxx, s0, r3.w

#line 703
  mad r3.y, r7.z, r4.z, r3.y

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r6.xyxx, t1.xxxx, s0, r3.w

#line 703
  mad r3.y, r4.w, r4.z, r3.y

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r6.zwzz, t1.xxxx, s0, r3.w

#line 703
  mad r3.y, r7.w, r4.z, r3.y

#line 610
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r4.xyxx, t1.xxxx, s0, r3.w  // r3.w <- <SampleTextureAndCompare_id68 return value>

#line 703
  mad r3.y, r3.z, r3.w, r3.y

#line 705
  mul r4.xyz, r3.yyyy, l(0.006944, 0.006944, 0.006944, 0.000000)  // r4.z <- shadow

#line 982
  ilt r3.z, l(0), r0.w
  if_nz r3.z

#line 984
    iadd r3.z, r0.w, l(-1)
    add r3.z, -cb2[r3.z + 83].x, cb2[r0.w + 83].x  // r3.z <- splitSize

#line 985
  else 
    mov r3.z, cb2[r0.w + 83].x  // r3.z <- splitSize
  endif 

#line 986
  add r0.w, -v2.x, cb2[r0.w + 83].x
  div r0.w, r0.w, r3.z  // r0.w <- splitDist

#line 987
  lt r3.z, r0.w, l(0.200000)
  if_nz r3.z

#line 990
    if_nz r1.w

#line 992
      mov r4.xyz, r4.zzzz  // r4.x <- shadow.x; r4.y <- shadow.y; r4.z <- shadow.z
    else 

#line 989
      mul_sat r0.w, r0.w, l(5.000000)
      mad r1.w, r0.w, l(-2.000000), l(3.000000)
      mul r0.w, r0.w, r0.w
      mul r0.w, r0.w, r1.w  // r0.w <- lerpAmt

#line 802
      dp4 r5.x, r2.xyzw, cb2[r3.x + 33].xyzw  // r5.x <- shadowPosition.x
      dp4 r5.y, r2.xyzw, cb2[r3.x + 34].xyzw  // r5.y <- shadowPosition.y
      dp4 r1.w, r2.xyzw, cb2[r3.x + 35].xyzw  // r1.w <- shadowPosition.z
      dp4 r2.x, r2.xyzw, cb2[r3.x + 36].xyzw  // r2.x <- shadowPosition.w

#line 803
      add r5.z, r1.w, -cb2[81].x  // r5.z <- shadowPosition.z

#line 804
      div r2.xyz, r5.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 615
      mad r2.xy, r2.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r3.xz, r2.xxyx  // r3.x <- base_uv.x; r3.z <- base_uv.y

#line 616
      add r2.xy, r2.xyxx, -r3.xzxx  // r2.x <- st.x; r2.y <- st.y

#line 617
      add r3.xz, r3.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)

#line 618
      mul r3.xz, r3.xxzx, cb2[28].zzwz

#line 424
      mad r5.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r5.x <- uvW0.y; r5.y <- uvW0.x

#line 426
      mad r5.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r5.z <- uvW2.x; r5.w <- uvW2.y

#line 427
      mad r6.xy, -r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r6.xy, r6.xyxx, r5.yxyy
      add r6.xw, r6.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r6.x <- uv0.x; r6.w <- uv0.y

#line 428
      add r7.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r6.yz, r7.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r6.y <- uv1.y; r6.z <- uv1.x

#line 429
      div r2.xy, r2.xyxx, r5.zwzz
      add r7.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r7.x <- uv2.x; r7.y <- uv2.y

#line 430
      mul r1.w, r5.x, r5.y

#line 431
      mad r8.xyzw, r6.xwzw, cb2[28].zwzw, r3.xzxz

#line 435
      mov r7.zw, r6.wwwy

#line 433
      mul r2.xy, r5.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 434
      mad r9.xyzw, r6.xyzy, cb2[28].zwzw, r3.xzxz

#line 435
      mad r10.xyzw, r7.xzxw, cb2[28].zwzw, r3.xzxz

#line 436
      mov r6.y, r7.y
      mul r5.xy, r5.xyxx, r5.zwzz

#line 437
      mad r6.xyzw, r6.xyzy, cb2[28].zwzw, r3.xzxz
      mul r7.zw, r5.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 438
      mad r3.xz, r7.xxyx, cb2[28].zzwz, r3.xxzx
      mul r2.w, r5.w, r5.z

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r8.xyxx, t1.xxxx, s0, r2.z  // r3.w <- <SampleTextureAndCompare_id68 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r8.zwzz, t1.xxxx, s0, r2.z  // r4.w <- <SampleTextureAndCompare_id68 return value>

#line 703
      mul r2.x, r2.x, r4.w
      mad r1.w, r1.w, r3.w, r2.x  // r1.w <- shadow

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r10.xyxx, t1.xxxx, s0, r2.z  // r2.x <- <SampleTextureAndCompare_id68 return value>

#line 703
      mad r1.w, r5.x, r2.x, r1.w

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r9.xyxx, t1.xxxx, s0, r2.z

#line 703
      mad r1.w, r2.y, r2.x, r1.w

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r9.zwzz, t1.xxxx, s0, r2.z

#line 703
      mad r1.w, r2.x, l(49.000000), r1.w

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r10.zwzz, t1.xxxx, s0, r2.z

#line 703
      mad r1.w, r7.z, r2.x, r1.w

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r6.xyxx, t1.xxxx, s0, r2.z

#line 703
      mad r1.w, r5.y, r2.x, r1.w

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r6.zwzz, t1.xxxx, s0, r2.z

#line 703
      mad r1.w, r7.w, r2.x, r1.w

#line 610
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r3.xzxx, t1.xxxx, s0, r2.z

#line 703
      mad r1.w, r2.w, r2.x, r1.w

#line 705
      mul r1.w, r1.w, l(0.006944)

#line 996
      mad r2.x, r3.y, l(0.006944), -r1.w
      mad r4.xyz, r0.wwww, r2.xxxx, r1.wwww  // r4.x <- shadow.x; r4.y <- shadow.y; r4.z <- shadow.z

#line 997
    endif 

#line 998
  endif 

#line 1127
  mul r2.xyz, r4.xyzx, cb2[27].xyzx
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.lightColorNdotL_id45.x; r2.y <- streams.lightColorNdotL_id45.y; r2.z <- streams.lightColorNdotL_id45.z

#line 1113
  mul r2.xyz, r2.xyzx, cb1[0].xyzx
  mul r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000)  // r2.x <- <ComputeDirectLightContribution_id264 return value>.x; r2.y <- <ComputeDirectLightContribution_id264 return value>.y; r2.z <- <ComputeDirectLightContribution_id264 return value>.z

#line 1210
else 
  mov r2.xyz, l(0,0,0,0)
endif 

#line 945
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 946
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 947
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 948
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 947
ftoi r3.xyz, r0.xyzx  // r3.z <- slice

#line 948
mov r3.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r3.xyzw, t2.xyzw  // r0.x <- streams.lightData_id174.x; r0.y <- streams.lightData_id174.y

#line 1104
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id189 return value>

#line 1219
mov r3.xyz, r1.xyzx  // r3.x <- streams.normalWS_id20.x; r3.y <- streams.normalWS_id20.y; r3.z <- streams.normalWS_id20.z
mov r3.w, v0.x  // r3.w <- streams.PositionWS_id23.x
mov r4.yz, v0.yyzy  // r4.y <- streams.PositionWS_id23.y; r4.z <- streams.PositionWS_id23.z
mov r5.xyz, cb1[0].xyzx  // r5.x <- streams.matDiffuseVisible_id70.x; r5.y <- streams.matDiffuseVisible_id70.y; r5.z <- streams.matDiffuseVisible_id70.z
mov r6.xyz, r2.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r7.x, r0.x  // r7.x <- streams.lightIndex_id175
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 1221
  if_nz r1.w

#line 1223
    break 

#line 1224
  endif 

#line 932
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r7.xxxx, t3.yzwx  // r1.w <- realLightIndex

#line 933
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id175

#line 935
  ishl r2.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.xyzw, r2.wwww, t4.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w

#line 936
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r1.wwww, t4.wxyz  // r7.y <- pointLight2.x; r7.z <- pointLight2.y; r7.w <- pointLight2.z

#line 669
  mov r4.x, r3.w
  add r8.xyz, -r4.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 670
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 671
  div r8.xyz, r8.xyzx, r2.wwww  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 556
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 406
  mul r1.w, r8.w, r1.w  // r1.w <- factor

#line 407
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 408
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id82 return value>

#line 557
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1090
  dp3 r2.w, r3.xyzx, r8.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id50

#line 1092
  mul r7.yzw, r1.wwww, r7.yyzw
  mul r7.yzw, r2.wwww, r7.yyzw  // r7.y <- streams.lightColorNdotL_id45.x; r7.z <- streams.lightColorNdotL_id45.y; r7.w <- streams.lightColorNdotL_id45.z

#line 1113
  mul r7.yzw, r7.yyzw, r5.xxyz

#line 1229
  mad r6.xyz, r7.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 1219
  iadd r0.w, r0.w, l(1)

#line 1231
endloop   // r7.x <- streams.lightIndex_id175

#line 1082
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id201 return value>

#line 1239
mov r0.yzw, r1.xxyz  // r0.y <- streams.normalWS_id20.x; r0.z <- streams.normalWS_id20.y; r0.w <- streams.normalWS_id20.z
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id23.x; r2.y <- streams.PositionWS_id23.y; r2.z <- streams.PositionWS_id23.z
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id70.x; r3.y <- streams.matDiffuseVisible_id70.y; r3.z <- streams.matDiffuseVisible_id70.z
mov r4.xyz, r6.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r7.x  // r1.w <- streams.lightIndex_id175
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 1241
  if_nz r3.w

#line 1243
    break 

#line 1244
  endif 

#line 904
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t3.yzwx  // r3.w <- realLightIndex

#line 905
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id175

#line 907
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r5.xyz, r4.wwww, t5.xyzw  // r5.x <- spotLight1.x; r5.y <- spotLight1.y; r5.z <- spotLight1.z

#line 910
  bfi r7.yzw, l(0, 30, 30, 30), l(0, 2, 2, 2), r3.wwww, l(0, 1, 2, 3)

#line 908
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.yyyy, t5.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 909
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t5.xyzw  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.z <- spotLight3.z

#line 910
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r7.wwww, t5.wxyz  // r7.y <- spotLight4.x; r7.z <- spotLight4.y; r7.w <- spotLight4.z

#line 656
  add r5.xyz, -r2.xyzx, r5.xyzx  // r5.x <- lightVector.x; r5.y <- lightVector.y; r5.z <- lightVector.z

#line 657
  dp3 r3.w, r5.xyzx, r5.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 658
  div r5.xyz, r5.xyzx, r4.wwww  // r5.x <- lightVectorNorm.x; r5.y <- lightVectorNorm.y; r5.z <- lightVectorNorm.z

#line 549
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 400
  mul r3.w, r9.z, r3.w  // r3.w <- factor

#line 401
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 402
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id93 return value>

#line 550
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 541
  dp3 r4.w, -r8.xyzx, r5.xyzx  // r4.w <- cd

#line 542
  mad_sat r4.w, r4.w, r9.x, r9.y  // r4.w <- attenuation

#line 543
  mul r4.w, r4.w, r4.w

#line 664
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1068
  dp3 r4.w, r0.yzwy, r5.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id50

#line 1070
  mul r5.xyz, r3.wwww, r7.yzwy
  mul r5.xyz, r4.wwww, r5.xyzx  // r5.x <- streams.lightColorNdotL_id45.x; r5.y <- streams.lightColorNdotL_id45.y; r5.z <- streams.lightColorNdotL_id45.z

#line 1113
  mul r5.xyz, r3.xyzx, r5.xyzx

#line 1249
  mad r4.xyz, r5.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1239
  iadd r2.w, r2.w, l(1)

#line 1251
endloop   // r1.w <- streams.lightIndex_id175

#line 1265
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 648
  add r0.xyz, -v0.xyzx, cb0[29].xyzx  // r0.x <- lightVector.x; r0.y <- lightVector.y; r0.z <- lightVector.z

#line 649
  dp3 r0.w, r0.xyzx, r0.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength

#line 650
  div r0.xyz, r0.xyzx, r1.wwww  // r0.x <- lightVectorNorm.x; r0.y <- lightVectorNorm.y; r0.z <- lightVectorNorm.z

#line 535
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 394
  mul r0.w, r0.w, cb0[29].w  // r0.w <- factor

#line 395
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor

#line 396
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id104 return value>

#line 536
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 1046
  dp3 r0.x, r1.xyzx, r0.xyzx
  max r0.x, r0.x, l(0.000100)  // r0.x <- streams.NdotL_id50

#line 843
  add r2.xyz, v0.xyzx, -cb0[29].xyzx  // r2.x <- lightDelta.x; r2.y <- lightDelta.y; r2.z <- lightDelta.z

#line 844
  dp3 r0.y, r2.xyzx, r2.xyzx
  sqrt r0.y, r0.y  // r0.y <- distanceToLight

#line 845
  div r3.xyz, r2.xyzx, r0.yyyy  // r3.x <- direction.x; r3.y <- direction.y; r3.z <- direction.z

#line 847
  max r0.y, |r3.z|, |r3.y|
  max r0.y, r0.y, |r3.x|  // r0.y <- longestAxis

#line 856
  eq r0.yz, r0.yyyy, |r3.xxyx|

#line 865
  mov r2.w, l(4)
  mov r3.xz, l(0,0,2,0)
  mov r3.yw, r2.zzzx
  movc r2.xy, r0.zzzz, r2.wyww, r3.xyxx  // r2.x <- faceIndex; r2.y <- lightSpaceZ
  movc r0.yz, r0.yyyy, r3.zzwz, r2.xxyx  // r0.y <- faceIndex; r0.z <- lightSpaceZ

#line 874
  add r1.w, |r0.z|, -cb0[80].x  // r1.w <- lightSpaceZ

#line 875
  div r1.w, cb0[82].y, r1.w
  add r1.w, r1.w, cb0[82].x  // r1.w <- depth

#line 876
  lt r2.x, r1.w, l(0.000000)
  lt r2.y, l(1.000000), r1.w
  or r2.x, r2.y, r2.x

#line 878
  if_z r2.x

#line 866
    lt r2.x, l(0.000000), r0.z
    lt r0.z, r0.z, l(0.000000)
    iadd r0.z, -r2.x, r0.z
    itof r0.z, r0.z  // r0.z <- lightSpaceZDirection

#line 867
    min r0.z, r0.z, l(0.000000)
    ftoi r0.z, -r0.z
    iadd r0.y, r0.z, r0.y

#line 756
    add r0.z, -r0.x, l(1.000000)
    max r0.z, r0.z, l(0.000000)  // r0.z <- normalOffsetScale

#line 757
    mul r2.x, cb0[31].z, cb0[81].x
    dp2 r0.z, r2.xxxx, r0.zzzz

#line 870
    mad r2.xyz, r0.zzzz, r1.xyzx, v0.xyzx  // r2.x <- positionWS.x; r2.y <- positionWS.y; r2.z <- positionWS.z

#line 871
    ishl r0.y, r0.y, l(2)
    mov r2.w, l(1.000000)
    dp4 r3.x, r2.xyzw, cb0[r0.y + 32].xyzw  // r3.x <- projectedPosition.x
    dp4 r3.y, r2.xyzw, cb0[r0.y + 33].xyzw  // r3.y <- projectedPosition.y
    dp4 r0.y, r2.xyzw, cb0[r0.y + 35].xyzw  // r0.y <- projectedPosition.w

#line 872
    div r0.yz, r3.xxyx, r0.yyyy  // r0.y <- projectedPosition.x; r0.z <- projectedPosition.y

#line 627
    mad r0.yz, r0.yyzy, cb0[31].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
    round_ni r2.xy, r0.yzyy  // r2.x <- base_uv.x; r2.y <- base_uv.y

#line 628
    add r0.yz, r0.yyzy, -r2.xxyx  // r0.y <- st.x; r0.z <- st.y

#line 629
    add r2.xy, r2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 630
    mul r2.xy, r2.xyxx, cb0[31].zwzz

#line 332
    mad r2.zw, -r0.zzzy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r2.z <- uvW0.y; r2.w <- uvW0.x

#line 334
    mad r3.xy, r0.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r3.x <- uvW2.x; r3.y <- uvW2.y

#line 335
    mad r3.zw, -r0.yyyz, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
    div r3.zw, r3.zzzw, r2.wwwz
    add r5.xw, r3.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r5.x <- uv0.x; r5.w <- uv0.y

#line 336
    add r3.zw, r0.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000)
    mul r5.yz, r3.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r5.y <- uv1.y; r5.z <- uv1.x

#line 337
    div r0.yz, r0.yyzy, r3.xxyx
    add r6.xy, r0.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r6.x <- uv2.x; r6.y <- uv2.y

#line 338
    mul r0.y, r2.z, r2.w

#line 339
    mad r7.xyzw, r5.xwzw, cb0[31].zwzw, r2.xyxy

#line 343
    mov r6.zw, r5.wwwy

#line 341
    mul r3.zw, r2.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 342
    mad r8.xyzw, r5.xyzy, cb0[31].zwzw, r2.xyxy

#line 343
    mad r9.xyzw, r6.xzxw, cb0[31].zwzw, r2.xyxy

#line 344
    mov r5.y, r6.y
    mul r2.zw, r2.zzzw, r3.xxxy

#line 345
    mad r5.xyzw, r5.xyzy, cb0[31].zwzw, r2.xyxy
    mul r6.zw, r3.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 346
    mad r2.xy, r6.xyxx, cb0[31].zwzz, r2.xyxx
    mul r0.z, r3.y, r3.x

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r7.xyxx, t0.xxxx, s0, r1.w  // r3.x <- <SampleTextureAndCompare_id116 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.y, r7.zwzz, t0.xxxx, s0, r1.w  // r3.y <- <SampleTextureAndCompare_id116 return value>

#line 748
    mul r3.y, r3.y, r3.z
    mad r0.y, r0.y, r3.x, r3.y  // r0.y <- shadow

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r9.xyxx, t0.xxxx, s0, r1.w  // r3.x <- <SampleTextureAndCompare_id116 return value>

#line 748
    mad r0.y, r2.z, r3.x, r0.y

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r8.xyxx, t0.xxxx, s0, r1.w  // r2.z <- <SampleTextureAndCompare_id116 return value>

#line 748
    mad r0.y, r3.w, r2.z, r0.y

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r8.zwzz, t0.xxxx, s0, r1.w

#line 748
    mad r0.y, r2.z, l(49.000000), r0.y

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r9.zwzz, t0.xxxx, s0, r1.w

#line 748
    mad r0.y, r6.z, r2.z, r0.y

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r5.xyxx, t0.xxxx, s0, r1.w

#line 748
    mad r0.y, r2.w, r2.z, r0.y

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r5.zwzz, t0.xxxx, s0, r1.w

#line 748
    mad r0.y, r6.w, r2.z, r0.y

#line 622
    sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t0.xxxx, s0, r1.w  // r1.w <- <SampleTextureAndCompare_id116 return value>

#line 748
    mad r0.y, r0.z, r1.w, r0.y

#line 750
    mul r2.xyz, r0.yyyy, l(0.006944, 0.006944, 0.006944, 0.000000)  // r2.z <- shadow

#line 879
  else   // Prior locations: r2.z <- lightDelta.z; r0.y <- faceIndex; r1.w <- depth
    mov r2.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1048
  mul r0.yzw, r0.wwww, cb0[30].xxyz
  mul r0.yzw, r2.xxyz, r0.yyzw
  mul r0.xyz, r0.xxxx, r0.yzwy  // r0.x <- streams.lightColorNdotL_id45.x; r0.y <- streams.lightColorNdotL_id45.y; r0.z <- streams.lightColorNdotL_id45.z

#line 1113
  mul r0.xyz, r0.xyzx, cb1[0].xyzx

#line 1269
  mad r4.xyz, r0.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1270
endif 

#line 1023
dp3 r0.x, r1.xyzx, cb2[98].xyzx  // r0.x <- sampleDirection.x
dp3 r0.y, r1.xyzx, cb2[99].xyzx  // r0.y <- sampleDirection.y
dp3 r0.z, r1.xyzx, cb2[100].xyzx  // r0.z <- sampleDirection.z

#line 715
mul r0.w, r0.y, r0.y  // r0.w <- y2

#line 716
mul r1.w, r0.z, r0.z  // r1.w <- z2

#line 720
mad r2.xyz, cb2[90].xyzx, r0.yyyy, cb2[89].xyzx  // r2.x <- color.x; r2.y <- color.y; r2.z <- color.z

#line 721
mad r2.xyz, cb2[91].xyzx, -r0.zzzz, r2.xyzx

#line 722
mad r2.xyz, cb2[92].xyzx, r0.xxxx, r2.xyzx

#line 725
mul r3.xyz, r0.yyyy, cb2[93].xyzx
mad r2.xyz, r3.xyzx, r0.xxxx, r2.xyzx

#line 726
mul r3.xyz, r0.yyyy, cb2[94].xyzx
mad r2.xyz, r3.xyzx, -r0.zzzz, r2.xyzx

#line 727
mad r0.y, r1.w, l(3.000000), l(-1.000000)
mad r2.xyz, cb2[95].xyzx, r0.yyyy, r2.xyzx

#line 728
mul r3.xyz, r0.xxxx, cb2[96].xyzx
mad r2.xyz, r3.xyzx, -r0.zzzz, r2.xyzx

#line 729
mad r0.x, r0.x, r0.x, -r0.w
mad r0.xyz, cb2[97].xyzx, r0.xxxx, r2.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 1025
mul r0.xyz, r0.xyzx, cb2[102].xxxx  // r0.x <- streams.envLightDiffuseColor_id48.x; r0.y <- streams.envLightDiffuseColor_id48.y; r0.z <- streams.envLightDiffuseColor_id48.z

#line 1034
mul r0.xyz, r0.xyzx, cb1[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id265 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id265 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id265 return value>.z

#line 1287
mad r0.xyz, cb1[0].xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1298
mad o0.xyz, r4.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1347
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1382
utof o2.xyzw, cb0[26].xxxx

#line 1456
mov o0.w, cb1[0].w
mov o1.w, l(1.000000)
ret 
// Approximately 383 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id88 = 1;
const static int TCascadeCountBase_id152 = 4;
const static int TLightCountBase_id153 = 1;
const static int TCascadeCount_id160 = 4;
const static int TLightCount_id161 = 1;
const static bool TBlendCascades_id162 = true;
const static bool TDepthRangeAuto_id163 = true;
const static bool TCascadeDebug_id164 = false;
const static bool TComputeTransmittance_id165 = false;
const static int TFilterSize_id167 = 5;
const static int TMaxLightCount_id184 = 1;
const static int TLightCount_id190 = 1;
const static int TFilterSize_id196 = 5;
const static int TOrder_id199 = 3;
const static int TOrder_id201 = 3;
static const float PI_id212 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id213 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id168;
    float3 normalWS_id20;
    float4 PositionWS_id23;
    float DepthVS_id24;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id18;
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
    float thicknessWS_id86;
    float3 shadowColor_id85;
    float3 H_id76;
    float NdotH_id77;
    float LdotH_id78;
    float VdotH_id79;
    uint2 lightData_id174;
    int lightIndex_id175;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
    float4 ColorTarget2_id4;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
    float4 ColorTarget2_id4 : SV_Target2;
};
struct PS_INPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id24 : DEPTH_VS;
    float3 normalWS_id20 : NORMALWS;
    float4 ScreenPosition_id168 : SCREENPOSITION_ID168_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id22;
    float3 meshNormal_id17;
    float4 PositionH_id25;
    float3 meshNormalWS_id18;
    float4 PositionWS_id23;
    float4 ShadingPosition_id0;
    float DepthVS_id24;
    float3 normalWS_id20;
    float4 ScreenPosition_id168;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id24 : DEPTH_VS;
    float3 normalWS_id20 : NORMALWS;
    float4 ScreenPosition_id168 : SCREENPOSITION_ID168_SEM;
};
struct VS_INPUT 
{
    float4 Position_id22 : POSITION;
    float3 meshNormal_id17 : NORMAL;
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
    float4x4 World_id33;
    float4x4 WorldInverse_id34;
    float4x4 WorldInverseTranspose_id35;
    float4x4 WorldView_id36;
    float4x4 WorldViewInverse_id37;
    float4x4 WorldViewProjection_id38;
    float3 WorldScale_id39;
    float4 EyeMS_id40;
    uint MaterialIndex_id84;
    float4 _padding_PerDraw_Default;
    int LightCount_id183;
    PointLightData Lights_id185[TMaxLightCount_id184];
    float2 ShadowMapTextureSize_id187;
    float2 ShadowMapTextureTexelSize_id188;
    float4x4 WorldToShadow_id191[TLightCount_id190 * 6];
    float4x4 InverseWorldToShadow_id192[TLightCount_id190 * 6];
    float DepthBiases_id193[TLightCount_id190];
    float OffsetScales_id194[TLightCount_id190];
    float2 DepthParameters_id195[TLightCount_id190];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 constantColor_id209;
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
    float NearClipPlane_id169 = 1.0f;
    float FarClipPlane_id170 = 100.0f;
    float2 ZProjection_id171;
    float2 ViewSize_id172;
    float AspectRatio_id173;
    float4 _padding_PerView_Default;
    int LightCount_id87;
    DirectionalLightData Lights_id89[TMaxLightCount_id88];
    float2 ShadowMapTextureSize_id91;
    float2 ShadowMapTextureTexelSize_id92;
    float4x4 WorldToShadowCascadeUV_id154[TCascadeCountBase_id152 * TLightCountBase_id153];
    float4x4 InverseWorldToShadowCascadeUV_id155[TCascadeCountBase_id152 * TLightCountBase_id153];
    float4x4 ViewMatrices_id156[TCascadeCountBase_id152 * TLightCountBase_id153];
    float2 DepthRanges_id157[TCascadeCountBase_id152 * TLightCountBase_id153];
    float DepthBiases_id158[TLightCountBase_id153];
    float OffsetScales_id159[TLightCountBase_id153];
    float CascadeDepthSplits_id166[TCascadeCount_id160 * TLightCount_id161];
    float ClusterDepthScale_id178;
    float ClusterDepthBias_id179;
    float2 ClusterStride_id180;
    float3 AmbientLight_id197;
    float3 SphericalColors_id202[TOrder_id201 * TOrder_id201];
    float MipCount_id203;
    float4x4 SkyMatrix_id205;
    float Intensity_id206;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id94;
    float2 Texture1TexelSize_id96;
    float2 Texture2TexelSize_id98;
    float2 Texture3TexelSize_id100;
    float2 Texture4TexelSize_id102;
    float2 Texture5TexelSize_id104;
    float2 Texture6TexelSize_id106;
    float2 Texture7TexelSize_id108;
    float2 Texture8TexelSize_id110;
    float2 Texture9TexelSize_id112;
};
Texture2D Texture0_id93;
Texture2D Texture1_id95;
Texture2D Texture2_id97;
Texture2D Texture3_id99;
Texture2D Texture4_id101;
Texture2D Texture5_id103;
Texture2D Texture6_id105;
Texture2D Texture7_id107;
Texture2D Texture8_id109;
Texture2D Texture9_id111;
TextureCube TextureCube0_id113;
TextureCube TextureCube1_id114;
TextureCube TextureCube2_id115;
TextureCube TextureCube3_id116;
Texture3D Texture3D0_id117;
Texture3D Texture3D1_id118;
Texture3D Texture3D2_id119;
Texture3D Texture3D3_id120;
SamplerState Sampler_id121;
SamplerState PointSampler_id122 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id125 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id126 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id127 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id128 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id130 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id131;
SamplerState Sampler1_id132;
SamplerState Sampler2_id133;
SamplerState Sampler3_id134;
SamplerState Sampler4_id135;
SamplerState Sampler5_id136;
SamplerState Sampler6_id137;
SamplerState Sampler7_id138;
SamplerState Sampler8_id139;
SamplerState Sampler9_id140;
Texture2D ShadowMapTexture_id186;
Texture2D ShadowMapTexture_id90;
Texture3D<uint2> LightClusters_id176;
Buffer<uint> LightIndices_id177;
Buffer<float4> PointLights_id181;
Buffer<float4> SpotLights_id182;
TextureCube CubeMap_id204;
float4 Project_id109(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id60(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float Get3x3FilterKernel_id118(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id188, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id188, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id117(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id188, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id188, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id188, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id119(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id186.SampleLevel(LinearBorderSampler_id124, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id109(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id115(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id188, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id188, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id188, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id188, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id188, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id188, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id188, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id188, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id188, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id188, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id104(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id93(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id82(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id70(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id92, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id92, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id69(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id92, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id92, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id92, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id71(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id90.SampleLevel(LinearBorderSampler_id124, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id60(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id67(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id92, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id92, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id92, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id92, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id92, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id92, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id92, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id92, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id92, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id92, uvW3.x * uvW3.y);
    return 2704.0;
}
float SampleAndFilter_id123(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id187;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id188;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id117(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id119(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id122(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id109(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id109(float4(ShadowMapTextureTexelSize_id188.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id109(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id121(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id109(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id109(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id188.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id109(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id120()
{

    {
        return 3.5;
    }
}
float GetDistanceAttenuation_id106(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id104(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id95(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id94(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id93(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id84(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id82(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id75(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id91;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id92;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id69(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id71(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id74(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id60(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id60(float4(ShadowMapTextureTexelSize_id92.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id60(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id73(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id60(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id60(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id92.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id60(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id72()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id68(float2 position, float positionDepth)
{
    return ShadowMapTexture_id90.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
void CalculatePCFKernelParameters_id66(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id91;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id92;
}
float SampleTextureAndCompare_id116(float2 position, float positionDepth)
{
    return ShadowMapTexture_id186.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id125, position, positionDepth);
}
void CalculatePCFKernelParameters_id114(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id187;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id188;
}
float FilterThickness_id110(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id122(GetFilterRadiusInPixels_id120(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id121(GetFilterRadiusInPixels_id120(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id123(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id105(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id106(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id96(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id94(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id95(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id83(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id84(lightVectorLength, lightInvSquareRadius);
}
float FilterThickness_id62(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id74(GetFilterRadiusInPixels_id72(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id73(GetFilterRadiusInPixels_id72(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id75(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id61(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id66(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id69(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id68(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float4 EvaluateSphericalHarmonics_id132(float3 sphericalColors[TOrder_id199 * TOrder_id199], float3 direction)
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
float FilterShadow_id113(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id114(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id117(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id116(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id112(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id188.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id111(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id110(positionWS, streams.meshNormalWS_id18, float2(0.0f, 1.0f), WorldToShadow_id191[cascadeIndex], InverseWorldToShadow_id192[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id107(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id105(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id97(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id96(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id86(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id83(light, streams.PositionWS_id23.xyz, lightVectorNorm);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color;
    streams.lightAttenuation_id47 = attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
float ComputeThicknessFromCascade_id65(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id152;
    return FilterThickness_id62(pixelPositionWS, meshNormalWS, DepthRanges_id157[arrayIndex], WorldToShadowCascadeUV_id154[arrayIndex], InverseWorldToShadowCascadeUV_id155[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id64(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id154[cascadeIndex + lightIndex * TCascadeCountBase_id152]);
    shadowPosition.z -= DepthBiases_id158[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id61(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id63(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id92.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id248(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id71;
    float mipLevel = sqrt(alpha) * MipCount_id203;
    return CubeMap_id204.SampleLevel(LinearSampler_id123, direction, mipLevel);
}
float4 Compute_id243(float3 direction)
{
    return EvaluateSphericalHarmonics_id132(SphericalColors_id202, direction);
}
void PrepareEnvironmentLight_id136(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
void PrepareEnvironmentLight_id127(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
float3 ComputeSpecularTextureProjection_id103(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id102(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id101(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id185[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id86 = ComputeThickness_id111(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id112(OffsetScales_id194[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id191[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id193[lightIndex];
    float depth = DepthParameters_id195[lightIndex].x + (DepthParameters_id195[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id113(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id100(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id185[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id185[lightIndex].InvSquareRadius;
    data.Color = Lights_id185[lightIndex].Color;
    ProcessLight_id107(streams, data);
}
float3 ComputeSpecularTextureProjection_id92(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id91(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id90(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id86 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id89(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id177.Load(streams.lightIndex_id175);
    streams.lightIndex_id175++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id182.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id182.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id182.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id182.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id97(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id81(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id80(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id79(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id86 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id177.Load(streams.lightIndex_id175);
    streams.lightIndex_id175++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id181.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id181.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id86(streams, pointLight);
}
void PrepareLightData_id85(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id171.y / (projectedDepth - ZProjection_id171.x);
    float2 texCoord = float2(streams.ScreenPosition_id168.x + 1, 1 - streams.ScreenPosition_id168.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id178 + ClusterDepthBias_id179), 0));
    streams.lightData_id174 = LightClusters_id176.Load(int4(texCoord * ClusterStride_id180, slice, 0));
    streams.lightIndex_id175 = streams.lightData_id174.x;
}
float3 ComputeSpecularTextureProjection_id57(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id56(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id55(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id160;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id160 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id24 > CascadeDepthSplits_id166[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id63(OffsetScales_id159[lightIndex], streams.NdotL_id50, streams.normalWS_id20);
    if (cascadeIndex < TCascadeCount_id160)
    {
        shadow = ComputeShadowFromCascade_id64(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id166[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id166[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id24) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id160 - 1)
            {
            }
            else if (TBlendCascades_id162)
            {
                float nextShadow = ComputeShadowFromCascade_id64(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id86 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id54(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id44 = Lights_id89[lightIndex].Color;
    streams.lightDirectionWS_id43 = -Lights_id89[lightIndex].DirectionWS;
}
void ResetStream_id151()
{
}
void AfterLightingAndShading_id272()
{
}
void PrepareEnvironmentLight_id261(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id48 = 0;
    streams.envLightSpecularColor_id49 = 0;
}
void PrepareEnvironmentLight_id258(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id136(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id58;
    float3 sampleDirection = mul(streams.normalWS_id20, (float3x3)SkyMatrix_id205);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id48 = Compute_id243(sampleDirection).rgb * Intensity_id206 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.x;
    sampleDirection = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id205);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id49 = Compute_id248(streams, sampleDirection).rgb * Intensity_id206 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id66.y;
}
float3 ComputeEnvironmentLightContribution_id265(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor * streams.envLightDiffuseColor_id48;
}
void PrepareEnvironmentLight_id253(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id127(streams);
    float3 lightColor = AmbientLight_id197 * streams.matAmbientOcclusion_id58;
    streams.envLightDiffuseColor_id48 = lightColor;
    streams.envLightSpecularColor_id49 = lightColor;
}
void PrepareDirectLight_id211(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id100(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id101(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id102(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id103(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id213()
{
    return LightCount_id183;
}
int GetMaxLightCount_id215()
{
    return TMaxLightCount_id184;
}
void PrepareDirectLights_id209()
{
}
void PrepareDirectLight_id198(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id89(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id90(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id91(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id92(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id202(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y >> 16;
}
int GetMaxLightCount_id201(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y >> 16;
}
void PrepareDirectLights_id196()
{
}
void PrepareDirectLight_id185(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id79(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id80(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id81(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id190(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y & 0xFFFF;
}
int GetMaxLightCount_id189(inout PS_STREAMS streams)
{
    return streams.lightData_id174.y & 0xFFFF;
}
void PrepareDirectLights_id188(inout PS_STREAMS streams)
{
    PrepareLightData_id85(streams);
}
float3 ComputeDirectLightContribution_id264(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id70;
    return diffuseColor / PI_id212 * streams.lightColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id66.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id76 = normalize(streams.viewWS_id69 + streams.lightDirectionWS_id43);
    streams.NdotH_id77 = saturate(dot(streams.normalWS_id20, streams.H_id76));
    streams.LdotH_id78 = saturate(dot(streams.lightDirectionWS_id43, streams.H_id76));
    streams.VdotH_id79 = streams.LdotH_id78;
}
void PrepareDirectLight_id161(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id54(streams, lightIndex);
    streams.NdotL_id50 = max(dot(streams.normalWS_id20, streams.lightDirectionWS_id43), 0.0001f);
    streams.shadowColor_id85 = ComputeShadow_id55(streams, streams.PositionWS_id23.xyz, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.lightAttenuation_id47 * streams.shadowColor_id85 * streams.NdotL_id50 * streams.lightDirectAmbientOcclusion_id51;
    streams.lightSpecularColorNdotL_id46 = streams.lightColorNdotL_id45;
    streams.lightColorNdotL_id45 *= ComputeTextureProjection_id56(streams.PositionWS_id23.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id69, streams.normalWS_id20);
    streams.lightSpecularColorNdotL_id46 *= ComputeSpecularTextureProjection_id57(streams.PositionWS_id23.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id163()
{
    return LightCount_id87;
}
int GetMaxLightCount_id164()
{
    return TMaxLightCount_id88;
}
void PrepareDirectLights_id159()
{
}
void PrepareForLightingAndShading_id269()
{
}
void PrepareMaterialForLightingAndShading_id150(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id51 = lerp(1.0, streams.matAmbientOcclusion_id58, streams.matAmbientOcclusionDirectLightingFactor_id59);
    streams.matDiffuseVisible_id70 = streams.matDiffuse_id54.rgb * lerp(1.0f, streams.matCavity_id60, streams.matCavityDiffuse_id61) * streams.matDiffuseSpecularAlphaBlend_id66.r * streams.matAlphaBlendColor_id67;
    streams.matSpecularVisible_id72 = streams.matSpecular_id56.rgb * streams.matSpecularIntensity_id57 * lerp(1.0f, streams.matCavity_id60, streams.matCavitySpecular_id62) * streams.matDiffuseSpecularAlphaBlend_id66.g * streams.matAlphaBlendColor_id67;
    streams.NdotV_id73 = max(dot(streams.normalWS_id20, streams.viewWS_id69), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id55;
    streams.alphaRoughness_id71 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id149(inout PS_STREAMS streams)
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
float4 Compute_id262()
{
    return constantColor_id209;
}
void ResetStream_id152(inout PS_STREAMS streams)
{
    ResetStream_id151();
    streams.matBlend_id41 = 0.0f;
}
void Compute_id306(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id52);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id20 = -streams.normalWS_id20;
    ResetLightStream_id149(streams);
    PrepareMaterialForLightingAndShading_id150(streams);

    {
        PrepareForLightingAndShading_id269();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id159();
        const int maxLightCount = GetMaxLightCount_id164();
        int count = GetLightCount_id163();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id161(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id264(streams);
            }
        }
    }

    {
        PrepareDirectLights_id188(streams);
        const int maxLightCount = GetMaxLightCount_id189(streams);
        int count = GetLightCount_id190(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id185(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id264(streams);
            }
        }
    }

    {
        PrepareDirectLights_id196();
        const int maxLightCount = GetMaxLightCount_id201(streams);
        int count = GetLightCount_id202(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id198(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id264(streams);
            }
        }
    }

    {
        PrepareDirectLights_id209();
        const int maxLightCount = GetMaxLightCount_id215();
        int count = GetLightCount_id213();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id211(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id264(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id253(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id265(streams);
        }
    }

    {
        PrepareEnvironmentLight_id258(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id265(streams);
        }
    }

    {
        PrepareEnvironmentLight_id261(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id265(streams);
        }
    }
    streams.shadingColor_id74 += directLightingContribution * PI_id212 + environmentLightingContribution;
    streams.shadingColorAlpha_id75 = streams.matDiffuse_id54.a;

    {
        AfterLightingAndShading_id272();
    }
}
void Compute_id290(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id262();
    streams.matDiffuse_id54 = colorBase;
    streams.matColorBase_id53 = colorBase;
}
void ResetStream_id153(inout PS_STREAMS streams)
{
    ResetStream_id152(streams);
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
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id30);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
float3 EncodeNormal_id51(float3 n)
{
    return n * 0.5 + 0.5;
}
void Compute_id47(inout PS_STREAMS streams)
{

    {
        Compute_id290(streams);
    }

    {
        Compute_id306(streams);
    }
}
void ResetStream_id46(inout PS_STREAMS streams)
{
    ResetStream_id153(streams);
    streams.shadingColorAlpha_id75 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id23);
    streams.PositionH_id25 = streams.ShadingPosition_id0;
    streams.DepthVS_id24 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id23 = mul(streams.Position_id22, World_id33);
}
float4 Compute_id45()
{
    return MaterialIndex_id84;
}
float4 Compute_id44(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id51(streams.normalWS_id20), 1);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id69 = normalize(Eye_id32.xyz - streams.PositionWS_id23.xyz);
    streams.shadingColor_id74 = 0;
    ResetStream_id46(streams);
    Compute_id47(streams);
    return float4(streams.shadingColor_id74, streams.shadingColorAlpha_id75);
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
    streams.ColorTarget1_id3 = Compute_id44(streams);
    streams.ColorTarget2_id4 = Compute_id45();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id20, streams.normalWS_id20) > 0)
        streams.normalWS_id20 = normalize(streams.normalWS_id20);
    streams.meshNormalWS_id18 = streams.normalWS_id20;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id18 = mul(streams.meshNormal_id17, (float3x3)WorldInverseTranspose_id35);
    streams.normalWS_id20 = streams.meshNormalWS_id18;
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
    streams.PositionWS_id23 = __input__.PositionWS_id23;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id24 = __input__.DepthVS_id24;
    streams.normalWS_id20 = __input__.normalWS_id20;
    streams.ScreenPosition_id168 = __input__.ScreenPosition_id168;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id168 /= streams.ScreenPosition_id168.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id22 = __input__.Position_id22;
    streams.meshNormal_id17 = __input__.meshNormal_id17;
    VSMain_id19(streams);
    streams.ScreenPosition_id168 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id23 = streams.PositionWS_id23;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id24 = streams.DepthVS_id24;
    __output__.normalWS_id20 = streams.normalWS_id20;
    __output__.ScreenPosition_id168 = streams.ScreenPosition_id168;
    return __output__;
}

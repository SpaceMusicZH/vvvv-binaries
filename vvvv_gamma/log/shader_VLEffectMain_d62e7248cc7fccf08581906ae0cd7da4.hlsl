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
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSpecularColorRoughness}, {ShadingColor3 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 2192]
@C    World_id34 => Transformation.World
@C    WorldInverse_id35 => Transformation.WorldInverse
@C    WorldInverseTranspose_id36 => Transformation.WorldInverseTranspose
@C    WorldView_id37 => Transformation.WorldView
@C    WorldViewInverse_id38 => Transformation.WorldViewInverse
@C    WorldViewProjection_id39 => Transformation.WorldViewProjection
@C    WorldScale_id40 => Transformation.WorldScale
@C    EyeMS_id41 => Transformation.EyeMS
@C    MaterialIndex_id85 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id184 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id186 => LightPointGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id188 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id189 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadow_id192 => ShadowMapReceiverPointCubeMap.WorldToShadow.directLightGroups[3]
@C    InverseWorldToShadow_id193 => ShadowMapReceiverPointCubeMap.InverseWorldToShadow.directLightGroups[3]
@C    DepthBiases_id194 => ShadowMapReceiverPointCubeMap.DepthBiases.directLightGroups[3]
@C    OffsetScales_id195 => ShadowMapReceiverPointCubeMap.OffsetScales.directLightGroups[3]
@C    DepthParameters_id196 => ShadowMapReceiverPointCubeMap.DepthParameters.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    constantColor_id210 => Material.DiffuseValue
cbuffer PerView [Size: 1664]
@C    View_id27 => Transformation.View
@C    ViewInverse_id28 => Transformation.ViewInverse
@C    Projection_id29 => Transformation.Projection
@C    ProjectionInverse_id30 => Transformation.ProjectionInverse
@C    ViewProjection_id31 => Transformation.ViewProjection
@C    ProjScreenRay_id32 => Transformation.ProjScreenRay
@C    Eye_id33 => Transformation.Eye
@C    NearClipPlane_id170 => Camera.NearClipPlane
@C    FarClipPlane_id171 => Camera.FarClipPlane
@C    ZProjection_id172 => Camera.ZProjection
@C    ViewSize_id173 => Camera.ViewSize
@C    AspectRatio_id174 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id88 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id90 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id92 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id93 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id155 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id156 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id157 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id158 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id159 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id160 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id167 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id179 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id180 => LightClustered.ClusterDepthBias
@C    ClusterStride_id181 => LightClustered.ClusterStride
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
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id205 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id205 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id126 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id187 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
@S    GBufferOutputSpecularColorRoughness => bffa7efe5b33b6017b4ec87d2c142a79
@S    Utilities => d8e15010fb2006b8edf6bdc952dd31f0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 6294774bf2f0bcadfc589a4b42753b29
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
//   float4x4 WorldInverseTranspose_id36;// Offset:  128 Size:    64
//   float4x4 WorldView_id37;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id38;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id39; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id40;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id41;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id184;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id186[2];                 // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id188; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id189;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadow_id192[12];  // Offset:  544 Size:   768 [unused]
//   float4x4 InverseWorldToShadow_id193[12];// Offset: 1312 Size:   768 [unused]
//   float DepthBiases_id194[2];        // Offset: 2080 Size:    20 [unused]
//   float OffsetScales_id195[2];       // Offset: 2112 Size:    20 [unused]
//   float2 DepthParameters_id196[2];   // Offset: 2144 Size:    24 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 2176 Size:    16 [unused]
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
//   float4 Eye_id33;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id170;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id171;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id172;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id173;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id174;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id92;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id93;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id155[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id156[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id157[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id158[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id159;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id160;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id167[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id179;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id180;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id181;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id198;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id203[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id204;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id206;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id207;             // Offset: 1632 Size:     4 [unused]
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
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id23.x; v0.y <- __input__.Position_id23.y; v0.z <- __input__.Position_id23.z; v0.w <- __input__.Position_id23.w; 
//   v1.x <- __input__.meshNormal_id18.x; v1.y <- __input__.meshNormal_id18.y; v1.z <- __input__.meshNormal_id18.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id169.x; o3.y <- <VSMain return value>.ScreenPosition_id169.y; o3.z <- <VSMain return value>.ScreenPosition_id169.z; o3.w <- <VSMain return value>.ScreenPosition_id169.w; 
//   o2.x <- <VSMain return value>.DepthVS_id25; o2.y <- <VSMain return value>.normalWS_id21.x; o2.z <- <VSMain return value>.normalWS_id21.y; o2.w <- <VSMain return value>.normalWS_id21.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id24.x; o0.y <- <VSMain return value>.PositionWS_id24.y; o0.z <- <VSMain return value>.PositionWS_id24.z; o0.w <- <VSMain return value>.PositionWS_id24.w
//
#line 1382 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_d62e7248cc7fccf08581906ae0cd7da4.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id24.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id24.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id24.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id24.w

#line 1481
mov o0.xyzw, r0.xyzw

#line 1341
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1481
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1432
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1481
ret 
// Approximately 16 instruction slots used
@G    Pixel => 72145a147353d1a0bcc1817b8e4dcce9
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
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id184;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id186[2];                 // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id188; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id189;// Offset:  536 Size:     8
//   float4x4 WorldToShadow_id192[12];  // Offset:  544 Size:   768
//   float4x4 InverseWorldToShadow_id193[12];// Offset: 1312 Size:   768 [unused]
//   float DepthBiases_id194[2];        // Offset: 2080 Size:    20
//   float OffsetScales_id195[2];       // Offset: 2112 Size:    20
//   float2 DepthParameters_id196[2];   // Offset: 2144 Size:    24
//   float4 _padding_PerDraw_Lighting;  // Offset: 2176 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id210;        // Offset:    0 Size:    16
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
//   float4 Eye_id33;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id170;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id171;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id172;          // Offset:  360 Size:     8
//   float2 ViewSize_id173;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id174;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id92;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id93;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id155[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id156[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id157[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id158[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id159;           // Offset: 1296 Size:     4
//   float OffsetScales_id160;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id167[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id179;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id180;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id181;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id198;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id203[9];   // Offset: 1424 Size:   140
//   float MipCount_id204;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id206;          // Offset: 1568 Size:    64
//   float Intensity_id207;             // Offset: 1632 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearClampCompareLessEqualSampler_id126  sampler_c      NA          NA             s0      1 
// ShadowMapTexture_id187            texture  float4          2d             t0      1 
// ShadowMapTexture_id91             texture  float4          2d             t1      1 
// LightClusters_id177               texture   uint2          3d             t2      1 
// LightIndices_id178                texture    uint         buf             t3      1 
// PointLights_id182                 texture  float4         buf             t4      1 
// SpotLights_id183                  texture  float4         buf             t5      1 
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
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xy w
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
// SV_Target                3   xyzw        3   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[136], dynamicIndexed
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
dcl_output o3.xyzw
dcl_temps 16
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id24.x; v0.y <- __input__.PositionWS_id24.y; v0.z <- __input__.PositionWS_id24.z; v0.w <- __input__.PositionWS_id24.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id25; v2.y <- __input__.normalWS_id21.x; v2.z <- __input__.normalWS_id21.y; v2.w <- __input__.normalWS_id21.z; 
//   v3.x <- __input__.ScreenPosition_id169.x; v3.y <- __input__.ScreenPosition_id169.y; v3.z <- __input__.ScreenPosition_id169.z; v3.w <- __input__.ScreenPosition_id169.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1459 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_d62e7248cc7fccf08581906ae0cd7da4.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id169.x; r0.y <- streams.ScreenPosition_id169.y

#line 1426
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1427
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1189
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z

#line 814
dp2 r0.z, cb2[82].xxxx, cb2[28].zzzz

#line 806
mov r2.w, l(1.000000)

#line 1203
mov r3.xyz, r1.xyzx  // r3.x <- streams.normalWS_id21.x; r3.y <- streams.normalWS_id21.y; r3.z <- streams.normalWS_id21.z
mov r3.w, v0.x  // r3.w <- streams.PositionWS_id24.x
mov r4.yz, v0.yyzy  // r4.y <- streams.PositionWS_id24.y; r4.z <- streams.PositionWS_id24.z
mov r5.xyz, cb1[0].xyzx  // r5.x <- streams.matDiffuseVisible_id71.x; r5.y <- streams.matDiffuseVisible_id71.y; r5.z <- streams.matDiffuseVisible_id71.z
mov r6.xyz, l(0,0,0,0)  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r0.w, v2.x  // r0.w <- streams.DepthVS_id25
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r4.w, r1.w, l(1)
  breakc_nz r4.w

#line 1205
  ige r4.w, r1.w, cb2[25].x
  if_nz r4.w

#line 1207
    break 

#line 1208
  endif 

#line 1129
  dp3 r4.w, r3.xyzx, -cb2[26].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 965
  ishl r5.w, r1.w, l(2)  // r5.w <- cascadeIndexBase

#line 972
  lt r6.w, cb2[r5.w + 83].x, r0.w

#line 975
  and r6.w, r6.w, l(1)  // r6.w <- cascadeIndex

#line 972
  bfi r7.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r1.wwww, l(1, 2, 0, 0)
  lt r7.x, cb2[r7.x + 83].x, r0.w

#line 975
  movc r6.w, r7.x, l(2), r6.w

#line 972
  lt r7.x, cb2[r7.y + 83].x, r0.w

#line 975
  movc r6.w, r7.x, l(3), r6.w

#line 813
  add r7.y, -r4.w, l(1.000000)
  max r7.y, r7.y, l(0.000000)  // r7.y <- normalOffsetScale

#line 814
  mul r7.y, r0.z, r7.y

#line 980
  mov r4.x, r3.w
  mad r2.xyz, r7.yyyy, r3.xyzx, r4.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 806
  bfi r4.x, l(30), l(2), r1.w, r6.w
  ishl r7.y, r6.w, l(2)
  bfi r7.y, l(30), l(4), r1.w, r7.y
  dp4 r8.x, r2.xyzw, cb2[r7.y + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r2.xyzw, cb2[r7.y + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r7.z, r2.xyzw, cb2[r7.y + 31].xyzw  // r7.z <- shadowPosition.z
  dp4 r7.y, r2.xyzw, cb2[r7.y + 32].xyzw  // r7.y <- shadowPosition.w

#line 807
  add r8.z, r7.z, -cb2[81].x  // r8.z <- shadowPosition.z

#line 808
  div r7.yzw, r8.xxyz, r7.yyyy  // r7.y <- shadowPosition.x; r7.z <- shadowPosition.y; r7.w <- shadowPosition.z

#line 619
  mad r7.yz, r7.yyzy, cb2[28].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r8.xy, r7.yzyy  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 620
  add r7.yz, r7.yyzy, -r8.xxyx  // r7.y <- st.x; r7.z <- st.y

#line 621
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 622
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 428
  mad r8.zw, -r7.zzzy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r8.z <- uvW0.y; r8.w <- uvW0.x

#line 430
  mad r9.xy, r7.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uvW2.x; r9.y <- uvW2.y

#line 431
  mad r9.zw, -r7.yyyz, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r9.zw, r9.zzzw, r8.wwwz
  add r10.xw, r9.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 432
  add r9.zw, r7.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000)
  mul r10.yz, r9.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 433
  div r7.yz, r7.yyzy, r9.xxyx
  add r11.xy, r7.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 434
  mul r7.y, r8.z, r8.w

#line 435
  mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r8.xyxy

#line 439
  mov r11.zw, r10.wwwy

#line 437
  mul r9.zw, r8.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 438
  mad r13.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy

#line 439
  mad r14.xyzw, r11.xzxw, cb2[28].zwzw, r8.xyxy

#line 440
  mov r10.y, r11.y
  mul r8.zw, r8.zzzw, r9.xxxy

#line 441
  mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 442
  mad r8.xy, r11.xyxx, cb2[28].zwzz, r8.xyxx
  mul r7.z, r9.y, r9.x

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.x, r12.xyxx, t1.xxxx, s0, r7.w  // r9.x <- <SampleTextureAndCompare_id73 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.y, r12.zwzz, t1.xxxx, s0, r7.w  // r9.y <- <SampleTextureAndCompare_id73 return value>

#line 707
  mul r9.y, r9.y, r9.z
  mad r7.y, r7.y, r9.x, r9.y  // r7.y <- shadow

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r9.x, r14.xyxx, t1.xxxx, s0, r7.w  // r9.x <- <SampleTextureAndCompare_id73 return value>

#line 707
  mad r7.y, r8.z, r9.x, r7.y

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r13.xyxx, t1.xxxx, s0, r7.w  // r8.z <- <SampleTextureAndCompare_id73 return value>

#line 707
  mad r7.y, r9.w, r8.z, r7.y

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r13.zwzz, t1.xxxx, s0, r7.w

#line 707
  mad r7.y, r8.z, l(49.000000), r7.y

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r14.zwzz, t1.xxxx, s0, r7.w

#line 707
  mad r7.y, r11.z, r8.z, r7.y

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r10.xyxx, t1.xxxx, s0, r7.w

#line 707
  mad r7.y, r8.w, r8.z, r7.y

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r10.zwzz, t1.xxxx, s0, r7.w

#line 707
  mad r7.y, r11.w, r8.z, r7.y

#line 614
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r8.xyxx, t1.xxxx, s0, r7.w  // r7.w <- <SampleTextureAndCompare_id73 return value>

#line 707
  mad r7.y, r7.z, r7.w, r7.y

#line 709
  mul r8.xyz, r7.yyyy, l(0.006944, 0.006944, 0.006944, 0.000000)  // r8.z <- shadow

#line 986
  ilt r7.z, l(0), r6.w
  if_nz r7.z

#line 988
    iadd r7.z, r4.x, l(-1)
    add r7.z, -cb2[r7.z + 83].x, cb2[r4.x + 83].x  // r7.z <- splitSize

#line 989
  else 
    mov r7.z, cb2[r4.x + 83].x  // r7.z <- splitSize
  endif 

#line 990
  add r4.x, -r0.w, cb2[r4.x + 83].x
  div r4.x, r4.x, r7.z  // r4.x <- splitDist

#line 991
  lt r7.z, r4.x, l(0.200000)
  if_nz r7.z

#line 994
    if_nz r7.x

#line 996
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 993
      mul_sat r4.x, r4.x, l(5.000000)
      mad r7.x, r4.x, l(-2.000000), l(3.000000)
      mul r4.x, r4.x, r4.x
      mul r4.x, r4.x, r7.x  // r4.x <- lerpAmt

#line 806
      ishl r5.w, r5.w, l(2)
      imad r5.w, r6.w, l(4), r5.w
      iadd r5.w, r5.w, l(4)
      dp4 r9.x, r2.xyzw, cb2[r5.w + 29].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r2.xyzw, cb2[r5.w + 30].xyzw  // r9.y <- shadowPosition.y
      dp4 r6.w, r2.xyzw, cb2[r5.w + 31].xyzw  // r6.w <- shadowPosition.z
      dp4 r2.x, r2.xyzw, cb2[r5.w + 32].xyzw  // r2.x <- shadowPosition.w

#line 807
      add r9.z, r6.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 808
      div r2.xyz, r9.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 619
      mad r2.xy, r2.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r7.xz, r2.xxyx  // r7.x <- base_uv.x; r7.z <- base_uv.y

#line 620
      add r2.xy, r2.xyxx, -r7.xzxx  // r2.x <- st.x; r2.y <- st.y

#line 621
      add r7.xz, r7.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)

#line 622
      mul r7.xz, r7.xxzx, cb2[28].zzwz

#line 428
      mad r9.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.x <- uvW0.y; r9.y <- uvW0.x

#line 430
      mad r9.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uvW2.x; r9.w <- uvW2.y

#line 431
      mad r10.xy, -r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r10.xy, r10.xyxx, r9.yxyy
      add r10.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 432
      add r11.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r10.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 433
      div r2.xy, r2.xyxx, r9.zwzz
      add r11.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 442
      mul r2.xy, r9.xwxx, r9.yzyy

#line 435
      mad r12.xyzw, r10.xwzw, cb2[28].zwzw, r7.xzxz

#line 439
      mov r11.zw, r10.wwwy

#line 437
      mul r13.xy, r9.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 438
      mad r14.xyzw, r10.xyzy, cb2[28].zwzw, r7.xzxz

#line 439
      mad r15.xyzw, r11.xzxw, cb2[28].zwzw, r7.xzxz

#line 440
      mov r10.y, r11.y
      mul r9.xy, r9.xyxx, r9.zwzz

#line 441
      mad r10.xyzw, r10.xyzy, cb2[28].zwzw, r7.xzxz
      mul r11.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 442
      mad r7.xz, r11.xxyx, cb2[28].zzwz, r7.xxzx

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.xyxx, t1.xxxx, s0, r2.z  // r5.w <- <SampleTextureAndCompare_id73 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r12.zwzz, t1.xxxx, s0, r2.z  // r6.w <- <SampleTextureAndCompare_id73 return value>

#line 707
      mul r6.w, r6.w, r13.x
      mad r2.x, r2.x, r5.w, r6.w  // r2.x <- shadow

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t1.xxxx, s0, r2.z  // r5.w <- <SampleTextureAndCompare_id73 return value>

#line 707
      mad r2.x, r9.x, r5.w, r2.x

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.xyxx, t1.xxxx, s0, r2.z

#line 707
      mad r2.x, r13.y, r5.w, r2.x

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.zwzz, t1.xxxx, s0, r2.z

#line 707
      mad r2.x, r5.w, l(49.000000), r2.x

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t1.xxxx, s0, r2.z

#line 707
      mad r2.x, r11.z, r5.w, r2.x

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r10.xyxx, t1.xxxx, s0, r2.z

#line 707
      mad r2.x, r9.y, r5.w, r2.x

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r10.zwzz, t1.xxxx, s0, r2.z

#line 707
      mad r2.x, r11.w, r5.w, r2.x

#line 614
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r7.xzxx, t1.xxxx, s0, r2.z  // r2.z <- <SampleTextureAndCompare_id73 return value>

#line 707
      mad r2.x, r2.y, r2.z, r2.x

#line 709
      mul r2.x, r2.x, l(0.006944)

#line 1000
      mad r2.y, r7.y, l(0.006944), -r2.x
      mad r8.xyz, r4.xxxx, r2.yyyy, r2.xxxx  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 1001
    endif 

#line 1002
  endif 

#line 1131
  mul r2.xyz, r8.xyzx, cb2[27].xyzx
  mul r2.xyz, r4.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id46.x; r2.y <- streams.lightColorNdotL_id46.y; r2.z <- streams.lightColorNdotL_id46.z

#line 1117
  mul r2.xyz, r2.xyzx, r5.xyzx

#line 1213
  mad r6.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 1203
  iadd r1.w, r1.w, l(1)

#line 1215
endloop 

#line 949
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 950
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 951
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 952
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 951
ftoi r2.xyz, r0.xyzx  // r2.z <- slice

#line 952
mov r2.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r2.xyzw, t2.xyzw  // r0.x <- streams.lightData_id175.x; r0.y <- streams.lightData_id175.y

#line 1108
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id194 return value>

#line 1223
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id21.x; r2.y <- streams.normalWS_id21.y; r2.z <- streams.normalWS_id21.z
mov r2.w, v0.x  // r2.w <- streams.PositionWS_id24.x
mov r3.yz, v0.yyzy  // r3.y <- streams.PositionWS_id24.y; r3.z <- streams.PositionWS_id24.z
mov r4.xyz, cb1[0].xyzx  // r4.x <- streams.matDiffuseVisible_id71.x; r4.y <- streams.matDiffuseVisible_id71.y; r4.z <- streams.matDiffuseVisible_id71.z
mov r5.xyz, r6.xyzx  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z
mov r7.x, r0.x  // r7.x <- streams.lightIndex_id176
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 1225
  if_nz r1.w

#line 1227
    break 

#line 1228
  endif 

#line 936
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r7.xxxx, t3.yzwx  // r1.w <- realLightIndex

#line 937
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id176

#line 939
  ishl r3.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.xyzw, r3.wwww, t4.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w

#line 940
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r1.wwww, t4.wxyz  // r7.y <- pointLight2.x; r7.z <- pointLight2.y; r7.w <- pointLight2.z

#line 673
  mov r3.x, r2.w
  add r8.xyz, -r3.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 674
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r3.x, r1.w  // r3.x <- lightVectorLength

#line 675
  div r8.xyz, r8.xyzx, r3.xxxx  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 560
  max r3.x, r1.w, l(0.000100)
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x  // r3.x <- attenuation

#line 410
  mul r1.w, r8.w, r1.w  // r1.w <- factor

#line 411
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 412
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id87 return value>

#line 561
  mul r1.w, r1.w, r3.x  // r1.w <- attenuation

#line 1094
  dp3 r3.x, r2.xyzx, r8.xyzx
  max r3.x, r3.x, l(0.000100)  // r3.x <- streams.NdotL_id51

#line 1096
  mul r7.yzw, r1.wwww, r7.yyzw
  mul r7.yzw, r3.xxxx, r7.yyzw  // r7.y <- streams.lightColorNdotL_id46.x; r7.z <- streams.lightColorNdotL_id46.y; r7.w <- streams.lightColorNdotL_id46.z

#line 1117
  mul r7.yzw, r7.yyzw, r4.xxyz

#line 1233
  mad r5.xyz, r7.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r5.xyzx

#line 1223
  iadd r0.w, r0.w, l(1)

#line 1235
endloop   // r7.x <- streams.lightIndex_id176

#line 1086
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id206 return value>

#line 1243
mov r0.yzw, v0.xxyz  // r0.y <- streams.PositionWS_id24.x; r0.z <- streams.PositionWS_id24.y; r0.w <- streams.PositionWS_id24.z
mov r2.xyz, r1.xyzx
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id71.x; r3.y <- streams.matDiffuseVisible_id71.y; r3.z <- streams.matDiffuseVisible_id71.z
mov r4.xyz, r5.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r7.x  // r1.w <- streams.lightIndex_id176
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 1245
  if_nz r3.w

#line 1247
    break 

#line 1248
  endif 

#line 908
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t3.yzwx  // r3.w <- realLightIndex

#line 909
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id176

#line 911
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r6.xyz, r4.wwww, t5.xyzw  // r6.x <- spotLight1.x; r6.y <- spotLight1.y; r6.z <- spotLight1.z

#line 914
  bfi r7.yzw, l(0, 30, 30, 30), l(0, 2, 2, 2), r3.wwww, l(0, 1, 2, 3)

#line 912
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.yyyy, t5.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 913
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t5.xyzw  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.z <- spotLight3.z

#line 914
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r7.wwww, t5.wxyz  // r7.y <- spotLight4.x; r7.z <- spotLight4.y; r7.w <- spotLight4.z

#line 660
  add r6.xyz, -r0.yzwy, r6.xyzx  // r6.x <- lightVector.x; r6.y <- lightVector.y; r6.z <- lightVector.z

#line 661
  dp3 r3.w, r6.xyzx, r6.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 662
  div r6.xyz, r6.xyzx, r4.wwww  // r6.x <- lightVectorNorm.x; r6.y <- lightVectorNorm.y; r6.z <- lightVectorNorm.z

#line 553
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 404
  mul r3.w, r9.z, r3.w  // r3.w <- factor

#line 405
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 406
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id98 return value>

#line 554
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 545
  dp3 r4.w, -r8.xyzx, r6.xyzx  // r4.w <- cd

#line 546
  mad_sat r4.w, r4.w, r9.x, r9.y  // r4.w <- attenuation

#line 547
  mul r4.w, r4.w, r4.w

#line 668
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1072
  dp3 r4.w, r2.xyzx, r6.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id51

#line 1074
  mul r6.xyz, r3.wwww, r7.yzwy
  mul r6.xyz, r4.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id46.x; r6.y <- streams.lightColorNdotL_id46.y; r6.z <- streams.lightColorNdotL_id46.z

#line 1117
  mul r6.xyz, r3.xyzx, r6.xyzx

#line 1253
  mad r4.xyz, r6.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1243
  iadd r2.w, r2.w, l(1)

#line 1255
endloop   // r1.w <- streams.lightIndex_id176

#line 761
add r0.x, cb0[33].z, cb0[33].z

#line 869
mov r2.w, l(4)
mov r3.xz, l(0,0,2,0)

#line 875
mov r5.w, l(1.000000)

#line 1263
mov r0.yzw, v0.xxyz
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r7.xyz, cb1[0].xyzx  // r7.x <- streams.matDiffuseVisible_id71.x; r7.y <- streams.matDiffuseVisible_id71.y; r7.z <- streams.matDiffuseVisible_id71.z
mov r8.xyz, r4.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r4.w, r1.w, l(2)
  breakc_nz r4.w

#line 1265
  ige r4.w, r1.w, cb0[28].x
  if_nz r4.w

#line 1267
    break 

#line 1268
  endif 

#line 888
  ishl r4.w, r1.w, l(1)

#line 652
  add r9.xyz, -r0.yzwy, cb0[r4.w + 29].xyzx  // r9.x <- lightVector.x; r9.y <- lightVector.y; r9.z <- lightVector.z

#line 653
  dp3 r6.w, r9.xyzx, r9.xyzx
  sqrt r7.w, r6.w  // r7.w <- lightVectorLength

#line 654
  div r9.xyz, r9.xyzx, r7.wwww  // r9.x <- lightVectorNorm.x; r9.y <- lightVectorNorm.y; r9.z <- lightVectorNorm.z

#line 539
  max r7.w, r6.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 398
  mul r6.w, r6.w, cb0[r4.w + 29].w  // r6.w <- factor

#line 399
  mad r6.w, -r6.w, r6.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- smoothFactor

#line 400
  mul r6.w, r6.w, r6.w  // r6.w <- <SmoothDistanceAttenuation_id109 return value>

#line 540
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 1050
  dp3 r7.w, r6.xyzx, r9.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id51

#line 847
  add r2.xyz, r0.yzwy, -cb0[r4.w + 29].xyzx  // r2.x <- lightDelta.x; r2.y <- lightDelta.y; r2.z <- lightDelta.z

#line 848
  dp3 r8.w, r2.xyzx, r2.xyzx
  sqrt r8.w, r8.w  // r8.w <- distanceToLight

#line 849
  div r9.xyz, r2.xyzx, r8.wwww  // r9.x <- direction.x; r9.y <- direction.y; r9.z <- direction.z

#line 851
  max r8.w, |r9.z|, |r9.y|
  max r8.w, r8.w, |r9.x|  // r8.w <- longestAxis

#line 860
  eq r9.xy, r8.wwww, |r9.xyxx|

#line 869
  mov r3.yw, r2.zzzx
  movc r2.xy, r9.yyyy, r2.wyww, r3.xyxx  // r2.x <- faceIndex; r2.y <- lightSpaceZ
  movc r2.xy, r9.xxxx, r3.zwzz, r2.xyxx

#line 878
  add r2.z, |r2.y|, -cb0[r1.w + 130].x  // r2.z <- lightSpaceZ

#line 879
  div r2.z, cb0[r1.w + 134].y, r2.z
  add r2.z, r2.z, cb0[r1.w + 134].x  // r2.z <- depth

#line 880
  lt r3.y, r2.z, l(0.000000)
  lt r3.w, l(1.000000), r2.z
  or r3.y, r3.w, r3.y

#line 882
  if_z r3.y

#line 870
    lt r3.y, l(0.000000), r2.y
    lt r2.y, r2.y, l(0.000000)
    iadd r2.y, -r3.y, r2.y
    itof r2.y, r2.y  // r2.y <- lightSpaceZDirection

#line 871
    min r2.y, r2.y, l(0.000000)
    ftoi r2.y, -r2.y
    iadd r2.x, r2.y, r2.x

#line 872
    imad r2.x, r1.w, l(6), r2.x

#line 760
    add r2.y, -r7.w, l(1.000000)
    max r2.y, r2.y, l(0.000000)  // r2.y <- normalOffsetScale

#line 761
    mul r3.y, r0.x, cb0[r1.w + 132].x
    mul r2.y, r2.y, r3.y

#line 874
    mad r5.xyz, r2.yyyy, r6.xyzx, r0.yzwy  // r5.x <- positionWS.x; r5.y <- positionWS.y; r5.z <- positionWS.z

#line 875
    ishl r2.x, r2.x, l(2)
    dp4 r9.x, r5.xyzw, cb0[r2.x + 34].xyzw  // r9.x <- projectedPosition.x
    dp4 r9.y, r5.xyzw, cb0[r2.x + 35].xyzw  // r9.y <- projectedPosition.y
    dp4 r2.x, r5.xyzw, cb0[r2.x + 37].xyzw  // r2.x <- projectedPosition.w

#line 876
    div r2.xy, r9.xyxx, r2.xxxx  // r2.x <- projectedPosition.x; r2.y <- projectedPosition.y

#line 631
    mad r2.xy, r2.xyxx, cb0[33].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
    round_ni r3.yw, r2.xxxy  // r3.y <- base_uv.x; r3.w <- base_uv.y

#line 632
    add r2.xy, r2.xyxx, -r3.ywyy  // r2.x <- st.x; r2.y <- st.y

#line 633
    add r3.yw, r3.yyyw, l(0.000000, -0.500000, 0.000000, -0.500000)

#line 634
    mul r3.yw, r3.yyyw, cb0[33].zzzw

#line 336
    mad r5.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r5.x <- uvW0.y; r5.y <- uvW0.x

#line 338
    mad r9.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uvW2.x; r9.y <- uvW2.y

#line 339
    mad r9.zw, -r2.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
    div r9.zw, r9.zzzw, r5.yyyx
    add r10.xw, r9.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 340
    add r9.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
    mul r10.yz, r9.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 341
    div r2.xy, r2.xyxx, r9.xyxx
    add r11.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- uv2.x; r11.y <- uv2.y

#line 342
    mul r2.x, r5.x, r5.y

#line 343
    mad r12.xyzw, r10.xwzw, cb0[33].zwzw, r3.ywyw

#line 347
    mov r11.zw, r10.wwwy

#line 345
    mul r9.zw, r5.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 346
    mad r13.xyzw, r10.xyzy, cb0[33].zwzw, r3.ywyw

#line 347
    mad r14.xyzw, r11.xzxw, cb0[33].zwzw, r3.ywyw

#line 348
    mov r10.y, r11.y
    mul r5.xy, r5.xyxx, r9.xyxx

#line 349
    mad r10.xyzw, r10.xyzy, cb0[33].zwzw, r3.ywyw
    mul r11.zw, r9.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 350
    mad r3.yw, r11.xxxy, cb0[33].zzzw, r3.yyyw
    mul r2.y, r9.y, r9.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r12.xyxx, t0.xxxx, s0, r2.z  // r5.z <- <SampleTextureAndCompare_id121 return value>
    sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r12.zwzz, t0.xxxx, s0, r2.z  // r8.w <- <SampleTextureAndCompare_id121 return value>

#line 752
    mul r8.w, r8.w, r9.z
    mad r2.x, r2.x, r5.z, r8.w  // r2.x <- shadow

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.z, r14.xyxx, t0.xxxx, s0, r2.z  // r5.z <- <SampleTextureAndCompare_id121 return value>

#line 752
    mad r2.x, r5.x, r5.z, r2.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r13.xyxx, t0.xxxx, s0, r2.z  // r5.x <- <SampleTextureAndCompare_id121 return value>

#line 752
    mad r2.x, r9.w, r5.x, r2.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r13.zwzz, t0.xxxx, s0, r2.z

#line 752
    mad r2.x, r5.x, l(49.000000), r2.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r14.zwzz, t0.xxxx, s0, r2.z

#line 752
    mad r2.x, r11.z, r5.x, r2.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r10.xyxx, t0.xxxx, s0, r2.z

#line 752
    mad r2.x, r5.y, r5.x, r2.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r10.zwzz, t0.xxxx, s0, r2.z

#line 752
    mad r2.x, r11.w, r5.x, r2.x

#line 626
    sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r3.ywyy, t0.xxxx, s0, r2.z  // r2.z <- <SampleTextureAndCompare_id121 return value>

#line 752
    mad r2.x, r2.y, r2.z, r2.x

#line 754
    mul r2.xyz, r2.xxxx, l(0.006944, 0.006944, 0.006944, 0.000000)  // r2.z <- shadow

#line 883
  else   // Prior locations: r9.z <- direction.z; r8.w <- longestAxis; r2.x <- faceIndex; r2.z <- depth
    mov r2.xyz, l(1.000000,1.000000,1.000000,0)
  endif 

#line 1052
  mul r5.xyz, r6.wwww, cb0[r4.w + 30].xyzx
  mul r2.xyz, r2.xyzx, r5.xyzx
  mul r2.xyz, r7.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id46.x; r2.y <- streams.lightColorNdotL_id46.y; r2.z <- streams.lightColorNdotL_id46.z

#line 1117
  mul r2.xyz, r2.xyzx, r7.xyzx

#line 1273
  mad r8.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx

#line 1263
  iadd r1.w, r1.w, l(1)

#line 1275
endloop 

#line 1027
dp3 r0.x, r1.xyzx, cb2[98].xyzx  // r0.x <- sampleDirection.x
dp3 r0.y, r1.xyzx, cb2[99].xyzx  // r0.y <- sampleDirection.y
dp3 r0.z, r1.xyzx, cb2[100].xyzx  // r0.z <- sampleDirection.z

#line 719
mul r0.w, r0.y, r0.y  // r0.w <- y2

#line 720
mul r1.w, r0.z, r0.z  // r1.w <- z2

#line 724
mad r2.xyz, cb2[90].xyzx, r0.yyyy, cb2[89].xyzx  // r2.x <- color.x; r2.y <- color.y; r2.z <- color.z

#line 725
mad r2.xyz, cb2[91].xyzx, -r0.zzzz, r2.xyzx

#line 726
mad r2.xyz, cb2[92].xyzx, r0.xxxx, r2.xyzx

#line 729
mul r3.xyz, r0.yyyy, cb2[93].xyzx
mad r2.xyz, r3.xyzx, r0.xxxx, r2.xyzx

#line 730
mul r3.xyz, r0.yyyy, cb2[94].xyzx
mad r2.xyz, r3.xyzx, -r0.zzzz, r2.xyzx

#line 731
mad r0.y, r1.w, l(3.000000), l(-1.000000)
mad r2.xyz, cb2[95].xyzx, r0.yyyy, r2.xyzx

#line 732
mul r3.xyz, r0.xxxx, cb2[96].xyzx
mad r2.xyz, r3.xyzx, -r0.zzzz, r2.xyzx

#line 733
mad r0.x, r0.x, r0.x, -r0.w
mad r0.xyz, cb2[97].xyzx, r0.xxxx, r2.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 1029
mul r0.xyz, r0.xyzx, cb2[102].xxxx  // r0.x <- streams.envLightDiffuseColor_id49.x; r0.y <- streams.envLightDiffuseColor_id49.y; r0.z <- streams.envLightDiffuseColor_id49.z

#line 1038
mul r0.xyz, r0.xyzx, cb1[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id270 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id270 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id270 return value>.z

#line 1291
mad r0.xyz, cb1[0].xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1302
mad o0.xyz, r8.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1351
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1386
utof o3.xyzw, cb0[26].xxxx

#line 1466
mov o0.w, cb1[0].w
mov o1.w, l(1.000000)
mov o2.xyzw, l(0,0,0,1.000000)
ret 
// Approximately 416 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id89 = 1;
const static int TCascadeCountBase_id153 = 4;
const static int TLightCountBase_id154 = 1;
const static int TCascadeCount_id161 = 4;
const static int TLightCount_id162 = 1;
const static bool TBlendCascades_id163 = true;
const static bool TDepthRangeAuto_id164 = true;
const static bool TCascadeDebug_id165 = false;
const static bool TComputeTransmittance_id166 = false;
const static int TFilterSize_id168 = 5;
const static int TMaxLightCount_id185 = 2;
const static int TLightCount_id191 = 2;
const static int TFilterSize_id197 = 5;
const static int TOrder_id200 = 3;
const static int TOrder_id202 = 3;
static const float PI_id213 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id214 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id169;
    float3 normalWS_id21;
    float4 PositionWS_id24;
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
    float thicknessWS_id87;
    float3 shadowColor_id86;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id175;
    int lightIndex_id176;
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
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id23;
    float3 meshNormal_id18;
    float4 PositionH_id26;
    float3 meshNormalWS_id19;
    float4 PositionWS_id24;
    float4 ShadingPosition_id0;
    float DepthVS_id25;
    float3 normalWS_id21;
    float4 ScreenPosition_id169;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id25 : DEPTH_VS;
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
};
struct VS_INPUT 
{
    float4 Position_id23 : POSITION;
    float3 meshNormal_id18 : NORMAL;
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
    uint MaterialIndex_id85;
    float4 _padding_PerDraw_Default;
    int LightCount_id184;
    PointLightData Lights_id186[TMaxLightCount_id185];
    float2 ShadowMapTextureSize_id188;
    float2 ShadowMapTextureTexelSize_id189;
    float4x4 WorldToShadow_id192[TLightCount_id191 * 6];
    float4x4 InverseWorldToShadow_id193[TLightCount_id191 * 6];
    float DepthBiases_id194[TLightCount_id191];
    float OffsetScales_id195[TLightCount_id191];
    float2 DepthParameters_id196[TLightCount_id191];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 constantColor_id210;
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
    float NearClipPlane_id170 = 1.0f;
    float FarClipPlane_id171 = 100.0f;
    float2 ZProjection_id172;
    float2 ViewSize_id173;
    float AspectRatio_id174;
    float4 _padding_PerView_Default;
    int LightCount_id88;
    DirectionalLightData Lights_id90[TMaxLightCount_id89];
    float2 ShadowMapTextureSize_id92;
    float2 ShadowMapTextureTexelSize_id93;
    float4x4 WorldToShadowCascadeUV_id155[TCascadeCountBase_id153 * TLightCountBase_id154];
    float4x4 InverseWorldToShadowCascadeUV_id156[TCascadeCountBase_id153 * TLightCountBase_id154];
    float4x4 ViewMatrices_id157[TCascadeCountBase_id153 * TLightCountBase_id154];
    float2 DepthRanges_id158[TCascadeCountBase_id153 * TLightCountBase_id154];
    float DepthBiases_id159[TLightCountBase_id154];
    float OffsetScales_id160[TLightCountBase_id154];
    float CascadeDepthSplits_id167[TCascadeCount_id161 * TLightCount_id162];
    float ClusterDepthScale_id179;
    float ClusterDepthBias_id180;
    float2 ClusterStride_id181;
    float3 AmbientLight_id198;
    float3 SphericalColors_id203[TOrder_id202 * TOrder_id202];
    float MipCount_id204;
    float4x4 SkyMatrix_id206;
    float Intensity_id207;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id95;
    float2 Texture1TexelSize_id97;
    float2 Texture2TexelSize_id99;
    float2 Texture3TexelSize_id101;
    float2 Texture4TexelSize_id103;
    float2 Texture5TexelSize_id105;
    float2 Texture6TexelSize_id107;
    float2 Texture7TexelSize_id109;
    float2 Texture8TexelSize_id111;
    float2 Texture9TexelSize_id113;
};
Texture2D Texture0_id94;
Texture2D Texture1_id96;
Texture2D Texture2_id98;
Texture2D Texture3_id100;
Texture2D Texture4_id102;
Texture2D Texture5_id104;
Texture2D Texture6_id106;
Texture2D Texture7_id108;
Texture2D Texture8_id110;
Texture2D Texture9_id112;
TextureCube TextureCube0_id114;
TextureCube TextureCube1_id115;
TextureCube TextureCube2_id116;
TextureCube TextureCube3_id117;
Texture3D Texture3D0_id118;
Texture3D Texture3D1_id119;
Texture3D Texture3D2_id120;
Texture3D Texture3D3_id121;
SamplerState Sampler_id122;
SamplerState PointSampler_id123 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id125 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id126 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id127 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id128 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id130 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id131 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id132;
SamplerState Sampler1_id133;
SamplerState Sampler2_id134;
SamplerState Sampler3_id135;
SamplerState Sampler4_id136;
SamplerState Sampler5_id137;
SamplerState Sampler6_id138;
SamplerState Sampler7_id139;
SamplerState Sampler8_id140;
SamplerState Sampler9_id141;
Texture2D ShadowMapTexture_id187;
Texture2D ShadowMapTexture_id91;
Texture3D<uint2> LightClusters_id177;
Buffer<uint> LightIndices_id178;
Buffer<float4> PointLights_id182;
Buffer<float4> SpotLights_id183;
TextureCube CubeMap_id205;
float4 Project_id114(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float4 Project_id65(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float Get3x3FilterKernel_id123(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id189, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id189, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id122(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id189, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id189, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id189, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id124(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id187.SampleLevel(LinearBorderSampler_id125, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id114(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id120(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id189, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id189, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id189, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id189, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id189, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id189, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id189, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id189, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id189, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id189, uvW3.x * uvW3.y);
    return 2704.0;
}
float SmoothDistanceAttenuation_id109(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id98(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id87(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id75(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id74(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id93, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id76(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id91.SampleLevel(LinearBorderSampler_id125, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id65(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id72(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id93, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id93, uvW3.x * uvW3.y);
    return 2704.0;
}
float SampleAndFilter_id128(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id188;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id189;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id122(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id124(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id127(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id114(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id114(float4(ShadowMapTextureTexelSize_id189.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id114(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id126(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id114(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id114(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id189.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id114(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id125()
{

    {
        return 3.5;
    }
}
float GetDistanceAttenuation_id111(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id109(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id100(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id99(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id98(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id89(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id87(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id80(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id92;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id93;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id74(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id76(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id79(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id65(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id65(float4(ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id65(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id78(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id65(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id65(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id65(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id77()
{

    {
        return 3.5;
    }
}
float SampleTextureAndCompare_id73(float2 position, float positionDepth)
{
    return ShadowMapTexture_id91.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
void CalculatePCFKernelParameters_id71(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id92;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id93;
}
float SampleTextureAndCompare_id121(float2 position, float positionDepth)
{
    return ShadowMapTexture_id187.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
void CalculatePCFKernelParameters_id119(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id188;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id189;
}
float FilterThickness_id115(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id127(GetFilterRadiusInPixels_id125(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id126(GetFilterRadiusInPixels_id125(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id128(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float ComputeAttenuation_id110(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id111(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id101(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id99(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id100(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id88(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id89(lightVectorLength, lightInvSquareRadius);
}
float FilterThickness_id67(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id79(GetFilterRadiusInPixels_id77(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id78(GetFilterRadiusInPixels_id77(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id80(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id66(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id71(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id74(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id73(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float4 EvaluateSphericalHarmonics_id137(float3 sphericalColors[TOrder_id200 * TOrder_id200], float3 direction)
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
float FilterShadow_id118(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id119(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id122(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id121(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float3 GetShadowPositionOffset_id117(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id189.x * offsetScale * normalOffsetScale * normal;
}
float ComputeThickness_id116(inout PS_STREAMS streams, float3 positionWS, int cascadeIndex)
{
    float tempThickness = 0.0;
    const bool ComputeThickness = true;

    {
        tempThickness = FilterThickness_id115(positionWS, streams.meshNormalWS_id19, float2(0.0f, 1.0f), WorldToShadow_id192[cascadeIndex], InverseWorldToShadow_id193[cascadeIndex], false);
    }
    return tempThickness;
}
void ProcessLight_id112(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id110(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id102(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id101(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id91(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id88(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float ComputeThicknessFromCascade_id70(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id153;
    return FilterThickness_id67(pixelPositionWS, meshNormalWS, DepthRanges_id158[arrayIndex], WorldToShadowCascadeUV_id155[arrayIndex], InverseWorldToShadowCascadeUV_id156[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id69(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id155[cascadeIndex + lightIndex * TCascadeCountBase_id153]);
    shadowPosition.z -= DepthBiases_id159[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id66(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id68(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id93.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id253(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id204;
    return CubeMap_id205.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id248(float3 direction)
{
    return EvaluateSphericalHarmonics_id137(SphericalColors_id203, direction);
}
void PrepareEnvironmentLight_id141(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id132(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id108(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id107(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id106(inout PS_STREAMS streams, float3 positionWS, int lightIndex)
{
    float3 lightPosition = Lights_id186[lightIndex].PositionWS.xyz;
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
    streams.thicknessWS_id87 = ComputeThickness_id116(streams, positionWS, cascadeIndex);
    positionWS += GetShadowPositionOffset_id117(OffsetScales_id195[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    float4 projectedPosition = mul(float4(positionWS, 1), WorldToShadow_id192[cascadeIndex]);
    projectedPosition /= projectedPosition.w;
    lightSpaceZ = abs(lightSpaceZ);
    lightSpaceZ -= DepthBiases_id194[lightIndex];
    float depth = DepthParameters_id196[lightIndex].x + (DepthParameters_id196[lightIndex].y / lightSpaceZ);
    if (depth < 0 || depth > 1)
        return 1;
    float shadow = FilterShadow_id118(projectedPosition.xy, depth);
    return (shadow);
}
void PrepareDirectLightCore_id105(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id186[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id186[lightIndex].InvSquareRadius;
    data.Color = Lights_id186[lightIndex].Color;
    ProcessLight_id112(streams, data);
}
float3 ComputeSpecularTextureProjection_id97(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id96(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id95(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id94(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id183.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id183.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id183.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id183.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id102(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id86(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id85(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id84(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id83(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id182.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id182.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id91(streams, pointLight);
}
void PrepareLightData_id90(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id172.y / (projectedDepth - ZProjection_id172.x);
    float2 texCoord = float2(streams.ScreenPosition_id169.x + 1, 1 - streams.ScreenPosition_id169.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id179 + ClusterDepthBias_id180), 0));
    streams.lightData_id175 = LightClusters_id177.Load(int4(texCoord * ClusterStride_id181, slice, 0));
    streams.lightIndex_id176 = streams.lightData_id175.x;
}
float3 ComputeSpecularTextureProjection_id62(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id61(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id60(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id161;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id161 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id25 > CascadeDepthSplits_id167[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id68(OffsetScales_id160[lightIndex], streams.NdotL_id51, streams.normalWS_id21);
    if (cascadeIndex < TCascadeCount_id161)
    {
        shadow = ComputeShadowFromCascade_id69(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id167[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id167[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id25) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id161 - 1)
            {
            }
            else if (TBlendCascades_id163)
            {
                float nextShadow = ComputeShadowFromCascade_id69(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id87 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id59(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id90[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id90[lightIndex].DirectionWS;
}
void ResetStream_id156()
{
}
void AfterLightingAndShading_id277()
{
}
void PrepareEnvironmentLight_id266(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id263(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id141(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id206);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id248(sampleDirection).rgb * Intensity_id207 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id206);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id253(streams, sampleDirection).rgb * Intensity_id207 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id270(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id258(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id132(streams);
    float3 lightColor = AmbientLight_id198 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id216(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id105(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id106(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id107(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id108(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id218()
{
    return LightCount_id184;
}
int GetMaxLightCount_id220()
{
    return TMaxLightCount_id185;
}
void PrepareDirectLights_id214()
{
}
void PrepareDirectLight_id203(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id94(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id95(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id96(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id97(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id207(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
int GetMaxLightCount_id206(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
void PrepareDirectLights_id201()
{
}
void PrepareDirectLight_id190(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id83(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id84(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id85(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id86(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id195(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
int GetMaxLightCount_id194(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
void PrepareDirectLights_id193(inout PS_STREAMS streams)
{
    PrepareLightData_id90(streams);
}
float3 ComputeDirectLightContribution_id269(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id213 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id166(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id59(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id60(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id61(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id62(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id168()
{
    return LightCount_id88;
}
int GetMaxLightCount_id169()
{
    return TMaxLightCount_id89;
}
void PrepareDirectLights_id164()
{
}
void PrepareForLightingAndShading_id274()
{
}
void PrepareMaterialForLightingAndShading_id155(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id154(inout PS_STREAMS streams)
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
float4 Compute_id267()
{
    return constantColor_id210;
}
void ResetStream_id157(inout PS_STREAMS streams)
{
    ResetStream_id156();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id311(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id154(streams);
    PrepareMaterialForLightingAndShading_id155(streams);

    {
        PrepareForLightingAndShading_id274();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id164();
        const int maxLightCount = GetMaxLightCount_id169();
        int count = GetLightCount_id168();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id166(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id269(streams);
            }
        }
    }

    {
        PrepareDirectLights_id193(streams);
        const int maxLightCount = GetMaxLightCount_id194(streams);
        int count = GetLightCount_id195(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id190(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id269(streams);
            }
        }
    }

    {
        PrepareDirectLights_id201();
        const int maxLightCount = GetMaxLightCount_id206(streams);
        int count = GetLightCount_id207(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id203(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id269(streams);
            }
        }
    }

    {
        PrepareDirectLights_id214();
        const int maxLightCount = GetMaxLightCount_id220();
        int count = GetLightCount_id218();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id216(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id269(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id258(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id270(streams);
        }
    }

    {
        PrepareEnvironmentLight_id263(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id270(streams);
        }
    }

    {
        PrepareEnvironmentLight_id266(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id270(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id213 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id277();
    }
}
void Compute_id295(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id267();
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id158(inout PS_STREAMS streams)
{
    ResetStream_id157(streams);
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
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id31);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
float3 EncodeNormal_id53(float3 n)
{
    return n * 0.5 + 0.5;
}
void Compute_id49(inout PS_STREAMS streams)
{

    {
        Compute_id295(streams);
    }

    {
        Compute_id311(streams);
    }
}
void ResetStream_id48(inout PS_STREAMS streams)
{
    ResetStream_id158(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id24);
    streams.PositionH_id26 = streams.ShadingPosition_id0;
    streams.DepthVS_id25 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id24 = mul(streams.Position_id23, World_id34);
}
float4 Compute_id47()
{
    return MaterialIndex_id85;
}
float4 Compute_id46(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id73, sqrt(streams.alphaRoughness_id72));
}
float4 Compute_id45(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id53(streams.normalWS_id21), 1);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id48(streams);
    Compute_id49(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
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
    streams.ColorTarget1_id3 = Compute_id45(streams);
    streams.ColorTarget2_id4 = Compute_id46(streams);
    streams.ColorTarget3_id5 = Compute_id47();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id21, streams.normalWS_id21) > 0)
        streams.normalWS_id21 = normalize(streams.normalWS_id21);
    streams.meshNormalWS_id19 = streams.normalWS_id21;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id19 = mul(streams.meshNormal_id18, (float3x3)WorldInverseTranspose_id36);
    streams.normalWS_id21 = streams.meshNormalWS_id19;
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
    streams.PositionWS_id24 = __input__.PositionWS_id24;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id25 = __input__.DepthVS_id25;
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.ScreenPosition_id169 = __input__.ScreenPosition_id169;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id169 /= streams.ScreenPosition_id169.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    __output__.ColorTarget3_id5 = streams.ColorTarget3_id5;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id23 = __input__.Position_id23;
    streams.meshNormal_id18 = __input__.meshNormal_id18;
    VSMain_id19(streams);
    streams.ScreenPosition_id169 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id24 = streams.PositionWS_id24;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id25 = streams.DepthVS_id25;
    __output__.normalWS_id21 = streams.normalWS_id21;
    __output__.ScreenPosition_id169 = streams.ScreenPosition_id169;
    return __output__;
}

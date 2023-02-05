/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<1>, ShadowMapReceiverSpot<1,false>, ShadowMapFilterPcf<PerDraw.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, EnvironmentLight
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
@C    MaterialIndex_id83 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id101 => DirectLightGroupPerDraw.LightCount.directLightGroups[2]
@C    Lights_id103 => LightSpotGroup.Lights.directLightGroups[2]
@C    ShadowMapTextureSize_id105 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id106 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id168 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    InverseWorldToShadowCascadeUV_id169 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[2]
@C    ViewMatrices_id170 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[2]
@C    DepthRanges_id171 => ShadowMapReceiverBase.DepthRanges.directLightGroups[2]
@C    DepthBiases_id172 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id173 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    constantColor_id178 => Material.DiffuseValue
cbuffer PerView [Size: 448]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id87 => Camera.NearClipPlane
@C    FarClipPlane_id88 => Camera.FarClipPlane
@C    ZProjection_id89 => Camera.ZProjection
@C    ViewSize_id90 => Camera.ViewSize
@C    AspectRatio_id91 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    ClusterDepthScale_id96 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id97 => LightClustered.ClusterDepthBias
@C    ClusterStride_id98 => LightClustered.ClusterStride
@C    AmbientLight_id177 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id104 => ShadowMap.ShadowMapTexture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id104 => ShadowMap.ShadowMapTexture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id94 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id94 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id95 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id95 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id99 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id99 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id100 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id100 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id139 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id104 => ShadowMap.ShadowMapTexture.directLightGroups[2] [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id94 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id95 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id99 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id100 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
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
@S    ShadowMapReceiverBase => ecd55bb03a327260ea2ea0fddfaff4b5
@S    ShadowMapGroup => 6cd78766a20ef1d6d95cbbe5eec432b6
@S    ShadowMapCommon => 53c84311eb33d99ade37ecb188ae5785
@S    ShadowMapFilterBase => e42061be9b71cb375d3566138e7d8b8d
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    ShadowMapFilterPcf => 1d20b8b1db946ed23a9d876bb8750e3c
@S    LightSimpleAmbient => 1be2895cd80f1f25f0225844e19b3398
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
@G    Vertex => 2393b57aa6b88307537fc5f609f5655b
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
//   int LightCount_id101;              // Offset:  448 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id103;                    // Offset:  464 Size:    60 [unused]
//   float2 ShadowMapTextureSize_id105; // Offset:  528 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id106;// Offset:  536 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id168;// Offset:  544 Size:    64 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id169;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id170;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id171;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id172;           // Offset:  752 Size:     4 [unused]
//   float OffsetScales_id173;          // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
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
//   float NearClipPlane_id87;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id88;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id89;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id90;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id91;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   float ClusterDepthScale_id96;      // Offset:  400 Size:     4 [unused]
//   float ClusterDepthBias_id97;       // Offset:  404 Size:     4 [unused]
//   float2 ClusterStride_id98;         // Offset:  408 Size:     8 [unused]
//   float3 AmbientLight_id177;         // Offset:  416 Size:    12 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  432 Size:    16 [unused]
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
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID86_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id86.x; o3.y <- <VSMain return value>.ScreenPosition_id86.y; o3.z <- <VSMain return value>.ScreenPosition_id86.z; o3.w <- <VSMain return value>.ScreenPosition_id86.w; 
//   o2.x <- <VSMain return value>.normalWS_id19.x; o2.y <- <VSMain return value>.normalWS_id19.y; o2.z <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 885 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_378aae5e23113a3b46ab41446ec75e9e.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 970
mov o0.xyzw, r0.xyzw

#line 848
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 970
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 925
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 970
ret 
// Approximately 15 instruction slots used
@G    Pixel => 044b5e4b341ab13294e9bc9eb3d4b01a
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
//   int LightCount_id101;              // Offset:  448 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id103;                    // Offset:  464 Size:    60
//   float2 ShadowMapTextureSize_id105; // Offset:  528 Size:     8
//   float2 ShadowMapTextureTexelSize_id106;// Offset:  536 Size:     8
//   float4x4 WorldToShadowCascadeUV_id168;// Offset:  544 Size:    64
//   float4x4 InverseWorldToShadowCascadeUV_id169;// Offset:  608 Size:    64 [unused]
//   float4x4 ViewMatrices_id170;       // Offset:  672 Size:    64 [unused]
//   float2 DepthRanges_id171;          // Offset:  736 Size:     8 [unused]
//   float DepthBiases_id172;           // Offset:  752 Size:     4
//   float OffsetScales_id173;          // Offset:  768 Size:     4
//   float4 _padding_PerDraw_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id178;        // Offset:    0 Size:    16
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
//   float NearClipPlane_id87;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id88;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id89;           // Offset:  360 Size:     8
//   float2 ViewSize_id90;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id91;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   float ClusterDepthScale_id96;      // Offset:  400 Size:     4
//   float ClusterDepthBias_id97;       // Offset:  404 Size:     4
//   float2 ClusterStride_id98;         // Offset:  408 Size:     8
//   float3 AmbientLight_id177;         // Offset:  416 Size:    12
//   float4 _padding_PerView_Lighting;  // Offset:  432 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearClampCompareLessEqualSampler_id139  sampler_c      NA          NA             s0      1 
// ShadowMapTexture_id104            texture  float4          2d             t0      1 
// LightClusters_id94                texture   uint2          3d             t1      1 
// LightIndices_id95                 texture    uint         buf             t2      1 
// PointLights_id99                  texture  float4         buf             t3      1 
// SpotLights_id100                  texture  float4         buf             t4      1 
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
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID86_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_constantbuffer CB0[49], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[27], immediateIndexed
dcl_sampler s0, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 10
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id86.x; v3.y <- __input__.ScreenPosition_id86.y; v3.z <- __input__.ScreenPosition_id86.z; v3.w <- __input__.ScreenPosition_id86.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 951 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_378aae5e23113a3b46ab41446ec75e9e.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id86.x; r0.y <- streams.ScreenPosition_id86.y

#line 919
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 920
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 724
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 575
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 576
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[25].zwzz

#line 577
mad r0.z, r0.z, cb2[25].x, cb2[25].y
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 578
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 577
ftoi r2.xyz, r0.xyzx  // r2.z <- slice

#line 578
mov r2.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r2.xyzw, t1.xyzw  // r0.x <- streams.lightData_id92.x; r0.y <- streams.lightData_id92.y

#line 677
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id126 return value>

#line 738
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r2.w, v0.x  // r2.w <- streams.PositionWS_id22.x
mov r3.yz, v0.yyzy  // r3.y <- streams.PositionWS_id22.y; r3.z <- streams.PositionWS_id22.z
mov r4.xyz, cb1[0].xyzx  // r4.x <- streams.matDiffuseVisible_id69.x; r4.y <- streams.matDiffuseVisible_id69.y; r4.z <- streams.matDiffuseVisible_id69.z
mov r5.xyz, l(0,0,0,0)  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z
mov r6.x, r0.x  // r6.x <- streams.lightIndex_id93
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 740
  if_nz r1.w

#line 742
    break 

#line 743
  endif 

#line 562
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r6.xxxx, t2.yzwx  // r1.w <- realLightIndex

#line 563
  iadd r6.x, r6.x, l(1)  // r6.x <- streams.lightIndex_id93

#line 565
  ishl r3.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.xyzw, r3.wwww, t3.xyzw  // r7.x <- pointLight1.x; r7.y <- pointLight1.y; r7.z <- pointLight1.z; r7.w <- pointLight1.w

#line 566
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r6.yzw, r1.wwww, t3.wxyz  // r6.y <- pointLight2.x; r6.z <- pointLight2.y; r6.w <- pointLight2.z

#line 442
  mov r3.x, r2.w
  add r7.xyz, -r3.xyzx, r7.xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 443
  dp3 r1.w, r7.xyzx, r7.xyzx
  sqrt r3.x, r1.w  // r3.x <- lightVectorLength

#line 444
  div r7.xyz, r7.xyzx, r3.xxxx  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 390
  max r3.x, r1.w, l(0.000100)
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x  // r3.x <- attenuation

#line 284
  mul r1.w, r7.w, r1.w  // r1.w <- factor

#line 285
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 286
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id50 return value>

#line 391
  mul r1.w, r1.w, r3.x  // r1.w <- attenuation

#line 663
  dp3 r3.x, r2.xyzx, r7.xyzx
  max r3.x, r3.x, l(0.000100)  // r3.x <- streams.NdotL_id49

#line 665
  mul r6.yzw, r1.wwww, r6.yyzw
  mul r6.yzw, r3.xxxx, r6.yyzw  // r6.y <- streams.lightColorNdotL_id44.x; r6.z <- streams.lightColorNdotL_id44.y; r6.w <- streams.lightColorNdotL_id44.z

#line 651
  mul r6.yzw, r6.yyzw, r4.xxyz

#line 748
  mad r5.xyz, r6.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r5.xyzx

#line 738
  iadd r0.w, r0.w, l(1)

#line 750
endloop   // r6.x <- streams.lightIndex_id93

#line 643
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id138 return value>

#line 758
mov r0.yzw, r1.xxyz  // r0.y <- streams.normalWS_id19.x; r0.z <- streams.normalWS_id19.y; r0.w <- streams.normalWS_id19.z
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id22.x; r2.y <- streams.PositionWS_id22.y; r2.z <- streams.PositionWS_id22.z
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id69.x; r3.y <- streams.matDiffuseVisible_id69.y; r3.z <- streams.matDiffuseVisible_id69.z
mov r4.xyz, r5.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r6.x  // r1.w <- streams.lightIndex_id93
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 760
  if_nz r3.w

#line 762
    break 

#line 763
  endif 

#line 534
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t2.yzwx  // r3.w <- realLightIndex

#line 535
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id93

#line 537
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r6.yzw, r4.wwww, t4.wxyz  // r6.y <- spotLight1.x; r6.z <- spotLight1.y; r6.w <- spotLight1.z

#line 540
  bfi r7.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r3.wwww, l(1, 2, 3, 0)

#line 538
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.xxxx, t4.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 539
  ld_indexable(buffer)(float,float,float,float) r7.xyw, r7.yyyy, t4.xywz  // r7.x <- spotLight3.x; r7.y <- spotLight3.y; r7.w <- spotLight3.z

#line 540
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t4.xyzw  // r9.x <- spotLight4.x; r9.y <- spotLight4.y; r9.z <- spotLight4.z

#line 429
  add r6.yzw, -r2.xxyz, r6.yyzw  // r6.y <- lightVector.x; r6.z <- lightVector.y; r6.w <- lightVector.z

#line 430
  dp3 r3.w, r6.yzwy, r6.yzwy
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 431
  div r6.yzw, r6.yyzw, r4.wwww  // r6.y <- lightVectorNorm.x; r6.z <- lightVectorNorm.y; r6.w <- lightVectorNorm.z

#line 383
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 278
  mul r3.w, r7.w, r3.w  // r3.w <- factor

#line 279
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 280
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id61 return value>

#line 384
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 375
  dp3 r4.w, -r8.xyzx, r6.yzwy  // r4.w <- cd

#line 376
  mad_sat r4.w, r4.w, r7.x, r7.y  // r4.w <- attenuation

#line 377
  mul r4.w, r4.w, r4.w

#line 437
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 629
  dp3 r4.w, r0.yzwy, r6.yzwy
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 631
  mul r6.yzw, r3.wwww, r9.xxyz
  mul r6.yzw, r4.wwww, r6.yyzw  // r6.y <- streams.lightColorNdotL_id44.x; r6.z <- streams.lightColorNdotL_id44.y; r6.w <- streams.lightColorNdotL_id44.z

#line 651
  mul r6.yzw, r3.xxyz, r6.yyzw

#line 768
  mad r4.xyz, r6.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 758
  iadd r2.w, r2.w, l(1)

#line 770
endloop   // r1.w <- streams.lightIndex_id93

#line 784
ilt r0.x, l(0), cb0[28].x
if_nz r0.x

#line 416
  add r0.xyz, -v0.xyzx, cb0[29].xyzx  // r0.x <- lightVector.x; r0.y <- lightVector.y; r0.z <- lightVector.z

#line 417
  dp3 r0.w, r0.xyzx, r0.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength

#line 418
  div r0.xyz, r0.xyzx, r1.wwww  // r0.x <- lightVectorNorm.x; r0.y <- lightVectorNorm.y; r0.z <- lightVectorNorm.z

#line 369
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 272
  mul r0.w, r0.w, cb0[31].z  // r0.w <- factor

#line 273
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor

#line 274
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id72 return value>

#line 370
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 361
  dp3 r1.w, -cb0[30].xyzx, r0.xyzx  // r1.w <- cd

#line 362
  mad_sat r1.w, r1.w, cb0[31].x, cb0[31].y  // r1.w <- attenuation

#line 363
  mul r1.w, r1.w, r1.w

#line 424
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 607
  dp3 r0.x, r1.xyzx, r0.xyzx
  max r0.x, r0.x, l(0.000100)  // r0.x <- streams.NdotL_id49

#line 457
  add r0.y, -r0.x, l(1.000000)
  max r0.y, r0.y, l(0.000000)  // r0.y <- normalOffsetScale

#line 458
  mul r0.z, cb0[33].z, cb0[48].x
  dp2 r0.y, r0.zzzz, r0.yyyy

#line 501
  mad r1.xyz, r0.yyyy, r1.xyzx, v0.xyzx  // r1.x <- shadowPosition.x; r1.y <- shadowPosition.y; r1.z <- shadowPosition.z

#line 450
  mov r1.w, l(1.000000)
  dp4 r2.x, r1.xyzw, cb0[34].xyzw  // r2.x <- shadowPosition.x
  dp4 r2.y, r1.xyzw, cb0[35].xyzw  // r2.y <- shadowPosition.y
  dp4 r0.y, r1.xyzw, cb0[36].xyzw  // r0.y <- shadowPosition.z
  dp4 r0.z, r1.xyzw, cb0[37].xyzw  // r0.z <- shadowPosition.w

#line 451
  add r2.z, r0.y, -cb0[47].x  // r2.z <- shadowPosition.z

#line 452
  div r1.xyz, r2.xyzx, r0.zzzz  // r1.x <- shadowPosition.x; r1.y <- shadowPosition.y; r1.z <- shadowPosition.z

#line 354
  mad r0.yz, r1.xxyx, cb0[33].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r1.xy, r0.yzyy  // r1.x <- base_uv.x; r1.y <- base_uv.y

#line 355
  add r0.yz, r0.yyzy, -r1.xxyx  // r0.y <- st.x; r0.z <- st.y

#line 356
  add r1.xy, r1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 357
  mul r1.xy, r1.xyxx, cb0[33].zwzz

#line 302
  mad r2.xy, -r0.zyzz, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r2.x <- uvW0.y; r2.y <- uvW0.x

#line 304
  mad r2.zw, r0.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r2.z <- uvW2.x; r2.w <- uvW2.y

#line 305
  mad r3.xy, -r0.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r3.xy, r3.xyxx, r2.yxyy
  add r3.xw, r3.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r3.x <- uv0.x; r3.w <- uv0.y

#line 306
  add r5.xy, r0.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000)
  mul r3.yz, r5.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r3.y <- uv1.y; r3.z <- uv1.x

#line 307
  div r0.yz, r0.yyzy, r2.zzwz
  add r5.xy, r0.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r5.x <- uv2.x; r5.y <- uv2.y

#line 316
  mul r0.yz, r2.xxwx, r2.yyzy

#line 309
  mad r6.xyzw, r3.xwzw, cb0[33].zwzw, r1.xyxy

#line 313
  mov r5.zw, r3.wwwy

#line 311
  mul r7.xy, r2.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 312
  mad r8.xyzw, r3.xyzy, cb0[33].zwzw, r1.xyxy

#line 313
  mad r9.xyzw, r5.xzxw, cb0[33].zwzw, r1.xyxy

#line 314
  mov r3.y, r5.y
  mul r2.xy, r2.xyxx, r2.zwzz

#line 315
  mad r3.xyzw, r3.xyzy, cb0[33].zwzw, r1.xyxy
  mul r5.zw, r2.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 316
  mad r1.xy, r5.xyxx, cb0[33].zwzz, r1.xyxx

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r6.xyxx, t0.xxxx, s0, r1.z  // r1.w <- <SampleTextureAndCompare_id86 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r6.zwzz, t0.xxxx, s0, r1.z  // r2.z <- <SampleTextureAndCompare_id86 return value>

#line 408
  mul r2.z, r2.z, r7.x
  mad r0.y, r0.y, r1.w, r2.z  // r0.y <- shadow

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r9.xyxx, t0.xxxx, s0, r1.z  // r1.w <- <SampleTextureAndCompare_id86 return value>

#line 408
  mad r0.y, r2.x, r1.w, r0.y

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r8.xyxx, t0.xxxx, s0, r1.z

#line 408
  mad r0.y, r7.y, r1.w, r0.y

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r8.zwzz, t0.xxxx, s0, r1.z

#line 408
  mad r0.y, r1.w, l(49.000000), r0.y

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r9.zwzz, t0.xxxx, s0, r1.z

#line 408
  mad r0.y, r5.z, r1.w, r0.y

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r3.xyxx, t0.xxxx, s0, r1.z

#line 408
  mad r0.y, r2.y, r1.w, r0.y

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t0.xxxx, s0, r1.z

#line 408
  mad r0.y, r5.w, r1.w, r0.y

#line 321
  sample_c_lz_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t0.xxxx, s0, r1.z  // r1.x <- <SampleTextureAndCompare_id86 return value>

#line 408
  mad r0.y, r0.z, r1.x, r0.y

#line 410
  mul r0.y, r0.y, l(0.006944)

#line 609
  mul r1.xyz, r0.wwww, cb0[32].xyzx
  mul r0.yzw, r0.yyyy, r1.xxyz
  mul r0.xyz, r0.xxxx, r0.yzwy  // r0.x <- streams.lightColorNdotL_id44.x; r0.y <- streams.lightColorNdotL_id44.y; r0.z <- streams.lightColorNdotL_id44.z

#line 651
  mul r0.xyz, r0.xyzx, cb1[0].xyzx

#line 788
  mad r4.xyz, r0.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 789
endif 

#line 595
mul r0.xyz, cb1[0].xyzx, cb2[26].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id177 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id177 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id177 return value>.z

#line 809
mad o0.xyz, r4.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 889
utof o1.xyzw, cb0[26].xxxx

#line 956
mov o0.w, cb1[0].w
ret 
// Approximately 188 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id102 = 1;
const static int TCascadeCountBase_id166 = 1;
const static int TLightCountBase_id167 = 1;
const static bool TCascadeDebug_id175 = false;
const static int TFilterSize_id176 = 5;
static const float PI_id181 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id182 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id86;
    float3 normalWS_id19;
    float4 PositionWS_id22;
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
    uint2 lightData_id92;
    int lightIndex_id93;
    float thicknessWS_id85;
    float3 shadowColor_id84;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
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
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id86 : SCREENPOSITION_ID86_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id86;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id86 : SCREENPOSITION_ID86_SEM;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    float3 meshNormal_id16 : NORMAL;
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
    int LightCount_id101;
    SpotLightData Lights_id103[TMaxLightCount_id102];
    float2 ShadowMapTextureSize_id105;
    float2 ShadowMapTextureTexelSize_id106;
    float4x4 WorldToShadowCascadeUV_id168[TCascadeCountBase_id166 * TLightCountBase_id167];
    float4x4 InverseWorldToShadowCascadeUV_id169[TCascadeCountBase_id166 * TLightCountBase_id167];
    float4x4 ViewMatrices_id170[TCascadeCountBase_id166 * TLightCountBase_id167];
    float2 DepthRanges_id171[TCascadeCountBase_id166 * TLightCountBase_id167];
    float DepthBiases_id172[TLightCountBase_id167];
    float OffsetScales_id173[TLightCountBase_id167];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 constantColor_id178;
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
    float NearClipPlane_id87 = 1.0f;
    float FarClipPlane_id88 = 100.0f;
    float2 ZProjection_id89;
    float2 ViewSize_id90;
    float AspectRatio_id91;
    float4 _padding_PerView_Default;
    float ClusterDepthScale_id96;
    float ClusterDepthBias_id97;
    float2 ClusterStride_id98;
    float3 AmbientLight_id177;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id108;
    float2 Texture1TexelSize_id110;
    float2 Texture2TexelSize_id112;
    float2 Texture3TexelSize_id114;
    float2 Texture4TexelSize_id116;
    float2 Texture5TexelSize_id118;
    float2 Texture6TexelSize_id120;
    float2 Texture7TexelSize_id122;
    float2 Texture8TexelSize_id124;
    float2 Texture9TexelSize_id126;
};
Texture2D Texture0_id107;
Texture2D Texture1_id109;
Texture2D Texture2_id111;
Texture2D Texture3_id113;
Texture2D Texture4_id115;
Texture2D Texture5_id117;
Texture2D Texture6_id119;
Texture2D Texture7_id121;
Texture2D Texture8_id123;
Texture2D Texture9_id125;
TextureCube TextureCube0_id127;
TextureCube TextureCube1_id128;
TextureCube TextureCube2_id129;
TextureCube TextureCube3_id130;
Texture3D Texture3D0_id131;
Texture3D Texture3D1_id132;
Texture3D Texture3D2_id133;
Texture3D Texture3D3_id134;
SamplerState Sampler_id135;
SamplerState PointSampler_id136 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id137 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id138 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id139 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id140 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id141 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id142 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id143 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id144 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id145;
SamplerState Sampler1_id146;
SamplerState Sampler2_id147;
SamplerState Sampler3_id148;
SamplerState Sampler4_id149;
SamplerState Sampler5_id150;
SamplerState Sampler6_id151;
SamplerState Sampler7_id152;
SamplerState Sampler8_id153;
SamplerState Sampler9_id154;
Texture2D ShadowMapTexture_id104;
Texture3D<uint2> LightClusters_id94;
Buffer<uint> LightIndices_id95;
Buffer<float4> PointLights_id99;
Buffer<float4> SpotLights_id100;
float SmoothDistanceAttenuation_id72(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id61(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id50(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id88(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id106, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id106, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id106, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id106, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id87(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id106, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id106, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id106, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id106, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id106, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id106, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id106, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id106, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id106, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleTextureAndCompare_id86(float2 position, float positionDepth)
{
    return ShadowMapTexture_id104.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id139, position, positionDepth);
}
float Get7x7FilterKernel_id85(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id106, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id106, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id106, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id106, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id106, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id106, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id106, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id106, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id106, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id106, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id106, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id106, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id106, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id106, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id106, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id106, uvW3.x * uvW3.y);
    return 2704.0;
}
void CalculatePCFKernelParameters_id84(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id105;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id106;
}
float GetAngularAttenuation_id74(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id73(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id72(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id63(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id62(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id61(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id52(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id50(d2, lightInvSquareRadius);
    return attenuation;
}
float FilterShadow_id80(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id84(position, base_uv, st);

    {
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id87(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id86(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id75(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id73(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id74(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id64(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id62(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id63(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id51(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id52(lightVectorLength, lightInvSquareRadius);
}
float ComputeShadowFromCascade_id83(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id168[cascadeIndex + lightIndex * TCascadeCountBase_id166]);
    shadowPosition.z -= DepthBiases_id172[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id80(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id82(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id106.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id76(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id75(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id65(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id64(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id54(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id51(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void PrepareEnvironmentLight_id97(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id71(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id70(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id69(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id82(OffsetScales_id173[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id83(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id85 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id68(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id103[lightIndex].PositionWS;
    data.DirectionWS = Lights_id103[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id103[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id103[lightIndex].Color;
    ProcessLight_id76(streams, data);
}
float3 ComputeSpecularTextureProjection_id60(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id59(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id58(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id57(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id95.Load(streams.lightIndex_id93);
    streams.lightIndex_id93++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id100.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id100.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id100.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id100.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id65(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id49(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id48(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id47(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id46(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id95.Load(streams.lightIndex_id93);
    streams.lightIndex_id93++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id99.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id99.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id54(streams, pointLight);
}
void PrepareLightData_id53(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id89.y / (projectedDepth - ZProjection_id89.x);
    float2 texCoord = float2(streams.ScreenPosition_id86.x + 1, 1 - streams.ScreenPosition_id86.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id96 + ClusterDepthBias_id97), 0));
    streams.lightData_id92 = LightClusters_id94.Load(int4(texCoord * ClusterStride_id98, slice, 0));
    streams.lightIndex_id93 = streams.lightData_id92.x;
}
void ResetStream_id112()
{
}
void AfterLightingAndShading_id184()
{
}
void PrepareEnvironmentLight_id173(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeEnvironmentLightContribution_id177(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id170(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id97(streams);
    float3 lightColor = AmbientLight_id177 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id147(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id68(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id69(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id70(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id71(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id149()
{
    return LightCount_id101;
}
int GetMaxLightCount_id150()
{
    return TMaxLightCount_id102;
}
void PrepareDirectLights_id145()
{
}
void PrepareDirectLight_id135(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id57(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id58(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id59(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id60(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id139(inout PS_STREAMS streams)
{
    return streams.lightData_id92.y >> 16;
}
int GetMaxLightCount_id138(inout PS_STREAMS streams)
{
    return streams.lightData_id92.y >> 16;
}
void PrepareDirectLights_id133()
{
}
float3 ComputeDirectLightContribution_id176(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id181 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id122(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id46(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id47(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id48(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id49(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id127(inout PS_STREAMS streams)
{
    return streams.lightData_id92.y & 0xFFFF;
}
int GetMaxLightCount_id126(inout PS_STREAMS streams)
{
    return streams.lightData_id92.y & 0xFFFF;
}
void PrepareDirectLights_id125(inout PS_STREAMS streams)
{
    PrepareLightData_id53(streams);
}
void PrepareForLightingAndShading_id181()
{
}
void PrepareMaterialForLightingAndShading_id111(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id110(inout PS_STREAMS streams)
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
float4 Compute_id174()
{
    return constantColor_id178;
}
void ResetStream_id113(inout PS_STREAMS streams)
{
    ResetStream_id112();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id218(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id110(streams);
    PrepareMaterialForLightingAndShading_id111(streams);

    {
        PrepareForLightingAndShading_id181();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id125(streams);
        const int maxLightCount = GetMaxLightCount_id126(streams);
        int count = GetLightCount_id127(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id122(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id176(streams);
            }
        }
    }

    {
        PrepareDirectLights_id133();
        const int maxLightCount = GetMaxLightCount_id138(streams);
        int count = GetLightCount_id139(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id135(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id176(streams);
            }
        }
    }

    {
        PrepareDirectLights_id145();
        const int maxLightCount = GetMaxLightCount_id150();
        int count = GetLightCount_id149();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id147(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id176(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id170(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id177(streams);
        }
    }

    {
        PrepareEnvironmentLight_id173(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id177(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id181 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id184();
    }
}
void Compute_id202(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id174();
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id114(inout PS_STREAMS streams)
{
    ResetStream_id113(streams);
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
void Compute_id43(inout PS_STREAMS streams)
{

    {
        Compute_id202(streams);
    }

    {
        Compute_id218(streams);
    }
}
void ResetStream_id42(inout PS_STREAMS streams)
{
    ResetStream_id114(streams);
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
float4 Compute_id41()
{
    return MaterialIndex_id83;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id42(streams);
    Compute_id43(streams);
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
    streams.ColorTarget1_id3 = Compute_id41();
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
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id86 = __input__.ScreenPosition_id86;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id86 /= streams.ScreenPosition_id86.w;
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
    streams.ScreenPosition_id86 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id86 = streams.ScreenPosition_id86;
    return __output__;
}

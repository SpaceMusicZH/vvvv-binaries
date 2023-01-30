/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightSpotGroup<3>, ShadowMapReceiverSpot<3,false>, ShadowMapFilterPcf<PerDraw.Lighting,3>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1408]
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
@C    Lights_id184 => LightSpotGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id186 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id187 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id191 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    InverseWorldToShadowCascadeUV_id192 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[3]
@C    ViewMatrices_id193 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[3]
@C    DepthRanges_id194 => ShadowMapReceiverBase.DepthRanges.directLightGroups[3]
@C    DepthBiases_id195 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id196 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    constantColor_id212 => Material.DiffuseValue
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
@C    AmbientLight_id200 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id205 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id206 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id208 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id209 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
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
@R    CubeMap_id207 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id207 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id124 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id185 => ShadowMap.ShadowMapTexture.directLightGroups[3] [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id184[3];                 // Offset:  464 Size:   188 [unused]
//   float2 ShadowMapTextureSize_id186; // Offset:  656 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id187;// Offset:  664 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id191[3];// Offset:  672 Size:   192 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id192[3];// Offset:  864 Size:   192 [unused]
//   float4x4 ViewMatrices_id193[3];    // Offset: 1056 Size:   192 [unused]
//   float2 DepthRanges_id194[3];       // Offset: 1248 Size:    40 [unused]
//   float DepthBiases_id195[3];        // Offset: 1296 Size:    36 [unused]
//   float OffsetScales_id196[3];       // Offset: 1344 Size:    36 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 1392 Size:    16 [unused]
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
//   float3 AmbientLight_id200;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id205[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id206;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id208;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id209;             // Offset: 1632 Size:     4 [unused]
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
#line 1272 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_d28e2e777ed74f19376fc7f324fb054d.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1359
mov o0.xyzw, r0.xyzw

#line 1235
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1359
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1312
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1359
ret 
// Approximately 16 instruction slots used
@G    Pixel => 6e42cd69f2b99e3824c5144735aa324e
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
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float3 DirectionWS;            // Offset:  480
//       float3 AngleOffsetAndInvSquareRadius;// Offset:  496
//       float3 Color;                  // Offset:  512
//
//   } Lights_id184[3];                 // Offset:  464 Size:   188
//   float2 ShadowMapTextureSize_id186; // Offset:  656 Size:     8
//   float2 ShadowMapTextureTexelSize_id187;// Offset:  664 Size:     8
//   float4x4 WorldToShadowCascadeUV_id191[3];// Offset:  672 Size:   192
//   float4x4 InverseWorldToShadowCascadeUV_id192[3];// Offset:  864 Size:   192 [unused]
//   float4x4 ViewMatrices_id193[3];    // Offset: 1056 Size:   192 [unused]
//   float2 DepthRanges_id194[3];       // Offset: 1248 Size:    40 [unused]
//   float DepthBiases_id195[3];        // Offset: 1296 Size:    36
//   float OffsetScales_id196[3];       // Offset: 1344 Size:    36
//   float4 _padding_PerDraw_Lighting;  // Offset: 1392 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id212;        // Offset:    0 Size:    16
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
//   float3 AmbientLight_id200;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id205[9];   // Offset: 1424 Size:   140
//   float MipCount_id206;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id208;          // Offset: 1568 Size:    64
//   float Intensity_id209;             // Offset: 1632 Size:     4
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
// ShadowMapTexture_id89             texture  float4          2d             t1      1 
// LightClusters_id175               texture   uint2          3d             t2      1 
// LightIndices_id176                texture    uint         buf             t3      1 
// PointLights_id180                 texture  float4         buf             t4      1 
// SpotLights_id181                  texture  float4         buf             t5      1 
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
dcl_constantbuffer CB0[87], dynamicIndexed
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
dcl_temps 11
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
#line 1339 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_d28e2e777ed74f19376fc7f324fb054d.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id167.x; r0.y <- streams.ScreenPosition_id167.y

#line 1306
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1307
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1083
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1103
ilt r0.z, l(0), cb2[25].x
if_nz r0.z

#line 1023
  dp3 r0.z, r1.xyzx, -cb2[26].xyzx
  max r0.z, r0.z, l(0.000100)  // r0.z <- streams.NdotL_id49

#line 866
  lt r0.w, cb2[83].x, v2.x

#line 869
  and r0.w, r0.w, l(1)  // r0.w <- cascadeIndex

#line 866
  lt r1.w, cb2[84].x, v2.x

#line 869
  movc r0.w, r1.w, l(2), r0.w

#line 866
  lt r1.w, cb2[85].x, v2.x

#line 869
  movc r0.w, r1.w, l(3), r0.w

#line 735
  add r2.x, -r0.z, l(1.000000)
  max r2.x, r2.x, l(0.000000)  // r2.x <- normalOffsetScale

#line 736
  mul r2.y, cb2[28].z, cb2[82].x
  dp2 r2.x, r2.yyyy, r2.xxxx

#line 874
  mad r2.xyz, r2.xxxx, r1.xyzx, v0.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 728
  ishl r3.x, r0.w, l(2)
  mov r2.w, l(1.000000)
  dp4 r4.x, r2.xyzw, cb2[r3.x + 29].xyzw  // r4.x <- shadowPosition.x
  dp4 r4.y, r2.xyzw, cb2[r3.x + 30].xyzw  // r4.y <- shadowPosition.y
  dp4 r3.y, r2.xyzw, cb2[r3.x + 31].xyzw  // r3.y <- shadowPosition.z
  dp4 r3.z, r2.xyzw, cb2[r3.x + 32].xyzw  // r3.z <- shadowPosition.w

#line 729
  add r4.z, r3.y, -cb2[81].x  // r4.z <- shadowPosition.z

#line 730
  div r3.yzw, r4.xxyz, r3.zzzz  // r3.y <- shadowPosition.x; r3.z <- shadowPosition.y; r3.w <- shadowPosition.z

#line 566
  mad r3.yz, r3.yyzy, cb2[28].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r4.xy, r3.yzyy  // r4.x <- base_uv.x; r4.y <- base_uv.y

#line 567
  add r3.yz, r3.yyzy, -r4.xxyx  // r3.y <- st.x; r3.z <- st.y

#line 568
  add r4.xy, r4.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 569
  mul r4.xy, r4.xyxx, cb2[28].zwzz

#line 345
  mad r4.zw, -r3.zzzy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r4.z <- uvW0.y; r4.w <- uvW0.x

#line 347
  mad r5.xy, r3.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r5.x <- uvW2.x; r5.y <- uvW2.y

#line 348
  mad r5.zw, -r3.yyyz, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r5.zw, r5.zzzw, r4.wwwz
  add r6.xw, r5.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r6.x <- uv0.x; r6.w <- uv0.y

#line 349
  add r5.zw, r3.yyyz, l(0.000000, 0.000000, 3.000000, 3.000000)
  mul r6.yz, r5.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r6.y <- uv1.y; r6.z <- uv1.x

#line 350
  div r3.yz, r3.yyzy, r5.xxyx
  add r7.xy, r3.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r7.x <- uv2.x; r7.y <- uv2.y

#line 351
  mul r3.y, r4.z, r4.w

#line 352
  mad r8.xyzw, r6.xwzw, cb2[28].zwzw, r4.xyxy

#line 356
  mov r7.zw, r6.wwwy

#line 354
  mul r5.zw, r4.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 355
  mad r9.xyzw, r6.xyzy, cb2[28].zwzw, r4.xyxy

#line 356
  mad r10.xyzw, r7.xzxw, cb2[28].zwzw, r4.xyxy

#line 357
  mov r6.y, r7.y
  mul r4.zw, r4.zzzw, r5.xxxy

#line 358
  mad r6.xyzw, r6.xyzy, cb2[28].zwzw, r4.xyxy
  mul r7.zw, r5.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 359
  mad r4.xy, r7.xyxx, cb2[28].zwzz, r4.xyxx
  mul r3.z, r5.y, r5.x

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r8.xyxx, t1.xxxx, s0, r3.w  // r5.x <- <SampleTextureAndCompare_id63 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r8.zwzz, t1.xxxx, s0, r3.w  // r5.y <- <SampleTextureAndCompare_id63 return value>

#line 653
  mul r5.y, r5.y, r5.z
  mad r3.y, r3.y, r5.x, r5.y  // r3.y <- shadow

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.x, r10.xyxx, t1.xxxx, s0, r3.w  // r5.x <- <SampleTextureAndCompare_id63 return value>

#line 653
  mad r3.y, r4.z, r5.x, r3.y

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r9.xyxx, t1.xxxx, s0, r3.w  // r4.z <- <SampleTextureAndCompare_id63 return value>

#line 653
  mad r3.y, r5.w, r4.z, r3.y

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r9.zwzz, t1.xxxx, s0, r3.w

#line 653
  mad r3.y, r4.z, l(49.000000), r3.y

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r10.zwzz, t1.xxxx, s0, r3.w

#line 653
  mad r3.y, r7.z, r4.z, r3.y

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r6.xyxx, t1.xxxx, s0, r3.w

#line 653
  mad r3.y, r4.w, r4.z, r3.y

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.z, r6.zwzz, t1.xxxx, s0, r3.w

#line 653
  mad r3.y, r7.w, r4.z, r3.y

#line 561
  sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r4.xyxx, t1.xxxx, s0, r3.w  // r3.w <- <SampleTextureAndCompare_id63 return value>

#line 653
  mad r3.y, r3.z, r3.w, r3.y

#line 655
  mul r4.xyz, r3.yyyy, l(0.006944, 0.006944, 0.006944, 0.000000)  // r4.z <- shadow

#line 880
  ilt r3.z, l(0), r0.w
  if_nz r3.z

#line 882
    iadd r3.z, r0.w, l(-1)
    add r3.z, -cb2[r3.z + 83].x, cb2[r0.w + 83].x  // r3.z <- splitSize

#line 883
  else 
    mov r3.z, cb2[r0.w + 83].x  // r3.z <- splitSize
  endif 

#line 884
  add r0.w, -v2.x, cb2[r0.w + 83].x
  div r0.w, r0.w, r3.z  // r0.w <- splitDist

#line 885
  lt r3.z, r0.w, l(0.200000)
  if_nz r3.z

#line 888
    if_nz r1.w

#line 890
      mov r4.xyz, r4.zzzz  // r4.x <- shadow.x; r4.y <- shadow.y; r4.z <- shadow.z
    else 

#line 887
      mul_sat r0.w, r0.w, l(5.000000)
      mad r1.w, r0.w, l(-2.000000), l(3.000000)
      mul r0.w, r0.w, r0.w
      mul r0.w, r0.w, r1.w  // r0.w <- lerpAmt

#line 728
      dp4 r5.x, r2.xyzw, cb2[r3.x + 33].xyzw  // r5.x <- shadowPosition.x
      dp4 r5.y, r2.xyzw, cb2[r3.x + 34].xyzw  // r5.y <- shadowPosition.y
      dp4 r1.w, r2.xyzw, cb2[r3.x + 35].xyzw  // r1.w <- shadowPosition.z
      dp4 r2.x, r2.xyzw, cb2[r3.x + 36].xyzw  // r2.x <- shadowPosition.w

#line 729
      add r5.z, r1.w, -cb2[81].x  // r5.z <- shadowPosition.z

#line 730
      div r2.xyz, r5.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 566
      mad r2.xy, r2.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r3.xz, r2.xxyx  // r3.x <- base_uv.x; r3.z <- base_uv.y

#line 567
      add r2.xy, r2.xyxx, -r3.xzxx  // r2.x <- st.x; r2.y <- st.y

#line 568
      add r3.xz, r3.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)

#line 569
      mul r3.xz, r3.xxzx, cb2[28].zzwz

#line 345
      mad r5.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r5.x <- uvW0.y; r5.y <- uvW0.x

#line 347
      mad r5.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r5.z <- uvW2.x; r5.w <- uvW2.y

#line 348
      mad r6.xy, -r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
      div r6.xy, r6.xyxx, r5.yxyy
      add r6.xw, r6.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r6.x <- uv0.x; r6.w <- uv0.y

#line 349
      add r7.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
      mul r6.yz, r7.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r6.y <- uv1.y; r6.z <- uv1.x

#line 350
      div r2.xy, r2.xyxx, r5.zwzz
      add r7.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r7.x <- uv2.x; r7.y <- uv2.y

#line 351
      mul r1.w, r5.x, r5.y

#line 352
      mad r8.xyzw, r6.xwzw, cb2[28].zwzw, r3.xzxz

#line 356
      mov r7.zw, r6.wwwy

#line 354
      mul r2.xy, r5.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 355
      mad r9.xyzw, r6.xyzy, cb2[28].zwzw, r3.xzxz

#line 356
      mad r10.xyzw, r7.xzxw, cb2[28].zwzw, r3.xzxz

#line 357
      mov r6.y, r7.y
      mul r5.xy, r5.xyxx, r5.zwzz

#line 358
      mad r6.xyzw, r6.xyzy, cb2[28].zwzw, r3.xzxz
      mul r7.zw, r5.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 359
      mad r3.xz, r7.xxyx, cb2[28].zzwz, r3.xxzx
      mul r2.w, r5.w, r5.z

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r8.xyxx, t1.xxxx, s0, r2.z  // r3.w <- <SampleTextureAndCompare_id63 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r8.zwzz, t1.xxxx, s0, r2.z  // r4.w <- <SampleTextureAndCompare_id63 return value>

#line 653
      mul r2.x, r2.x, r4.w
      mad r1.w, r1.w, r3.w, r2.x  // r1.w <- shadow

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r10.xyxx, t1.xxxx, s0, r2.z  // r2.x <- <SampleTextureAndCompare_id63 return value>

#line 653
      mad r1.w, r5.x, r2.x, r1.w

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r9.xyxx, t1.xxxx, s0, r2.z

#line 653
      mad r1.w, r2.y, r2.x, r1.w

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r9.zwzz, t1.xxxx, s0, r2.z

#line 653
      mad r1.w, r2.x, l(49.000000), r1.w

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r10.zwzz, t1.xxxx, s0, r2.z

#line 653
      mad r1.w, r7.z, r2.x, r1.w

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r6.xyxx, t1.xxxx, s0, r2.z

#line 653
      mad r1.w, r5.y, r2.x, r1.w

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r6.zwzz, t1.xxxx, s0, r2.z

#line 653
      mad r1.w, r7.w, r2.x, r1.w

#line 561
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.x, r3.xzxx, t1.xxxx, s0, r2.z

#line 653
      mad r1.w, r2.w, r2.x, r1.w

#line 655
      mul r1.w, r1.w, l(0.006944)

#line 894
      mad r2.x, r3.y, l(0.006944), -r1.w
      mad r4.xyz, r0.wwww, r2.xxxx, r1.wwww  // r4.x <- shadow.x; r4.y <- shadow.y; r4.z <- shadow.z

#line 895
    endif 

#line 896
  endif 

#line 1025
  mul r2.xyz, r4.xyzx, cb2[27].xyzx
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.lightColorNdotL_id44.x; r2.y <- streams.lightColorNdotL_id44.y; r2.z <- streams.lightColorNdotL_id44.z

#line 1011
  mul r2.xyz, r2.xyzx, cb1[0].xyzx
  mul r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000)  // r2.x <- <ComputeDirectLightContribution_id261 return value>.x; r2.y <- <ComputeDirectLightContribution_id261 return value>.y; r2.z <- <ComputeDirectLightContribution_id261 return value>.z

#line 1108
else 
  mov r2.xyz, l(0,0,0,0)
endif 

#line 843
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 844
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 845
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 846
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 845
ftoi r3.xyz, r0.xyzx  // r3.z <- slice

#line 846
mov r3.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r3.xyzw, t2.xyzw  // r0.x <- streams.lightData_id173.x; r0.y <- streams.lightData_id173.y

#line 1002
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id186 return value>

#line 1117
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

#line 1119
  if_nz r1.w

#line 1121
    break 

#line 1122
  endif 

#line 830
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r7.xxxx, t3.yzwx  // r1.w <- realLightIndex

#line 831
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id174

#line 833
  ishl r2.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.xyzw, r2.wwww, t4.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w

#line 834
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r1.wwww, t4.wxyz  // r7.y <- pointLight2.x; r7.z <- pointLight2.y; r7.w <- pointLight2.z

#line 619
  mov r4.x, r3.w
  add r8.xyz, -r4.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 620
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 621
  div r8.xyz, r8.xyzx, r2.wwww  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 507
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 327
  mul r1.w, r8.w, r1.w  // r1.w <- factor

#line 328
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 329
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id77 return value>

#line 508
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 988
  dp3 r2.w, r3.xyzx, r8.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 990
  mul r7.yzw, r1.wwww, r7.yyzw
  mul r7.yzw, r2.wwww, r7.yyzw  // r7.y <- streams.lightColorNdotL_id44.x; r7.z <- streams.lightColorNdotL_id44.y; r7.w <- streams.lightColorNdotL_id44.z

#line 1011
  mul r7.yzw, r7.yyzw, r5.xxyz

#line 1127
  mad r6.xyz, r7.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 1117
  iadd r0.w, r0.w, l(1)

#line 1129
endloop   // r7.x <- streams.lightIndex_id174

#line 980
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id198 return value>

#line 1137
mov r0.yzw, v0.xxyz  // r0.y <- streams.PositionWS_id22.x; r0.z <- streams.PositionWS_id22.y; r0.w <- streams.PositionWS_id22.z
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id69.x; r3.y <- streams.matDiffuseVisible_id69.y; r3.z <- streams.matDiffuseVisible_id69.z
mov r4.xyz, r6.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r7.x  // r1.w <- streams.lightIndex_id174
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 1139
  if_nz r3.w

#line 1141
    break 

#line 1142
  endif 

#line 802
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t3.yzwx  // r3.w <- realLightIndex

#line 803
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id174

#line 805
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r5.xyz, r4.wwww, t5.xyzw  // r5.x <- spotLight1.x; r5.y <- spotLight1.y; r5.z <- spotLight1.z

#line 808
  bfi r7.yzw, l(0, 30, 30, 30), l(0, 2, 2, 2), r3.wwww, l(0, 1, 2, 3)

#line 806
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.yyyy, t5.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 807
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t5.xyzw  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.z <- spotLight3.z

#line 808
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r7.wwww, t5.wxyz  // r7.y <- spotLight4.x; r7.z <- spotLight4.y; r7.w <- spotLight4.z

#line 606
  add r5.xyz, -r0.yzwy, r5.xyzx  // r5.x <- lightVector.x; r5.y <- lightVector.y; r5.z <- lightVector.z

#line 607
  dp3 r3.w, r5.xyzx, r5.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 608
  div r5.xyz, r5.xyzx, r4.wwww  // r5.x <- lightVectorNorm.x; r5.y <- lightVectorNorm.y; r5.z <- lightVectorNorm.z

#line 500
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 321
  mul r3.w, r9.z, r3.w  // r3.w <- factor

#line 322
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 323
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id88 return value>

#line 501
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 492
  dp3 r4.w, -r8.xyzx, r5.xyzx  // r4.w <- cd

#line 493
  mad_sat r4.w, r4.w, r9.x, r9.y  // r4.w <- attenuation

#line 494
  mul r4.w, r4.w, r4.w

#line 614
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 966
  dp3 r4.w, r2.xyzx, r5.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 968
  mul r5.xyz, r3.wwww, r7.yzwy
  mul r5.xyz, r4.wwww, r5.xyzx  // r5.x <- streams.lightColorNdotL_id44.x; r5.y <- streams.lightColorNdotL_id44.y; r5.z <- streams.lightColorNdotL_id44.z

#line 1011
  mul r5.xyz, r3.xyzx, r5.xyzx

#line 1147
  mad r4.xyz, r5.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 1137
  iadd r2.w, r2.w, l(1)

#line 1149
endloop   // r1.w <- streams.lightIndex_id174

#line 694
add r0.x, cb0[41].z, cb0[41].z

#line 686
mov r2.w, l(1.000000)

#line 1157
mov r0.yzw, v0.xxyz
mov r3.xyz, r1.xyzx  // r3.x <- streams.normalWS_id19.x; r3.y <- streams.normalWS_id19.y; r3.z <- streams.normalWS_id19.z
mov r5.xyz, cb1[0].xyzx  // r5.x <- streams.matDiffuseVisible_id69.x; r5.y <- streams.matDiffuseVisible_id69.y; r5.z <- streams.matDiffuseVisible_id69.z
mov r6.xyz, r4.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(3)
  breakc_nz r3.w

#line 1159
  ige r3.w, r1.w, cb0[28].x
  if_nz r3.w

#line 1161
    break 

#line 1162
  endif 

#line 781
  ishl r3.w, r1.w, l(2)

#line 593
  add r7.xyz, -r0.yzwy, cb0[r3.w + 29].xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z

#line 594
  dp3 r4.w, r7.xyzx, r7.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength

#line 595
  div r7.xyz, r7.xyzx, r5.wwww  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 486
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 315
  mul r4.w, r4.w, cb0[r3.w + 31].z  // r4.w <- factor

#line 316
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 317
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id99 return value>

#line 487
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 478
  dp3 r5.w, -cb0[r3.w + 30].xyzx, r7.xyzx  // r5.w <- cd

#line 479
  mad_sat r5.w, r5.w, cb0[r3.w + 31].x, cb0[r3.w + 31].y  // r5.w <- attenuation

#line 480
  mul r5.w, r5.w, r5.w

#line 601
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 944
  dp3 r5.w, r3.xyzx, r7.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id49

#line 693
  add r6.w, -r5.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- normalOffsetScale

#line 694
  mul r7.x, r0.x, cb0[r1.w + 84].x
  mul r6.w, r6.w, r7.x

#line 769
  mad r2.xyz, r6.wwww, r3.xyzx, r0.yzwy  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 686
  dp4 r7.x, r2.xyzw, cb0[r3.w + 42].xyzw  // r7.x <- shadowPosition.x
  dp4 r7.y, r2.xyzw, cb0[r3.w + 43].xyzw  // r7.y <- shadowPosition.y
  dp4 r6.w, r2.xyzw, cb0[r3.w + 44].xyzw  // r6.w <- shadowPosition.z
  dp4 r2.x, r2.xyzw, cb0[r3.w + 45].xyzw  // r2.x <- shadowPosition.w

#line 687
  add r7.z, r6.w, -cb0[r1.w + 81].x  // r7.z <- shadowPosition.z

#line 688
  div r2.xyz, r7.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 471
  mad r2.xy, r2.xyxx, cb0[41].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r7.xy, r2.xyxx  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 472
  add r2.xy, r2.xyxx, -r7.xyxx  // r2.x <- st.x; r2.y <- st.y

#line 473
  add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 474
  mul r7.xy, r7.xyxx, cb0[41].zwzz

#line 407
  mad r7.zw, -r2.yyyx, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)  // r7.z <- uvW0.y; r7.w <- uvW0.x

#line 408
  mad r8.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r8.x <- uvW1.x; r8.y <- uvW1.y

#line 409
  add r8.zw, -r2.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000)
  div r8.zw, r8.zzzw, r7.wwwz
  add r9.zw, r8.zzzw, l(0.000000, 0.000000, -1.000000, -1.000000)  // r9.z <- uv0.x; r9.w <- uv0.y

#line 410
  div r2.xy, r2.xyxx, r8.xyxx
  add r9.xy, r2.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)  // r9.x <- uv1.x; r9.y <- uv1.y

#line 411
  mul r2.x, r7.z, r7.w

#line 412
  mad r10.xyzw, r9.zwxw, cb0[41].zwzw, r7.xyxy

#line 413
  mul r7.zw, r7.zzzw, r8.xxxy

#line 414
  mad r9.xyzw, r9.zyxy, cb0[41].zwzw, r7.xyxy
  mul r2.y, r8.y, r8.x

#line 438
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r10.xyxx, t0.xxxx, s0, r2.z  // r6.w <- <SampleTextureAndCompare_id113 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r10.zwzz, t0.xxxx, s0, r2.z  // r7.x <- <SampleTextureAndCompare_id113 return value>

#line 585
  mul r7.x, r7.x, r7.z
  mad r2.x, r2.x, r6.w, r7.x  // r2.x <- shadow

#line 438
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r9.xyxx, t0.xxxx, s0, r2.z  // r6.w <- <SampleTextureAndCompare_id113 return value>

#line 585
  mad r2.x, r7.w, r6.w, r2.x

#line 438
  sample_c_lz_indexable(texture2d)(float,float,float,float) r2.z, r9.zwzz, t0.xxxx, s0, r2.z  // r2.z <- <SampleTextureAndCompare_id113 return value>

#line 585
  mad r2.x, r2.y, r2.z, r2.x

#line 587
  mul r2.x, r2.x, l(0.062500)

#line 946
  mul r7.xyz, r4.wwww, cb0[r3.w + 32].xyzx
  mul r2.xyz, r2.xxxx, r7.xyzx
  mul r2.xyz, r5.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id44.x; r2.y <- streams.lightColorNdotL_id44.y; r2.z <- streams.lightColorNdotL_id44.z

#line 1011
  mul r2.xyz, r2.xyzx, r5.xyzx

#line 1167
  mad r6.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 1157
  iadd r1.w, r1.w, l(1)

#line 1169
endloop 

#line 921
dp3 r0.x, r1.xyzx, cb2[98].xyzx  // r0.x <- sampleDirection.x
dp3 r0.y, r1.xyzx, cb2[99].xyzx  // r0.y <- sampleDirection.y
dp3 r0.z, r1.xyzx, cb2[100].xyzx  // r0.z <- sampleDirection.z

#line 665
mul r0.w, r0.y, r0.y  // r0.w <- y2

#line 666
mul r1.x, r0.z, r0.z  // r1.x <- z2

#line 670
mad r1.yzw, cb2[90].xxyz, r0.yyyy, cb2[89].xxyz  // r1.y <- color.x; r1.z <- color.y; r1.w <- color.z

#line 671
mad r1.yzw, cb2[91].xxyz, -r0.zzzz, r1.yyzw

#line 672
mad r1.yzw, cb2[92].xxyz, r0.xxxx, r1.yyzw

#line 675
mul r2.xyz, r0.yyyy, cb2[93].xyzx
mad r1.yzw, r2.xxyz, r0.xxxx, r1.yyzw

#line 676
mul r2.xyz, r0.yyyy, cb2[94].xyzx
mad r1.yzw, r2.xxyz, -r0.zzzz, r1.yyzw

#line 677
mad r0.y, r1.x, l(3.000000), l(-1.000000)
mad r1.xyz, cb2[95].xyzx, r0.yyyy, r1.yzwy  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 678
mul r2.xyz, r0.xxxx, cb2[96].xyzx
mad r1.xyz, r2.xyzx, -r0.zzzz, r1.xyzx

#line 679
mad r0.x, r0.x, r0.x, -r0.w
mad r0.xyz, cb2[97].xyzx, r0.xxxx, r1.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 923
mul r0.xyz, r0.xyzx, cb2[102].xxxx  // r0.x <- streams.envLightDiffuseColor_id47.x; r0.y <- streams.envLightDiffuseColor_id47.y; r0.z <- streams.envLightDiffuseColor_id47.z

#line 932
mul r0.xyz, r0.xyzx, cb1[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id262 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id262 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id262 return value>.z

#line 1185
mad r0.xyz, cb1[0].xyzx, cb2[88].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1196
mad o0.xyz, r6.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1276
utof o1.xyzw, cb0[26].xxxx

#line 1344
mov o0.w, cb1[0].w
ret 
// Approximately 351 instruction slots used
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
const static int TFilterSize_id166 = 5;
const static int TMaxLightCount_id183 = 3;
const static int TCascadeCountBase_id189 = 1;
const static int TLightCountBase_id190 = 3;
const static bool TCascadeDebug_id198 = false;
const static int TFilterSize_id199 = 3;
const static int TOrder_id202 = 3;
const static int TOrder_id204 = 3;
static const float PI_id215 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id216 = false;
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
    SpotLightData Lights_id184[TMaxLightCount_id183];
    float2 ShadowMapTextureSize_id186;
    float2 ShadowMapTextureTexelSize_id187;
    float4x4 WorldToShadowCascadeUV_id191[TCascadeCountBase_id189 * TLightCountBase_id190];
    float4x4 InverseWorldToShadowCascadeUV_id192[TCascadeCountBase_id189 * TLightCountBase_id190];
    float4x4 ViewMatrices_id193[TCascadeCountBase_id189 * TLightCountBase_id190];
    float2 DepthRanges_id194[TCascadeCountBase_id189 * TLightCountBase_id190];
    float DepthBiases_id195[TLightCountBase_id190];
    float OffsetScales_id196[TLightCountBase_id190];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 constantColor_id212;
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
    float3 AmbientLight_id200;
    float3 SphericalColors_id205[TOrder_id204 * TOrder_id204];
    float MipCount_id206;
    float4x4 SkyMatrix_id208;
    float Intensity_id209;
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
Texture2D ShadowMapTexture_id89;
Texture3D<uint2> LightClusters_id175;
Buffer<uint> LightIndices_id176;
Buffer<float4> PointLights_id180;
Buffer<float4> SpotLights_id181;
TextureCube CubeMap_id207;
float4 Project_id55(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
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
float Get3x3FilterKernel_id115(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id114(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleTextureAndCompare_id113(float2 position, float positionDepth)
{
    return ShadowMapTexture_id185.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
float Get7x7FilterKernel_id112(float2 base_uv, float2 st, out float3 kernel[16])
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
void CalculatePCFKernelParameters_id111(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id186;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id187;
}
float GetAngularAttenuation_id101(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id100(float lightVectorLength, float lightInvSquareRadius)
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
        float3 kernel[9];
        normalizationFactor = Get5x5FilterKernel_id64(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
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
        return 3.5;
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
float FilterShadow_id107(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id111(position, base_uv, st);

    {
        float3 kernel[4];
        float normalizationFactor = Get3x3FilterKernel_id115(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 4; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id113(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeAttenuation_id102(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id100(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id101(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
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
        float3 kernel[9];
        float normalizationFactor = Get5x5FilterKernel_id64(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 9; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id63(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float4 EvaluateSphericalHarmonics_id129(float3 sphericalColors[TOrder_id202 * TOrder_id202], float3 direction)
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
float ComputeShadowFromCascade_id110(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id191[cascadeIndex + lightIndex * TCascadeCountBase_id189]);
    shadowPosition.z -= DepthBiases_id195[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id107(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id109(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id187.x * offsetScale * normalOffsetScale * normal;
}
void ProcessLight_id103(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id102(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
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
float4 Compute_id245(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id206;
    return CubeMap_id207.SampleLevel(LinearSampler_id122, direction, mipLevel);
}
float4 Compute_id240(float3 direction)
{
    return EvaluateSphericalHarmonics_id129(SphericalColors_id205, direction);
}
void PrepareEnvironmentLight_id133(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id124(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id98(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id97(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id96(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id109(OffsetScales_id196[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    float3 shadow = ComputeShadowFromCascade_id110(shadowPosition, 0, lightIndex);
    float tempThickness = 0.0;
    streams.thicknessWS_id85 = tempThickness;

    {
        return shadow;
    }
}
void PrepareDirectLightCore_id95(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id184[lightIndex].PositionWS;
    data.DirectionWS = Lights_id184[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id184[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id184[lightIndex].Color;
    ProcessLight_id103(streams, data);
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
void ResetStream_id148()
{
}
void AfterLightingAndShading_id269()
{
}
void PrepareEnvironmentLight_id258(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id255(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id133(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id208);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id240(sampleDirection).rgb * Intensity_id209 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id208);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id245(streams, sampleDirection).rgb * Intensity_id209 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id262(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id250(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id124(streams);
    float3 lightColor = AmbientLight_id200 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id207(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id209()
{
    return LightCount_id182;
}
int GetMaxLightCount_id210()
{
    return TMaxLightCount_id183;
}
void PrepareDirectLights_id205()
{
}
void PrepareDirectLight_id195(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id199(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
int GetMaxLightCount_id198(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
void PrepareDirectLights_id193()
{
}
void PrepareDirectLight_id182(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id187(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
int GetMaxLightCount_id186(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
void PrepareDirectLights_id185(inout PS_STREAMS streams)
{
    PrepareLightData_id80(streams);
}
float3 ComputeDirectLightContribution_id261(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id215 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id158(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id160()
{
    return LightCount_id86;
}
int GetMaxLightCount_id161()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id156()
{
}
void PrepareForLightingAndShading_id266()
{
}
void PrepareMaterialForLightingAndShading_id147(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id146(inout PS_STREAMS streams)
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
float4 Compute_id259()
{
    return constantColor_id212;
}
void ResetStream_id149(inout PS_STREAMS streams)
{
    ResetStream_id148();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id303(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id146(streams);
    PrepareMaterialForLightingAndShading_id147(streams);

    {
        PrepareForLightingAndShading_id266();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id156();
        const int maxLightCount = GetMaxLightCount_id161();
        int count = GetLightCount_id160();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id158(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id261(streams);
            }
        }
    }

    {
        PrepareDirectLights_id185(streams);
        const int maxLightCount = GetMaxLightCount_id186(streams);
        int count = GetLightCount_id187(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id182(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id261(streams);
            }
        }
    }

    {
        PrepareDirectLights_id193();
        const int maxLightCount = GetMaxLightCount_id198(streams);
        int count = GetLightCount_id199(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id195(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id261(streams);
            }
        }
    }

    {
        PrepareDirectLights_id205();
        const int maxLightCount = GetMaxLightCount_id210();
        int count = GetLightCount_id209();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id207(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id261(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id250(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id262(streams);
        }
    }

    {
        PrepareEnvironmentLight_id255(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id262(streams);
        }
    }

    {
        PrepareEnvironmentLight_id258(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id262(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id215 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id269();
    }
}
void Compute_id287(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id259();
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id150(inout PS_STREAMS streams)
{
    ResetStream_id149(streams);
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
        Compute_id287(streams);
    }

    {
        Compute_id303(streams);
    }
}
void ResetStream_id45(inout PS_STREAMS streams)
{
    ResetStream_id150(streams);
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

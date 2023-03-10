/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMGridMeshSelector_ShaderFX [{ShadingColor0 = ComputeColor}]
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSpecularColorRoughness}, {ShadingColor3 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id34 => Transformation.World
@C    WorldInverse_id35 => Transformation.WorldInverse
@C    WorldInverseTranspose_id36 => Transformation.WorldInverseTranspose
@C    WorldView_id37 => Transformation.WorldView
@C    WorldViewInverse_id38 => Transformation.WorldViewInverse
@C    WorldViewProjection_id39 => Transformation.WorldViewProjection
@C    WorldScale_id40 => Transformation.WorldScale
@C    EyeMS_id41 => Transformation.EyeMS
@C    MaterialIndex_id147 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    MeshIndex_id145 => SMGridMeshSelector_ShaderFX.MeshIndex
@C    InputValue_id189 => ShaderFX.InputValueFloat
@C    InputValue_id198 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 944]
@C    View_id27 => Transformation.View
@C    ViewInverse_id28 => Transformation.ViewInverse
@C    Projection_id29 => Transformation.Projection
@C    ProjectionInverse_id30 => Transformation.ProjectionInverse
@C    ViewProjection_id31 => Transformation.ViewProjection
@C    ProjScreenRay_id32 => Transformation.ProjScreenRay
@C    Eye_id33 => Transformation.Eye
@C    NearClipPlane_id154 => Camera.NearClipPlane
@C    FarClipPlane_id155 => Camera.FarClipPlane
@C    ZProjection_id156 => Camera.ZProjection
@C    ViewSize_id157 => Camera.ViewSize
@C    AspectRatio_id158 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id150 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id152 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id163 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id164 => LightClustered.ClusterDepthBias
@C    ClusterStride_id165 => LightClustered.ClusterStride
@C    AmbientLight_id168 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id173 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id174 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id176 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id177 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id143 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id143 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id144 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id144 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id146 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id146 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id181 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id181 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id210 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id210 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id161 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id161 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id162 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id162 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id166 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id166 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id167 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id167 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id115 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id181 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id210 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id161 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id162 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id166 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id167 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
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
@S    SMGridMeshSelector_ShaderFX => 19b1ef34fb398a3aa79ae25149b83614
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    TransformationInstancing => ae3c8a30f5549546f12050a57609180f
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    LightDirectionalGroup => 4b30b0154f396d93fd98b65dbdd2fe7f
@S    DirectLightGroupPerView => dba9b0c7c0e05b5469cf8940cc91d69c
@S    LightDirectional => 0e45e8c12e5e36d4bb0df5d5b2739bb1
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
@S    LightSkyboxShader => 7bdb9a65f0d95cff0eeaad64ebe19d64
@S    IComputeEnvironmentColor => 6a62dbc486c6d4dda67154b3aefa7236
@S    SphericalHarmonicsEnvironmentColor => e4af0f396494d26684557116612d99be
@S    SphericalHarmonicsUtils => daf3f722d099facfd735f53c731dd735
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
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
@S    GBufferOutputSpecularColorRoughness => bffa7efe5b33b6017b4ec87d2c142a79
@S    Utilities => d8e15010fb2006b8edf6bdc952dd31f0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => cff8304ba6a75d60792298ebac72d7a0
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
//   uint MaterialIndex_id147;          // Offset:  416 Size:     4 [unused]
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
//   float NearClipPlane_id154;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id155;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id156;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id157;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id158;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id150;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id152[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id163;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id164;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id165;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id168;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id173[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id174;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id176;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id177;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
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
// SV_InstanceID            0   x           2   INSTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID153_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input_sgv v2.x, instance_id
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.x
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id23.x; v0.y <- __input__.Position_id23.y; v0.z <- __input__.Position_id23.z; v0.w <- __input__.Position_id23.w; 
//   v1.x <- __input__.meshNormal_id18.x; v1.y <- __input__.meshNormal_id18.y; v1.z <- __input__.meshNormal_id18.z; 
//   v2.x <- __input__.InstanceID_id13; 
//   o4.x <- <VSMain return value>.InstanceID_id13; 
//   o3.x <- <VSMain return value>.ScreenPosition_id153.x; o3.y <- <VSMain return value>.ScreenPosition_id153.y; o3.z <- <VSMain return value>.ScreenPosition_id153.z; o3.w <- <VSMain return value>.ScreenPosition_id153.w; 
//   o2.x <- <VSMain return value>.normalWS_id21.x; o2.y <- <VSMain return value>.normalWS_id21.y; o2.z <- <VSMain return value>.normalWS_id21.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id24.x; o0.y <- <VSMain return value>.PositionWS_id24.y; o0.z <- <VSMain return value>.PositionWS_id24.z; o0.w <- <VSMain return value>.PositionWS_id24.w
//
#line 1034 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_6f20790ab70966214ffffbe7dff471a0.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id24.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id24.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id24.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id24.w

#line 1130
mov o0.xyzw, r0.xyzw

#line 1001
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1130
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 1080
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 1130
mov o4.x, v2.x
ret 
// Approximately 16 instruction slots used
@G    Pixel => f82b81e539fb58f00179bb3adbbe6b8c
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
//   uint MaterialIndex_id147;          // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id145;              // Offset:    0 Size:     4 [unused]
//   float InputValue_id189;            // Offset:    4 Size:     4
//   float InputValue_id198;            // Offset:    8 Size:     4
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
//   float4 Eye_id33;                   // Offset:  336 Size:    16
//   float NearClipPlane_id154;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id155;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id156;          // Offset:  360 Size:     8
//   float2 ViewSize_id157;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id158;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id150;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id152[8];                 // Offset:  416 Size:   252
//   float ClusterDepthScale_id163;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id164;      // Offset:  672 Size:     4
//   float2 ClusterStride_id165;        // Offset:  676 Size:     8
//   float3 AmbientLight_id168;         // Offset:  688 Size:    12
//   float3 SphericalColors_id173[9];   // Offset:  704 Size:   140
//   float MipCount_id174;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id176;          // Offset:  848 Size:    64
//   float Intensity_id177;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id181
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
// LinearSampler_id115               sampler      NA          NA             s0      1 
// ParticlesBuffer_id181             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id210    texture  float4          2d             t1      1 
// LightClusters_id161               texture   uint2          3d             t2      1 
// LightIndices_id162                texture    uint         buf             t3      1 
// PointLights_id166                 texture  float4         buf             t4      1 
// SpotLights_id167                  texture  float4         buf             t5      1 
// CubeMap_id175                     texture  float4        cube             t6      1 
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
// SCREENPOSITION_ID153_SEM     0   xyzw        3     NONE   float   xy w
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
// SV_Target                2   xyzw        2   TARGET   float   xyzw
// SV_Target                3   xyzw        3   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[27], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[58], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_structured t0, 64
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_texturecube (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_temps 17
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id24.x; v0.y <- __input__.PositionWS_id24.y; v0.z <- __input__.PositionWS_id24.z; v0.w <- __input__.PositionWS_id24.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id21.x; v2.y <- __input__.normalWS_id21.y; v2.z <- __input__.normalWS_id21.z; 
//   v3.x <- __input__.ScreenPosition_id153.x; v3.y <- __input__.ScreenPosition_id153.y; v3.z <- __input__.ScreenPosition_id153.z; v3.w <- __input__.ScreenPosition_id153.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1107 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_6f20790ab70966214ffffbe7dff471a0.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id153.x; r0.y <- streams.ScreenPosition_id153.y

#line 1074
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 1075
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 1015
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id70.x; r2.y <- streams.viewWS_id70.y; r2.z <- streams.viewWS_id70.z

#line 346
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v4.x, l(48), t0.xyzx  // r3.x <- p.Col.x; r3.y <- p.Col.y; r3.z <- p.Col.z

#line 941
add r0.z, -cb1[0].y, l(1.000000)  // r0.z <- glossiness

#line 933
add r4.xyz, r3.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].zzzz, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id57.x; r4.y <- streams.matSpecular_id57.y; r4.z <- streams.matSpecular_id57.z

#line 934
mad r3.xyz, cb1[0].zzzz, -r3.xyzx, r3.xyzx  // r3.x <- streams.matDiffuse_id55.x; r3.y <- streams.matDiffuse_id55.y; r3.z <- streams.matDiffuse_id55.z

#line 798
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id21.x; r1.y <- streams.normalWS_id21.y; r1.z <- streams.normalWS_id21.z

#line 755
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id74

#line 756
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 757
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id72

#line 816
mov r0.w, r5.y  // r0.w <- streams.NdotV_id74
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.viewWS_id70.x; r7.y <- streams.viewWS_id70.y; r7.z <- streams.viewWS_id70.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matDiffuseVisible_id71.x; r8.y <- streams.matDiffuseVisible_id71.y; r8.z <- streams.matDiffuseVisible_id71.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matSpecularVisible_id73.x; r9.y <- streams.matSpecularVisible_id73.y; r9.z <- streams.matSpecularVisible_id73.z
mov r9.w, r0.z  // r9.w <- streams.alphaRoughness_id72
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 818
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 820
    break 

#line 821
  endif 

#line 595
  ishl r2.w, r1.w, l(1)

#line 725
  dp3 r3.w, r6.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 727
  mul r11.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r11.x <- streams.lightColorNdotL_id46.x; r11.y <- streams.lightColorNdotL_id46.y; r11.z <- streams.lightColorNdotL_id46.z

#line 717
  add r12.xyz, r7.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r5.z, r12.xyzx, r12.xyzx
  rsq r5.z, r5.z
  mul r12.xyz, r5.zzzz, r12.xyzx  // r12.x <- streams.H_id77.x; r12.y <- streams.H_id77.y; r12.z <- streams.H_id77.z

#line 718
  dp3_sat r5.z, r6.xyzx, r12.xyzx  // r5.z <- streams.NdotH_id78

#line 719
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r12.xyzx  // r2.w <- streams.LdotH_id79

#line 713
  mul r12.xyz, r8.xyzx, r11.xyzx

#line 826
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 377
  add r13.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.w, r2.w, r2.w
  mul r5.w, r5.w, r5.w
  mul r2.w, r2.w, r5.w
  mad r13.xyz, r13.xyzx, r2.wwww, r9.xyzx  // r13.x <- <FresnelSchlick_id149 return value>.x; r13.y <- <FresnelSchlick_id149 return value>.y; r13.z <- <FresnelSchlick_id149 return value>.z

#line 372
  mul r2.w, r9.w, l(0.500000)  // r2.w <- k

#line 373
  mad r5.w, -r9.w, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r5.w, r2.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id165 return value>
  mad r2.w, r0.w, r5.w, r2.w
  div r2.w, r0.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id165 return value>

#line 441
  mul r2.w, r2.w, r6.w
  mul r3.w, r0.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id167 return value>

#line 435
  mul r3.w, r9.w, r9.w  // r3.w <- alphaR2

#line 436
  mul r5.z, r5.z, r5.z
  mad r5.w, r9.w, r9.w, l(-1.000000)
  mad r5.z, r5.z, r5.w, l(1.000000)
  max r5.z, r5.z, l(0.000100)  // r5.z <- d

#line 437
  mul r5.z, r5.z, r5.z
  mul r5.z, r5.z, l(3.141593)
  div r3.w, r3.w, r5.z  // r3.w <- <NormalDistributionGGX_id179 return value>

#line 707
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 830
  mad r10.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 816
  iadd r1.w, r1.w, l(1)

#line 832
endloop 

#line 562
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 563
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 564
mad r0.w, r0.w, cb2[41].w, cb2[42].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 565
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 564
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 565
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t2.xyzw  // r0.x <- streams.lightData_id159.x; r0.y <- streams.lightData_id159.y

#line 695
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id207 return value>

#line 840
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id21.x; r6.y <- streams.normalWS_id21.y; r6.z <- streams.normalWS_id21.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id24.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id24.y; r7.y <- streams.PositionWS_id24.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id70.x; r7.w <- streams.viewWS_id70.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id70.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id72
mov r5.w, r5.y  // r5.w <- streams.NdotV_id74
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id160
mov r12.xyz, r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 842
  if_nz r2.w

#line 844
    break 

#line 845
  endif 

#line 549
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t3.yzwx  // r2.w <- realLightIndex

#line 550
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id160

#line 552
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t4.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 553
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t4.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 364
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 365
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 366
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 331
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 310
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 311
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 312
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id79 return value>

#line 332
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 681
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 683
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 717
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.w <- streams.H_id77.z

#line 718
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id78

#line 719
  dp3_sat r8.x, r13.xyzx, r8.xywx  // r8.x <- streams.LdotH_id79

#line 713
  mul r13.xyz, r9.xyzx, r14.xyzx

#line 850
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 377
  add r15.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.x, -r8.x, l(1.000000)
  mul r8.y, r8.x, r8.x
  mul r8.y, r8.y, r8.y
  mul r8.x, r8.y, r8.x
  mad r8.xyw, r15.xyxz, r8.xxxx, r11.xyxz  // r8.x <- <FresnelSchlick_id149 return value>.x; r8.y <- <FresnelSchlick_id149 return value>.y; r8.w <- <FresnelSchlick_id149 return value>.z

#line 372
  mul r9.w, r11.w, l(0.500000)  // r9.w <- k

#line 373
  mad r10.w, -r11.w, l(0.500000), l(1.000000)
  mad r12.w, r3.w, r10.w, r9.w
  div r12.w, r3.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id165 return value>
  mad r9.w, r5.w, r10.w, r9.w
  div r9.w, r5.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id165 return value>

#line 441
  mul r9.w, r9.w, r12.w
  mul r3.w, r5.w, r3.w
  div r3.w, r9.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id167 return value>

#line 435
  mul r9.w, r11.w, r11.w  // r9.w <- alphaR2

#line 436
  mul r2.w, r2.w, r2.w
  mad r10.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r10.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 437
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r9.w, r2.w  // r2.w <- <NormalDistributionGGX_id179 return value>

#line 707
  mul r8.xyw, r3.wwww, r8.xyxw
  mul r8.xyw, r2.wwww, r8.xyxw
  mul r8.xyw, r14.xyxz, r8.xyxw

#line 854
  mad r12.xyz, r8.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 840
  iadd r1.w, r1.w, l(1)

#line 856
endloop   // r5.z <- streams.lightIndex_id160

#line 673
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id219 return value>

#line 864
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id24.x; r6.y <- streams.PositionWS_id24.y; r6.z <- streams.PositionWS_id24.z
mov r7.xyz, r4.xyzx  // r7.x <- streams.matSpecularVisible_id73.x; r7.y <- streams.matSpecularVisible_id73.y; r7.z <- streams.matSpecularVisible_id73.z
mov r7.w, r0.z  // r7.w <- streams.alphaRoughness_id72
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id21.x; r8.y <- streams.normalWS_id21.y; r8.z <- streams.normalWS_id21.z
mov r9.xyz, r2.xyzx  // r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y; r9.z <- streams.viewWS_id70.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r0.yw, r5.yyyz  // r0.y <- streams.NdotV_id74; r0.w <- streams.lightIndex_id160
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 866
  if_nz r2.w

#line 868
    break 

#line 869
  endif 

#line 521
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.wwww, t3.yzwx  // r2.w <- realLightIndex

#line 522
  iadd r0.w, r0.w, l(1)  // r0.w <- streams.lightIndex_id160

#line 524
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r3.wwww, t5.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 527
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 525
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t5.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z

#line 526
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t5.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z

#line 527
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t5.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 351
  add r13.xyz, -r6.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 352
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 353
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 324
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 304
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 305
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 306
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id90 return value>

#line 325
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 316
  dp3 r3.w, -r15.xyzx, r13.xyzx  // r3.w <- cd

#line 317
  mad_sat r3.w, r3.w, r14.x, r14.y  // r3.w <- attenuation

#line 318
  mul r3.w, r3.w, r3.w

#line 359
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 659
  dp3 r3.w, r8.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 661
  mul r14.xyz, r2.wwww, r16.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 717
  add r15.xyz, r9.xyzx, r13.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 718
  dp3_sat r2.w, r8.xyzx, r15.xyzx  // r2.w <- streams.NdotH_id78

#line 719
  dp3_sat r5.w, r13.xyzx, r15.xyzx  // r5.w <- streams.LdotH_id79

#line 713
  mul r13.xyz, r10.xyzx, r14.xyzx

#line 874
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 377
  add r15.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r15.xyz, r15.xyzx, r5.wwww, r7.xyzx  // r15.x <- <FresnelSchlick_id149 return value>.x; r15.y <- <FresnelSchlick_id149 return value>.y; r15.z <- <FresnelSchlick_id149 return value>.z

#line 372
  mul r5.w, r7.w, l(0.500000)  // r5.w <- k

#line 373
  mad r6.w, -r7.w, l(0.500000), l(1.000000)
  mad r8.w, r3.w, r6.w, r5.w
  div r8.w, r3.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id165 return value>
  mad r5.w, r0.y, r6.w, r5.w
  div r5.w, r0.y, r5.w  // r5.w <- <VisibilityhSchlickGGX_id165 return value>

#line 441
  mul r5.w, r5.w, r8.w
  mul r3.w, r0.y, r3.w
  div r3.w, r5.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id167 return value>

#line 435
  mul r5.w, r7.w, r7.w  // r5.w <- alphaR2

#line 436
  mul r2.w, r2.w, r2.w
  mad r6.w, r7.w, r7.w, l(-1.000000)
  mad r2.w, r2.w, r6.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 437
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r5.w, r2.w  // r2.w <- <NormalDistributionGGX_id179 return value>

#line 707
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 878
  mad r11.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 864
  iadd r1.w, r1.w, l(1)

#line 880
endloop   // r0.w <- streams.lightIndex_id160

#line 497
sqrt r4.w, r0.z
add r5.x, -r4.w, l(1.000000)  // r5.x <- glossiness

#line 498
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r5.xyxx, t1.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 499
mad r0.xyz, r4.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id290 return value>.x; r0.y <- <Compute_id290 return value>.y; r0.z <- <Compute_id290 return value>.z

#line 642
mul r5.xyz, r0.xyzx, cb2[43].xyzx  // r5.x <- <ComputeEnvironmentLightContribution_id469 return value>.x; r5.y <- <ComputeEnvironmentLightContribution_id469 return value>.y; r5.z <- <ComputeEnvironmentLightContribution_id469 return value>.z

#line 892
mad r5.xyz, r3.xyzx, cb2[43].xyzx, r5.xyzx  // r5.x <- environmentLightingContribution.x; r5.y <- environmentLightingContribution.y; r5.z <- environmentLightingContribution.z

#line 631
dp3 r0.w, r1.xyzx, cb2[53].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[54].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r1.xyzx, cb2[55].xyzx  // r2.w <- sampleDirection.z

#line 397
mul r3.w, r1.w, r1.w  // r3.w <- y2

#line 398
mul r5.w, r2.w, r2.w  // r5.w <- z2

#line 402
mad r6.xyz, cb2[45].xyzx, r1.wwww, cb2[44].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 403
mad r6.xyz, cb2[46].xyzx, -r2.wwww, r6.xyzx

#line 404
mad r6.xyz, cb2[47].xyzx, r0.wwww, r6.xyzx

#line 407
mul r7.xyz, r1.wwww, cb2[48].xyzx
mad r6.xyz, r7.xyzx, r0.wwww, r6.xyzx

#line 408
mul r7.xyz, r1.wwww, cb2[49].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 409
mad r1.w, r5.w, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[50].xyzx, r1.wwww, r6.xyzx

#line 410
mul r7.xyz, r0.wwww, cb2[51].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 411
mad r0.w, r0.w, r0.w, -r3.w
mad r6.xyz, cb2[52].xyzx, r0.wwww, r6.xyzx

#line 633
mul r6.xyz, r6.xyzx, cb2[57].xxxx  // r6.x <- streams.envLightDiffuseColor_id49.x; r6.y <- streams.envLightDiffuseColor_id49.y; r6.z <- streams.envLightDiffuseColor_id49.z

#line 634
dp3 r0.w, -r2.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r2.xyz, r1.xyzx, -r0.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 635
dp3 r7.x, r2.xyzx, cb2[53].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r2.xyzx, cb2[54].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r2.xyzx, cb2[55].xyzx  // r0.w <- sampleDirection.z

#line 636
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 483
mul r0.w, r4.w, cb2[52].w  // r0.w <- mipLevel

#line 484
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r7.xyzx, t6.xyzw, s0, r0.w  // r2.x <- <Compute_id240 return value>.x; r2.y <- <Compute_id240 return value>.y; r2.z <- <Compute_id240 return value>.z

#line 637
mul r2.xyz, r2.xyzx, cb2[57].xxxx  // r2.x <- streams.envLightSpecularColor_id50.x; r2.y <- streams.envLightSpecularColor_id50.y; r2.z <- streams.envLightSpecularColor_id50.z

#line 900
mad r3.xyz, r3.xyzx, r6.xyzx, r5.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 904
mad r0.xyz, r0.xyzx, r2.xyzx, r3.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 919
mad o0.xyz, r11.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1011
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1038
utof o3.xyzw, cb0[26].xxxx

#line 1114
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mov o2.xyzw, r4.xyzw
ret 
// Approximately 292 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id151 = 8;
const static int TOrder_id170 = 3;
const static int TOrder_id172 = 3;
const static bool TInvert_id195 = true;
const static bool TIsEnergyConservative_id207 = false;
static const float PI_id209 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id153;
    float3 normalWS_id21;
    float4 PositionWS_id24;
    uint InstanceID_id13;
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
    float4 ColorPerParticle_ShaderFXResult_0_id180;
    float Input_1_id188;
    float Input_2_id197;
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
    float thicknessWS_id149;
    float3 shadowColor_id148;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id159;
    int lightIndex_id160;
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
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id153 : SCREENPOSITION_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id23;
    float3 meshNormal_id18;
    uint InstanceID_id13;
    float4 PositionH_id26;
    float DepthVS_id25;
    float3 meshNormalWS_id19;
    float4 PositionWS_id24;
    float4 ShadingPosition_id0;
    float3 normalWS_id21;
    float4 ScreenPosition_id153;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id21 : NORMALWS;
    float4 ScreenPosition_id153 : SCREENPOSITION_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct VS_INPUT 
{
    float4 Position_id23 : POSITION;
    float3 meshNormal_id18 : NORMAL;
    uint InstanceID_id13 : SV_InstanceID;
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
struct SMGridParticle 
{
    float3 Pos;
    float3 Vel;
    float3 Rot;
    float3 Size;
    float3 Col;
    float Mesh;
};
struct InstanceTransform 
{
    float4x4 Matrix;
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
    uint MaterialIndex_id147;
};
cbuffer PerMaterial 
{
    uint MeshIndex_id145;
    float InputValue_id189;
    float InputValue_id198;
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
    float NearClipPlane_id154 = 1.0f;
    float FarClipPlane_id155 = 100.0f;
    float2 ZProjection_id156;
    float2 ViewSize_id157;
    float AspectRatio_id158;
    float4 _padding_PerView_Default;
    int LightCount_id150;
    DirectionalLightData Lights_id152[TMaxLightCount_id151];
    float ClusterDepthScale_id163;
    float ClusterDepthBias_id164;
    float2 ClusterStride_id165;
    float3 AmbientLight_id168;
    float3 SphericalColors_id173[TOrder_id172 * TOrder_id172];
    float MipCount_id174;
    float4x4 SkyMatrix_id176;
    float Intensity_id177;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id86;
    float2 Texture1TexelSize_id88;
    float2 Texture2TexelSize_id90;
    float2 Texture3TexelSize_id92;
    float2 Texture4TexelSize_id94;
    float2 Texture5TexelSize_id96;
    float2 Texture6TexelSize_id98;
    float2 Texture7TexelSize_id100;
    float2 Texture8TexelSize_id102;
    float2 Texture9TexelSize_id104;
};
Texture2D Texture0_id85;
Texture2D Texture1_id87;
Texture2D Texture2_id89;
Texture2D Texture3_id91;
Texture2D Texture4_id93;
Texture2D Texture5_id95;
Texture2D Texture6_id97;
Texture2D Texture7_id99;
Texture2D Texture8_id101;
Texture2D Texture9_id103;
TextureCube TextureCube0_id105;
TextureCube TextureCube1_id106;
TextureCube TextureCube2_id107;
TextureCube TextureCube3_id108;
Texture3D Texture3D0_id109;
Texture3D Texture3D1_id110;
Texture3D Texture3D2_id111;
Texture3D Texture3D3_id112;
SamplerState Sampler_id113;
SamplerState PointSampler_id114 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id115 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id116 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id117 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id118 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id119 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id120 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id121 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id122 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id123;
SamplerState Sampler1_id124;
SamplerState Sampler2_id125;
SamplerState Sampler3_id126;
SamplerState Sampler4_id127;
SamplerState Sampler5_id128;
SamplerState Sampler6_id129;
SamplerState Sampler7_id130;
SamplerState Sampler8_id131;
SamplerState Sampler9_id132;
StructuredBuffer<InstanceTransform> InstanceWorld_id143;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id144;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id146;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id181;
Texture2D EnvironmentLightingDFG_LUT_id210;
Texture3D<uint2> LightClusters_id161;
Buffer<uint> LightIndices_id162;
Buffer<float4> PointLights_id166;
Buffer<float4> SpotLights_id167;
TextureCube CubeMap_id175;
float SmoothDistanceAttenuation_id90(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id79(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id92(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id91(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id90(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id81(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id79(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id278()
{
    return InputValue_id198;
}
float Compute_id266()
{
    return InputValue_id189;
}
float4 Compute_id254(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id181[id];
    return float4(p.Col, 1);
}
float ComputeAttenuation_id93(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id91(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id92(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id80(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id81(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id165(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id149(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id281(inout PS_STREAMS streams)
{
    streams.Input_2_id197 = Compute_id278();
}
void Compute_id269(inout PS_STREAMS streams)
{
    streams.Input_1_id188 = Compute_id266();
}
void Compute_id257(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id180 = Compute_id254(streams);
}
float4 EvaluateSphericalHarmonics_id103(float3 sphericalColors[TOrder_id170 * TOrder_id170], float3 direction)
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
void ProcessLight_id94(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id93(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id83(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id80(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id179(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id209 * d * d);
}
float VisibilitySmithSchlickGGX_id167(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id165(alphaR, nDotL) * VisibilityhSchlickGGX_id165(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id155(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id149(f0, 1.0f, lOrVDotH);
}
float Compute_id284(inout PS_STREAMS streams)
{
    return streams.Input_2_id197;
}
void Compute_id283(inout PS_STREAMS streams)
{

    {
        Compute_id281(streams);
    }
}
float Compute_id272(inout PS_STREAMS streams)
{
    return streams.Input_1_id188;
}
void Compute_id271(inout PS_STREAMS streams)
{

    {
        Compute_id269(streams);
    }
}
float4 Compute_id260(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id180;
}
void Compute_id259(inout PS_STREAMS streams)
{

    {
        Compute_id257(streams);
    }
}
float4 Compute_id240(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id174;
    return CubeMap_id175.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id235(float3 direction)
{
    return EvaluateSphericalHarmonics_id103(SphericalColors_id173, direction);
}
void PrepareEnvironmentLight_id107(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id290(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id210.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id98(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
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
    int realLightIndex = LightIndices_id162.Load(streams.lightIndex_id160);
    streams.lightIndex_id160++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id167.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id167.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id167.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id167.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id94(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id78(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id77(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id76(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id75(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id162.Load(streams.lightIndex_id160);
    streams.lightIndex_id160++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id166.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id166.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id83(streams, pointLight);
}
void PrepareLightData_id82(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id156.y / (projectedDepth - ZProjection_id156.x);
    float2 texCoord = float2(streams.ScreenPosition_id153.x + 1, 1 - streams.ScreenPosition_id153.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id163 + ClusterDepthBias_id164), 0));
    streams.lightData_id159 = LightClusters_id161.Load(int4(texCoord * ClusterStride_id165, slice, 0));
    streams.lightIndex_id160 = streams.lightData_id159.x;
}
float Compute_id382(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id179(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id352(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id167(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id322(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id155(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id72(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id71(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id70(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id149 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id69(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id152[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id152[lightIndex].DirectionWS;
}
float Compute_id287(inout PS_STREAMS streams)
{
    Compute_id283(streams);
    return Compute_id284(streams);
}
float Compute_id275(inout PS_STREAMS streams)
{
    Compute_id271(streams);
    return Compute_id272(streams);
}
float4 Compute_id263(inout PS_STREAMS streams)
{
    Compute_id259(streams);
    return Compute_id260(streams);
}
void ResetStream_id182()
{
}
void AfterLightingAndShading_id439()
{
}
void AfterLightingAndShading_id420()
{
}
void PrepareEnvironmentLight_id253(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id250(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id107(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id235(sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id240(streams, sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id469(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id290(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id413(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id245(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id98(streams);
    float3 lightColor = AmbientLight_id168 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id216(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id87(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id148 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id88(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id89(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id220(inout PS_STREAMS streams)
{
    return streams.lightData_id159.y >> 16;
}
int GetMaxLightCount_id219(inout PS_STREAMS streams)
{
    return streams.lightData_id159.y >> 16;
}
void PrepareDirectLights_id214()
{
}
void PrepareDirectLight_id203(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id75(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id76(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id148 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id77(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id78(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id208(inout PS_STREAMS streams)
{
    return streams.lightData_id159.y & 0xFFFF;
}
int GetMaxLightCount_id207(inout PS_STREAMS streams)
{
    return streams.lightData_id159.y & 0xFFFF;
}
void PrepareDirectLights_id206(inout PS_STREAMS streams)
{
    PrepareLightData_id82(streams);
}
float3 ComputeDirectLightContribution_id468(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id322(streams, specularColor);
    float geometricShadowing = Compute_id352(streams);
    float normalDistribution = Compute_id382(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id412(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id209 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id38(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id192(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id69(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id148 = ComputeShadow_id70(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id148 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id71(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id72(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id194()
{
    return LightCount_id150;
}
int GetMaxLightCount_id195()
{
    return TMaxLightCount_id151;
}
void PrepareDirectLights_id190()
{
}
void PrepareForLightingAndShading_id436()
{
}
void PrepareForLightingAndShading_id417()
{
}
void PrepareMaterialForLightingAndShading_id181(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id180(inout PS_STREAMS streams)
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
float4 Compute_id289(inout PS_STREAMS streams)
{
    float x = Compute_id287(streams);
    return float4(x, x, x, x);
}
float4 Compute_id277(inout PS_STREAMS streams)
{
    float x = Compute_id275(streams);
    return float4(x, x, x, x);
}
float4 Compute_id265(inout PS_STREAMS streams)
{
    return Compute_id263(streams);
}
void ResetStream_id183(inout PS_STREAMS streams)
{
    ResetStream_id182();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id500(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id180(streams);
    PrepareMaterialForLightingAndShading_id181(streams);

    {
        PrepareForLightingAndShading_id417();
    }

    {
        PrepareForLightingAndShading_id436();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id190();
        const int maxLightCount = GetMaxLightCount_id195();
        int count = GetLightCount_id194();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id192(streams, i);
            PrepareMaterialPerDirectLight_id38(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id412(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id468(streams);
            }
        }
    }

    {
        PrepareDirectLights_id206(streams);
        const int maxLightCount = GetMaxLightCount_id207(streams);
        int count = GetLightCount_id208(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id203(streams, i);
            PrepareMaterialPerDirectLight_id38(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id412(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id468(streams);
            }
        }
    }

    {
        PrepareDirectLights_id214();
        const int maxLightCount = GetMaxLightCount_id219(streams);
        int count = GetLightCount_id220(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id216(streams, i);
            PrepareMaterialPerDirectLight_id38(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id412(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id468(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id245(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id413(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id469(streams);
        }
    }

    {
        PrepareEnvironmentLight_id250(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id413(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id469(streams);
        }
    }

    {
        PrepareEnvironmentLight_id253(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id413(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id469(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id209 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id420();
    }

    {
        AfterLightingAndShading_id439();
    }
}
void Compute_id484(inout PS_STREAMS streams)
{
    float metalness = Compute_id289(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id479(inout PS_STREAMS streams)
{
    float glossiness = Compute_id277(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id474(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id265(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id184(inout PS_STREAMS streams)
{
    ResetStream_id183(streams);
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
void Compute_id59(inout PS_STREAMS streams)
{

    {
        Compute_id474(streams);
    }

    {
        Compute_id479(streams);
    }

    {
        Compute_id484(streams);
    }

    {
        Compute_id500(streams);
    }
}
void ResetStream_id58(inout PS_STREAMS streams)
{
    ResetStream_id184(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
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
float3 EncodeNormal_id63(float3 n)
{
    return n * 0.5 + 0.5;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id58(streams);
    Compute_id59(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
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
float4 Compute_id57()
{
    return MaterialIndex_id147;
}
float4 Compute_id56(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id73, sqrt(streams.alphaRoughness_id72));
}
float4 Compute_id55(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id63(streams.normalWS_id21), 1);
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
    streams.ColorTarget_id2 = Shading_id32(streams);
    streams.ColorTarget1_id3 = Compute_id55(streams);
    streams.ColorTarget2_id4 = Compute_id56(streams);
    streams.ColorTarget3_id5 = Compute_id57();
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
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.ScreenPosition_id153 = __input__.ScreenPosition_id153;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id153 /= streams.ScreenPosition_id153.w;
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
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    VSMain_id19(streams);
    streams.ScreenPosition_id153 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id24 = streams.PositionWS_id24;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id21 = streams.normalWS_id21;
    __output__.ScreenPosition_id153 = streams.ScreenPosition_id153;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    return __output__;
}

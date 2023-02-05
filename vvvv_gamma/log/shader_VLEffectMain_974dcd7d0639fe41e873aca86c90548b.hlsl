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
@P VLEffectParameters.MaterialExtensionShader: mixin SMSphereImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MaterialIndex_id156 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id152 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id198 => ShaderFX.InputValueFloat
@C    InputValue_id207 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 944]
@C    View_id27 => Transformation.View
@C    ViewInverse_id28 => Transformation.ViewInverse
@C    Projection_id29 => Transformation.Projection
@C    ProjectionInverse_id30 => Transformation.ProjectionInverse
@C    ViewProjection_id31 => Transformation.ViewProjection
@C    ProjScreenRay_id32 => Transformation.ProjScreenRay
@C    Eye_id33 => Transformation.Eye
@C    NearClipPlane_id163 => Camera.NearClipPlane
@C    FarClipPlane_id164 => Camera.FarClipPlane
@C    ZProjection_id165 => Camera.ZProjection
@C    ViewSize_id166 => Camera.ViewSize
@C    AspectRatio_id167 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id159 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id161 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id172 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id173 => LightClustered.ClusterDepthBias
@C    ClusterStride_id174 => LightClustered.ClusterStride
@C    AmbientLight_id177 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id182 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id183 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id185 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id186 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id190 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id190 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id219 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id219 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id170 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id170 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id171 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id171 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id175 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id175 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id176 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id176 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id184 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id184 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id151 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id115 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id190 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id219 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id170 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id171 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id175 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id176 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id184 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
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
@G    Vertex => c234ddd35cede9b688302282ece8218a
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
// VID_ID155_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float   xyzw
// SCREENPOSITION_ID162_SEM     0   xyzw        2     NONE   float   xyzw
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
//   v0.x <- __input__.VertexID_id154; 
//   v1.x <- __input__.Position_id23.x; v1.y <- __input__.Position_id23.y; v1.z <- __input__.Position_id23.z; v1.w <- __input__.Position_id23.w; 
//   v2.x <- __input__.normalWS_id21.x; v2.y <- __input__.normalWS_id21.y; v2.z <- __input__.normalWS_id21.z; 
//   o3.x <- <VSMain return value>.normalWS_id21.x; o3.y <- <VSMain return value>.normalWS_id21.y; o3.z <- <VSMain return value>.normalWS_id21.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id162.x; o2.y <- <VSMain return value>.ScreenPosition_id162.y; o2.z <- <VSMain return value>.ScreenPosition_id162.z; o2.w <- <VSMain return value>.ScreenPosition_id162.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id155; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 1209 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_974dcd7d0639fe41e873aca86c90548b.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
mov o3.xyz, v2.xyzx
ret 
// Approximately 5 instruction slots used
@G    Geometry => cac1b3aaf7ed5b6dafb08e61d5bbfc8e
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
//   float4x4 WorldInverseTranspose_id36;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id37;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id38;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id39; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id40;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id41;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id156;          // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id152;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id198;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id207;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id29;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id163;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id164;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id165;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id166;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id167;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id159;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id161[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id172;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id173;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id174;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id177;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id182[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id183;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id185;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id186;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id151
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
// ParticlesBuffer_id151             texture  struct         r/o             t0      1 
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
// VID_ID155_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float       
// SCREENPOSITION_ID162_SEM     0   xyzw        2     NONE   float   xyzw
// NORMALWS                 0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID153_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float   xyzw
// SCREENPOSITION_ID162_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v[0][0].x <- input[0].VID_id155; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id162.x; v[0][2].y <- input[0].ScreenPosition_id162.y; v[0][2].z <- input[0].ScreenPosition_id162.z; v[0][2].w <- input[0].ScreenPosition_id162.w; 
//   v[0][3].x <- input[0].normalWS_id21.x; v[0][3].y <- input[0].normalWS_id21.y; v[0][3].z <- input[0].normalWS_id21.z
//
#line 1167 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_974dcd7d0639fe41e873aca86c90548b.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 1169
mul r0.w, r0.x, cb1[0].x

#line 1170
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 1171
  ret 
endif 

#line 1167
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 1168
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id24.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id24.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id24.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id24.w

#line 1174
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 1179
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id153

#line 1180
mov r4.w, l(1.000000)

#line 1176
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 1178
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id133.x; r5.y <- streams.TexCoord_id133.y

#line 1179
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 1180
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 1191
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

#line 1193
  iadd r1.w, r1.w, l(1)
endloop 

#line 1194
ret 
// Approximately 43 instruction slots used
@G    Pixel => 126f6cf5466715f522ca5c3afda804f9
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
//   uint MaterialIndex_id156;          // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id152;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id198;            // Offset:    4 Size:     4
//   float InputValue_id207;            // Offset:    8 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id27;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id28;         // Offset:   64 Size:    64
//   float4x4 Projection_id29;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id30;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id31;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id32;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id33;                   // Offset:  336 Size:    16
//   float NearClipPlane_id163;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id164;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id165;          // Offset:  360 Size:     8
//   float2 ViewSize_id166;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id167;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id159;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id161[8];                 // Offset:  416 Size:   252
//   float ClusterDepthScale_id172;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id173;      // Offset:  672 Size:     4
//   float2 ClusterStride_id174;        // Offset:  676 Size:     8
//   float3 AmbientLight_id177;         // Offset:  688 Size:    12
//   float3 SphericalColors_id182[9];   // Offset:  704 Size:   140
//   float MipCount_id183;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id185;          // Offset:  848 Size:    64
//   float Intensity_id186;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id190
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
// ParticlesBuffer_id190             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id219    texture  float4          2d             t1      1 
// LightClusters_id170               texture   uint2          3d             t2      1 
// LightIndices_id171                texture    uint         buf             t3      1 
// PointLights_id175                 texture  float4         buf             t4      1 
// SpotLights_id176                  texture  float4         buf             t5      1 
// CubeMap_id184                     texture  float4        cube             t6      1 
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
// PSIZE_ID153_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float     z 
// SCREENPOSITION_ID162_SEM     0   xyzw        3     NONE   float   xy w
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
// SV_Target                3   xyzw        3   TARGET   float   xyzw
// SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
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
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps_siv linear noperspective v2.z, position
dcl_input_ps linear v3.xyw
dcl_input_ps constant v5.x
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output oDepth
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id24.x; v0.y <- __input__.PositionWS_id24.y; v0.z <- __input__.PositionWS_id24.z; v0.w <- __input__.PositionWS_id24.w; 
//   v1.x <- __input__.PSize_id153; v1.y <- __input__.TexCoord_id133.x; v1.z <- __input__.TexCoord_id133.y; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v3.x <- __input__.ScreenPosition_id162.x; v3.y <- __input__.ScreenPosition_id162.y; v3.z <- __input__.ScreenPosition_id162.z; v3.w <- __input__.ScreenPosition_id162.w; 
//   v4.x <- __input__.normalWS_id21.x; v4.y <- __input__.normalWS_id21.y; v4.z <- __input__.normalWS_id21.z; 
//   v5.x <- __input__.InstanceID_id13; 
//   v6.x <- __input__.IsFrontFace_id1; 
//   o3.x <- <PSMain return value>.ColorTarget3_id5.x; o3.y <- <PSMain return value>.ColorTarget3_id5.y; o3.z <- <PSMain return value>.ColorTarget3_id5.z; o3.w <- <PSMain return value>.ColorTarget3_id5.w; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w; 
//   oDepth <- <PSMain return value>.Depth_id10
//
#line 1052 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_974dcd7d0639fe41e873aca86c90548b.hlsl"
dp2 r0.x, v1.yzyy, v1.yzyy  // r0.x <- lenSqr

#line 1053
lt r0.y, l(1.000000), r0.x

#line 1054
discard_nz r0.y

#line 1055
add r0.x, -r0.x, l(1.000000)
sqrt r0.z, r0.x  // r0.z <- z

#line 1057
mov r0.xy, v1.yzyy
dp3 r1.x, r0.xyzx, cb2[4].xyzx
dp3 r1.y, r0.xyzx, cb2[5].xyzx
dp3 r1.z, r0.xyzx, cb2[6].xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r1.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1058
mad r1.xyz, r0.xyzx, v1.xxxx, v0.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 1147
div r2.xy, v3.xyxx, v3.wwww  // r2.x <- streams.ScreenPosition_id162.x; r2.y <- streams.ScreenPosition_id162.y

#line 1043
mov r1.w, l(1.000000)
dp4 r0.w, r1.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.w, r1.xyzw, cb2[19].xyzw  // r1.w <- posWVP.w

#line 1047
div oDepth, r0.w, r1.w

#line 1030
add r3.xyz, -r1.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.viewWS_id70.x; r3.y <- streams.viewWS_id70.y; r3.z <- streams.viewWS_id70.z

#line 375
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, v5.x, l(48), t0.xyzx  // r4.x <- p.Col.x; r4.y <- p.Col.y; r4.z <- p.Col.z

#line 970
add r0.w, -cb1[0].y, l(1.000000)  // r0.w <- glossiness

#line 962
add r5.xyz, r4.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb1[0].zzzz, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id57.x; r5.y <- streams.matSpecular_id57.y; r5.z <- streams.matSpecular_id57.z

#line 963
mad r4.xyz, cb1[0].zzzz, -r4.xyzx, r4.xyzx  // r4.x <- streams.matDiffuse_id55.x; r4.y <- streams.matDiffuse_id55.y; r4.z <- streams.matDiffuse_id55.z

#line 827
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id21.x; r0.y <- streams.normalWS_id21.y; r0.z <- streams.normalWS_id21.z

#line 784
dp3 r1.w, r0.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id74

#line 785
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 786
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id72

#line 845
mov r7.xyz, r0.xyzx  // r7.x <- streams.normalWS_id21.x; r7.y <- streams.normalWS_id21.y; r7.z <- streams.normalWS_id21.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.viewWS_id70.x; r8.y <- streams.viewWS_id70.y; r8.z <- streams.viewWS_id70.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r10.w, r0.w  // r10.w <- streams.alphaRoughness_id72
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, r6.y  // r1.w <- streams.NdotV_id74
mov r2.z, l(0)  // r2.z <- i
loop 
  ige r2.w, r2.z, l(8)
  breakc_nz r2.w

#line 847
  ige r2.w, r2.z, cb2[25].x
  if_nz r2.w

#line 849
    break 

#line 850
  endif 

#line 624
  ishl r2.w, r2.z, l(1)

#line 754
  dp3 r3.w, r7.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 756
  mul r12.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r12.x <- streams.lightColorNdotL_id46.x; r12.y <- streams.lightColorNdotL_id46.y; r12.z <- streams.lightColorNdotL_id46.z

#line 746
  add r13.xyz, r8.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r13.xyzx, r13.xyzx
  rsq r4.w, r4.w
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.H_id77.x; r13.y <- streams.H_id77.y; r13.z <- streams.H_id77.z

#line 747
  dp3_sat r4.w, r7.xyzx, r13.xyzx  // r4.w <- streams.NdotH_id78

#line 748
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r13.xyzx  // r2.w <- streams.LdotH_id79

#line 742
  mul r13.xyz, r9.xyzx, r12.xyzx

#line 855
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 406
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r6.z, r2.w, r2.w
  mul r6.z, r6.z, r6.z
  mul r2.w, r2.w, r6.z
  mad r14.xyz, r14.xyzx, r2.wwww, r10.xyzx  // r14.x <- <FresnelSchlick_id175 return value>.x; r14.y <- <FresnelSchlick_id175 return value>.y; r14.z <- <FresnelSchlick_id175 return value>.z

#line 401
  mul r2.w, r10.w, l(0.500000)  // r2.w <- k

#line 402
  mad r6.z, -r10.w, l(0.500000), l(1.000000)
  mad r6.w, r3.w, r6.z, r2.w
  div r6.w, r3.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id191 return value>
  mad r2.w, r1.w, r6.z, r2.w
  div r2.w, r1.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id191 return value>

#line 470
  mul r2.w, r2.w, r6.w
  mul r3.w, r1.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id193 return value>

#line 464
  mul r3.w, r10.w, r10.w  // r3.w <- alphaR2

#line 465
  mul r4.w, r4.w, r4.w
  mad r6.z, r10.w, r10.w, l(-1.000000)
  mad r4.w, r4.w, r6.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 466
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id205 return value>

#line 736
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r12.xyz, r12.xyzx, r14.xyzx

#line 859
  mad r11.xyz, r12.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 845
  iadd r2.z, r2.z, l(1)

#line 861
endloop 

#line 591
add r1.w, v2.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 592
mad r2.xy, r2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb2[42].yzyy

#line 593
mad r1.w, r1.w, cb2[41].w, cb2[42].x
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r7.z, r1.w  // r7.z <- slice

#line 594
mul r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r7.xy, r2.xyxx
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.xy, r7.xyzw, t2.xyzw  // r2.x <- streams.lightData_id168.x; r2.y <- streams.lightData_id168.y

#line 724
and r1.w, r2.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id233 return value>

#line 869
mov r7.xyz, r0.xyzx  // r7.x <- streams.normalWS_id21.x; r7.y <- streams.normalWS_id21.y; r7.z <- streams.normalWS_id21.z
mov r7.w, r1.x  // r7.w <- streams.PositionWS_id24.x
mov r8.xy, r1.yzyy  // r8.x <- streams.PositionWS_id24.y; r8.y <- streams.PositionWS_id24.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id70.x; r8.w <- streams.viewWS_id70.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id70.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matSpecularVisible_id73.x; r12.y <- streams.matSpecularVisible_id73.y; r12.z <- streams.matSpecularVisible_id73.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id72
mov r2.w, r6.y  // r2.w <- streams.NdotV_id74
mov r2.z, r2.x  // r2.z <- streams.lightIndex_id169
mov r13.xyz, r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r1.w
  breakc_nz r4.w

#line 871
  if_nz r4.w

#line 873
    break 

#line 874
  endif 

#line 578
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r2.zzzz, t3.yzwx  // r4.w <- realLightIndex

#line 579
  iadd r2.z, r2.z, l(1)  // r2.z <- streams.lightIndex_id169

#line 581
  ishl r6.z, r4.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r6.zzzz, t4.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 582
  bfi r4.w, l(31), l(1), r4.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r4.wwww, t4.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 393
  mov r16.x, r7.w
  mov r16.yz, r8.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 394
  dp3 r4.w, r14.xyzx, r14.xyzx
  sqrt r6.z, r4.w  // r6.z <- lightVectorLength

#line 395
  div r14.xyz, r14.xyzx, r6.zzzz  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 360
  max r6.z, r4.w, l(0.000100)
  div r6.z, l(1.000000, 1.000000, 1.000000, 1.000000), r6.z  // r6.z <- attenuation

#line 339
  mul r4.w, r14.w, r4.w  // r4.w <- factor

#line 340
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 341
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id105 return value>

#line 361
  mul r4.w, r4.w, r6.z  // r4.w <- attenuation

#line 710
  dp3 r6.z, r7.xyzx, r14.xyzx
  max r6.z, r6.z, l(0.000100)  // r6.z <- streams.NdotL_id51

#line 712
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r6.zzzz, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 746
  mov r9.xy, r8.zwzz
  add r9.xyw, r14.xyxz, r9.xyxz
  dp3 r4.w, r9.xywx, r9.xywx
  rsq r4.w, r4.w
  mul r9.xyw, r4.wwww, r9.xyxw  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.w <- streams.H_id77.z

#line 747
  dp3_sat r4.w, r7.xyzx, r9.xywx  // r4.w <- streams.NdotH_id78

#line 748
  dp3_sat r6.w, r14.xyzx, r9.xywx  // r6.w <- streams.LdotH_id79

#line 742
  mul r9.xyw, r10.xyxz, r15.xyxz

#line 879
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 406
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.w, -r6.w, l(1.000000)
  mul r10.w, r6.w, r6.w
  mul r10.w, r10.w, r10.w
  mul r6.w, r6.w, r10.w
  mad r14.xyz, r14.xyzx, r6.wwww, r12.xyzx  // r14.x <- <FresnelSchlick_id175 return value>.x; r14.y <- <FresnelSchlick_id175 return value>.y; r14.z <- <FresnelSchlick_id175 return value>.z

#line 401
  mul r6.w, r12.w, l(0.500000)  // r6.w <- k

#line 402
  mad r10.w, -r12.w, l(0.500000), l(1.000000)
  mad r11.w, r6.z, r10.w, r6.w
  div r11.w, r6.z, r11.w  // r11.w <- <VisibilityhSchlickGGX_id191 return value>
  mad r6.w, r2.w, r10.w, r6.w
  div r6.w, r2.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id191 return value>

#line 470
  mul r6.w, r6.w, r11.w
  mul r6.z, r2.w, r6.z
  div r6.z, r6.w, r6.z  // r6.z <- <VisibilitySmithSchlickGGX_id193 return value>

#line 464
  mul r6.w, r12.w, r12.w  // r6.w <- alphaR2

#line 465
  mul r4.w, r4.w, r4.w
  mad r10.w, r12.w, r12.w, l(-1.000000)
  mad r4.w, r4.w, r10.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 466
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r6.w, r4.w  // r4.w <- <NormalDistributionGGX_id205 return value>

#line 736
  mul r14.xyz, r6.zzzz, r14.xyzx
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 883
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 869
  iadd r3.w, r3.w, l(1)

#line 885
endloop   // r2.z <- streams.lightIndex_id169

#line 702
ushr r1.w, r2.y, l(16)  // r1.w <- <GetMaxLightCount_id245 return value>

#line 893
mov r2.xyw, r1.xyxz  // r2.x <- streams.PositionWS_id24.x; r2.y <- streams.PositionWS_id24.y; r2.w <- streams.PositionWS_id24.z
mov r7.y, r0.w  // r7.y <- streams.alphaRoughness_id72
mov r7.z, r6.y  // r7.z <- streams.NdotV_id74
mov r8.xyz, r0.xyzx  // r8.x <- streams.normalWS_id21.x; r8.y <- streams.normalWS_id21.y; r8.z <- streams.normalWS_id21.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y
mov r10.xyz, r4.xyzx
mov r11.xyz, r5.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r12.xyz, r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r3.w, r2.z  // r3.w <- streams.lightIndex_id169
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r6.z, r4.w, r1.w
  breakc_nz r6.z

#line 895
  if_nz r6.z

#line 897
    break 

#line 898
  endif 

#line 550
  ld_indexable(buffer)(uint,uint,uint,uint) r6.z, r3.wwww, t3.yzxw  // r6.z <- realLightIndex

#line 551
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id169

#line 553
  ishl r6.w, r6.z, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r6.wwww, t5.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 556
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r6.zzzz, l(1, 2, 3, 0)

#line 554
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t5.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 555
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t5.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 556
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t5.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 380
  add r14.xyz, -r2.xywx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 381
  dp3 r6.z, r14.xyzx, r14.xyzx
  sqrt r6.w, r6.z  // r6.w <- lightVectorLength

#line 382
  div r14.xyz, r14.xyzx, r6.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 353
  max r6.w, r6.z, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 333
  mul r6.z, r15.w, r6.z  // r6.z <- factor

#line 334
  mad r6.z, -r6.z, r6.z, l(1.000000)
  max r6.z, r6.z, l(0.000000)  // r6.z <- smoothFactor

#line 335
  mul r6.z, r6.z, r6.z  // r6.z <- <SmoothDistanceAttenuation_id116 return value>

#line 354
  mul r6.z, r6.z, r6.w  // r6.z <- attenuation

#line 345
  dp3 r6.w, -r16.xyzx, r14.xyzx  // r6.w <- cd

#line 346
  mad_sat r6.w, r6.w, r15.x, r15.y  // r6.w <- attenuation

#line 347
  mul r6.w, r6.w, r6.w

#line 388
  mul r6.z, r6.w, r6.z  // r6.z <- attenuation

#line 688
  dp3 r6.w, r8.xyzx, r14.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id51

#line 690
  mul r15.xyz, r6.zzzz, r17.xyzx
  mul r15.xyz, r6.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 746
  add r16.xyz, r9.xyzx, r14.xyzx
  dp3 r6.z, r16.xyzx, r16.xyzx
  rsq r6.z, r6.z
  mul r16.xyz, r6.zzzz, r16.xyzx  // r16.x <- streams.H_id77.x; r16.y <- streams.H_id77.y; r16.z <- streams.H_id77.z

#line 747
  dp3_sat r6.z, r8.xyzx, r16.xyzx  // r6.z <- streams.NdotH_id78

#line 748
  dp3_sat r7.x, r14.xyzx, r16.xyzx  // r7.x <- streams.LdotH_id79

#line 742
  mul r14.xyz, r10.xyzx, r15.xyzx

#line 903
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 406
  add r16.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.x, -r7.x, l(1.000000)
  mul r7.w, r7.x, r7.x
  mul r7.w, r7.w, r7.w
  mul r7.x, r7.w, r7.x
  mad r16.xyz, r16.xyzx, r7.xxxx, r11.xyzx  // r16.x <- <FresnelSchlick_id175 return value>.x; r16.y <- <FresnelSchlick_id175 return value>.y; r16.z <- <FresnelSchlick_id175 return value>.z

#line 401
  mul r7.x, r7.y, l(0.500000)  // r7.x <- k

#line 402
  mad r7.w, -r7.y, l(0.500000), l(1.000000)
  mad r8.w, r6.w, r7.w, r7.x
  div r8.w, r6.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id191 return value>
  mad r7.x, r7.z, r7.w, r7.x
  div r7.x, r7.z, r7.x  // r7.x <- <VisibilityhSchlickGGX_id191 return value>

#line 470
  mul r7.x, r7.x, r8.w
  mul r6.w, r7.z, r6.w
  div r6.w, r7.x, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id193 return value>

#line 464
  mul r7.x, r7.y, r7.y  // r7.x <- alphaR2

#line 465
  mul r6.z, r6.z, r6.z
  mad r7.w, r7.y, r7.y, l(-1.000000)
  mad r6.z, r6.z, r7.w, l(1.000000)
  max r6.z, r6.z, l(0.000100)  // r6.z <- d

#line 466
  mul r6.z, r6.z, r6.z
  mul r6.z, r6.z, l(3.141593)
  div r6.z, r7.x, r6.z  // r6.z <- <NormalDistributionGGX_id205 return value>

#line 736
  mul r16.xyz, r6.wwww, r16.xyzx
  mul r16.xyz, r6.zzzz, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 907
  mad r12.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 893
  iadd r4.w, r4.w, l(1)

#line 909
endloop   // r3.w <- streams.lightIndex_id169

#line 526
sqrt r5.w, r0.w
add r6.x, -r5.w, l(1.000000)  // r6.x <- glossiness

#line 527
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r6.xyxx, t1.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 528
mad r1.xyz, r5.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id316 return value>.x; r1.y <- <Compute_id316 return value>.y; r1.z <- <Compute_id316 return value>.z

#line 671
mul r2.xyz, r1.xyzx, cb2[43].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id495 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id495 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id495 return value>.z

#line 921
mad r2.xyz, r4.xyzx, cb2[43].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 660
dp3 r0.w, r0.xyzx, cb2[53].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r0.xyzx, cb2[54].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r0.xyzx, cb2[55].xyzx  // r2.w <- sampleDirection.z

#line 426
mul r3.w, r1.w, r1.w  // r3.w <- y2

#line 427
mul r4.w, r2.w, r2.w  // r4.w <- z2

#line 431
mad r6.xyz, cb2[45].xyzx, r1.wwww, cb2[44].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 432
mad r6.xyz, cb2[46].xyzx, -r2.wwww, r6.xyzx

#line 433
mad r6.xyz, cb2[47].xyzx, r0.wwww, r6.xyzx

#line 436
mul r7.xyz, r1.wwww, cb2[48].xyzx
mad r6.xyz, r7.xyzx, r0.wwww, r6.xyzx

#line 437
mul r7.xyz, r1.wwww, cb2[49].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 438
mad r1.w, r4.w, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[50].xyzx, r1.wwww, r6.xyzx

#line 439
mul r7.xyz, r0.wwww, cb2[51].xyzx
mad r6.xyz, r7.xyzx, -r2.wwww, r6.xyzx

#line 440
mad r0.w, r0.w, r0.w, -r3.w
mad r6.xyz, cb2[52].xyzx, r0.wwww, r6.xyzx

#line 662
mul r6.xyz, r6.xyzx, cb2[57].xxxx  // r6.x <- streams.envLightDiffuseColor_id49.x; r6.y <- streams.envLightDiffuseColor_id49.y; r6.z <- streams.envLightDiffuseColor_id49.z

#line 663
dp3 r0.w, -r3.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r3.xyz, r0.xyzx, -r0.wwww, -r3.xyzx  // r3.x <- sampleDirection.x; r3.y <- sampleDirection.y; r3.z <- sampleDirection.z

#line 664
dp3 r7.x, r3.xyzx, cb2[53].xyzx  // r7.x <- sampleDirection.x
dp3 r7.y, r3.xyzx, cb2[54].xyzx  // r7.y <- sampleDirection.y
dp3 r0.w, r3.xyzx, cb2[55].xyzx  // r0.w <- sampleDirection.z

#line 665
mov r7.z, -r0.w  // r7.z <- sampleDirection.z

#line 512
mul r0.w, r5.w, cb2[52].w  // r0.w <- mipLevel

#line 513
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r7.xyzx, t6.xyzw, s0, r0.w  // r3.x <- <Compute_id266 return value>.x; r3.y <- <Compute_id266 return value>.y; r3.z <- <Compute_id266 return value>.z

#line 666
mul r3.xyz, r3.xyzx, cb2[57].xxxx  // r3.x <- streams.envLightSpecularColor_id50.x; r3.y <- streams.envLightSpecularColor_id50.y; r3.z <- streams.envLightSpecularColor_id50.z

#line 929
mad r2.xyz, r4.xyzx, r6.xyzx, r2.xyzx

#line 933
mad r1.xyz, r1.xyzx, r3.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 948
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r1.xyzx

#line 1038
mad o1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 1074
utof o3.xyzw, cb0[26].xxxx

#line 1155
mov o0.w, l(1.000000)
mov o1.w, l(1.000000)
mov o2.xyzw, r5.xyzw
ret 
// Approximately 306 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id160 = 8;
const static int TOrder_id179 = 3;
const static int TOrder_id181 = 3;
const static bool TInvert_id204 = true;
const static bool TIsEnergyConservative_id216 = false;
static const float PI_id218 = 3.14159265358979323846;
static const float3 QuadPositions_id148[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id149[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id162;
    float3 normalWS_id21;
    float PSize_id153;
    float2 TexCoord_id133;
    float4 PositionWS_id24;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id19;
    float DepthVS_id25;
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
    float4 ColorPerParticle_ShaderFXResult_0_id189;
    float Input_1_id197;
    float Input_2_id206;
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
    float thicknessWS_id158;
    float3 shadowColor_id157;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id168;
    int lightIndex_id169;
    float Depth_id10;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
    float4 ColorTarget2_id4;
    float4 ColorTarget3_id5;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
    float4 ColorTarget2_id4 : SV_Target2;
    float4 ColorTarget3_id5 : SV_Target3;
};
struct PS_INPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float PSize_id153 : PSIZE_ID153_SEM;
    float2 TexCoord_id133 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id162 : SCREENPOSITION_ID162_SEM;
    float3 normalWS_id21 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id155;
    float4 ScreenPosition_id162;
    float3 normalWS_id21;
    uint InstanceID_id13;
    float4 PositionWS_id24;
    float PSize_id153;
    float2 TexCoord_id133;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id24 : POSITION_WS;
    float PSize_id153 : PSIZE_ID153_SEM;
    float2 TexCoord_id133 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id162 : SCREENPOSITION_ID162_SEM;
    float3 normalWS_id21 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id155 : VID_ID155_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id162 : SCREENPOSITION_ID162_SEM;
    float3 normalWS_id21 : NORMALWS;
};
struct VS_STREAMS 
{
    uint VertexID_id154;
    float4 Position_id23;
    float3 normalWS_id21;
    uint VID_id155;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    float4 ScreenPosition_id162;
};
struct VS_OUTPUT 
{
    uint VID_id155 : VID_ID155_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id162 : SCREENPOSITION_ID162_SEM;
    float3 normalWS_id21 : NORMALWS;
};
struct VS_INPUT 
{
    uint VertexID_id154 : SV_VertexID;
    float4 Position_id23 : POSITION;
    float3 normalWS_id21 : NORMALWS;
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
    uint MaterialIndex_id156;
};
cbuffer PerMaterial 
{
    float ParticleSize_id152 = 0.1;
    float InputValue_id198;
    float InputValue_id207;
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
    float NearClipPlane_id163 = 1.0f;
    float FarClipPlane_id164 = 100.0f;
    float2 ZProjection_id165;
    float2 ViewSize_id166;
    float AspectRatio_id167;
    float4 _padding_PerView_Default;
    int LightCount_id159;
    DirectionalLightData Lights_id161[TMaxLightCount_id160];
    float ClusterDepthScale_id172;
    float ClusterDepthBias_id173;
    float2 ClusterStride_id174;
    float3 AmbientLight_id177;
    float3 SphericalColors_id182[TOrder_id181 * TOrder_id181];
    float MipCount_id183;
    float4x4 SkyMatrix_id185;
    float Intensity_id186;
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
StructuredBuffer<SMGridParticle> ParticlesBuffer_id151;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id190;
Texture2D EnvironmentLightingDFG_LUT_id219;
Texture3D<uint2> LightClusters_id170;
Buffer<uint> LightIndices_id171;
Buffer<float4> PointLights_id175;
Buffer<float4> SpotLights_id176;
TextureCube CubeMap_id184;
float SmoothDistanceAttenuation_id116(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id105(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id118(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id117(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id116(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id107(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id105(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id304()
{
    return InputValue_id207;
}
float Compute_id292()
{
    return InputValue_id198;
}
float4 Compute_id280(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id190[id];
    return float4(p.Col, 1);
}
float ComputeAttenuation_id119(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id117(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id118(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id106(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id107(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id191(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id175(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id307(inout PS_STREAMS streams)
{
    streams.Input_2_id206 = Compute_id304();
}
void Compute_id295(inout PS_STREAMS streams)
{
    streams.Input_1_id197 = Compute_id292();
}
void Compute_id283(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id189 = Compute_id280(streams);
}
float4 EvaluateSphericalHarmonics_id129(float3 sphericalColors[TOrder_id179 * TOrder_id179], float3 direction)
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
void ProcessLight_id120(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id119(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id109(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id106(light, streams.PositionWS_id24.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id205(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id218 * d * d);
}
float VisibilitySmithSchlickGGX_id193(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id191(alphaR, nDotL) * VisibilityhSchlickGGX_id191(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id181(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id175(f0, 1.0f, lOrVDotH);
}
float Compute_id310(inout PS_STREAMS streams)
{
    return streams.Input_2_id206;
}
void Compute_id309(inout PS_STREAMS streams)
{

    {
        Compute_id307(streams);
    }
}
float Compute_id298(inout PS_STREAMS streams)
{
    return streams.Input_1_id197;
}
void Compute_id297(inout PS_STREAMS streams)
{

    {
        Compute_id295(streams);
    }
}
float4 Compute_id286(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id189;
}
void Compute_id285(inout PS_STREAMS streams)
{

    {
        Compute_id283(streams);
    }
}
float4 Compute_id266(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id183;
    return CubeMap_id184.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id261(float3 direction)
{
    return EvaluateSphericalHarmonics_id129(SphericalColors_id182, direction);
}
void PrepareEnvironmentLight_id133(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id316(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id219.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id124(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id115(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id114(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id113(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id112(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id171.Load(streams.lightIndex_id169);
    streams.lightIndex_id169++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id176.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id176.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id176.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id176.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id120(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id104(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id103(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id102(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id101(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id171.Load(streams.lightIndex_id169);
    streams.lightIndex_id169++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id175.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id175.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id109(streams, pointLight);
}
void PrepareLightData_id108(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id165.y / (projectedDepth - ZProjection_id165.x);
    float2 texCoord = float2(streams.ScreenPosition_id162.x + 1, 1 - streams.ScreenPosition_id162.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id172 + ClusterDepthBias_id173), 0));
    streams.lightData_id168 = LightClusters_id170.Load(int4(texCoord * ClusterStride_id174, slice, 0));
    streams.lightIndex_id169 = streams.lightData_id168.x;
}
float Compute_id408(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id205(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id378(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id193(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id348(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id181(f0, streams.LdotH_id79);
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
    streams.thicknessWS_id158 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id95(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id161[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id161[lightIndex].DirectionWS;
}
float Compute_id313(inout PS_STREAMS streams)
{
    Compute_id309(streams);
    return Compute_id310(streams);
}
float Compute_id301(inout PS_STREAMS streams)
{
    Compute_id297(streams);
    return Compute_id298(streams);
}
float4 Compute_id289(inout PS_STREAMS streams)
{
    Compute_id285(streams);
    return Compute_id286(streams);
}
void ResetStream_id208()
{
}
void AfterLightingAndShading_id465()
{
}
void AfterLightingAndShading_id446()
{
}
void PrepareEnvironmentLight_id279(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id276(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id133(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id21, (float3x3)SkyMatrix_id185);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id261(sampleDirection).rgb * Intensity_id186 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id185);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id266(streams, sampleDirection).rgb * Intensity_id186 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id495(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id316(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id439(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id271(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id124(streams);
    float3 lightColor = AmbientLight_id177 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id242(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id112(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id113(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id114(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id115(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id246(inout PS_STREAMS streams)
{
    return streams.lightData_id168.y >> 16;
}
int GetMaxLightCount_id245(inout PS_STREAMS streams)
{
    return streams.lightData_id168.y >> 16;
}
void PrepareDirectLights_id240()
{
}
void PrepareDirectLight_id229(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id101(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id102(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id103(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id104(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id234(inout PS_STREAMS streams)
{
    return streams.lightData_id168.y & 0xFFFF;
}
int GetMaxLightCount_id233(inout PS_STREAMS streams)
{
    return streams.lightData_id168.y & 0xFFFF;
}
void PrepareDirectLights_id232(inout PS_STREAMS streams)
{
    PrepareLightData_id108(streams);
}
float3 ComputeDirectLightContribution_id494(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id348(streams, specularColor);
    float geometricShadowing = Compute_id378(streams);
    float normalDistribution = Compute_id408(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id438(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id218 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id64(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id21, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id218(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id95(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id21, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id157 = ComputeShadow_id96(streams, streams.PositionWS_id24.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id157 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id97(streams.PositionWS_id24.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id21);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id98(streams.PositionWS_id24.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id220()
{
    return LightCount_id159;
}
int GetMaxLightCount_id221()
{
    return TMaxLightCount_id160;
}
void PrepareDirectLights_id216()
{
}
void PrepareForLightingAndShading_id462()
{
}
void PrepareForLightingAndShading_id443()
{
}
void PrepareMaterialForLightingAndShading_id207(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id21, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id206(inout PS_STREAMS streams)
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
float4 Compute_id315(inout PS_STREAMS streams)
{
    float x = Compute_id313(streams);
    return float4(x, x, x, x);
}
float4 Compute_id303(inout PS_STREAMS streams)
{
    float x = Compute_id301(streams);
    return float4(x, x, x, x);
}
float4 Compute_id291(inout PS_STREAMS streams)
{
    return Compute_id289(streams);
}
void ResetStream_id209(inout PS_STREAMS streams)
{
    ResetStream_id208();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id526(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id21 = -streams.normalWS_id21;
    ResetLightStream_id206(streams);
    PrepareMaterialForLightingAndShading_id207(streams);

    {
        PrepareForLightingAndShading_id443();
    }

    {
        PrepareForLightingAndShading_id462();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id216();
        const int maxLightCount = GetMaxLightCount_id221();
        int count = GetLightCount_id220();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id218(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id438(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }
        }
    }

    {
        PrepareDirectLights_id232(streams);
        const int maxLightCount = GetMaxLightCount_id233(streams);
        int count = GetLightCount_id234(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id229(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id438(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }
        }
    }

    {
        PrepareDirectLights_id240();
        const int maxLightCount = GetMaxLightCount_id245(streams);
        int count = GetLightCount_id246(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id242(streams, i);
            PrepareMaterialPerDirectLight_id64(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id438(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id494(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id271(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id439(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id495(streams);
        }
    }

    {
        PrepareEnvironmentLight_id276(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id439(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id495(streams);
        }
    }

    {
        PrepareEnvironmentLight_id279(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id439(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id495(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id218 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id446();
    }

    {
        AfterLightingAndShading_id465();
    }
}
void Compute_id510(inout PS_STREAMS streams)
{
    float metalness = Compute_id315(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id505(inout PS_STREAMS streams)
{
    float glossiness = Compute_id303(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id500(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id291(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id210(inout PS_STREAMS streams)
{
    ResetStream_id209(streams);
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
void Compute_id85(inout PS_STREAMS streams)
{

    {
        Compute_id500(streams);
    }

    {
        Compute_id505(streams);
    }

    {
        Compute_id510(streams);
    }

    {
        Compute_id526(streams);
    }
}
void ResetStream_id84(inout PS_STREAMS streams)
{
    ResetStream_id210(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id33.xyz - streams.PositionWS_id24.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id84(streams);
    Compute_id85(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
float3 EncodeNormal_id89(float3 n)
{
    return n * 0.5 + 0.5;
}
float4 StrideShadingWorldNormal_id33(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id24 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id24, ViewProjection_id31);
    streams.normalWS_id21 = normal;
    streams.meshNormalWS_id19 = normal;
    streams.DepthVS_id25 = posWVP.w;
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
    normal = normalize(mul(float4(normal, 0), ViewInverse_id28).xyz);
    pos = float4((normal * sphereRadius) + spherePos, 1);
}
void PostTransformPosition_id59(inout VS_STREAMS streams)
{
    streams.VID_id155 = streams.VertexID_id154;
    streams.InstanceID_id13 = streams.VertexID_id154;
    streams.ShadingPosition_id0 = streams.Position_id23;
}
void TransformPosition_id58()
{
}
void PreTransformPosition_id57()
{
}
float4 Compute_id83()
{
    return MaterialIndex_id156;
}
float4 Compute_id82(inout PS_STREAMS streams)
{
    return float4(streams.matSpecularVisible_id73, sqrt(streams.alphaRoughness_id72));
}
float4 Compute_id81(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id89(streams.normalWS_id21), 1);
}
float4 Shading_id63(inout PS_STREAMS streams)
{
    float size = streams.PSize_id153;
    float2 mapping = streams.TexCoord_id133;
    float3 worldPos, worldNormal;
    sphereImpostorSimple_id62(mapping, streams.PositionWS_id24.xyz, size, worldPos, worldNormal);
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
    streams.ColorTarget2_id4 = Compute_id82(streams);
    streams.ColorTarget3_id5 = Compute_id83();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id21, streams.normalWS_id21) > 0)
        streams.normalWS_id21 = normalize(streams.normalWS_id21);
    streams.meshNormalWS_id19 = streams.normalWS_id21;
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
    streams.PositionWS_id24 = __input__.PositionWS_id24;
    streams.PSize_id153 = __input__.PSize_id153;
    streams.TexCoord_id133 = __input__.TexCoord_id133;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.ScreenPosition_id162 = __input__.ScreenPosition_id162;
    streams.normalWS_id21 = __input__.normalWS_id21;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id162 /= streams.ScreenPosition_id162.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    __output__.ColorTarget2_id4 = streams.ColorTarget2_id4;
    __output__.ColorTarget3_id5 = streams.ColorTarget3_id5;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id155 = input[0].VID_id155;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id162 = input[0].ScreenPosition_id162;
    streams.normalWS_id21 = input[0].normalWS_id21;
    uint id = streams.VID_id155;
    SMGridParticle p = ParticlesBuffer_id151[id];
    streams.PositionWS_id24 = mul(float4(p.Pos.xyz, 1), World_id34);
    streams.PSize_id153 = ParticleSize_id152 * p.Size.x * 0.5;
    if (streams.PSize_id153 <= 0)
        return;
    float padding = 1.5;
    float2 offset;
    float4 posView = mul(streams.PositionWS_id24, View_id27);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id133 = QuadUV_id149[i].xy * 2 - 1;
        float4 viewCornerPos = float4(posView.xyz + QuadPositions_id148[i].xyz * streams.PSize_id153, 1);
        streams.ShadingPosition_id0 = mul(viewCornerPos, Projection_id29);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id24 = streams.PositionWS_id24;
            output.PSize_id153 = streams.PSize_id153;
            output.TexCoord_id133 = streams.TexCoord_id133;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.ScreenPosition_id162 = streams.ScreenPosition_id162;
            output.normalWS_id21 = streams.normalWS_id21;
            output.InstanceID_id13 = streams.InstanceID_id13;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id154 = __input__.VertexID_id154;
    streams.Position_id23 = __input__.Position_id23;
    streams.normalWS_id21 = __input__.normalWS_id21;
    VSMain_id19(streams);
    streams.ScreenPosition_id162 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id155 = streams.VID_id155;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id162 = streams.ScreenPosition_id162;
    __output__.normalWS_id21 = streams.normalWS_id21;
    return __output__;
}

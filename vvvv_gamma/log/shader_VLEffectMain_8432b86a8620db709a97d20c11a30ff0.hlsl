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
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id154 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id150 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id196 => ShaderFX.InputValueFloat
@C    InputValue_id205 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 944]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id161 => Camera.NearClipPlane
@C    FarClipPlane_id162 => Camera.FarClipPlane
@C    ZProjection_id163 => Camera.ZProjection
@C    ViewSize_id164 => Camera.ViewSize
@C    AspectRatio_id165 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id157 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id159 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id170 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id171 => LightClustered.ClusterDepthBias
@C    ClusterStride_id172 => LightClustered.ClusterStride
@C    AmbientLight_id175 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id180 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id181 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id183 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id184 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id188 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id188 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id168 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id168 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id169 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id169 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id173 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id173 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id174 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id174 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id182 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id182 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id149 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id113 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id188 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id168 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id169 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id173 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id174 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id182 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => c50c5af80480fee7a393afc962380836
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
// VID_ID153_SEM            0   x           0     NONE    uint   x   
// SV_InstanceID            0    y          0     NONE    uint    y  
// SV_Position              0   xyzw        1      POS   float   xyzw
// SCREENPOSITION_ID160_SEM     0   xyzw        2     NONE   float   xyzw
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
//   v0.x <- __input__.VertexID_id152; 
//   v1.x <- __input__.Position_id21.x; v1.y <- __input__.Position_id21.y; v1.z <- __input__.Position_id21.z; v1.w <- __input__.Position_id21.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   o3.x <- <VSMain return value>.normalWS_id19.x; o3.y <- <VSMain return value>.normalWS_id19.y; o3.z <- <VSMain return value>.normalWS_id19.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id160.x; o2.y <- <VSMain return value>.ScreenPosition_id160.y; o2.z <- <VSMain return value>.ScreenPosition_id160.z; o2.w <- <VSMain return value>.ScreenPosition_id160.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id153; o0.y <- <VSMain return value>.InstanceID_id13
//
#line 1187 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_8432b86a8620db709a97d20c11a30ff0.hlsl"
mov o0.xy, v0.xxxx
mov o1.xyzw, v1.xyzw
mov o2.xyzw, v1.xyzw
mov o3.xyz, v2.xyzx
ret 
// Approximately 5 instruction slots used
@G    Geometry => a8c0d51e71d8d820ef1201a53005db7b
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
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id150;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id196;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id205;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id161;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id162;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id163;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id164;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id165;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id157;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id159[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id170;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id171;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id172;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id175;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id180[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id181;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id183;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id184;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
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
// SCREENPOSITION_ID160_SEM     0   xyzw        2     NONE   float   xyzw
// NORMALWS                 0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID151_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float   xyzw
// SCREENPOSITION_ID160_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v[0][0].x <- input[0].VID_id153; v[0][0].y <- input[0].InstanceID_id13; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w; 
//   v[0][2].x <- input[0].ScreenPosition_id160.x; v[0][2].y <- input[0].ScreenPosition_id160.y; v[0][2].z <- input[0].ScreenPosition_id160.z; v[0][2].w <- input[0].ScreenPosition_id160.w; 
//   v[0][3].x <- input[0].normalWS_id19.x; v[0][3].y <- input[0].normalWS_id19.y; v[0][3].z <- input[0].normalWS_id19.z
//
#line 1145 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_8432b86a8620db709a97d20c11a30ff0.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 1147
mul r0.w, r0.x, cb1[0].x

#line 1148
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 1149
  ret 
endif 

#line 1145
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 1146
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id22.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id22.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id22.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id22.w

#line 1152
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 1157
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id151

#line 1158
mov r4.w, l(1.000000)

#line 1154
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 1156
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id131.x; r5.y <- streams.TexCoord_id131.y

#line 1157
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 1158
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 1169
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

#line 1171
  iadd r1.w, r1.w, l(1)
endloop 

#line 1172
ret 
// Approximately 43 instruction slots used
@G    Pixel => f616e5704854b7532818b9c83a11c5de
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
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id150;          // Offset:    0 Size:     4 [unused]
//      = 0x3dcccccd 
//   float InputValue_id196;            // Offset:    4 Size:     4
//   float InputValue_id205;            // Offset:    8 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16
//   float NearClipPlane_id161;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id162;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id163;          // Offset:  360 Size:     8
//   float2 ViewSize_id164;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id165;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id157;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id159[8];                 // Offset:  416 Size:   252
//   float ClusterDepthScale_id170;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id171;      // Offset:  672 Size:     4
//   float2 ClusterStride_id172;        // Offset:  676 Size:     8
//   float3 AmbientLight_id175;         // Offset:  688 Size:    12
//   float3 SphericalColors_id180[9];   // Offset:  704 Size:   140
//   float MipCount_id181;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id183;          // Offset:  848 Size:    64
//   float Intensity_id184;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id188
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
// ParticlesBuffer_id188             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id217    texture  float4          2d             t1      1 
// LightClusters_id168               texture   uint2          3d             t2      1 
// LightIndices_id169                texture    uint         buf             t3      1 
// PointLights_id173                 texture  float4         buf             t4      1 
// SpotLights_id174                  texture  float4         buf             t5      1 
// CubeMap_id182                     texture  float4        cube             t6      1 
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
// PSIZE_ID151_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float     z 
// SCREENPOSITION_ID160_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_output oDepth
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.PSize_id151; v1.y <- __input__.TexCoord_id131.x; v1.z <- __input__.TexCoord_id131.y; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v3.x <- __input__.ScreenPosition_id160.x; v3.y <- __input__.ScreenPosition_id160.y; v3.z <- __input__.ScreenPosition_id160.z; v3.w <- __input__.ScreenPosition_id160.w; 
//   v4.x <- __input__.normalWS_id19.x; v4.y <- __input__.normalWS_id19.y; v4.z <- __input__.normalWS_id19.z; 
//   v5.x <- __input__.InstanceID_id13; 
//   v6.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w; 
//   oDepth <- <PSMain return value>.Depth_id10
//
#line 1042 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_8432b86a8620db709a97d20c11a30ff0.hlsl"
dp2 r0.x, v1.yzyy, v1.yzyy  // r0.x <- lenSqr

#line 1043
lt r0.y, l(1.000000), r0.x

#line 1044
discard_nz r0.y

#line 1045
add r0.x, -r0.x, l(1.000000)
sqrt r0.z, r0.x  // r0.z <- z

#line 1047
mov r0.xy, v1.yzyy
dp3 r1.x, r0.xyzx, cb2[4].xyzx
dp3 r1.y, r0.xyzx, cb2[5].xyzx
dp3 r1.z, r0.xyzx, cb2[6].xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r1.xyzx  // r0.x <- normal.x; r0.y <- normal.y; r0.z <- normal.z

#line 1048
mad r1.xyz, r0.xyzx, v1.xxxx, v0.xyzx  // r1.x <- pos.x; r1.y <- pos.y; r1.z <- pos.z

#line 1127
div r2.xy, v3.xyxx, v3.wwww  // r2.x <- streams.ScreenPosition_id160.x; r2.y <- streams.ScreenPosition_id160.y

#line 1033
mov r1.w, l(1.000000)
dp4 r0.w, r1.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.w, r1.xyzw, cb2[19].xyzw  // r1.w <- posWVP.w

#line 1037
div oDepth, r0.w, r1.w

#line 1024
add r3.xyz, -r1.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.viewWS_id68.x; r3.y <- streams.viewWS_id68.y; r3.z <- streams.viewWS_id68.z

#line 369
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, v5.x, l(48), t0.xyzx  // r4.x <- p.Col.x; r4.y <- p.Col.y; r4.z <- p.Col.z

#line 964
add r0.w, -cb1[0].y, l(1.000000)  // r0.w <- glossiness

#line 956
add r5.xyz, r4.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb1[0].zzzz, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id55.x; r5.y <- streams.matSpecular_id55.y; r5.z <- streams.matSpecular_id55.z

#line 957
mad r4.xyz, cb1[0].zzzz, -r4.xyzx, r4.xyzx  // r4.x <- streams.matDiffuse_id53.x; r4.y <- streams.matDiffuse_id53.y; r4.z <- streams.matDiffuse_id53.z

#line 821
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id19.x; r0.y <- streams.normalWS_id19.y; r0.z <- streams.normalWS_id19.z

#line 778
dp3 r1.w, r0.xyzx, r3.xyzx
max r6.y, r1.w, l(0.000100)  // r6.y <- streams.NdotV_id72

#line 779
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 780
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id70

#line 839
mov r7.xyz, r0.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y; r8.z <- streams.viewWS_id68.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r10.w, r0.w  // r10.w <- streams.alphaRoughness_id70
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, r6.y  // r1.w <- streams.NdotV_id72
mov r2.z, l(0)  // r2.z <- i
loop 
  ige r2.w, r2.z, l(8)
  breakc_nz r2.w

#line 841
  ige r2.w, r2.z, cb2[25].x
  if_nz r2.w

#line 843
    break 

#line 844
  endif 

#line 618
  ishl r2.w, r2.z, l(1)

#line 748
  dp3 r3.w, r7.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 750
  mul r12.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r12.x <- streams.lightColorNdotL_id44.x; r12.y <- streams.lightColorNdotL_id44.y; r12.z <- streams.lightColorNdotL_id44.z

#line 740
  add r13.xyz, r8.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r13.xyzx, r13.xyzx
  rsq r4.w, r4.w
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.H_id75.x; r13.y <- streams.H_id75.y; r13.z <- streams.H_id75.z

#line 741
  dp3_sat r4.w, r7.xyzx, r13.xyzx  // r4.w <- streams.NdotH_id76

#line 742
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r13.xyzx  // r2.w <- streams.LdotH_id77

#line 736
  mul r13.xyz, r9.xyzx, r12.xyzx

#line 849
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 400
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.w, r2.w, r2.w
  mul r5.w, r5.w, r5.w
  mul r2.w, r2.w, r5.w
  mad r14.xyz, r14.xyzx, r2.wwww, r10.xyzx  // r14.x <- <FresnelSchlick_id164 return value>.x; r14.y <- <FresnelSchlick_id164 return value>.y; r14.z <- <FresnelSchlick_id164 return value>.z

#line 395
  mul r2.w, r10.w, l(0.500000)  // r2.w <- k

#line 396
  mad r5.w, -r10.w, l(0.500000), l(1.000000)
  mad r6.z, r3.w, r5.w, r2.w
  div r6.z, r3.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id180 return value>
  mad r2.w, r1.w, r5.w, r2.w
  div r2.w, r1.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id180 return value>

#line 464
  mul r2.w, r2.w, r6.z
  mul r3.w, r1.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id182 return value>

#line 458
  mul r3.w, r10.w, r10.w  // r3.w <- alphaR2

#line 459
  mul r4.w, r4.w, r4.w
  mad r5.w, r10.w, r10.w, l(-1.000000)
  mad r4.w, r4.w, r5.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 460
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id194 return value>

#line 730
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r12.xyz, r12.xyzx, r14.xyzx

#line 853
  mad r11.xyz, r12.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 839
  iadd r2.z, r2.z, l(1)

#line 855
endloop 

#line 585
add r1.w, v2.z, -cb2[22].z
div r1.w, cb2[22].w, r1.w  // r1.w <- depth

#line 586
mad r2.xy, r2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb2[42].yzyy

#line 587
mad r1.w, r1.w, cb2[41].w, cb2[42].x
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r7.z, r1.w  // r7.z <- slice

#line 588
mul r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r7.xy, r2.xyxx
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.xy, r7.xyzw, t2.xyzw  // r2.x <- streams.lightData_id166.x; r2.y <- streams.lightData_id166.y

#line 718
and r1.w, r2.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id222 return value>

#line 863
mov r7.xyz, r0.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r7.w, r1.x  // r7.w <- streams.PositionWS_id22.x
mov r8.xy, r1.yzyy  // r8.x <- streams.PositionWS_id22.y; r8.y <- streams.PositionWS_id22.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id68.x; r8.w <- streams.viewWS_id68.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id68.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matSpecularVisible_id71.x; r12.y <- streams.matSpecularVisible_id71.y; r12.z <- streams.matSpecularVisible_id71.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id70
mov r2.w, r6.y  // r2.w <- streams.NdotV_id72
mov r2.z, r2.x  // r2.z <- streams.lightIndex_id167
mov r13.xyz, r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r1.w
  breakc_nz r4.w

#line 865
  if_nz r4.w

#line 867
    break 

#line 868
  endif 

#line 572
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r2.zzzz, t3.yzwx  // r4.w <- realLightIndex

#line 573
  iadd r2.z, r2.z, l(1)  // r2.z <- streams.lightIndex_id167

#line 575
  ishl r5.w, r4.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r5.wwww, t4.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 576
  bfi r4.w, l(31), l(1), r4.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r4.wwww, t4.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 387
  mov r16.x, r7.w
  mov r16.yz, r8.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 388
  dp3 r4.w, r14.xyzx, r14.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength

#line 389
  div r14.xyz, r14.xyzx, r5.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 354
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 333
  mul r4.w, r14.w, r4.w  // r4.w <- factor

#line 334
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 335
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id94 return value>

#line 355
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 704
  dp3 r5.w, r7.xyzx, r14.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id49

#line 706
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r5.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 740
  mov r9.xy, r8.zwzz
  add r9.xyw, r14.xyxz, r9.xyxz
  dp3 r4.w, r9.xywx, r9.xywx
  rsq r4.w, r4.w
  mul r9.xyw, r4.wwww, r9.xyxw  // r9.x <- streams.H_id75.x; r9.y <- streams.H_id75.y; r9.w <- streams.H_id75.z

#line 741
  dp3_sat r4.w, r7.xyzx, r9.xywx  // r4.w <- streams.NdotH_id76

#line 742
  dp3_sat r6.z, r14.xyzx, r9.xywx  // r6.z <- streams.LdotH_id77

#line 736
  mul r9.xyw, r10.xyxz, r15.xyxz

#line 873
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 400
  add r14.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.z, -r6.z, l(1.000000)
  mul r6.w, r6.z, r6.z
  mul r6.w, r6.w, r6.w
  mul r6.z, r6.w, r6.z
  mad r14.xyz, r14.xyzx, r6.zzzz, r12.xyzx  // r14.x <- <FresnelSchlick_id164 return value>.x; r14.y <- <FresnelSchlick_id164 return value>.y; r14.z <- <FresnelSchlick_id164 return value>.z

#line 395
  mul r6.z, r12.w, l(0.500000)  // r6.z <- k

#line 396
  mad r6.w, -r12.w, l(0.500000), l(1.000000)
  mad r10.w, r5.w, r6.w, r6.z
  div r10.w, r5.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id180 return value>
  mad r6.z, r2.w, r6.w, r6.z
  div r6.z, r2.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id180 return value>

#line 464
  mul r6.z, r6.z, r10.w
  mul r5.w, r2.w, r5.w
  div r5.w, r6.z, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id182 return value>

#line 458
  mul r6.z, r12.w, r12.w  // r6.z <- alphaR2

#line 459
  mul r4.w, r4.w, r4.w
  mad r6.w, r12.w, r12.w, l(-1.000000)
  mad r4.w, r4.w, r6.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 460
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r6.z, r4.w  // r4.w <- <NormalDistributionGGX_id194 return value>

#line 730
  mul r14.xyz, r5.wwww, r14.xyzx
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 877
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 863
  iadd r3.w, r3.w, l(1)

#line 879
endloop   // r2.z <- streams.lightIndex_id167

#line 696
ushr r1.w, r2.y, l(16)  // r1.w <- <GetMaxLightCount_id234 return value>

#line 887
mov r2.xyw, r1.xyxz  // r2.x <- streams.PositionWS_id22.x; r2.y <- streams.PositionWS_id22.y; r2.w <- streams.PositionWS_id22.z
mov r7.y, r0.w  // r7.y <- streams.alphaRoughness_id70
mov r7.z, r6.y  // r7.z <- streams.NdotV_id72
mov r8.xyz, r0.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id68.x; r9.y <- streams.viewWS_id68.y
mov r10.xyz, r4.xyzx
mov r11.xyz, r5.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r12.xyz, r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r3.w, r2.z  // r3.w <- streams.lightIndex_id167
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r1.w
  breakc_nz r5.w

#line 889
  if_nz r5.w

#line 891
    break 

#line 892
  endif 

#line 544
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.wwww, t3.yzwx  // r5.w <- realLightIndex

#line 545
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id167

#line 547
  ishl r6.z, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r6.zzzz, t5.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 550
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)

#line 548
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t5.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 549
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t5.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 550
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t5.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 374
  add r14.xyz, -r2.xywx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 375
  dp3 r5.w, r14.xyzx, r14.xyzx
  sqrt r6.z, r5.w  // r6.z <- lightVectorLength

#line 376
  div r14.xyz, r14.xyzx, r6.zzzz  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 347
  max r6.z, r5.w, l(0.000100)
  div r6.z, l(1.000000, 1.000000, 1.000000, 1.000000), r6.z  // r6.z <- attenuation

#line 327
  mul r5.w, r15.w, r5.w  // r5.w <- factor

#line 328
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor

#line 329
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id105 return value>

#line 348
  mul r5.w, r5.w, r6.z  // r5.w <- attenuation

#line 339
  dp3 r6.z, -r16.xyzx, r14.xyzx  // r6.z <- cd

#line 340
  mad_sat r6.z, r6.z, r15.x, r15.y  // r6.z <- attenuation

#line 341
  mul r6.z, r6.z, r6.z

#line 382
  mul r5.w, r5.w, r6.z  // r5.w <- attenuation

#line 682
  dp3 r6.z, r8.xyzx, r14.xyzx
  max r6.z, r6.z, l(0.000100)  // r6.z <- streams.NdotL_id49

#line 684
  mul r15.xyz, r5.wwww, r17.xyzx
  mul r15.xyz, r6.zzzz, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 740
  add r16.xyz, r9.xyzx, r14.xyzx
  dp3 r5.w, r16.xyzx, r16.xyzx
  rsq r5.w, r5.w
  mul r16.xyz, r5.wwww, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 741
  dp3_sat r5.w, r8.xyzx, r16.xyzx  // r5.w <- streams.NdotH_id76

#line 742
  dp3_sat r6.w, r14.xyzx, r16.xyzx  // r6.w <- streams.LdotH_id77

#line 736
  mul r14.xyz, r10.xyzx, r15.xyzx

#line 897
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 400
  add r16.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.w, -r6.w, l(1.000000)
  mul r7.x, r6.w, r6.w
  mul r7.x, r7.x, r7.x
  mul r6.w, r6.w, r7.x
  mad r16.xyz, r16.xyzx, r6.wwww, r11.xyzx  // r16.x <- <FresnelSchlick_id164 return value>.x; r16.y <- <FresnelSchlick_id164 return value>.y; r16.z <- <FresnelSchlick_id164 return value>.z

#line 395
  mul r6.w, r7.y, l(0.500000)  // r6.w <- k

#line 396
  mad r7.x, -r7.y, l(0.500000), l(1.000000)
  mad r7.w, r6.z, r7.x, r6.w
  div r7.w, r6.z, r7.w  // r7.w <- <VisibilityhSchlickGGX_id180 return value>
  mad r6.w, r7.z, r7.x, r6.w
  div r6.w, r7.z, r6.w  // r6.w <- <VisibilityhSchlickGGX_id180 return value>

#line 464
  mul r6.w, r6.w, r7.w
  mul r6.z, r7.z, r6.z
  div r6.z, r6.w, r6.z  // r6.z <- <VisibilitySmithSchlickGGX_id182 return value>

#line 458
  mul r6.w, r7.y, r7.y  // r6.w <- alphaR2

#line 459
  mul r5.w, r5.w, r5.w
  mad r7.x, r7.y, r7.y, l(-1.000000)
  mad r5.w, r5.w, r7.x, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 460
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r6.w, r5.w  // r5.w <- <NormalDistributionGGX_id194 return value>

#line 730
  mul r16.xyz, r6.zzzz, r16.xyzx
  mul r16.xyz, r5.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 901
  mad r12.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 887
  iadd r4.w, r4.w, l(1)

#line 903
endloop   // r3.w <- streams.lightIndex_id167

#line 520
sqrt r0.w, r0.w
add r6.x, -r0.w, l(1.000000)  // r6.x <- glossiness

#line 521
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r6.xyxx, t1.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 522
mad r1.xyz, r5.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id305 return value>.x; r1.y <- <Compute_id305 return value>.y; r1.z <- <Compute_id305 return value>.z

#line 665
mul r2.xyz, r1.xyzx, cb2[43].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id484 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id484 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id484 return value>.z

#line 915
mad r2.xyz, r4.xyzx, cb2[43].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 654
dp3 r1.w, r0.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r0.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 420
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 421
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 425
mad r5.yzw, cb2[45].xxyz, r2.wwww, cb2[44].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 426
mad r5.yzw, cb2[46].xxyz, -r3.wwww, r5.yyzw

#line 427
mad r5.yzw, cb2[47].xxyz, r1.wwww, r5.yyzw

#line 430
mul r6.xyz, r2.wwww, cb2[48].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 431
mul r6.xyz, r2.wwww, cb2[49].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 432
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[50].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 433
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 434
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[52].xyzx, r1.wwww, r5.xyzx

#line 656
mul r5.xyz, r5.xyzx, cb2[57].xxxx  // r5.x <- streams.envLightDiffuseColor_id47.x; r5.y <- streams.envLightDiffuseColor_id47.y; r5.z <- streams.envLightDiffuseColor_id47.z

#line 657
dp3 r1.w, -r3.xyzx, r0.xyzx
add r1.w, r1.w, r1.w
mad r0.xyz, r0.xyzx, -r1.wwww, -r3.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z

#line 658
dp3 r3.x, r0.xyzx, cb2[53].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r0.xyzx, cb2[54].xyzx  // r3.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb2[55].xyzx  // r0.x <- sampleDirection.z

#line 659
mov r3.z, -r0.x  // r3.z <- sampleDirection.z

#line 506
mul r0.x, r0.w, cb2[52].w  // r0.x <- mipLevel

#line 507
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r3.xyzx, t6.xyzw, s0, r0.x  // r0.x <- <Compute_id255 return value>.x; r0.y <- <Compute_id255 return value>.y; r0.z <- <Compute_id255 return value>.z

#line 660
mul r0.xyz, r0.xyzx, cb2[57].xxxx  // r0.x <- streams.envLightSpecularColor_id48.x; r0.y <- streams.envLightSpecularColor_id48.y; r0.z <- streams.envLightSpecularColor_id48.z

#line 923
mad r2.xyz, r4.xyzx, r5.xyzx, r2.xyzx

#line 927
mad r0.xyz, r1.xyzx, r0.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 942
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1064
utof o1.xyzw, cb0[26].xxxx

#line 1133
mov o0.w, l(1.000000)
ret 
// Approximately 303 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id158 = 8;
const static int TOrder_id177 = 3;
const static int TOrder_id179 = 3;
const static bool TInvert_id202 = true;
const static bool TIsEnergyConservative_id214 = false;
static const float PI_id216 = 3.14159265358979323846;
static const float3 QuadPositions_id146[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id147[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id160;
    float3 normalWS_id19;
    float PSize_id151;
    float2 TexCoord_id131;
    float4 PositionWS_id22;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
    float DepthVS_id23;
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
    float4 ColorPerParticle_ShaderFXResult_0_id187;
    float Input_1_id195;
    float Input_2_id204;
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
    uint2 lightData_id166;
    int lightIndex_id167;
    float Depth_id10;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
};
struct PS_INPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float PSize_id151 : PSIZE_ID151_SEM;
    float2 TexCoord_id131 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id160 : SCREENPOSITION_ID160_SEM;
    float3 normalWS_id19 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    uint VID_id153;
    float4 ScreenPosition_id160;
    float3 normalWS_id19;
    uint InstanceID_id13;
    float4 PositionWS_id22;
    float PSize_id151;
    float2 TexCoord_id131;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float PSize_id151 : PSIZE_ID151_SEM;
    float2 TexCoord_id131 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id160 : SCREENPOSITION_ID160_SEM;
    float3 normalWS_id19 : NORMALWS;
    uint InstanceID_id13 : SV_InstanceID;
};
struct GS_INPUT 
{
    uint VID_id153 : VID_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id160 : SCREENPOSITION_ID160_SEM;
    float3 normalWS_id19 : NORMALWS;
};
struct VS_STREAMS 
{
    uint VertexID_id152;
    float4 Position_id21;
    float3 normalWS_id19;
    uint VID_id153;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    float4 ScreenPosition_id160;
};
struct VS_OUTPUT 
{
    uint VID_id153 : VID_ID153_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    float4 ShadingPosition_id0 : SV_Position;
    float4 ScreenPosition_id160 : SCREENPOSITION_ID160_SEM;
    float3 normalWS_id19 : NORMALWS;
};
struct VS_INPUT 
{
    uint VertexID_id152 : SV_VertexID;
    float4 Position_id21 : POSITION;
    float3 normalWS_id19 : NORMALWS;
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
};
cbuffer PerMaterial 
{
    float ParticleSize_id150 = 0.1;
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
    float NearClipPlane_id161 = 1.0f;
    float FarClipPlane_id162 = 100.0f;
    float2 ZProjection_id163;
    float2 ViewSize_id164;
    float AspectRatio_id165;
    float4 _padding_PerView_Default;
    int LightCount_id157;
    DirectionalLightData Lights_id159[TMaxLightCount_id158];
    float ClusterDepthScale_id170;
    float ClusterDepthBias_id171;
    float2 ClusterStride_id172;
    float3 AmbientLight_id175;
    float3 SphericalColors_id180[TOrder_id179 * TOrder_id179];
    float MipCount_id181;
    float4x4 SkyMatrix_id183;
    float Intensity_id184;
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
StructuredBuffer<SMGridParticle> ParticlesBuffer_id188;
Texture2D EnvironmentLightingDFG_LUT_id217;
Texture3D<uint2> LightClusters_id168;
Buffer<uint> LightIndices_id169;
Buffer<float4> PointLights_id173;
Buffer<float4> SpotLights_id174;
TextureCube CubeMap_id182;
float SmoothDistanceAttenuation_id105(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id94(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id107(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id106(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id105(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id96(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id94(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id293()
{
    return InputValue_id205;
}
float Compute_id281()
{
    return InputValue_id196;
}
float4 Compute_id269(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id188[id];
    return float4(p.Col, 1);
}
float ComputeAttenuation_id108(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id106(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id107(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id95(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id96(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id180(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id164(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id296(inout PS_STREAMS streams)
{
    streams.Input_2_id204 = Compute_id293();
}
void Compute_id284(inout PS_STREAMS streams)
{
    streams.Input_1_id195 = Compute_id281();
}
void Compute_id272(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id187 = Compute_id269(streams);
}
float4 EvaluateSphericalHarmonics_id118(float3 sphericalColors[TOrder_id177 * TOrder_id177], float3 direction)
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
void ProcessLight_id109(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id108(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id98(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id95(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id194(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id216 * d * d);
}
float VisibilitySmithSchlickGGX_id182(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id180(alphaR, nDotL) * VisibilityhSchlickGGX_id180(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id170(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id164(f0, 1.0f, lOrVDotH);
}
float Compute_id299(inout PS_STREAMS streams)
{
    return streams.Input_2_id204;
}
void Compute_id298(inout PS_STREAMS streams)
{

    {
        Compute_id296(streams);
    }
}
float Compute_id287(inout PS_STREAMS streams)
{
    return streams.Input_1_id195;
}
void Compute_id286(inout PS_STREAMS streams)
{

    {
        Compute_id284(streams);
    }
}
float4 Compute_id275(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id187;
}
void Compute_id274(inout PS_STREAMS streams)
{

    {
        Compute_id272(streams);
    }
}
float4 Compute_id255(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id181;
    return CubeMap_id182.SampleLevel(LinearSampler_id113, direction, mipLevel);
}
float4 Compute_id250(float3 direction)
{
    return EvaluateSphericalHarmonics_id118(SphericalColors_id180, direction);
}
void PrepareEnvironmentLight_id122(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id305(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id217.SampleLevel(LinearSampler_id113, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id113(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
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
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id101(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id169.Load(streams.lightIndex_id167);
    streams.lightIndex_id167++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id174.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id174.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id174.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id174.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id109(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id93(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id92(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id91(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id90(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id169.Load(streams.lightIndex_id167);
    streams.lightIndex_id167++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id173.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id173.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id98(streams, pointLight);
}
void PrepareLightData_id97(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id163.y / (projectedDepth - ZProjection_id163.x);
    float2 texCoord = float2(streams.ScreenPosition_id160.x + 1, 1 - streams.ScreenPosition_id160.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id170 + ClusterDepthBias_id171), 0));
    streams.lightData_id166 = LightClusters_id168.Load(int4(texCoord * ClusterStride_id172, slice, 0));
    streams.lightIndex_id167 = streams.lightData_id166.x;
}
float Compute_id397(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id194(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id367(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id182(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id337(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id170(f0, streams.LdotH_id77);
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
    streams.thicknessWS_id156 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id84(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id159[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id159[lightIndex].DirectionWS;
}
float Compute_id302(inout PS_STREAMS streams)
{
    Compute_id298(streams);
    return Compute_id299(streams);
}
float Compute_id290(inout PS_STREAMS streams)
{
    Compute_id286(streams);
    return Compute_id287(streams);
}
float4 Compute_id278(inout PS_STREAMS streams)
{
    Compute_id274(streams);
    return Compute_id275(streams);
}
void ResetStream_id197()
{
}
void AfterLightingAndShading_id454()
{
}
void AfterLightingAndShading_id435()
{
}
void PrepareEnvironmentLight_id268(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id265(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id122(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id183);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id250(sampleDirection).rgb * Intensity_id184 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id183);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id255(streams, sampleDirection).rgb * Intensity_id184 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id484(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id305(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id428(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id260(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id113(streams);
    float3 lightColor = AmbientLight_id175 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id231(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id101(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id102(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id103(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id104(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id235(inout PS_STREAMS streams)
{
    return streams.lightData_id166.y >> 16;
}
int GetMaxLightCount_id234(inout PS_STREAMS streams)
{
    return streams.lightData_id166.y >> 16;
}
void PrepareDirectLights_id229()
{
}
void PrepareDirectLight_id218(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id90(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id91(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id92(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id93(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id223(inout PS_STREAMS streams)
{
    return streams.lightData_id166.y & 0xFFFF;
}
int GetMaxLightCount_id222(inout PS_STREAMS streams)
{
    return streams.lightData_id166.y & 0xFFFF;
}
void PrepareDirectLights_id221(inout PS_STREAMS streams)
{
    PrepareLightData_id97(streams);
}
float3 ComputeDirectLightContribution_id483(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id337(streams, specularColor);
    float geometricShadowing = Compute_id367(streams);
    float normalDistribution = Compute_id397(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id427(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id216 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id207(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id84(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id155 = ComputeShadow_id85(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id155 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id86(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id87(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id209()
{
    return LightCount_id157;
}
int GetMaxLightCount_id210()
{
    return TMaxLightCount_id158;
}
void PrepareDirectLights_id205()
{
}
void PrepareForLightingAndShading_id451()
{
}
void PrepareForLightingAndShading_id432()
{
}
void PrepareMaterialForLightingAndShading_id196(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id195(inout PS_STREAMS streams)
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
float4 Compute_id304(inout PS_STREAMS streams)
{
    float x = Compute_id302(streams);
    return float4(x, x, x, x);
}
float4 Compute_id292(inout PS_STREAMS streams)
{
    float x = Compute_id290(streams);
    return float4(x, x, x, x);
}
float4 Compute_id280(inout PS_STREAMS streams)
{
    return Compute_id278(streams);
}
void ResetStream_id198(inout PS_STREAMS streams)
{
    ResetStream_id197();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id515(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id195(streams);
    PrepareMaterialForLightingAndShading_id196(streams);

    {
        PrepareForLightingAndShading_id432();
    }

    {
        PrepareForLightingAndShading_id451();
    }
    float3 directLightingContribution = 0;

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
                directLightingContribution += ComputeDirectLightContribution_id427(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id483(streams);
            }
        }
    }

    {
        PrepareDirectLights_id221(streams);
        const int maxLightCount = GetMaxLightCount_id222(streams);
        int count = GetLightCount_id223(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id218(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id427(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id483(streams);
            }
        }
    }

    {
        PrepareDirectLights_id229();
        const int maxLightCount = GetMaxLightCount_id234(streams);
        int count = GetLightCount_id235(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id231(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id427(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id483(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id260(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id428(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id484(streams);
        }
    }

    {
        PrepareEnvironmentLight_id265(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id428(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id484(streams);
        }
    }

    {
        PrepareEnvironmentLight_id268(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id428(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id484(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id216 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id435();
    }

    {
        AfterLightingAndShading_id454();
    }
}
void Compute_id499(inout PS_STREAMS streams)
{
    float metalness = Compute_id304(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id494(inout PS_STREAMS streams)
{
    float glossiness = Compute_id292(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id489(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id280(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id199(inout PS_STREAMS streams)
{
    ResetStream_id198(streams);
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
void Compute_id81(inout PS_STREAMS streams)
{

    {
        Compute_id489(streams);
    }

    {
        Compute_id494(streams);
    }

    {
        Compute_id499(streams);
    }

    {
        Compute_id515(streams);
    }
}
void ResetStream_id80(inout PS_STREAMS streams)
{
    ResetStream_id199(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id80(streams);
    Compute_id81(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
float4 StrideShadingWorldNormal_id33(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id22 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id22, ViewProjection_id29);
    streams.normalWS_id19 = normal;
    streams.meshNormalWS_id17 = normal;
    streams.DepthVS_id23 = posWVP.w;
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
    normal = normalize(mul(float4(normal, 0), ViewInverse_id26).xyz);
    pos = float4((normal * sphereRadius) + spherePos, 1);
}
void PostTransformPosition_id59(inout VS_STREAMS streams)
{
    streams.VID_id153 = streams.VertexID_id152;
    streams.InstanceID_id13 = streams.VertexID_id152;
    streams.ShadingPosition_id0 = streams.Position_id21;
}
void TransformPosition_id58()
{
}
void PreTransformPosition_id57()
{
}
float4 Compute_id79()
{
    return MaterialIndex_id154;
}
float4 Shading_id63(inout PS_STREAMS streams)
{
    float size = streams.PSize_id151;
    float2 mapping = streams.TexCoord_id131;
    float3 worldPos, worldNormal;
    sphereImpostorSimple_id62(mapping, streams.PositionWS_id22.xyz, size, worldPos, worldNormal);
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
    streams.ColorTarget1_id3 = Compute_id79();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
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
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.PSize_id151 = __input__.PSize_id151;
    streams.TexCoord_id131 = __input__.TexCoord_id131;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.ScreenPosition_id160 = __input__.ScreenPosition_id160;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id160 /= streams.ScreenPosition_id160.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id153 = input[0].VID_id153;
    streams.InstanceID_id13 = input[0].InstanceID_id13;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.ScreenPosition_id160 = input[0].ScreenPosition_id160;
    streams.normalWS_id19 = input[0].normalWS_id19;
    uint id = streams.VID_id153;
    SMGridParticle p = ParticlesBuffer_id149[id];
    streams.PositionWS_id22 = mul(float4(p.Pos.xyz, 1), World_id32);
    streams.PSize_id151 = ParticleSize_id150 * p.Size.x * 0.5;
    if (streams.PSize_id151 <= 0)
        return;
    float padding = 1.5;
    float2 offset;
    float4 posView = mul(streams.PositionWS_id22, View_id25);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id131 = QuadUV_id147[i].xy * 2 - 1;
        float4 viewCornerPos = float4(posView.xyz + QuadPositions_id146[i].xyz * streams.PSize_id151, 1);
        streams.ShadingPosition_id0 = mul(viewCornerPos, Projection_id27);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id22 = streams.PositionWS_id22;
            output.PSize_id151 = streams.PSize_id151;
            output.TexCoord_id131 = streams.TexCoord_id131;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.ScreenPosition_id160 = streams.ScreenPosition_id160;
            output.normalWS_id19 = streams.normalWS_id19;
            output.InstanceID_id13 = streams.InstanceID_id13;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id152 = __input__.VertexID_id152;
    streams.Position_id21 = __input__.Position_id21;
    streams.normalWS_id19 = __input__.normalWS_id19;
    VSMain_id19(streams);
    streams.ScreenPosition_id160 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id153 = streams.VID_id153;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.ScreenPosition_id160 = streams.ScreenPosition_id160;
    __output__.normalWS_id19 = streams.normalWS_id19;
    return __output__;
}

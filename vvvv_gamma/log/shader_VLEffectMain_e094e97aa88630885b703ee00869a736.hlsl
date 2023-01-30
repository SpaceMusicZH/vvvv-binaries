/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.ModelTransformUsage: 2
@P StrideEffectBase.HasInstancing: True
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMGridMeshSelector_ShaderFX [{ShadingColor0 = ComputeColor}]
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
@C    MaterialIndex_id145 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    MeshIndex_id143 => SMGridMeshSelector_ShaderFX.MeshIndex
@C    InputValue_id187 => ShaderFX.InputValueFloat
@C    InputValue_id196 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 944]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id152 => Camera.NearClipPlane
@C    FarClipPlane_id153 => Camera.FarClipPlane
@C    ZProjection_id154 => Camera.ZProjection
@C    ViewSize_id155 => Camera.ViewSize
@C    AspectRatio_id156 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id148 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id150 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id161 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id162 => LightClustered.ClusterDepthBias
@C    ClusterStride_id163 => LightClustered.ClusterStride
@C    AmbientLight_id166 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id171 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id172 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id174 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id175 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id179 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id179 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id208 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id208 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id159 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id159 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id160 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id160 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id164 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id164 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id165 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id165 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id173 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id173 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
@R    ParticlesBuffer_id144 => SMGridMeshSelector_ShaderFX.ParticlesBuffer [Stage: Vertex, Slot: (2-2)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Vertex, Slot: (1-1)]
@R    PerView => PerView [Stage: Vertex, Slot: (2-2)]
@R    LinearSampler_id115 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    ParticlesBuffer_id179 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id208 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id159 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id160 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id164 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id165 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id173 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
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
@S    TransformationWAndVPInstanced => 8325fb6159461ffe14f58fd5d834f811
@S    TransformationWAndVP => ea6628bcd79c8f0060c612aa9fc4819b
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    PositionHStream4 => fc5e64dda1ac2bb4a31d58404dced340
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    TransformationInstancing => ae3c8a30f5549546f12050a57609180f
@S    NormalFromMeshInstanced => 72228b53d8b9fb94a34db50c8b566ef2
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
@G    Vertex => 47a481bdec86e70e58afd3b47c90996e
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
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id145;          // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id143;              // Offset:    0 Size:     4
//   float InputValue_id187;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id196;            // Offset:    8 Size:     4 [unused]
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
//   float NearClipPlane_id152;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id153;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id154;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id155;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id156;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id148;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id150[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id161;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id162;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id163;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id166;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id171[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id172;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id174;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id175;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for InstanceWorld_id40
// {
//
//   struct InstanceTransform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
// Resource bind info for InstanceWorldInverse_id41
// {
//
//   struct InstanceTransform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
// Resource bind info for ParticlesBuffer_id144
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
// InstanceWorld_id40                texture  struct         r/o             t0      1 
// InstanceWorldInverse_id41         texture  struct         r/o             t1      1 
// ParticlesBuffer_id144             texture  struct         r/o             t2      1 
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
// POSITION                 0   xyzw        0     NONE   float   xyzw
// SV_InstanceID            0   x           1   INSTID    uint   x   
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID151_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[8], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[20], immediateIndexed
dcl_resource_structured t0, 64
dcl_resource_structured t1, 64
dcl_resource_structured t2, 64
dcl_input v0.xyzw
dcl_input_sgv v1.x, instance_id
dcl_input v2.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.x
dcl_temps 10
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id16.x; v2.y <- __input__.meshNormal_id16.y; v2.z <- __input__.meshNormal_id16.z; 
//   o4.x <- <VSMain return value>.InstanceID_id13; 
//   o3.x <- <VSMain return value>.ScreenPosition_id151.x; o3.y <- <VSMain return value>.ScreenPosition_id151.y; o3.z <- <VSMain return value>.ScreenPosition_id151.z; o3.w <- <VSMain return value>.ScreenPosition_id151.w; 
//   o2.x <- <VSMain return value>.normalWS_id19.x; o2.y <- <VSMain return value>.normalWS_id19.y; o2.z <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1006 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_e094e97aa88630885b703ee00869a736.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v1.x, l(60), t2.xxxx
ftou r0.x, r0.x  // r0.x <- m

#line 1007
ieq r0.x, r0.x, cb1[0].x
if_nz r0.x

#line 971
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(0), t0.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, v1.x, l(16), t0.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, v1.x, l(32), t0.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(48), t0.xyzw
  mov r5.x, r1.x
  mov r5.y, r2.x
  mov r5.z, r3.x
  mov r5.w, r4.x
  dp4 r6.x, r5.xyzw, cb0[0].xyzw  // r6.x <- <GetInstanceWorld_id13 return value>._m00
  dp4 r7.x, r5.xyzw, cb0[1].xyzw  // r7.x <- <GetInstanceWorld_id13 return value>._m01
  dp4 r8.x, r5.xyzw, cb0[2].xyzw  // r8.x <- <GetInstanceWorld_id13 return value>._m02
  dp4 r5.x, r5.xyzw, cb0[3].xyzw  // r5.x <- <GetInstanceWorld_id13 return value>._m03
  mov r9.x, r1.y
  mov r9.y, r2.y
  mov r9.z, r3.y
  mov r9.w, r4.y
  dp4 r6.y, r9.xyzw, cb0[0].xyzw  // r6.y <- <GetInstanceWorld_id13 return value>._m10
  dp4 r7.y, r9.xyzw, cb0[1].xyzw  // r7.y <- <GetInstanceWorld_id13 return value>._m11
  dp4 r8.y, r9.xyzw, cb0[2].xyzw  // r8.y <- <GetInstanceWorld_id13 return value>._m12
  dp4 r5.y, r9.xyzw, cb0[3].xyzw  // r5.y <- <GetInstanceWorld_id13 return value>._m13
  mov r9.x, r1.z
  mov r9.y, r2.z
  mov r9.z, r3.z
  mov r9.w, r4.z
  dp4 r6.z, r9.xyzw, cb0[0].xyzw  // r6.z <- <GetInstanceWorld_id13 return value>._m20
  dp4 r7.z, r9.xyzw, cb0[1].xyzw  // r7.z <- <GetInstanceWorld_id13 return value>._m21
  dp4 r8.z, r9.xyzw, cb0[2].xyzw  // r8.z <- <GetInstanceWorld_id13 return value>._m22
  dp4 r5.z, r9.xyzw, cb0[3].xyzw  // r5.z <- <GetInstanceWorld_id13 return value>._m23
  mov r4.x, r1.w
  mov r4.y, r2.w
  mov r4.z, r3.w
  dp4 r6.w, r4.xyzw, cb0[0].xyzw  // r6.w <- <GetInstanceWorld_id13 return value>._m30
  dp4 r7.w, r4.xyzw, cb0[1].xyzw  // r7.w <- <GetInstanceWorld_id13 return value>._m31
  dp4 r8.w, r4.xyzw, cb0[2].xyzw  // r8.w <- <GetInstanceWorld_id13 return value>._m32
  dp4 r5.w, r4.xyzw, cb0[3].xyzw  // r6.x <- <GetInstanceWorld_id38 return value>._m00; r6.y <- <GetInstanceWorld_id38 return value>._m10; r6.z <- <GetInstanceWorld_id38 return value>._m20; r6.w <- <GetInstanceWorld_id38 return value>._m30; r7.x <- <GetInstanceWorld_id38 return value>._m01; r7.y <- <GetInstanceWorld_id38 return value>._m11; r7.z <- <GetInstanceWorld_id38 return value>._m21; r7.w <- <GetInstanceWorld_id38 return value>._m31; r8.x <- <GetInstanceWorld_id38 return value>._m02; r8.y <- <GetInstanceWorld_id38 return value>._m12; r8.z <- <GetInstanceWorld_id38 return value>._m22; r8.w <- <GetInstanceWorld_id38 return value>._m32

#line 1008
endif   // r5.x <- <GetInstanceWorld_id38 return value>._m03; r5.y <- <GetInstanceWorld_id38 return value>._m13; r5.z <- <GetInstanceWorld_id38 return value>._m23; r5.w <- <GetInstanceWorld_id38 return value>._m33

#line 1009
if_z r0.x
  mov r6.xyzw, l(0,0,0,0)
  mov r7.xyzw, l(0,0,0,0)
  mov r8.xyzw, l(0,0,0,0)
  mov r5.xyzw, l(0,0,0,0)
endif 

#line 1035
dp4 r1.x, v0.xyzw, r6.xyzw  // r1.x <- streams.PositionWS_id22.x
dp4 r1.y, v0.xyzw, r7.xyzw  // r1.y <- streams.PositionWS_id22.y
dp4 r1.z, v0.xyzw, r8.xyzw  // r1.z <- streams.PositionWS_id22.z
dp4 r1.w, v0.xyzw, r5.xyzw  // r1.w <- streams.PositionWS_id22.w

#line 999
dp4 r2.x, r1.xyzw, cb2[16].xyzw  // r2.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r2.y, r1.xyzw, cb2[17].xyzw  // r2.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r2.z, r1.xyzw, cb2[18].xyzw  // r2.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r2.w, r1.xyzw, cb2[19].xyzw  // r2.w <- <ComputeShadingPosition_id11 return value>.w

#line 1051
if_nz r0.x

#line 1021
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, v1.x, l(0), t1.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(16), t1.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, v1.x, l(32), t1.xyzw
  mul r0.yzw, r3.yyyy, cb0[5].xxyz
  mad r0.yzw, cb0[4].xxyz, r3.xxxx, r0.yyzw
  mad r0.yzw, cb0[6].xxyz, r3.zzzz, r0.yyzw
  mad r0.yzw, cb0[7].xxyz, r3.wwww, r0.yyzw  // r0.y <- <GetInstanceWorldInverse_id14 return value>._m00; r0.z <- <GetInstanceWorldInverse_id14 return value>._m10; r0.w <- <GetInstanceWorldInverse_id14 return value>._m20
  mul r3.xyz, r4.yyyy, cb0[5].xyzx
  mad r3.xyz, cb0[4].xyzx, r4.xxxx, r3.xyzx
  mad r3.xyz, cb0[6].xyzx, r4.zzzz, r3.xyzx
  mad r3.xyz, cb0[7].xyzx, r4.wwww, r3.xyzx  // r3.x <- <GetInstanceWorldInverse_id14 return value>._m01; r3.y <- <GetInstanceWorldInverse_id14 return value>._m11; r3.z <- <GetInstanceWorldInverse_id14 return value>._m21
  mul r4.xyz, r5.yyyy, cb0[5].xyzx
  mad r4.xyz, cb0[4].xyzx, r5.xxxx, r4.xyzx
  mad r4.xyz, cb0[6].xyzx, r5.zzzz, r4.xyzx
  mad r4.xyz, cb0[7].xyzx, r5.wwww, r4.xyzx  // r4.x <- <GetInstanceWorldInverse_id14 return value>._m02; r4.y <- <GetInstanceWorldInverse_id14 return value>._m12; r4.z <- <GetInstanceWorldInverse_id14 return value>._m22

#line 1052
  mov r5.x, r0.y  // r5.x <- <GetInstanceWorldInverse_id39 return value>._m00
  mov r5.y, r3.x  // r5.y <- <GetInstanceWorldInverse_id39 return value>._m01
  mov r5.z, r4.x  // r5.z <- <GetInstanceWorldInverse_id39 return value>._m02
  mov r6.x, r0.z  // r6.x <- <GetInstanceWorldInverse_id39 return value>._m10
  mov r6.y, r3.y  // r6.y <- <GetInstanceWorldInverse_id39 return value>._m11
  mov r6.z, r4.y  // r6.z <- <GetInstanceWorldInverse_id39 return value>._m12
  mov r4.x, r0.w  // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20
  mov r4.y, r3.z
endif   // r4.x <- <GetInstanceWorldInverse_id39 return value>._m20; r4.y <- <GetInstanceWorldInverse_id39 return value>._m21; r4.z <- <GetInstanceWorldInverse_id39 return value>._m22

#line 1053
if_z r0.x
  mov r5.xyz, l(0,0,0,0)
  mov r6.xyz, l(0,0,0,0)
  mov r4.xyz, l(0,0,0,0)
endif 

#line 1078
dp3 o2.x, r5.xyzx, v2.xyzx
dp3 o2.y, r6.xyzx, v2.xyzx
dp3 o2.z, r4.xyzx, v2.xyzx

#line 1126
mov o0.xyzw, r1.xyzw
mov o1.xyzw, r2.xyzw
mov o3.xyzw, r2.xyzw
mov o4.x, v1.x
ret 
// Approximately 92 instruction slots used
@G    Pixel => 23e5394dcb634ce6567241ba51b6d111
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
//   uint MaterialIndex_id145;          // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   uint MeshIndex_id143;              // Offset:    0 Size:     4 [unused]
//   float InputValue_id187;            // Offset:    4 Size:     4
//   float InputValue_id196;            // Offset:    8 Size:     4
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
//   float NearClipPlane_id152;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id153;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id154;          // Offset:  360 Size:     8
//   float2 ViewSize_id155;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id156;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id148;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id150[8];                 // Offset:  416 Size:   252
//   float ClusterDepthScale_id161;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id162;      // Offset:  672 Size:     4
//   float2 ClusterStride_id163;        // Offset:  676 Size:     8
//   float3 AmbientLight_id166;         // Offset:  688 Size:    12
//   float3 SphericalColors_id171[9];   // Offset:  704 Size:   140
//   float MipCount_id172;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id174;          // Offset:  848 Size:    64
//   float Intensity_id175;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id179
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
// ParticlesBuffer_id179             texture  struct         r/o             t0      1 
// EnvironmentLightingDFG_LUT_id208    texture  float4          2d             t1      1 
// LightClusters_id159               texture   uint2          3d             t2      1 
// LightIndices_id160                texture    uint         buf             t3      1 
// PointLights_id164                 texture  float4         buf             t4      1 
// SpotLights_id165                  texture  float4         buf             t5      1 
// CubeMap_id173                     texture  float4        cube             t6      1 
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
// SCREENPOSITION_ID151_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id151.x; v3.y <- __input__.ScreenPosition_id151.y; v3.z <- __input__.ScreenPosition_id151.z; v3.w <- __input__.ScreenPosition_id151.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1105 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_e094e97aa88630885b703ee00869a736.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id151.x; r0.y <- streams.ScreenPosition_id151.y

#line 1072
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 1073
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 1013
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id70.x; r2.y <- streams.viewWS_id70.y; r2.z <- streams.viewWS_id70.z

#line 340
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v4.x, l(48), t0.xyzx  // r3.x <- p.Col.x; r3.y <- p.Col.y; r3.z <- p.Col.z

#line 935
add r0.z, -cb1[0].y, l(1.000000)  // r0.z <- glossiness

#line 927
add r4.xyz, r3.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].zzzz, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id57.x; r4.y <- streams.matSpecular_id57.y; r4.z <- streams.matSpecular_id57.z

#line 928
mad r3.xyz, cb1[0].zzzz, -r3.xyzx, r3.xyzx  // r3.x <- streams.matDiffuse_id55.x; r3.y <- streams.matDiffuse_id55.y; r3.z <- streams.matDiffuse_id55.z

#line 792
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 749
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id74

#line 750
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 751
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id72

#line 810
mov r0.w, r5.y  // r0.w <- streams.NdotV_id74
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.viewWS_id70.x; r7.y <- streams.viewWS_id70.y; r7.z <- streams.viewWS_id70.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matDiffuseVisible_id71.x; r8.y <- streams.matDiffuseVisible_id71.y; r8.z <- streams.matDiffuseVisible_id71.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matSpecularVisible_id73.x; r9.y <- streams.matSpecularVisible_id73.y; r9.z <- streams.matSpecularVisible_id73.z
mov r9.w, r0.z  // r9.w <- streams.alphaRoughness_id72
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 812
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 814
    break 

#line 815
  endif 

#line 589
  ishl r2.w, r1.w, l(1)

#line 719
  dp3 r3.w, r6.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 721
  mul r11.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r11.x <- streams.lightColorNdotL_id46.x; r11.y <- streams.lightColorNdotL_id46.y; r11.z <- streams.lightColorNdotL_id46.z

#line 711
  add r12.xyz, r7.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r12.xyzx, r12.xyzx
  rsq r4.w, r4.w
  mul r12.xyz, r4.wwww, r12.xyzx  // r12.x <- streams.H_id77.x; r12.y <- streams.H_id77.y; r12.z <- streams.H_id77.z

#line 712
  dp3_sat r4.w, r6.xyzx, r12.xyzx  // r4.w <- streams.NdotH_id78

#line 713
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r12.xyzx  // r2.w <- streams.LdotH_id79

#line 707
  mul r12.xyz, r8.xyzx, r11.xyzx

#line 820
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 371
  add r13.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.z, r2.w, r2.w
  mul r5.z, r5.z, r5.z
  mul r2.w, r2.w, r5.z
  mad r13.xyz, r13.xyzx, r2.wwww, r9.xyzx  // r13.x <- <FresnelSchlick_id140 return value>.x; r13.y <- <FresnelSchlick_id140 return value>.y; r13.z <- <FresnelSchlick_id140 return value>.z

#line 366
  mul r2.w, r9.w, l(0.500000)  // r2.w <- k

#line 367
  mad r5.z, -r9.w, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r5.z, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id156 return value>
  mad r2.w, r0.w, r5.z, r2.w
  div r2.w, r0.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id156 return value>

#line 435
  mul r2.w, r2.w, r5.w
  mul r3.w, r0.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id158 return value>

#line 429
  mul r3.w, r9.w, r9.w  // r3.w <- alphaR2

#line 430
  mul r4.w, r4.w, r4.w
  mad r5.z, r9.w, r9.w, l(-1.000000)
  mad r4.w, r4.w, r5.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 431
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id170 return value>

#line 701
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 824
  mad r10.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 810
  iadd r1.w, r1.w, l(1)

#line 826
endloop 

#line 556
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 557
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 558
mad r0.w, r0.w, cb2[41].w, cb2[42].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 559
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 558
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 559
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t2.xyzw  // r0.x <- streams.lightData_id157.x; r0.y <- streams.lightData_id157.y

#line 689
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id198 return value>

#line 834
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id22.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id22.y; r7.y <- streams.PositionWS_id22.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id70.x; r7.w <- streams.viewWS_id70.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id70.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id72
mov r5.w, r5.y  // r5.w <- streams.NdotV_id74
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id158
mov r12.xyz, r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 836
  if_nz r2.w

#line 838
    break 

#line 839
  endif 

#line 543
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t3.yzwx  // r2.w <- realLightIndex

#line 544
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id158

#line 546
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t4.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 547
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t4.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 358
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 359
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 360
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 325
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 304
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 305
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 306
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id70 return value>

#line 326
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 675
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 677
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 711
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.w <- streams.H_id77.z

#line 712
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id78

#line 713
  dp3_sat r4.w, r13.xyzx, r8.xywx  // r4.w <- streams.LdotH_id79

#line 707
  mul r8.xyw, r9.xyxz, r14.xyxz

#line 844
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 371
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id140 return value>.x; r13.y <- <FresnelSchlick_id140 return value>.y; r13.z <- <FresnelSchlick_id140 return value>.z

#line 366
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 367
  mad r9.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r9.w, r4.w
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id156 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id156 return value>

#line 435
  mul r4.w, r4.w, r10.w
  mul r3.w, r5.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id158 return value>

#line 429
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 430
  mul r2.w, r2.w, r2.w
  mad r9.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 431
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id170 return value>

#line 701
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 848
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 834
  iadd r1.w, r1.w, l(1)

#line 850
endloop   // r5.z <- streams.lightIndex_id158

#line 667
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id210 return value>

#line 858
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id22.x; r6.y <- streams.PositionWS_id22.y; r6.z <- streams.PositionWS_id22.z
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.viewWS_id70.x; r8.y <- streams.viewWS_id70.y
mov r9.xyz, r3.xyzx
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r11.x, r0.z  // r11.x <- streams.alphaRoughness_id72
mov r11.z, r5.y  // r11.z <- streams.NdotV_id74
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.z  // r0.y <- streams.lightIndex_id158
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 860
  if_nz r1.w

#line 862
    break 

#line 863
  endif 

#line 515
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t3.yzwx  // r1.w <- realLightIndex

#line 516
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id158

#line 518
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t5.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 521
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 519
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t5.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 520
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t5.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 521
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t5.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 345
  add r14.xyz, -r6.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 346
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 347
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 318
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 298
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 299
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 300
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id81 return value>

#line 319
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 310
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 311
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 312
  mul r2.w, r2.w, r2.w

#line 353
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 653
  dp3 r2.w, r7.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 655
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 711
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id77.x; r16.y <- streams.H_id77.y; r16.z <- streams.H_id77.z

#line 712
  dp3_sat r1.w, r7.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id78

#line 713
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id79

#line 707
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 868
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 371
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id140 return value>.x; r16.y <- <FresnelSchlick_id140 return value>.y; r16.z <- <FresnelSchlick_id140 return value>.z

#line 366
  mul r3.w, r11.x, l(0.500000)  // r3.w <- k

#line 367
  mad r4.w, -r11.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id156 return value>
  mad r3.w, r11.z, r4.w, r3.w
  div r3.w, r11.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id156 return value>

#line 435
  mul r3.w, r3.w, r5.w
  mul r2.w, r11.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id158 return value>

#line 429
  mul r3.w, r11.x, r11.x  // r3.w <- alphaR2

#line 430
  mul r1.w, r1.w, r1.w
  mad r4.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 431
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id170 return value>

#line 701
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 872
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 858
  iadd r0.w, r0.w, l(1)

#line 874
endloop   // r0.y <- streams.lightIndex_id158

#line 491
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 492
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t1.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 493
mad r0.yzw, r4.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id281 return value>.x; r0.z <- <Compute_id281 return value>.y; r0.w <- <Compute_id281 return value>.z

#line 636
mul r4.xyz, r0.yzwy, cb2[43].xyzx  // r4.x <- <ComputeEnvironmentLightContribution_id460 return value>.x; r4.y <- <ComputeEnvironmentLightContribution_id460 return value>.y; r4.z <- <ComputeEnvironmentLightContribution_id460 return value>.z

#line 886
mad r4.xyz, r3.xyzx, cb2[43].xyzx, r4.xyzx  // r4.x <- environmentLightingContribution.x; r4.y <- environmentLightingContribution.y; r4.z <- environmentLightingContribution.z

#line 625
dp3 r1.w, r1.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 391
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 392
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 396
mad r5.yzw, cb2[45].xxyz, r2.wwww, cb2[44].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 397
mad r5.yzw, cb2[46].xxyz, -r3.wwww, r5.yyzw

#line 398
mad r5.yzw, cb2[47].xxyz, r1.wwww, r5.yyzw

#line 401
mul r6.xyz, r2.wwww, cb2[48].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 402
mul r6.xyz, r2.wwww, cb2[49].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 403
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[50].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 404
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 405
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[52].xyzx, r1.wwww, r5.xyzx

#line 627
mul r5.xyz, r5.xyzx, cb2[57].xxxx  // r5.x <- streams.envLightDiffuseColor_id49.x; r5.y <- streams.envLightDiffuseColor_id49.y; r5.z <- streams.envLightDiffuseColor_id49.z

#line 628
dp3 r1.w, -r2.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r1.xyz, r1.xyzx, -r1.wwww, -r2.xyzx  // r1.x <- sampleDirection.x; r1.y <- sampleDirection.y; r1.z <- sampleDirection.z

#line 629
dp3 r2.x, r1.xyzx, cb2[53].xyzx  // r2.x <- sampleDirection.x
dp3 r2.y, r1.xyzx, cb2[54].xyzx  // r2.y <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[55].xyzx  // r1.x <- sampleDirection.z

#line 630
mov r2.z, -r1.x  // r2.z <- sampleDirection.z

#line 477
mul r0.x, r0.x, cb2[52].w  // r0.x <- mipLevel

#line 478
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r2.xyzx, t6.xyzw, s0, r0.x  // r1.x <- <Compute_id231 return value>.x; r1.y <- <Compute_id231 return value>.y; r1.z <- <Compute_id231 return value>.z

#line 631
mul r1.xyz, r1.xyzx, cb2[57].xxxx  // r1.x <- streams.envLightSpecularColor_id50.x; r1.y <- streams.envLightSpecularColor_id50.y; r1.z <- streams.envLightSpecularColor_id50.z

#line 894
mad r2.xyz, r3.xyzx, r5.xyzx, r4.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 898
mad r0.xyz, r0.yzwy, r1.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 913
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1039
utof o1.xyzw, cb0[26].xxxx

#line 1110
mov o0.w, l(1.000000)
ret 
// Approximately 290 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id149 = 8;
const static int TOrder_id168 = 3;
const static int TOrder_id170 = 3;
const static bool TInvert_id193 = true;
const static bool TIsEnergyConservative_id205 = false;
static const float PI_id207 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id151;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
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
    float4 ColorPerParticle_ShaderFXResult_0_id178;
    float Input_1_id186;
    float Input_2_id195;
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
    float thicknessWS_id147;
    float3 shadowColor_id146;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id157;
    int lightIndex_id158;
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
    float4 ScreenPosition_id151 : SCREENPOSITION_ID151_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint InstanceID_id13;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id151;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id151 : SCREENPOSITION_ID151_SEM;
    uint InstanceID_id13 : SV_InstanceID;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id16 : NORMAL;
};
struct InstanceTransform 
{
    float4x4 Matrix;
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
    uint MaterialIndex_id145;
};
cbuffer PerMaterial 
{
    uint MeshIndex_id143;
    float InputValue_id187;
    float InputValue_id196;
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
    float NearClipPlane_id152 = 1.0f;
    float FarClipPlane_id153 = 100.0f;
    float2 ZProjection_id154;
    float2 ViewSize_id155;
    float AspectRatio_id156;
    float4 _padding_PerView_Default;
    int LightCount_id148;
    DirectionalLightData Lights_id150[TMaxLightCount_id149];
    float ClusterDepthScale_id161;
    float ClusterDepthBias_id162;
    float2 ClusterStride_id163;
    float3 AmbientLight_id166;
    float3 SphericalColors_id171[TOrder_id170 * TOrder_id170];
    float MipCount_id172;
    float4x4 SkyMatrix_id174;
    float Intensity_id175;
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
StructuredBuffer<InstanceTransform> InstanceWorld_id40;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id41;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id144;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id179;
Texture2D EnvironmentLightingDFG_LUT_id208;
Texture3D<uint2> LightClusters_id159;
Buffer<uint> LightIndices_id160;
Buffer<float4> PointLights_id164;
Buffer<float4> SpotLights_id165;
TextureCube CubeMap_id173;
float SmoothDistanceAttenuation_id81(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id70(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id83(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id82(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id81(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id72(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id70(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id269()
{
    return InputValue_id196;
}
float Compute_id257()
{
    return InputValue_id187;
}
float4 Compute_id245(inout PS_STREAMS streams)
{
    uint id = streams.InstanceID_id13;
    SMGridParticle p = ParticlesBuffer_id179[id];
    return float4(p.Col, 1);
}
float ComputeAttenuation_id84(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id82(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id83(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id71(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id72(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id156(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id140(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id272(inout PS_STREAMS streams)
{
    streams.Input_2_id195 = Compute_id269();
}
void Compute_id260(inout PS_STREAMS streams)
{
    streams.Input_1_id186 = Compute_id257();
}
void Compute_id248(inout PS_STREAMS streams)
{
    streams.ColorPerParticle_ShaderFXResult_0_id178 = Compute_id245(streams);
}
float4 EvaluateSphericalHarmonics_id94(float3 sphericalColors[TOrder_id168 * TOrder_id168], float3 direction)
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
void ProcessLight_id85(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id84(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id74(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id71(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id170(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id207 * d * d);
}
float VisibilitySmithSchlickGGX_id158(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id156(alphaR, nDotL) * VisibilityhSchlickGGX_id156(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id146(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id140(f0, 1.0f, lOrVDotH);
}
float Compute_id275(inout PS_STREAMS streams)
{
    return streams.Input_2_id195;
}
void Compute_id274(inout PS_STREAMS streams)
{

    {
        Compute_id272(streams);
    }
}
float Compute_id263(inout PS_STREAMS streams)
{
    return streams.Input_1_id186;
}
void Compute_id262(inout PS_STREAMS streams)
{

    {
        Compute_id260(streams);
    }
}
float4 Compute_id251(inout PS_STREAMS streams)
{
    return streams.ColorPerParticle_ShaderFXResult_0_id178;
}
void Compute_id250(inout PS_STREAMS streams)
{

    {
        Compute_id248(streams);
    }
}
float4 Compute_id231(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id172;
    return CubeMap_id173.SampleLevel(LinearSampler_id115, direction, mipLevel);
}
float4 Compute_id226(float3 direction)
{
    return EvaluateSphericalHarmonics_id94(SphericalColors_id171, direction);
}
void PrepareEnvironmentLight_id98(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id281(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id208.SampleLevel(LinearSampler_id115, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id89(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
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
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id77(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id160.Load(streams.lightIndex_id158);
    streams.lightIndex_id158++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id165.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id165.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id165.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id165.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id85(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id69(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id68(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id67(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id66(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id160.Load(streams.lightIndex_id158);
    streams.lightIndex_id158++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id164.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id164.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id74(streams, pointLight);
}
void PrepareLightData_id73(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id154.y / (projectedDepth - ZProjection_id154.x);
    float2 texCoord = float2(streams.ScreenPosition_id151.x + 1, 1 - streams.ScreenPosition_id151.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id161 + ClusterDepthBias_id162), 0));
    streams.lightData_id157 = LightClusters_id159.Load(int4(texCoord * ClusterStride_id163, slice, 0));
    streams.lightIndex_id158 = streams.lightData_id157.x;
}
float Compute_id373(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id170(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id343(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id158(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id313(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id146(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id63(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id62(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id61(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id147 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id60(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id150[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id150[lightIndex].DirectionWS;
}
float Compute_id278(inout PS_STREAMS streams)
{
    Compute_id274(streams);
    return Compute_id275(streams);
}
float Compute_id266(inout PS_STREAMS streams)
{
    Compute_id262(streams);
    return Compute_id263(streams);
}
float4 Compute_id254(inout PS_STREAMS streams)
{
    Compute_id250(streams);
    return Compute_id251(streams);
}
void ResetStream_id173()
{
}
void AfterLightingAndShading_id430()
{
}
void AfterLightingAndShading_id411()
{
}
void PrepareEnvironmentLight_id244(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id241(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id98(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id174);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id226(sampleDirection).rgb * Intensity_id175 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id174);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id231(streams, sampleDirection).rgb * Intensity_id175 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id460(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id281(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id404(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id236(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id89(streams);
    float3 lightColor = AmbientLight_id166 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id207(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id77(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id78(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id79(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id80(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id211(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y >> 16;
}
int GetMaxLightCount_id210(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y >> 16;
}
void PrepareDirectLights_id205()
{
}
void PrepareDirectLight_id194(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id66(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id67(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id68(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id69(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id199(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y & 0xFFFF;
}
int GetMaxLightCount_id198(inout PS_STREAMS streams)
{
    return streams.lightData_id157.y & 0xFFFF;
}
void PrepareDirectLights_id197(inout PS_STREAMS streams)
{
    PrepareLightData_id73(streams);
}
float3 ComputeDirectLightContribution_id459(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id313(streams, specularColor);
    float geometricShadowing = Compute_id343(streams);
    float normalDistribution = Compute_id373(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id403(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id207 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id34(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id19, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id183(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id60(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id146 = ComputeShadow_id61(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id146 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id62(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id63(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id185()
{
    return LightCount_id148;
}
int GetMaxLightCount_id186()
{
    return TMaxLightCount_id149;
}
void PrepareDirectLights_id181()
{
}
void PrepareForLightingAndShading_id427()
{
}
void PrepareForLightingAndShading_id408()
{
}
void PrepareMaterialForLightingAndShading_id172(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id19, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id171(inout PS_STREAMS streams)
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
void UpdateNormalFromTangentSpace_id26(float3 normalInTangentSpace)
{
}
float4 Compute_id280(inout PS_STREAMS streams)
{
    float x = Compute_id278(streams);
    return float4(x, x, x, x);
}
float4 Compute_id268(inout PS_STREAMS streams)
{
    float x = Compute_id266(streams);
    return float4(x, x, x, x);
}
float4 Compute_id256(inout PS_STREAMS streams)
{
    return Compute_id254(streams);
}
void ResetStream_id174(inout PS_STREAMS streams)
{
    ResetStream_id173();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id491(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id26(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id171(streams);
    PrepareMaterialForLightingAndShading_id172(streams);

    {
        PrepareForLightingAndShading_id408();
    }

    {
        PrepareForLightingAndShading_id427();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id181();
        const int maxLightCount = GetMaxLightCount_id186();
        int count = GetLightCount_id185();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id183(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id403(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id459(streams);
            }
        }
    }

    {
        PrepareDirectLights_id197(streams);
        const int maxLightCount = GetMaxLightCount_id198(streams);
        int count = GetLightCount_id199(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id194(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id403(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id459(streams);
            }
        }
    }

    {
        PrepareDirectLights_id205();
        const int maxLightCount = GetMaxLightCount_id210(streams);
        int count = GetLightCount_id211(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id207(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id403(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id459(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id236(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id404(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id460(streams);
        }
    }

    {
        PrepareEnvironmentLight_id241(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id404(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id460(streams);
        }
    }

    {
        PrepareEnvironmentLight_id244(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id404(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id460(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id207 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id411();
    }

    {
        AfterLightingAndShading_id430();
    }
}
void Compute_id475(inout PS_STREAMS streams)
{
    float metalness = Compute_id280(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id470(inout PS_STREAMS streams)
{
    float glossiness = Compute_id268(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id465(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id256(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id175(inout PS_STREAMS streams)
{
    ResetStream_id174(streams);
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
float4x4 GetInstanceWorld_id13(uint instanceId)
{
    return mul(InstanceWorld_id40[instanceId].Matrix, World_id32);
}
void Compute_id57(inout PS_STREAMS streams)
{

    {
        Compute_id465(streams);
    }

    {
        Compute_id470(streams);
    }

    {
        Compute_id475(streams);
    }

    {
        Compute_id491(streams);
    }
}
void ResetStream_id56(inout PS_STREAMS streams)
{
    ResetStream_id175(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
float4x4 GetInstanceWorld_id38(uint instanceId)
{
    uint m = ParticlesBuffer_id144[instanceId].Mesh;
    if (m == MeshIndex_id143)
        return GetInstanceWorld_id13(instanceId);
    return 0;
}
float4 Shading_id35(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id56(streams);
    Compute_id57(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return mul(WorldInverse_id33, InstanceWorldInverse_id41[instanceId].Matrix);
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
void PreTransformPosition_id15(inout VS_STREAMS streams)
{
    streams.PositionWS_id22 = mul(streams.Position_id21, GetInstanceWorld_id38(streams.InstanceID_id13));
}
float4 Compute_id55()
{
    return MaterialIndex_id145;
}
float4 Shading_id36(inout PS_STREAMS streams)
{
    return Shading_id35(streams);
}
void PSMain_id1()
{
}
float4x4 GetInstanceWorldInverse_id39(uint instanceId)
{
    uint m = ParticlesBuffer_id144[instanceId].Mesh;
    if (m == MeshIndex_id143)
        return GetInstanceWorldInverse_id14(instanceId);
    return 0;
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id15(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id36(streams);
    streams.ColorTarget1_id3 = Compute_id55();
}
void GenerateNormal_PS_id25(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
}
void GenerateNormal_VS_id27(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id17 = mul((float3x3)GetInstanceWorldInverse_id39(streams.InstanceID_id13), streams.meshNormal_id16);
    streams.normalWS_id19 = streams.meshNormalWS_id17;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id23(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id25(streams);
    PSMain_id3(streams);
}
void VSMain_id22(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id27(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id151 = __input__.ScreenPosition_id151;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id151 /= streams.ScreenPosition_id151.w;
    PSMain_id23(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id22(streams);
    streams.ScreenPosition_id151 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id151 = streams.ScreenPosition_id151;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    return __output__;
}

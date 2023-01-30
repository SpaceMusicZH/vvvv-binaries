/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat<1>}]}]}], MaterialSurfaceEmissiveShading<true>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputNormals}, {ShadingColor2 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id33 => Transformation.World
@C    WorldInverse_id34 => Transformation.WorldInverse
@C    WorldInverseTranspose_id35 => Transformation.WorldInverseTranspose
@C    WorldView_id36 => Transformation.WorldView
@C    WorldViewInverse_id37 => Transformation.WorldViewInverse
@C    WorldViewProjection_id38 => Transformation.WorldViewProjection
@C    WorldScale_id39 => Transformation.WorldScale
@C    EyeMS_id40 => Transformation.EyeMS
@C    MaterialIndex_id84 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    InputValue_id147 => ShaderFX.InputValueFloat4
cbuffer PerView [Size: 352]
@C    View_id26 => Transformation.View
@C    ViewInverse_id27 => Transformation.ViewInverse
@C    Projection_id28 => Transformation.Projection
@C    ProjectionInverse_id29 => Transformation.ProjectionInverse
@C    ViewProjection_id30 => Transformation.ViewProjection
@C    ProjScreenRay_id31 => Transformation.ProjScreenRay
@C    Eye_id32 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
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
@S    MaterialSurfaceArray => 8cf3cc54fcd9949ce74f2e4caaa0d6d9
@S    MaterialSurfaceSetStreamFromComputeColor => 3e54cdd2886f251ff6eed5013522c912
@S    IMaterialSurfacePixel => b6013c701b8fca52da0c65754bb0a9ca
@S    IMaterialSurfaceVertex => b2f1bea807f62236e68fd5811c18ecb7
@S    MaterialVertexStream => 26b99458392c9ae358c2abbf2ff17606
@S    MaterialDisplacementStream => b317c013b5abf2b9d8f5c73d7079aa7a
@S    IMaterialSurfaceDomain => 9bb58dff109214db65496519fb4f2754
@S    MaterialDomainStream => 3df34fbfe4c0cd5f484018f1f0b47cfa
@S    MaterialTessellationStream => 2b26ea82d4b1f1f43837972725e3b785
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Float4ToColor => c8460cd5d71b5fac69b6f550d07a4ce7
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    FloatToScalar => 605ed86580e45cae6e52484a38db1c04
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    ConstantFloat => 460c24995a6db8c1f9344767cc7a01db
@S    MaterialSurfaceEmissiveShading => cc1fb614620d3cc66d504194c91856f3
@S    GBufferOutputNormals => 3e4e9266b2241214d3854561b81ccfc5
@S    NormalPack => af1a18518fb63b6295c012c18fe9f9c0
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 4fd5f2026fdd3bcfbe35e062a609e9e1
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
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id22.x; v0.y <- __input__.Position_id22.y; v0.z <- __input__.Position_id22.z; v0.w <- __input__.Position_id22.w; 
//   v1.x <- __input__.meshNormal_id17.x; v1.y <- __input__.meshNormal_id17.y; v1.z <- __input__.meshNormal_id17.z; 
//   o2.x <- <VSMain return value>.normalWS_id20.x; o2.y <- <VSMain return value>.normalWS_id20.y; o2.z <- <VSMain return value>.normalWS_id20.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id23.x; o0.y <- <VSMain return value>.PositionWS_id23.y; o0.z <- <VSMain return value>.PositionWS_id23.z; o0.w <- <VSMain return value>.PositionWS_id23.w
//
#line 335 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_85b494d587d401d42dfe8798d4c4f8f0.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id23.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id23.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id23.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id23.w

#line 412
mov o0.xyzw, r0.xyzw

#line 290
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 380
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 412
ret 
// Approximately 13 instruction slots used
@G    Pixel => b7f079c8f1ab559407f4a8aa5ab87d8a
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
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id147;           // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerMaterial                       cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float       
// SV_Position              0   xyzw        1      POS   float       
// NORMALWS                 0   xyz         2     NONE   float   xyz 
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
dcl_constantbuffer CB0[27], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_input_ps linear v2.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id23.x; v0.y <- __input__.PositionWS_id23.y; v0.z <- __input__.PositionWS_id23.z; v0.w <- __input__.PositionWS_id23.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id20.x; v2.y <- __input__.normalWS_id20.y; v2.z <- __input__.normalWS_id20.z; 
//   o2.x <- <PSMain return value>.ColorTarget2_id4.x; o2.y <- <PSMain return value>.ColorTarget2_id4.y; o2.z <- <PSMain return value>.ColorTarget2_id4.z; o2.w <- <PSMain return value>.ColorTarget2_id4.w; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 399 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_85b494d587d401d42dfe8798d4c4f8f0.hlsl"
mov o0.xyzw, cb1[0].xyzw

#line 374
dp3 r0.x, v2.xyzx, v2.xyzx

#line 375
rsq r0.y, r0.x

#line 374
lt r0.x, l(0.000000), r0.x

#line 375
mul r0.yzw, r0.yyyy, v2.xxyz  // r0.y <- streams.normalWS_id20.x; r0.z <- streams.normalWS_id20.y; r0.w <- streams.normalWS_id20.z
movc r0.xyz, r0.xxxx, r0.yzwy, v2.xyzx  // r0.x <- streams.normalWS_id20.x; r0.y <- streams.normalWS_id20.y; r0.z <- streams.normalWS_id20.z

#line 300
mad o1.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)

#line 399
mov o1.w, l(1.000000)

#line 339
utof o2.xyzw, cb0[26].xxxx

#line 399
ret 
// Approximately 10 instruction slots used
***************************
*************************/
const static float Value_id155 = 1;
const static bool TUseAlphaFromEmissive_id160 = true;
struct PS_STREAMS 
{
    float3 normalWS_id20;
    float4 PositionWS_id23;
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
    float4 Input_0_id146;
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
    float3 normalWS_id20 : NORMALWS;
};
struct VS_STREAMS 
{
    float4 Position_id22;
    float3 meshNormal_id17;
    float4 PositionH_id25;
    float DepthVS_id24;
    float3 meshNormalWS_id18;
    float4 PositionWS_id23;
    float4 ShadingPosition_id0;
    float3 normalWS_id20;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id23 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id20 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id22 : POSITION;
    float3 meshNormal_id17 : NORMAL;
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
};
cbuffer PerMaterial 
{
    float4 InputValue_id147;
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
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id89;
    float2 Texture1TexelSize_id91;
    float2 Texture2TexelSize_id93;
    float2 Texture3TexelSize_id95;
    float2 Texture4TexelSize_id97;
    float2 Texture5TexelSize_id99;
    float2 Texture6TexelSize_id101;
    float2 Texture7TexelSize_id103;
    float2 Texture8TexelSize_id105;
    float2 Texture9TexelSize_id107;
};
Texture2D Texture0_id88;
Texture2D Texture1_id90;
Texture2D Texture2_id92;
Texture2D Texture3_id94;
Texture2D Texture4_id96;
Texture2D Texture5_id98;
Texture2D Texture6_id100;
Texture2D Texture7_id102;
Texture2D Texture8_id104;
Texture2D Texture9_id106;
TextureCube TextureCube0_id108;
TextureCube TextureCube1_id109;
TextureCube TextureCube2_id110;
TextureCube TextureCube3_id111;
Texture3D Texture3D0_id112;
Texture3D Texture3D1_id113;
Texture3D Texture3D2_id114;
Texture3D Texture3D3_id115;
SamplerState Sampler_id116;
SamplerState PointSampler_id117 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id118 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id119 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id120 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id121 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id122 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id123 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id125 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id126;
SamplerState Sampler1_id127;
SamplerState Sampler2_id128;
SamplerState Sampler3_id129;
SamplerState Sampler4_id130;
SamplerState Sampler5_id131;
SamplerState Sampler6_id132;
SamplerState Sampler7_id133;
SamplerState Sampler8_id134;
SamplerState Sampler9_id135;
float4 Compute_id57()
{
    return InputValue_id147;
}
void Compute_id69()
{
}
void Compute_id60(inout PS_STREAMS streams)
{
    streams.Input_0_id146 = Compute_id57();
}
float Compute_id72()
{
    return Value_id155;
}
void Compute_id71()
{

    {
        Compute_id69();
    }
}
float4 Compute_id63(inout PS_STREAMS streams)
{
    return streams.Input_0_id146;
}
void Compute_id62(inout PS_STREAMS streams)
{

    {
        Compute_id60(streams);
    }
}
float Compute_id75()
{
    Compute_id71();
    return Compute_id72();
}
float4 Compute_id66(inout PS_STREAMS streams)
{
    Compute_id62(streams);
    return Compute_id63(streams);
}
void ResetStream_id54()
{
}
float4 Compute_id77()
{
    float x = Compute_id75();
    return float4(x, x, x, x);
}
float4 Compute_id68(inout PS_STREAMS streams)
{
    return Compute_id66(streams);
}
void ResetStream_id55(inout PS_STREAMS streams)
{
    ResetStream_id54();
    streams.matBlend_id41 = 0.0f;
}
void Compute_id88(inout PS_STREAMS streams)
{
    streams.shadingColor_id74 += streams.matEmissive_id63.rgb * streams.matEmissiveIntensity_id64;

    {
        streams.shadingColorAlpha_id75 = streams.matEmissive_id63.a;
    }
}
void Compute_id87(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id64 = Compute_id77().r;
}
void Compute_id82(inout PS_STREAMS streams)
{
    streams.matEmissive_id63 = Compute_id68(streams).rgba;
}
void ResetStream_id56(inout PS_STREAMS streams)
{
    ResetStream_id55(streams);
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
float3 EncodeNormal_id41(float3 n)
{
    return n * 0.5 + 0.5;
}
void Compute_id37(inout PS_STREAMS streams)
{

    {
        Compute_id82(streams);
    }

    {
        Compute_id87(streams);
    }

    {
        Compute_id88(streams);
    }
}
void ResetStream_id36(inout PS_STREAMS streams)
{
    ResetStream_id56(streams);
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
float4 Compute_id35()
{
    return MaterialIndex_id84;
}
float4 Compute_id34(inout PS_STREAMS streams)
{
    return float4(EncodeNormal_id41(streams.normalWS_id20), 1);
}
float4 Shading_id29(inout PS_STREAMS streams)
{
    streams.viewWS_id69 = normalize(Eye_id32.xyz - streams.PositionWS_id23.xyz);
    streams.shadingColor_id74 = 0;
    ResetStream_id36(streams);
    Compute_id37(streams);
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
    streams.ColorTarget_id2 = Shading_id29(streams);
    streams.ColorTarget1_id3 = Compute_id34(streams);
    streams.ColorTarget2_id4 = Compute_id35();
}
void GenerateNormal_PS_id20(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id20, streams.normalWS_id20) > 0)
        streams.normalWS_id20 = normalize(streams.normalWS_id20);
    streams.meshNormalWS_id18 = streams.normalWS_id20;
}
void GenerateNormal_VS_id19(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id18 = mul(streams.meshNormal_id17, (float3x3)WorldInverseTranspose_id35);
    streams.normalWS_id20 = streams.meshNormalWS_id18;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id23 = __input__.PositionWS_id23;
    streams.normalWS_id20 = __input__.normalWS_id20;
    GenerateNormal_PS_id20(streams);
    PSMain_id3(streams);
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
    VSMain_id9(streams);
    GenerateNormal_VS_id19(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id23 = streams.PositionWS_id23;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id20 = streams.normalWS_id20;
    return __output__;
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.HasSkinningPosition: True
@P Material.HasSkinningNormal: False
@P Material.HasSkinningTangent: False
@P Material.SkinningMaxBones: 56
@P StrideEffectBase.HasInstancing: False
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = MaterialCompiling}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.EnvironmentLights: LightConstantWhite
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 4000]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
@C    BlendMatrixArray_id39 => TransformationSkinning.BlendMatrixArray
cbuffer PerFrame [Size: 16]
@C    Time_id88 => Global.Time
@C    TimeStep_id89 => Global.TimeStep
cbuffer PerMaterial [Size: 32]
@C    OriginalColor_id148 => MaterialCompiling.OriginalColor.diffuseMap.layers[0].materialPixelStage
@C    HasTexture_id149 => MaterialCompiling.HasTexture.diffuseMap.layers[0].materialPixelStage
cbuffer PerView [Size: 352]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    OriginalTexture_id150 => MaterialCompiling.OriginalTexture [Stage: None, Slot: (-1--1)]
@R    OriginalTexture_id150 => MaterialCompiling.OriginalTexture [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id120 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    OriginalTexture_id150 => MaterialCompiling.OriginalTexture [Stage: Pixel, Slot: (0-0)]
@R    PerFrame => PerFrame [Stage: Pixel, Slot: (0-0)]
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
@S    TransformationSkinning => 60032fe1990f2cb9e39a13ddddf607c7
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
@S    LightConstantWhite => 0185afb6880cbf380dcbf4fcf19bb427
@S    MaterialSurfaceArray => 8cf3cc54fcd9949ce74f2e4caaa0d6d9
@S    MaterialSurfaceDiffuse => 959d3b90076611b0252419cb02190f99
@S    IMaterialSurfacePixel => b6013c701b8fca52da0c65754bb0a9ca
@S    MaterialCompiling => a96ceba11656c320fe3c7e6a932ee09a
@S    Global => f3a73f928089a02788395f11e18f679c
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    MaterialSurfaceLightingAndShading => 632084a1d51a33d288c188803e2d5afc
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    IMaterialSurfaceShading => 1c45b326cd8616074872dd56496a9b5a
@S    MaterialSurfaceShadingDiffuseLambert => 8e2e1baa4a7bcb427f3ca539f81dd15c
***************************
*****     Stages      *****
***************************
@G    Vertex => 58eed53ec60efb11b3e86d0d64e0d918
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
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4x4 BlendMatrixArray_id39[56];// Offset:  416 Size:  3584
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
// POSITION                 0   xyzw        0     NONE   float   xyz 
// BLENDINDICES             0   xyzw        1     NONE    uint   xyzw
// BLENDWEIGHT              0   xyzw        2     NONE   float   xyzw
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[250], dynamicIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_input v4.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xy
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.BlendIndices_id41.x; v1.y <- __input__.BlendIndices_id41.y; v1.z <- __input__.BlendIndices_id41.z; v1.w <- __input__.BlendIndices_id41.w; 
//   v2.x <- __input__.BlendWeights_id40.x; v2.y <- __input__.BlendWeights_id40.y; v2.z <- __input__.BlendWeights_id40.z; v2.w <- __input__.BlendWeights_id40.w; 
//   v3.x <- __input__.meshNormal_id15.x; v3.y <- __input__.meshNormal_id15.y; v3.z <- __input__.meshNormal_id15.z; 
//   v4.x <- __input__.TexCoord_id138.x; v4.y <- __input__.TexCoord_id138.y; 
//   o3.x <- <VSMain return value>.TexCoord_id138.x; o3.y <- <VSMain return value>.TexCoord_id138.y; 
//   o2.x <- <VSMain return value>.normalWS_id18.x; o2.y <- <VSMain return value>.normalWS_id18.y; o2.z <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 382 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_95f16562b616ed1949bd408df993e483.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 345
ishl r1.xyzw, v1.xyzw, l(2, 2, 2, 2)

#line 381
mul r2.xyzw, v2.yyyy, cb0[r1.y + 26].xyzw
mad r2.xyzw, cb0[r1.x + 26].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 26].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 26].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id42._m00; r2.y <- streams.skinningBlendMatrix_id42._m10; r2.z <- streams.skinningBlendMatrix_id42._m20; r2.w <- streams.skinningBlendMatrix_id42._m30

#line 382
dp4 r2.x, r0.xyzw, r2.xyzw  // r2.x <- blendPos.x

#line 381
mul r3.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r3.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r3.xyzw
mad r3.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r3.xyzw  // r3.x <- streams.skinningBlendMatrix_id42._m01; r3.y <- streams.skinningBlendMatrix_id42._m11; r3.z <- streams.skinningBlendMatrix_id42._m21; r3.w <- streams.skinningBlendMatrix_id42._m31

#line 382
dp4 r2.y, r0.xyzw, r3.xyzw  // r2.y <- blendPos.y

#line 381
mul r3.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r3.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r3.xyzw
mad r3.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r3.xyzw  // r3.x <- streams.skinningBlendMatrix_id42._m02; r3.y <- streams.skinningBlendMatrix_id42._m12; r3.z <- streams.skinningBlendMatrix_id42._m22; r3.w <- streams.skinningBlendMatrix_id42._m32

#line 382
dp4 r2.z, r0.xyzw, r3.xyzw  // r2.z <- blendPos.z

#line 381
mul r3.xyzw, v2.yyyy, cb0[r1.y + 29].xyzw
mad r3.xyzw, cb0[r1.x + 29].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 29].xyzw, v2.zzzz, r3.xyzw
mad r1.xyzw, cb0[r1.w + 29].xyzw, v2.wwww, r3.xyzw  // r1.x <- streams.skinningBlendMatrix_id42._m03; r1.y <- streams.skinningBlendMatrix_id42._m13; r1.z <- streams.skinningBlendMatrix_id42._m23; r1.w <- streams.skinningBlendMatrix_id42._m33

#line 382
dp4 r2.w, r0.xyzw, r1.xyzw  // r2.w <- blendPos.w

#line 383
div r0.xyzw, r2.xyzw, r2.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 455
mov o0.xyzw, r0.xyzw

#line 338
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 419
dp3 o2.x, v3.xyzx, cb0[8].xyzx
dp3 o2.y, v3.xyzx, cb0[9].xyzx
dp3 o2.z, v3.xyzx, cb0[10].xyzx

#line 455
mov o3.xy, v4.xyxx
ret 
// Approximately 34 instruction slots used
@G    Pixel => 2c1d907a13bbc2d3cf838a0e40c5e45b
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerFrame
// {
//
//   float Time_id88;                   // Offset:    0 Size:     4
//   float TimeStep_id89;               // Offset:    4 Size:     4 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 OriginalColor_id148;        // Offset:    0 Size:    16
//   bool HasTexture_id149;             // Offset:   16 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id120               sampler      NA          NA             s0      1 
// OriginalTexture_id150             texture  float4          2d             t0      1 
// PerFrame                          cbuffer      NA          NA            cb0      1 
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
// NORMALWS                 0   xyz         2     NONE   float       
// TEXCOORD                 0   xy          3     NONE   float   xy  
// SV_IsFrontFace           0   x           4    FFACE    uint       
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id18.x; v2.y <- __input__.normalWS_id18.y; v2.z <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.TexCoord_id138.x; v3.y <- __input__.TexCoord_id138.y; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 265 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_95f16562b616ed1949bd408df993e483.hlsl"
mul r0.x, cb0[0].x, l(6.000000)
sincos r0.x, null, r0.x
mad r0.x, r0.x, l(0.250000), l(0.250000)  // r0.x <- factor

#line 266
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v3.xyxx, t0.xyzw, s0
movc r1.xyzw, cb1[1].xxxx, r1.xyzw, cb1[0].xyzw  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z; r1.w <- color.w

#line 268
add r2.xyzw, -r1.xyzw, l(0.250000, 1.000000, 0.250000, 1.000000)
mad o0.xyzw, r0.xxxx, r2.xyzw, r1.xyzw

#line 438
ret 
// Approximately 8 instruction slots used
***************************
*************************/
static const float PI_id153 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id154 = false;
struct PS_STREAMS 
{
    float3 normalWS_id18;
    float4 PositionWS_id21;
    float2 TexCoord_id138;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id16;
    float3 viewWS_id71;
    float3 shadingColor_id76;
    float matBlend_id43;
    float3 matNormal_id54;
    float4 matColorBase_id55;
    float4 matDiffuse_id56;
    float3 matDiffuseVisible_id72;
    float3 matSpecular_id58;
    float3 matSpecularVisible_id74;
    float matSpecularIntensity_id59;
    float matGlossiness_id57;
    float alphaRoughness_id73;
    float matAmbientOcclusion_id60;
    float matAmbientOcclusionDirectLightingFactor_id61;
    float matCavity_id62;
    float matCavityDiffuse_id63;
    float matCavitySpecular_id64;
    float4 matEmissive_id65;
    float matEmissiveIntensity_id66;
    float matScatteringStrength_id67;
    float2 matDiffuseSpecularAlphaBlend_id68;
    float3 matAlphaBlendColor_id69;
    float matAlphaDiscard_id70;
    float shadingColorAlpha_id77;
    float3 lightPositionWS_id44;
    float3 lightDirectionWS_id45;
    float3 lightColor_id46;
    float3 lightColorNdotL_id47;
    float3 lightSpecularColorNdotL_id48;
    float lightAttenuation_id49;
    float3 envLightDiffuseColor_id50;
    float3 envLightSpecularColor_id51;
    float lightDirectAmbientOcclusion_id53;
    float NdotL_id52;
    float NdotV_id75;
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
    float3 normalWS_id18 : NORMALWS;
    float2 TexCoord_id138 : TEXCOORD0;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    uint4 BlendIndices_id41;
    float4 BlendWeights_id40;
    float3 meshNormal_id15;
    float2 TexCoord_id138;
    float4x4 skinningBlendMatrix_id42;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id18 : NORMALWS;
    float2 TexCoord_id138 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    uint4 BlendIndices_id41 : BLENDINDICES;
    float4 BlendWeights_id40 : BLENDWEIGHT;
    float3 meshNormal_id15 : NORMAL;
    float2 TexCoord_id138 : TEXCOORD0;
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
    float4x4 BlendMatrixArray_id39[56];
};
cbuffer PerFrame 
{
    float Time_id88;
    float TimeStep_id89;
};
cbuffer PerMaterial 
{
    float4 OriginalColor_id148;
    bool HasTexture_id149;
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
Texture2D OriginalTexture_id150;
void PrepareEnvironmentLight_id41(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id50 = 0;
    streams.envLightSpecularColor_id51 = 0;
}
void ResetStream_id56()
{
}
void AfterLightingAndShading_id72()
{
}
float3 ComputeEnvironmentLightContribution_id65(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id72;
    return diffuseColor * streams.envLightDiffuseColor_id50;
}
void PrepareEnvironmentLight_id61(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id41(streams);
    streams.envLightDiffuseColor_id50 = 1;
    streams.envLightSpecularColor_id51 = 1;
}
void PrepareForLightingAndShading_id69()
{
}
void PrepareMaterialForLightingAndShading_id55(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id53 = lerp(1.0, streams.matAmbientOcclusion_id60, streams.matAmbientOcclusionDirectLightingFactor_id61);
    streams.matDiffuseVisible_id72 = streams.matDiffuse_id56.rgb * lerp(1.0f, streams.matCavity_id62, streams.matCavityDiffuse_id63) * streams.matDiffuseSpecularAlphaBlend_id68.r * streams.matAlphaBlendColor_id69;
    streams.matSpecularVisible_id74 = streams.matSpecular_id58.rgb * streams.matSpecularIntensity_id59 * lerp(1.0f, streams.matCavity_id62, streams.matCavitySpecular_id64) * streams.matDiffuseSpecularAlphaBlend_id68.g * streams.matAlphaBlendColor_id69;
    streams.NdotV_id75 = max(dot(streams.normalWS_id18, streams.viewWS_id71), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id57;
    streams.alphaRoughness_id73 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id54(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id44 = 0;
    streams.lightDirectionWS_id45 = 0;
    streams.lightColor_id46 = 0;
    streams.lightColorNdotL_id47 = 0;
    streams.lightSpecularColorNdotL_id48 = 0;
    streams.lightAttenuation_id49 = 1.0f;
    streams.envLightDiffuseColor_id50 = 0;
    streams.envLightSpecularColor_id51 = 0;
    streams.lightDirectAmbientOcclusion_id53 = 1.0f;
    streams.NdotL_id52 = 0;
}
void UpdateNormalFromTangentSpace_id21(float3 normalInTangentSpace)
{
}
float4 Compute_id62(inout PS_STREAMS streams)
{
    float factor = sin(Time_id88 * 6.0f) * 0.25f + 0.25f;
    float4 color = HasTexture_id149 ? OriginalTexture_id150.Sample(LinearSampler_id120, streams.TexCoord_id138) : OriginalColor_id148;
    float4 reloadColor = float4(0.25f, 1.0f, 0.25f, 1.0f);
    return lerp(color, reloadColor, factor);
}
void ResetStream_id57(inout PS_STREAMS streams)
{
    ResetStream_id56();
    streams.matBlend_id43 = 0.0f;
}
void PreTransformPosition_id4()
{
}
void Compute_id106(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id21(streams.matNormal_id54);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id54(streams);
    PrepareMaterialForLightingAndShading_id55(streams);

    {
        PrepareForLightingAndShading_id69();
    }
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id61(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id65(streams);
        }
    }
    streams.shadingColor_id76 += directLightingContribution * PI_id153 + environmentLightingContribution;
    streams.shadingColorAlpha_id77 = streams.matDiffuse_id56.a;

    {
        AfterLightingAndShading_id72();
    }
}
void Compute_id90(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id62(streams);
    streams.matDiffuse_id56 = colorBase;
    streams.matColorBase_id55 = colorBase;
}
void ResetStream_id58(inout PS_STREAMS streams)
{
    ResetStream_id57(streams);
    streams.matNormal_id54 = float3(0, 0, 1);
    streams.matColorBase_id55 = 0.0f;
    streams.matDiffuse_id56 = 0.0f;
    streams.matDiffuseVisible_id72 = 0.0f;
    streams.matSpecular_id58 = 0.0f;
    streams.matSpecularVisible_id74 = 0.0f;
    streams.matSpecularIntensity_id59 = 1.0f;
    streams.matGlossiness_id57 = 0.0f;
    streams.alphaRoughness_id73 = 1.0f;
    streams.matAmbientOcclusion_id60 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id61 = 0.0f;
    streams.matCavity_id62 = 1.0f;
    streams.matCavityDiffuse_id63 = 0.0f;
    streams.matCavitySpecular_id64 = 0.0f;
    streams.matEmissive_id65 = 0.0f;
    streams.matEmissiveIntensity_id66 = 0.0f;
    streams.matScatteringStrength_id67 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id68 = 1.0f;
    streams.matAlphaBlendColor_id69 = 1.0f;
    streams.matAlphaDiscard_id70 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
float4x4 GetBlendMatrix_id22(int index)
{
    return BlendMatrixArray_id39[index];
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
void Compute_id40(inout PS_STREAMS streams)
{

    {
        Compute_id90(streams);
    }

    {
        Compute_id106(streams);
    }
}
void ResetStream_id39(inout PS_STREAMS streams)
{
    ResetStream_id58(streams);
    streams.shadingColorAlpha_id77 = 1.0f;
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
void PreTransformPosition_id23(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    streams.skinningBlendMatrix_id42 = GetBlendMatrix_id22(streams.BlendIndices_id41[0]) * streams.BlendWeights_id40[0] + GetBlendMatrix_id22(streams.BlendIndices_id41[1]) * streams.BlendWeights_id40[1] + GetBlendMatrix_id22(streams.BlendIndices_id41[2]) * streams.BlendWeights_id40[2] + GetBlendMatrix_id22(streams.BlendIndices_id41[3]) * streams.BlendWeights_id40[3];
    float4 blendPos = mul(float4(streams.Position_id20.xyz, 1.0f), streams.skinningBlendMatrix_id42);
    blendPos /= blendPos.w;
    streams.PositionWS_id21 = blendPos;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id71 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id76 = 0;
    ResetStream_id39(streams);
    Compute_id40(streams);
    return float4(streams.shadingColor_id76, streams.shadingColorAlpha_id77);
}
void PSMain_id1()
{
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id23(streams);
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
void GenerateNormal_PS_id20(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
}
void GenerateNormal_VS_id19(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.TexCoord_id138 = __input__.TexCoord_id138;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    GenerateNormal_PS_id20(streams);
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.BlendIndices_id41 = __input__.BlendIndices_id41;
    streams.BlendWeights_id40 = __input__.BlendWeights_id40;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    streams.TexCoord_id138 = __input__.TexCoord_id138;
    VSMain_id9(streams);
    GenerateNormal_VS_id19(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.TexCoord_id138 = streams.TexCoord_id138;
    return __output__;
}

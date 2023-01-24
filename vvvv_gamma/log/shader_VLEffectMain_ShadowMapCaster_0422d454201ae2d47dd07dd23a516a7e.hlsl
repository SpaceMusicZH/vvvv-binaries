/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ColorPerParticle_ShaderFXResult_0> [{Value = ColorPerParticle_ShaderFX}]]}]}, {Value = GetVarFloat4<ColorPerParticle_ShaderFXResult_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin SMSphereImpostor_ShaderFX [{ShadingColor0 = ComputeColor}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
cbuffer PerMaterial [Size: 16]
@C    ParticleSize_id149 => SMSphereImpostor_ShaderFX.ParticleSize
@C    InputValue_id162 => ShaderFX.InputValueFloat
@C    InputValue_id171 => ShaderFX.InputValueFloat.i1
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
@R    ParticlesBuffer_id148 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id148 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id154 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id154 => ColorPerParticle_ShaderFX.ParticlesBuffer [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id183 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id183 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ParticlesBuffer_id148 => SMSphereImpostor_ShaderFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
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
@S    ShadowMapCasterNoPixelShader => aa6a2819c879eaf0eb664f08fb1f41b4
@S    SMSphereImpostor_ShaderFX => a3cee26ef91f37f6e7d9c4bec4a5cd33
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
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
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
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
***************************
*****     Stages      *****
***************************
@G    Vertex => 8de14ab7e612936ec2625c5d9dbf177a
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// VID_ID152_SEM            0   x           0     NONE    uint   x   
// SV_Position              0   xyzw        1      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_input v1.xyzw
dcl_output o0.x
dcl_output_siv o1.xyzw, position
//
// Initial variable locations:
//   v0.x <- __input__.VertexID_id151; 
//   v1.x <- __input__.Position_id20.x; v1.y <- __input__.Position_id20.y; v1.z <- __input__.Position_id20.z; v1.w <- __input__.Position_id20.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.VID_id152
//
#line 242 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_ShadowMapCaster_0422d454201ae2d47dd07dd23a516a7e.hlsl"
mov o0.x, v0.x
mov o1.xyzw, v1.xyzw
ret 
// Approximately 3 instruction slots used
@G    Geometry => 634b5769db7ad3a027f0b4e23490bcbe
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float ParticleSize_id149;          // Offset:    0 Size:     4
//      = 0x3dcccccd 
//   float InputValue_id162;            // Offset:    4 Size:     4 [unused]
//   float InputValue_id171;            // Offset:    8 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id148
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
// ParticlesBuffer_id148             texture  struct         r/o             t0      1 
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
// VID_ID152_SEM            0   x           0     NONE    uint   x   
// SV_Position              0   xyzw        1      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// PSIZE_ID150_SEM          0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// SV_Position              0   xyzw        2      POS   float   xyzw
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
dcl_input_siv v[1][1].xyzw, position
dcl_temps 6
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output o1.x
dcl_output o1.yz
dcl_output_siv o2.xyzw, position
dcl_maxout 4
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].VID_id152; 
//   v[0][1].x <- input[0].ShadingPosition_id0.x; v[0][1].y <- input[0].ShadingPosition_id0.y; v[0][1].z <- input[0].ShadingPosition_id0.z; v[0][1].w <- input[0].ShadingPosition_id0.w
//
#line 207 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_VLEffectMain_ShadowMapCaster_0422d454201ae2d47dd07dd23a516a7e.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, v[0][0].x, l(36), t0.xxxx  // r0.x <- p.Size.x

#line 209
mul r0.w, r0.x, cb1[0].x

#line 210
ge r1.x, l(0.000000), r0.w
if_nz r1.x

#line 211
  ret 
endif 

#line 207
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, v[0][0].x, l(0), t0.xyzx  // r1.x <- p.Pos.x; r1.y <- p.Pos.y; r1.z <- p.Pos.z

#line 208
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[0].xyzw  // r2.x <- streams.PositionWS_id21.x
dp4 r2.y, r1.xyzw, cb0[1].xyzw  // r2.y <- streams.PositionWS_id21.y
dp4 r2.z, r1.xyzw, cb0[2].xyzw  // r2.z <- streams.PositionWS_id21.z
dp4 r2.w, r1.xyzw, cb0[3].xyzw  // r2.w <- streams.PositionWS_id21.w

#line 214
dp4 r1.x, r2.xyzw, cb2[0].xyzw  // r1.x <- posView.x
dp4 r1.y, r2.xyzw, cb2[1].xyzw  // r1.y <- posView.y
dp4 r1.z, r2.xyzw, cb2[2].xyzw  // r1.z <- posView.z

#line 219
mov r3.z, l(0)
mul r0.xyz, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- streams.PSize_id150

#line 220
mov r4.w, l(1.000000)

#line 216
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(4)
  breakc_nz r3.w

#line 218
  mad r5.xy, icb[r1.w + 0].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- streams.TexCoord_id130.x; r5.y <- streams.TexCoord_id130.y

#line 219
  mov r3.xy, icb[r1.w + 2].zwzz
  mad r4.xyz, r3.xyzx, r0.yzwy, r1.xyzx  // r4.x <- viewCornerPos.x; r4.y <- viewCornerPos.y; r4.z <- viewCornerPos.z

#line 220
  dp4 r3.x, r4.xyzw, cb2[8].xyzw  // r3.x <- streams.ShadingPosition_id0.x
  dp4 r3.y, r4.xyzw, cb2[9].xyzw  // r3.y <- streams.ShadingPosition_id0.y
  dp4 r3.w, r4.xyzw, cb2[10].xyzw  // r3.w <- streams.ShadingPosition_id0.z
  dp4 r4.x, r4.xyzw, cb2[11].xyzw  // r4.x <- streams.ShadingPosition_id0.w

#line 228
  mov o0.xyzw, r2.xyzw
  mov o1.x, r0.x
  mov o1.yz, r5.xxyx
  mov o2.x, r3.x
  mov o2.y, r3.y
  mov o2.z, r3.w
  mov o2.w, r4.x
  emit_stream m0

#line 230
  iadd r1.w, r1.w, l(1)
endloop 

#line 231
ret 
// Approximately 40 instruction slots used
***************************
*************************/
static const float3 QuadPositions_id145[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id146[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct GS_STREAMS 
{
    uint VID_id152;
    float4 PositionWS_id21;
    float PSize_id150;
    float2 TexCoord_id130;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float PSize_id150 : PSIZE_ID150_SEM;
    float2 TexCoord_id130 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    uint VID_id152 : VID_ID152_SEM;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    uint VertexID_id151;
    float4 Position_id20;
    uint InstanceID_id13;
    uint VID_id152;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    uint VID_id152 : VID_ID152_SEM;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    uint VertexID_id151 : SV_VertexID;
    float4 Position_id20 : POSITION;
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
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
};
cbuffer PerMaterial 
{
    float ParticleSize_id149 = 0.1;
    float InputValue_id162;
    float InputValue_id171;
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
    float2 Texture0TexelSize_id83;
    float2 Texture1TexelSize_id85;
    float2 Texture2TexelSize_id87;
    float2 Texture3TexelSize_id89;
    float2 Texture4TexelSize_id91;
    float2 Texture5TexelSize_id93;
    float2 Texture6TexelSize_id95;
    float2 Texture7TexelSize_id97;
    float2 Texture8TexelSize_id99;
    float2 Texture9TexelSize_id101;
};
Texture2D Texture0_id82;
Texture2D Texture1_id84;
Texture2D Texture2_id86;
Texture2D Texture3_id88;
Texture2D Texture4_id90;
Texture2D Texture5_id92;
Texture2D Texture6_id94;
Texture2D Texture7_id96;
Texture2D Texture8_id98;
Texture2D Texture9_id100;
TextureCube TextureCube0_id102;
TextureCube TextureCube1_id103;
TextureCube TextureCube2_id104;
TextureCube TextureCube3_id105;
Texture3D Texture3D0_id106;
Texture3D Texture3D1_id107;
Texture3D Texture3D2_id108;
Texture3D Texture3D3_id109;
SamplerState Sampler_id110;
SamplerState PointSampler_id111 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id112 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id113 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id114 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id115 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id116 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id117 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id118 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id119 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id120;
SamplerState Sampler1_id121;
SamplerState Sampler2_id122;
SamplerState Sampler3_id123;
SamplerState Sampler4_id124;
SamplerState Sampler5_id125;
SamplerState Sampler6_id126;
SamplerState Sampler7_id127;
SamplerState Sampler8_id128;
SamplerState Sampler9_id129;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id148;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id154;
Texture2D EnvironmentLightingDFG_LUT_id183;
void PostTransformPosition_id59(inout VS_STREAMS streams)
{
    streams.VID_id152 = streams.VertexID_id151;
    streams.InstanceID_id13 = streams.VertexID_id151;
    streams.ShadingPosition_id0 = streams.Position_id20;
}
void TransformPosition_id58()
{
}
void PreTransformPosition_id57()
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
void GenerateNormal_VS_id60()
{
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.VID_id152 = input[0].VID_id152;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    uint id = streams.VID_id152;
    SMGridParticle p = ParticlesBuffer_id148[id];
    streams.PositionWS_id21 = mul(float4(p.Pos.xyz, 1), World_id31);
    streams.PSize_id150 = ParticleSize_id149 * p.Size.x * 0.5;
    if (streams.PSize_id150 <= 0)
        return;
    float padding = 1.5;
    float2 offset;
    float4 posView = mul(streams.PositionWS_id21, View_id24);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id130 = QuadUV_id146[i].xy * 2 - 1;
        float4 viewCornerPos = float4(posView.xyz + QuadPositions_id145[i].xyz * streams.PSize_id150, 1);
        streams.ShadingPosition_id0 = mul(viewCornerPos, Projection_id26);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id21 = streams.PositionWS_id21;
            output.PSize_id150 = streams.PSize_id150;
            output.TexCoord_id130 = streams.TexCoord_id130;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id151 = __input__.VertexID_id151;
    streams.Position_id20 = __input__.Position_id20;
    VSMain_id9(streams);
    GenerateNormal_VS_id60();
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.VID_id152 = streams.VID_id152;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}

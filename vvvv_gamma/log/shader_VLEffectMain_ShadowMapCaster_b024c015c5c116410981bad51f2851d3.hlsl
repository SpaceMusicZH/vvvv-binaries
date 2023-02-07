/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: mixin BoxGeomExt_ShaderFX [{ShadingColor0 = ComputeColor}]
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
cbuffer PerMaterial [Size: 32]
@C    InputValue_id146 => ShaderFX.InputValueFloat4
@C    InputValue_id154 => ShaderFX.InputValueFloat
@C    InputValue_id163 => ShaderFX.InputValueFloat.i1
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
@R    Particles_id142 => ParticleBuffer.Particles [Stage: None, Slot: (-1--1)]
@R    Particles_id142 => ParticleBuffer.Particles [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id175 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id175 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    Particles_id142 => ParticleBuffer.Particles [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerView => PerView [Stage: Geometry, Slot: (1-1)]
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
@S    BoxGeomExt_ShaderFX => 769e78a8ba41ccad77a41d266117154a
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    VertexIDStream => 9d1d889df6ab3d2e141f4e6e5d369333
@S    ParticleBuffer => a64a4612fd198ca64a3658584f8219de
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
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
@G    Vertex => a285a26f0b7a36934a7257b0a0aa7720
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// SV_VertexID              0   x           1   VERTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// VERTEXID_ID141_SEM       0   x           1     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyzw
dcl_input_sgv v1.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.x
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.VertexID_VS_id140; 
//   o1.x <- <VSMain return value>.VertexID_id141; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 279 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_ShadowMapCaster_b024c015c5c116410981bad51f2851d3.hlsl"
mov o0.xyzw, v0.xyzw
mov o1.x, v1.x
ret 
// Approximately 3 instruction slots used
@G    Geometry => 3d070d83998a500824fe0e70c39d4945
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
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16
//
// }
//
// Resource bind info for Particles_id142
// {
//
//   struct Particle
//   {
//       
//       float3 Velocity;               // Offset:    0
//       float3 Position;               // Offset:   12
//       float4 Color;                  // Offset:   24
//       float Drag;                    // Offset:   40
//       int Cycle;                     // Offset:   44
//       float Age;                     // Offset:   48
//       float LifeTime;                // Offset:   52
//       int Id;                        // Offset:   56
//       float3 AxisY;                  // Offset:   60
//       float3 AxisX;                  // Offset:   72
//       float3 AxisZ;                  // Offset:   84
//       float3 Size3;                  // Offset:   96
//
//   } $Element;                        // Offset:    0 Size:   108
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Particles_id142                   texture  struct         r/o             t0      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// VERTEXID_ID141_SEM       0   x           1     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// DEPTH_VS                 0     z         0     NONE   float     z 
// POSITION_WS              0   xyzw        1     NONE   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// MESHNORMALWS_ID16_SEM     0   xyz         3     NONE   float   xyz 
// SV_Position              0   xyzw        4      POS   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 1.000000, 0, 0},
                              { 1.000000, 1.000000, 0, 0},
                              { 0, 0, 0, 0},
                              { 1.000000, 0, 0, 0} }
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[22], immediateIndexed
dcl_resource_structured t0, 108
dcl_input_siv v[1][0].xyzw, position
dcl_input v[1][1].x
dcl_temps 10
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xy
dcl_output o0.z
dcl_output o1.xyzw
dcl_output o2.xyz
dcl_output o3.xyz
dcl_output_siv o4.xyzw, position
dcl_maxout 12
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[0][1].x <- input[0].VertexID_id141
//
#line 252 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_VLEffectMain_ShadowMapCaster_b024c015c5c116410981bad51f2851d3.hlsl"
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r0.xy, v[0][1].x, l(44), t0.xyxx  // r0.x <- p.Cycle; r0.y <- p.Age

#line 253
ieq r0.x, r0.x, l(0)
lt r0.y, r0.y, l(0.000000)
or r0.x, r0.y, r0.x
if_nz r0.x

#line 254
  ret 
endif 

#line 252
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r0.xyz, v[0][1].x, l(12), t0.xyzx  // r0.x <- p.Position.x; r0.y <- p.Position.y; r0.z <- p.Position.z
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r1.xyzw, v[0][1].x, l(60), t0.xyzw  // r1.x <- p.AxisY.x; r1.y <- p.AxisY.y; r1.z <- p.AxisY.z; r1.w <- p.AxisX.x
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r2.xyzw, v[0][1].x, l(76), t0.zxyw  // r2.y <- p.AxisX.y; r2.z <- p.AxisX.z; r2.x <- p.AxisZ.x; r2.w <- p.AxisZ.y
ld_structured_indexable(structured_buffer, stride=108)(mixed,mixed,mixed,mixed) r3.xyzw, v[0][1].x, l(92), t0.xyzw  // r3.x <- p.AxisZ.z; r3.y <- p.Size3.x; r3.z <- p.Size3.y; r3.w <- p.Size3.z

#line 255
add r4.xyz, -r0.xyzx, cb1[21].xyzx  // r4.x <- viewDir.x; r4.y <- viewDir.y; r4.z <- viewDir.z

#line 256
mov r5.xy, r2.xwxx
mov r5.z, r3.x
dp3 r0.w, r4.xyzx, r5.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 215
  mov r6.x, r1.w
  mov r6.yz, r2.yyzy

#line 218
  mov r7.w, l(1.000000)

#line 210
  mov r0.w, l(0)  // r0.w <- i
  loop 
    uge r4.w, r0.w, l(4)
    breakc_nz r4.w

#line 212
    and r4.w, r0.w, l(3)

#line 195
    ishl r5.w, l(1), r0.w  // r5.w <- b

#line 196
    and r8.xyz, r5.wwww, l(90, 51, 15, 0)
    movc r8.xyz, r8.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r8.x <- <CubeVert_id35 return value>.x; r8.y <- <CubeVert_id35 return value>.y; r8.z <- <CubeVert_id35 return value>.z

#line 215
    mul r9.xyz, r6.xyzx, r8.xxxx
    mad r9.xyz, r9.xyzx, r3.yyyy, r0.xyzx  // r9.x <- posWorld.x; r9.y <- posWorld.y; r9.z <- posWorld.z

#line 216
    mul r8.xyw, r1.xyxz, r8.yyyy
    mad r8.xyw, r8.xyxw, r3.zzzz, r9.xyxz  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.w <- posWorld.z

#line 217
    mul r9.xyz, r5.xyzx, r8.zzzz
    mad r7.xyz, r9.xyzx, r3.wwww, r8.xywx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 218
    dp4 r8.x, r7.xyzw, cb0[0].xyzw  // r8.x <- posWorld.x
    dp4 r8.y, r7.xyzw, cb0[1].xyzw  // r8.y <- posWorld.y
    dp4 r8.z, r7.xyzw, cb0[2].xyzw  // r8.z <- posWorld.z
    dp4 r8.w, r7.xyzw, cb0[3].xyzw  // r8.w <- posWorld.w

#line 222
    dp4 r5.w, r8.xyzw, cb1[16].xyzw  // r5.w <- streams.ShadingPosition_id0.x
    dp4 r6.w, r8.xyzw, cb1[17].xyzw  // r6.w <- streams.ShadingPosition_id0.y
    dp4 r7.x, r8.xyzw, cb1[18].xyzw  // r7.x <- streams.ShadingPosition_id0.z
    dp4 r7.y, r8.xyzw, cb1[19].xyzw  // r7.y <- streams.ShadingPosition_id0.w

#line 233
    mov o0.xy, icb[r4.w + 0].xyxx
    mov o0.z, r7.y
    mov o1.xyzw, r8.xyzw
    mov o2.xy, r2.xwxx
    mov o2.z, r3.x
    mov o3.xy, r2.xwxx
    mov o3.z, r3.x
    mov o4.x, r5.w
    mov o4.y, r6.w
    mov o4.z, r7.x
    mov o4.w, r7.y
    emit_stream m0

#line 235
    iadd r0.w, r0.w, l(1)
  endloop 

#line 236
  cut_stream m0

#line 257
endif 

#line 258
dp3 r0.w, r4.xyzx, -r5.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 215
  mov r2.x, r1.w

#line 218
  mov r6.w, l(1.000000)

#line 210
  mov r0.w, l(4)  // r0.w <- i
  loop 
    uge r2.w, r0.w, l(8)
    breakc_nz r2.w

#line 212
    and r2.w, r0.w, l(3)

#line 195
    ishl r3.x, l(1), r0.w  // r3.x <- b

#line 196
    and r7.xyz, r3.xxxx, l(0x0000a55a, 3891, 0x0000330f, 0)
    movc r7.xyz, r7.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r7.x <- <CubeVert_id35 return value>.x; r7.y <- <CubeVert_id35 return value>.y; r7.z <- <CubeVert_id35 return value>.z

#line 215
    mul r8.xyz, r2.xyzx, r7.xxxx
    mad r8.xyz, r8.xyzx, r3.yyyy, r0.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 216
    mul r7.xyw, r1.xyxz, r7.yyyy
    mad r7.xyw, r7.xyxw, r3.zzzz, r8.xyxz  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.w <- posWorld.z

#line 217
    mul r8.xyz, r5.xyzx, r7.zzzz
    mad r6.xyz, r8.xyzx, r3.wwww, r7.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 218
    dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
    dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
    dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
    dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 222
    dp4 r3.x, r7.xyzw, cb1[16].xyzw  // r3.x <- streams.ShadingPosition_id0.x
    dp4 r4.w, r7.xyzw, cb1[17].xyzw  // r4.w <- streams.ShadingPosition_id0.y
    dp4 r5.w, r7.xyzw, cb1[18].xyzw  // r5.w <- streams.ShadingPosition_id0.z
    dp4 r6.x, r7.xyzw, cb1[19].xyzw  // r6.x <- streams.ShadingPosition_id0.w

#line 233
    mov o0.xy, icb[r2.w + 0].xyxx
    mov o0.z, r6.x
    mov o1.xyzw, r7.xyzw
    mov o2.xyz, -r5.xyzx
    mov o3.xyz, -r5.xyzx
    mov o4.x, r3.x
    mov o4.y, r4.w
    mov o4.z, r5.w
    mov o4.w, r6.x
    emit_stream m0

#line 235
    iadd r0.w, r0.w, l(1)
  endloop 

#line 236
  cut_stream m0

#line 259
endif 

#line 260
dp3 r0.w, r4.xyzx, r1.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 215
  mov r2.x, r1.w

#line 218
  mov r6.w, l(1.000000)

#line 210
  mov r0.w, l(8)  // r0.w <- i
  loop 
    uge r2.w, r0.w, l(12)
    breakc_nz r2.w

#line 212
    and r2.w, r0.w, l(3)

#line 195
    ishl r3.x, l(1), r0.w  // r3.x <- b

#line 196
    and r7.xyz, r3.xxxx, l(0x0000a500, 3840, 0x00003300, 0)
    movc r7.xyz, r7.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r7.x <- <CubeVert_id35 return value>.x; r7.y <- <CubeVert_id35 return value>.y; r7.z <- <CubeVert_id35 return value>.z

#line 215
    mul r8.xyz, r2.xyzx, r7.xxxx
    mad r8.xyz, r8.xyzx, r3.yyyy, r0.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 216
    mul r7.xyw, r1.xyxz, r7.yyyy
    mad r7.xyw, r7.xyxw, r3.zzzz, r8.xyxz  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.w <- posWorld.z

#line 217
    mul r8.xyz, r5.xyzx, r7.zzzz
    mad r6.xyz, r8.xyzx, r3.wwww, r7.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 218
    dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
    dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
    dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
    dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 222
    dp4 r3.x, r7.xyzw, cb1[16].xyzw  // r3.x <- streams.ShadingPosition_id0.x
    dp4 r4.w, r7.xyzw, cb1[17].xyzw  // r4.w <- streams.ShadingPosition_id0.y
    dp4 r5.w, r7.xyzw, cb1[18].xyzw  // r5.w <- streams.ShadingPosition_id0.z
    dp4 r6.x, r7.xyzw, cb1[19].xyzw  // r6.x <- streams.ShadingPosition_id0.w

#line 233
    mov o0.xy, icb[r2.w + 0].xyxx
    mov o0.z, r6.x
    mov o1.xyzw, r7.xyzw
    mov o2.xyz, r1.xyzx
    mov o3.xyz, r1.xyzx
    mov o4.x, r3.x
    mov o4.y, r4.w
    mov o4.z, r5.w
    mov o4.w, r6.x
    emit_stream m0

#line 235
    iadd r0.w, r0.w, l(1)
  endloop 

#line 236
  cut_stream m0

#line 261
endif 

#line 262
dp3 r0.w, r4.xyzx, -r1.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 215
  mov r2.x, r1.w

#line 218
  mov r6.w, l(1.000000)

#line 210
  mov r0.w, l(12)  // r0.w <- i
  loop 
    uge r2.w, r0.w, l(16)
    breakc_nz r2.w

#line 212
    and r2.w, r0.w, l(3)

#line 195
    ishl r3.x, l(1), r0.w  // r3.x <- b

#line 196
    and r7.xyz, r3.xxxx, l(0x000fa55a, 0x005a0f33, 0x0033330f, 0)
    movc r7.xyz, r7.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r7.x <- <CubeVert_id35 return value>.x; r7.y <- <CubeVert_id35 return value>.y; r7.z <- <CubeVert_id35 return value>.z

#line 215
    mul r8.xyz, r2.xyzx, r7.xxxx
    mad r8.xyz, r8.xyzx, r3.yyyy, r0.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 216
    mul r7.xyw, r1.xyxz, r7.yyyy
    mad r7.xyw, r7.xyxw, r3.zzzz, r8.xyxz  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.w <- posWorld.z

#line 217
    mul r8.xyz, r5.xyzx, r7.zzzz
    mad r6.xyz, r8.xyzx, r3.wwww, r7.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 218
    dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
    dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
    dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
    dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 222
    dp4 r3.x, r7.xyzw, cb1[16].xyzw  // r3.x <- streams.ShadingPosition_id0.x
    dp4 r4.w, r7.xyzw, cb1[17].xyzw  // r4.w <- streams.ShadingPosition_id0.y
    dp4 r5.w, r7.xyzw, cb1[18].xyzw  // r5.w <- streams.ShadingPosition_id0.z
    dp4 r6.x, r7.xyzw, cb1[19].xyzw  // r6.x <- streams.ShadingPosition_id0.w

#line 233
    mov o0.xy, icb[r2.w + 0].xyxx
    mov o0.z, r6.x
    mov o1.xyzw, r7.xyzw
    mov o2.xyz, -r1.xyzx
    mov o3.xyz, -r1.xyzx
    mov o4.x, r3.x
    mov o4.y, r4.w
    mov o4.z, r5.w
    mov o4.w, r6.x
    emit_stream m0

#line 235
    iadd r0.w, r0.w, l(1)
  endloop 

#line 236
  cut_stream m0

#line 263
endif 

#line 264
mov r2.x, r1.w
dp3 r0.w, r4.xyzx, r2.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 218
  mov r6.w, l(1.000000)

#line 210
  mov r0.w, l(16)  // r0.w <- i
  loop 
    uge r2.w, r0.w, l(20)
    breakc_nz r2.w

#line 212
    and r2.w, r0.w, l(3)

#line 195
    ishl r3.x, l(1), r0.w  // r3.x <- b

#line 196
    and r7.xyz, r3.xxxx, l(0x000f0000, 0x005a0000, 0x00330000, 0)
    movc r7.xyz, r7.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r7.x <- <CubeVert_id35 return value>.x; r7.y <- <CubeVert_id35 return value>.y; r7.z <- <CubeVert_id35 return value>.z

#line 215
    mul r8.xyz, r2.xyzx, r7.xxxx
    mad r8.xyz, r8.xyzx, r3.yyyy, r0.xyzx  // r8.x <- posWorld.x; r8.y <- posWorld.y; r8.z <- posWorld.z

#line 216
    mul r7.xyw, r1.xyxz, r7.yyyy
    mad r7.xyw, r7.xyxw, r3.zzzz, r8.xyxz  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.w <- posWorld.z

#line 217
    mul r8.xyz, r5.xyzx, r7.zzzz
    mad r6.xyz, r8.xyzx, r3.wwww, r7.xywx  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.z <- posWorld.z

#line 218
    dp4 r7.x, r6.xyzw, cb0[0].xyzw  // r7.x <- posWorld.x
    dp4 r7.y, r6.xyzw, cb0[1].xyzw  // r7.y <- posWorld.y
    dp4 r7.z, r6.xyzw, cb0[2].xyzw  // r7.z <- posWorld.z
    dp4 r7.w, r6.xyzw, cb0[3].xyzw  // r7.w <- posWorld.w

#line 222
    dp4 r3.x, r7.xyzw, cb1[16].xyzw  // r3.x <- streams.ShadingPosition_id0.x
    dp4 r4.w, r7.xyzw, cb1[17].xyzw  // r4.w <- streams.ShadingPosition_id0.y
    dp4 r5.w, r7.xyzw, cb1[18].xyzw  // r5.w <- streams.ShadingPosition_id0.z
    dp4 r6.x, r7.xyzw, cb1[19].xyzw  // r6.x <- streams.ShadingPosition_id0.w

#line 233
    mov o0.xy, icb[r2.w + 0].xyxx
    mov o0.z, r6.x
    mov o1.xyzw, r7.xyzw
    mov o2.x, r1.w
    mov o2.yz, r2.yyzy
    mov o3.x, r1.w
    mov o3.yz, r2.yyzy
    mov o4.x, r3.x
    mov o4.y, r4.w
    mov o4.z, r5.w
    mov o4.w, r6.x
    emit_stream m0

#line 235
    iadd r0.w, r0.w, l(1)
  endloop 

#line 236
  cut_stream m0

#line 265
endif 

#line 266
dp3 r0.w, r4.xyzx, -r2.xyzx
lt r0.w, l(0.000000), r0.w
if_nz r0.w

#line 218
  mov r4.w, l(1.000000)

#line 210
  mov r0.w, l(20)  // r0.w <- i
  loop 
    uge r1.w, r0.w, l(24)
    breakc_nz r1.w

#line 212
    and r1.w, r0.w, l(3)

#line 195
    ishl r2.w, l(1), r0.w  // r2.w <- b

#line 196
    and r6.xyz, r2.wwww, l(0x000f0000, 0x005a0000, 0x00330000, 0)
    movc r6.xyz, r6.xyzx, l(0.500000,0.500000,0.500000,0), l(-0.500000,-0.500000,-0.500000,0)  // r6.x <- <CubeVert_id35 return value>.x; r6.y <- <CubeVert_id35 return value>.y; r6.z <- <CubeVert_id35 return value>.z

#line 215
    mul r7.xyz, r2.xyzx, r6.xxxx
    mad r7.xyz, r7.xyzx, r3.yyyy, r0.xyzx  // r7.x <- posWorld.x; r7.y <- posWorld.y; r7.z <- posWorld.z

#line 216
    mul r6.xyw, r1.xyxz, r6.yyyy
    mad r6.xyw, r6.xyxw, r3.zzzz, r7.xyxz  // r6.x <- posWorld.x; r6.y <- posWorld.y; r6.w <- posWorld.z

#line 217
    mul r7.xyz, r5.xyzx, r6.zzzz
    mad r4.xyz, r7.xyzx, r3.wwww, r6.xywx  // r4.x <- posWorld.x; r4.y <- posWorld.y; r4.z <- posWorld.z

#line 218
    dp4 r6.x, r4.xyzw, cb0[0].xyzw  // r6.x <- posWorld.x
    dp4 r6.y, r4.xyzw, cb0[1].xyzw  // r6.y <- posWorld.y
    dp4 r6.z, r4.xyzw, cb0[2].xyzw  // r6.z <- posWorld.z
    dp4 r6.w, r4.xyzw, cb0[3].xyzw  // r6.w <- posWorld.w

#line 222
    dp4 r2.w, r6.xyzw, cb1[16].xyzw  // r2.w <- streams.ShadingPosition_id0.x
    dp4 r3.x, r6.xyzw, cb1[17].xyzw  // r3.x <- streams.ShadingPosition_id0.y
    dp4 r4.x, r6.xyzw, cb1[18].xyzw  // r4.x <- streams.ShadingPosition_id0.z
    dp4 r4.y, r6.xyzw, cb1[19].xyzw  // r4.y <- streams.ShadingPosition_id0.w

#line 233
    mov o0.xy, icb[r1.w + 0].xyxx
    mov o0.z, r4.y
    mov o1.xyzw, r6.xyzw
    mov o2.xyz, -r2.xyzx
    mov o3.xyz, -r2.xyzx
    mov o4.x, r2.w
    mov o4.y, r3.x
    mov o4.z, r4.x
    mov o4.w, r4.y
    emit_stream m0

#line 235
    iadd r0.w, r0.w, l(1)
  endloop 

#line 236
  cut_stream m0

#line 267
endif 

#line 268
ret 
// Approximately 265 instruction slots used
***************************
*************************/
static const float2 QuadUV_id144[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct GS_STREAMS 
{
    uint VertexID_id141;
    float2 TexCoord_id130;
    float4 PositionWS_id21;
    float3 normalWS_id18;
    float3 meshNormalWS_id16;
    float4 ShadingPosition_id0;
    float DepthVS_id22;
};
struct GS_OUTPUT 
{
    float2 TexCoord_id130 : TEXCOORD0;
    float4 PositionWS_id21 : POSITION_WS;
    float3 normalWS_id18 : NORMALWS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id141 : VERTEXID_ID141_SEM;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    uint VertexID_VS_id140;
    float4 ShadingPosition_id0;
    uint VertexID_id141;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id141 : VERTEXID_ID141_SEM;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    uint VertexID_VS_id140 : SV_VertexID;
};
struct Particle 
{
    float3 Velocity;
    float3 Position;
    float4 Color;
    float Drag;
    int Cycle;
    float Age;
    float LifeTime;
    int Id;
    float3 AxisY;
    float3 AxisX;
    float3 AxisZ;
    float3 Size3;
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
    float4 InputValue_id146;
    float InputValue_id154;
    float InputValue_id163;
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
StructuredBuffer<Particle> Particles_id142;
Texture2D EnvironmentLightingDFG_LUT_id175;
void AssignVertexID_id34(inout VS_STREAMS streams)
{
    streams.VertexID_id141 = streams.VertexID_VS_id140;
}
void PostTransformPosition_id39(inout VS_STREAMS streams)
{
    streams.ShadingPosition_id0 = streams.Position_id20;
    AssignVertexID_id34(streams);
}
void TransformPosition_id38()
{
}
void PreTransformPosition_id37()
{
}
float3 CubeVert_id35(in uint vertexID)
{
    uint b = 1 << vertexID;
    return float3((0xFA55A & b) != 0, (0x5A0F33 & b) != 0, (0x33330F & b) != 0) - 0.5;
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id37();
    TransformPosition_id38();
    PostTransformPosition_id39(streams);
}
void VSMain_id0()
{
}
void SpawnQuad_id41(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, Particle p)
{

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id130 = QuadUV_id144[i % 4].xy;
        float4 posWorld = float4(p.Position, 1);
        float3 qPos = CubeVert_id35(i);
        posWorld.xyz += qPos.x * p.AxisX * p.Size3.x;
        posWorld.xyz += qPos.y * p.AxisY * p.Size3.y;
        posWorld.xyz += qPos.z * p.AxisZ * p.Size3.z;
        posWorld = mul(posWorld, World_id31);
        streams.PositionWS_id21 = posWorld;
        streams.normalWS_id18 = normal;
        streams.meshNormalWS_id16 = normal;
        streams.ShadingPosition_id0 = mul(posWorld, ViewProjection_id28);
        streams.DepthVS_id22 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.TexCoord_id130 = streams.TexCoord_id130;
            output.PositionWS_id21 = streams.PositionWS_id21;
            output.normalWS_id18 = streams.normalWS_id18;
            output.meshNormalWS_id16 = streams.meshNormalWS_id16;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.DepthVS_id22 = streams.DepthVS_id22;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
}
void GenerateNormal_VS_id40()
{
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
[maxvertexcount(12)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.VertexID_id141 = input[0].VertexID_id141;
    Particle p = Particles_id142[streams.VertexID_id141];
    if (p.Cycle == 0 || p.Age < 0)
        return;
    float3 viewDir = Eye_id30.xyz - p.Position;
    if (dot(viewDir, p.AxisZ) > 0)
        SpawnQuad_id41(streams, 0, triangleStream, p.AxisZ, p);
    if (dot(viewDir, -p.AxisZ) > 0)
        SpawnQuad_id41(streams, 4, triangleStream, -p.AxisZ, p);
    if (dot(viewDir, p.AxisY) > 0)
        SpawnQuad_id41(streams, 8, triangleStream, p.AxisY, p);
    if (dot(viewDir, -p.AxisY) > 0)
        SpawnQuad_id41(streams, 12, triangleStream, -p.AxisY, p);
    if (dot(viewDir, p.AxisX) > 0)
        SpawnQuad_id41(streams, 16, triangleStream, p.AxisX, p);
    if (dot(viewDir, -p.AxisX) > 0)
        SpawnQuad_id41(streams, 20, triangleStream, -p.AxisX, p);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.VertexID_VS_id140 = __input__.VertexID_VS_id140;
    VSMain_id9(streams);
    GenerateNormal_VS_id40();
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.VertexID_id141 = streams.VertexID_id141;
    return __output__;
}

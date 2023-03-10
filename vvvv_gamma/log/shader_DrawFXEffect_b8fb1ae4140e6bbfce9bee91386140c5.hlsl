/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DrawFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMDrawParticleSprites_DrawFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer PerFrame [Size: 32]
@C    Col_id104 => SMDrawParticleSprites_DrawFX.Col
@C    ParticleSize_id105 => SMDrawParticleSprites_DrawFX.ParticleSize
cbuffer PerView [Size: 352]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    ParticlesBuffer_id103 => SMDrawParticleSprites_DrawFX.ParticlesBuffer [Stage: Geometry, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerFrame => PerFrame [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id75 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id45 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    SMDrawParticleSprites_DrawFX => ba0f50984f69ed67326d41a6db733561
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    SMGridParticleStruct => 1101aaa3dabe64320f382d670ccb694d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
***************************
*****     Stages      *****
***************************
@G    Vertex => aa5cdb717b8183a457b15178f11ba962
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// ID_ID107_SEM             0   x           0     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input_sgv v0.x, vertex_id
dcl_output o0.x
//
// Initial variable locations:
//   v0.x <- __input__; 
//   o0.x <- <VSMain return value>
//
#line 224 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DrawFXEffect_b8fb1ae4140e6bbfce9bee91386140c5.hlsl"
mov o0.x, v0.x
ret 
// Approximately 2 instruction slots used
@G    Geometry => 18c15527cd4a81be4eb2610ec931e6e4
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerFrame
// {
//
//   float4 Col_id104;                  // Offset:    0 Size:    16 [unused]
//   float ParticleSize_id105;          // Offset:   16 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//
// }
//
// Resource bind info for ParticlesBuffer_id103
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
// ParticlesBuffer_id103             texture  struct         r/o             t0      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerFrame                          cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// ID_ID107_SEM             0   x           0     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// PCOL_ID109_SEM           0   xyz         0     NONE   float   xyz 
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[12], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v[1][0].x
dcl_temps 5
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyz
dcl_output o1.xy
dcl_output_siv o2.xyzw, position
dcl_maxout 4
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input
//
#line 196 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DrawFXEffect_b8fb1ae4140e6bbfce9bee91386140c5.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyz, v[0][0].x, l(0), t0.xyzx  // r0.x <- p.Pos.x; r0.y <- p.Pos.y; r0.z <- p.Pos.z
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, v[0][0].x, l(36), t0.xxxx  // r1.x <- p.Size.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.yzw, v[0][0].x, l(48), t0.xxyz  // r1.y <- p.Col.x; r1.z <- p.Col.y; r1.w <- p.Col.z

#line 197
mul r2.z, r1.x, cb1[1].x

#line 200
mov r0.w, l(1.000000)
dp4 r3.x, r0.xyzw, cb0[12].xyzw  // r3.x <- posView.x
dp4 r3.y, r0.xyzw, cb0[13].xyzw  // r3.y <- posView.y
dp4 r3.z, r0.xyzw, cb0[14].xyzw  // r3.z <- posView.z

#line 205
mov r0.z, l(0)
mul r2.xy, r2.zzzz, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 206
mov r4.w, l(1.000000)

#line 202
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.x, r0.w, l(4)
  breakc_nz r1.x

#line 205
  mov r0.xy, icb[r0.w + 2].zwzz
  mad r4.xyz, r0.xyzx, r2.xyzx, r3.xyzx  // r4.x <- pos.x; r4.y <- pos.y; r4.z <- pos.z

#line 206
  dp4 r0.x, r4.xyzw, cb2[8].xyzw  // r0.x <- streams.ShadingPosition_id0.x
  dp4 r0.y, r4.xyzw, cb2[9].xyzw  // r0.y <- streams.ShadingPosition_id0.y
  dp4 r1.x, r4.xyzw, cb2[10].xyzw  // r1.x <- streams.ShadingPosition_id0.z
  dp4 r2.w, r4.xyzw, cb2[11].xyzw  // r2.w <- streams.ShadingPosition_id0.w

#line 213
  mov o0.xyz, r1.yzwy
  mov o1.xy, icb[r0.w + 0].xyxx
  mov o2.x, r0.x
  mov o2.y, r0.y
  mov o2.z, r1.x
  mov o2.w, r2.w
  emit_stream m0

#line 215
  iadd r0.w, r0.w, l(1)
endloop 

#line 216
ret 
// Approximately 31 instruction slots used
@G    Pixel => be2cc2d9c21cb6ea5dcba8940eb32072
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id75                sampler      NA          NA             s0      1 
// Texture0_id45                     texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// PCOL_ID109_SEM           0   xyz         0     NONE   float   xyz 
// TEXCOORD                 0   xy          1     NONE   float   xy  
// SV_Position              0   xyzw        2      POS   float       
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.pCol_id109.x; v0.y <- __input__.pCol_id109.y; v0.z <- __input__.pCol_id109.z; 
//   v1.x <- __input__.TexCoord_id93.x; v1.y <- __input__.TexCoord_id93.y; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 181 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DrawFXEffect_b8fb1ae4140e6bbfce9bee91386140c5.hlsl"
add r0.xy, v1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)  // r0.x <- l.x; r0.y <- l.y

#line 182
dp2 r0.x, r0.xyxx, r0.xyxx
lt r0.x, l(0.250000), r0.x

#line 184
discard_nz r0.x

#line 186
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0
mov r1.xyz, v0.xyzx
mov r1.w, l(1.000000)
mul o0.xyzw, r0.xyzw, r1.xyzw

#line 189
ret 
// Approximately 9 instruction slots used
***************************
*************************/
static const float3 QuadPositions_id42[4] = { float3(-1, 1, 0), float3(1, 1, 0), float3(-1, -1, 0), float3(1, -1, 0)};
static const float2 QuadUV_id43[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
struct PS_STREAMS 
{
    float2 TexCoord_id93;
    float3 pCol_id109;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float3 pCol_id109 : PCOL_ID109_SEM;
    float2 TexCoord_id93 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_STREAMS 
{
    uint Id_id107;
    float3 pCol_id109;
    float2 TexCoord_id93;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float3 pCol_id109 : PCOL_ID109_SEM;
    float2 TexCoord_id93 : TEXCOORD0;
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    uint Id_id107 : ID_ID107_SEM;
};
struct VS_STREAMS 
{
    uint VertexID_id106;
    uint Id_id107;
};
struct VS_OUTPUT 
{
    uint Id_id107 : ID_ID107_SEM;
};
struct VS_INPUT 
{
    uint VertexID_id106 : SV_VertexID;
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
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerFrame 
{
    float4 Col_id104;
    float ParticleSize_id105;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id46;
    float2 Texture1TexelSize_id48;
    float2 Texture2TexelSize_id50;
    float2 Texture3TexelSize_id52;
    float2 Texture4TexelSize_id54;
    float2 Texture5TexelSize_id56;
    float2 Texture6TexelSize_id58;
    float2 Texture7TexelSize_id60;
    float2 Texture8TexelSize_id62;
    float2 Texture9TexelSize_id64;
};
Texture2D Texture0_id45;
Texture2D Texture1_id47;
Texture2D Texture2_id49;
Texture2D Texture3_id51;
Texture2D Texture4_id53;
Texture2D Texture5_id55;
Texture2D Texture6_id57;
Texture2D Texture7_id59;
Texture2D Texture8_id61;
Texture2D Texture9_id63;
TextureCube TextureCube0_id65;
TextureCube TextureCube1_id66;
TextureCube TextureCube2_id67;
TextureCube TextureCube3_id68;
Texture3D Texture3D0_id69;
Texture3D Texture3D1_id70;
Texture3D Texture3D2_id71;
Texture3D Texture3D3_id72;
SamplerState Sampler_id73;
SamplerState PointSampler_id74 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id75 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id76 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id77 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id78 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id79 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id80 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id81 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id82 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id83;
SamplerState Sampler1_id84;
SamplerState Sampler2_id85;
SamplerState Sampler3_id86;
SamplerState Sampler4_id87;
SamplerState Sampler5_id88;
SamplerState Sampler6_id89;
SamplerState Sampler7_id90;
SamplerState Sampler8_id91;
SamplerState Sampler9_id92;
StructuredBuffer<SMGridParticle> ParticlesBuffer_id103;
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.pCol_id109 = __input__.pCol_id109;
    streams.TexCoord_id93 = __input__.TexCoord_id93;
    float2 l = streams.TexCoord_id93 - 0.5f;
    if (dot(l, l) > 0.25)
    {
        discard;
    }
    streams.ColorTarget_id2 = Texture0_id45.Sample(LinearSampler_id75, streams.TexCoord_id93) * float4(streams.pCol_id109, 1);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.Id_id107 = input[0].Id_id107;
    SMGridParticle p = ParticlesBuffer_id103[streams.Id_id107];
    float pSize = p.Size.x * ParticleSize_id105 * 0.5;
    float4 pPos = float4(p.Pos.xyz, 1);
    streams.pCol_id109 = p.Col;
    float4 posView = mul(pPos, WorldView_id32);

    for (int i = 0; i < 4; i++)
    {
        streams.TexCoord_id93 = QuadUV_id43[i].xy;
        float3 pos = posView.xyz + QuadPositions_id42[i].xyz * pSize;
        streams.ShadingPosition_id0 = mul(float4(pos, 1), Projection_id24);

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.pCol_id109 = streams.pCol_id109;
            output.TexCoord_id93 = streams.TexCoord_id93;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.VertexID_id106 = __input__.VertexID_id106;
    streams.Id_id107 = streams.VertexID_id106;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.Id_id107 = streams.Id_id107;
    return __output__;
}

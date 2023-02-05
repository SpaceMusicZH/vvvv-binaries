/**************************
***** Compiler Parameters *****
***************************
@P EffectName: Shader_1584877808
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
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    Shader_1584877808 => a426b1c764a43b6e4b92c8aacf6d77de
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
***************************
*****     Stages      *****
***************************
@G    Vertex => ed676a933b05f553da3026efb96cb09f
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
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[24], immediateIndexed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
//
// Initial variable locations:
//   v0.x <- __input__.Position_id14.x; v0.y <- __input__.Position_id14.y; v0.z <- __input__.Position_id14.z; v0.w <- __input__.Position_id14.w; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 151 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_Shader_1584877808_0dcb9c81b3389ed0a103758eacbd0d1e.hlsl"
dp4 o0.x, v0.xyzw, cb0[20].xyzw
dp4 o0.y, v0.xyzw, cb0[21].xyzw
dp4 o0.z, v0.xyzw, cb0[22].xyzw
dp4 o0.w, v0.xyzw, cb0[23].xyzw

#line 155
ret 
// Approximately 5 instruction slots used
@G    Pixel => dee5a798af8fa4d7e9843d595c1e24a8
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
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
dcl_output o0.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 145 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_Shader_1584877808_0dcb9c81b3389ed0a103758eacbd0d1e.hlsl"
mov o0.xyzw, l(1.000000,0,0,1.000000)
ret 
// Approximately 2 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
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
    float2 Texture0TexelSize_id38;
    float2 Texture1TexelSize_id40;
    float2 Texture2TexelSize_id42;
    float2 Texture3TexelSize_id44;
    float2 Texture4TexelSize_id46;
    float2 Texture5TexelSize_id48;
    float2 Texture6TexelSize_id50;
    float2 Texture7TexelSize_id52;
    float2 Texture8TexelSize_id54;
    float2 Texture9TexelSize_id56;
};
Texture2D Texture0_id37;
Texture2D Texture1_id39;
Texture2D Texture2_id41;
Texture2D Texture3_id43;
Texture2D Texture4_id45;
Texture2D Texture5_id47;
Texture2D Texture6_id49;
Texture2D Texture7_id51;
Texture2D Texture8_id53;
Texture2D Texture9_id55;
TextureCube TextureCube0_id57;
TextureCube TextureCube1_id58;
TextureCube TextureCube2_id59;
TextureCube TextureCube3_id60;
Texture3D Texture3D0_id61;
Texture3D Texture3D1_id62;
Texture3D Texture3D2_id63;
Texture3D Texture3D3_id64;
SamplerState Sampler_id65;
SamplerState PointSampler_id66 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id67 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id68 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id69 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id70 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id71 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id72 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id73 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id74 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id75;
SamplerState Sampler1_id76;
SamplerState Sampler2_id77;
SamplerState Sampler3_id78;
SamplerState Sampler4_id79;
SamplerState Sampler5_id80;
SamplerState Sampler6_id81;
SamplerState Sampler7_id82;
SamplerState Sampler8_id83;
SamplerState Sampler9_id84;
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    float4 result_1054 = float4(1, 0, 0, 1);
    streams.ColorTarget_id2 = result_1054;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    float4 result_1050 = mul(streams.Position_id14, WorldViewProjection_id34);
    streams.ShadingPosition_id0 = result_1050;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DrawFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin DrawDCMesh_DrawFX
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
cbuffer Globals [Size: 16]
@C    Color_id52 => DrawDCMesh_DrawFX.Color
***************************
******  Resources    ******
***************************
@R    Vertices_id50 => DrawDCMesh_DrawFX.Vertices [Stage: Vertex, Slot: (0-0)]
@R    Indices_id51 => DrawDCMesh_DrawFX.Indices [Stage: Vertex, Slot: (1-1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    DrawDCMesh_DrawFX => 4afb62f6989f34523944e878e23e5142
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    SDFVertex => a55fb6c0cb5db6eac29bd614045e195f
***************************
*****     Stages      *****
***************************
@G    Vertex => 7598db91e76267c1f5547d2e82dce636
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
// Resource bind info for Vertices_id50
// {
//
//   struct Vertex
//   {
//       
//       float3 position;               // Offset:    0
//       float3 normal;                 // Offset:   12
//
//   } $Element;                        // Offset:    0 Size:    24
//
// }
//
// Resource bind info for Indices_id51
// {
//
//   uint $Element;                     // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Vertices_id50                     texture  struct         r/o             t0      1 
// Indices_id51                      texture  struct         r/o             t1      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_InstanceID            0   x           0   INSTID    uint   x   
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
dcl_resource_structured t0, 24
dcl_resource_structured t1, 4
dcl_input_sgv v0.x, instance_id
dcl_output_siv o0.xyzw, position
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 76 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DrawFXEffect_ca7e525c583c563dcfc21993073460fe.hlsl"
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, v0.x, l(0), t1.xxxx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xyz, r0.x, l(0), t0.xyzx  // r0.x <- v.position.x; r0.y <- v.position.y; r0.z <- v.position.z

#line 78
mov r0.w, l(1.000000)
dp4 o0.x, r0.xyzw, cb0[20].xyzw
dp4 o0.y, r0.xyzw, cb0[21].xyzw
dp4 o0.z, r0.xyzw, cb0[22].xyzw
dp4 o0.w, r0.xyzw, cb0[23].xyzw

#line 81
ret 
// Approximately 8 instruction slots used
@G    Pixel => 6ed9768732e87d25611c5b15eaeced48
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float4 Color_id52;                 // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Globals                           cbuffer      NA          NA            cb0      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_output o0.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 66 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_DrawFXEffect_ca7e525c583c563dcfc21993073460fe.hlsl"
mul o0.xyzw, cb0[0].xyzw, l(4.000000, 4.000000, 4.000000, 4.000000)

#line 69
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
    uint InstanceID_id13;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    uint InstanceID_id13 : SV_InstanceID;
};
struct Vertex 
{
    float3 position;
    float3 normal;
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
    float NearClipPlane_id45 = 1.0f;
    float FarClipPlane_id46 = 100.0f;
    float2 ZProjection_id47;
    float2 ViewSize_id48;
    float AspectRatio_id49;
};
cbuffer Globals 
{
    float4 Color_id52;
};
StructuredBuffer<Vertex> Vertices_id50;
StructuredBuffer<uint> Indices_id51;
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.ColorTarget_id2 = Color_id52 * 4;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    uint id = streams.InstanceID_id13;
    Vertex v = Vertices_id50[Indices_id51[id]];
    float3 pos = v.position;
    streams.ShadingPosition_id0 = mul(float4(pos, 1), WorldViewProjection_id34);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}

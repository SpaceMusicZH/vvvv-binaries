/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin BlendMixer_TextureFX [{BlendResult = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_3> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx1,PerUpdate,ObjectSampler_fx2,PerUpdate> [{TexCd = GetSemanticFloat2<SemanticValue_4,TEXCOORD0>}]}], ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_7> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx5,PerUpdate,ObjectSampler_fx6,PerUpdate> [{TexCd = GetSemanticFloat2<SemanticValue_4,TEXCOORD0>}]}], mixin AssignVarFloat4<BlendAverage_8> [{Value = mixin ColorToFloat4 [{Value = mixin ComputeColorAverage [{color1 = mixin Float4ToColor [{Value = GetVarFloat4<TextureValue_3>}]}, {color2 = mixin Float4ToColor [{Value = GetVarFloat4<TextureValue_7>}]}]}]}]]}]}, {Value = GetVarFloat4<BlendAverage_8>}]}, {Fader = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_0> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]]}]}, {Value = GetVarFloat<Input_0>}]}]
@P Fader: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_0> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]]}]}, {Value = GetVarFloat<Input_0>}]
@P BlendResult: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_3> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx1,PerUpdate,ObjectSampler_fx2,PerUpdate> [{TexCd = GetSemanticFloat2<SemanticValue_4,TEXCOORD0>}]}], ComputeVoid, ComputeVoid, mixin AssignVarFloat4<TextureValue_7> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx5,PerUpdate,ObjectSampler_fx6,PerUpdate> [{TexCd = GetSemanticFloat2<SemanticValue_4,TEXCOORD0>}]}], mixin AssignVarFloat4<BlendAverage_8> [{Value = mixin ColorToFloat4 [{Value = mixin ComputeColorAverage [{color1 = mixin Float4ToColor [{Value = GetVarFloat4<TextureValue_3>}]}, {color2 = mixin Float4ToColor [{Value = GetVarFloat4<TextureValue_7>}]}]}]}]]}]}, {Value = GetVarFloat4<BlendAverage_8>}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 16]
@C    InputValue_id111 => ShaderFX.InputValueFloat
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Sampler1_id53 => Texturing.Sampler1 [Stage: Pixel, Slot: (1-1)]
@R    DynamicSampler_id91 => ObjectSampler_fx2 [Stage: Pixel, Slot: (2-2)]
@R    DynamicSampler_id97 => ObjectSampler_fx6 [Stage: Pixel, Slot: (3-3)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    DynamicTexture_id90 => ObjectTexture_fx1 [Stage: Pixel, Slot: (2-2)]
@R    DynamicTexture_id96 => ObjectTexture_fx5 [Stage: Pixel, Slot: (3-3)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    BlendMixer_TextureFX => e5426763e4c4094102c9ca162a487c3a
@S    TextureFX => 27bb4f1f808a5eedf6dfeaa75c669c29
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    SampleTextureFloat4 => 7322e565b887529ba33f14140cd2fe85
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    DeclTexture => 446d0ef18094b3b6440125d6e9cb6306
@S    DeclSampler => 2b4d3075cdc21c655fee5c274c8566ed
@S    GetSemanticFloat2 => 72d1b2113bce4aac1e03baaeaa9db138
@S    SemanticFloat2 => 7d018e6f29de96f6b830ab77f6b8985a
@S    ColorToFloat4 => 42769f8f32cf7dd1376eab353d531026
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    ComputeColorAverage => ee0484f1510a94036f4d1855a1ef804d
@S    BlendUtils => 67a32a9684176bd2b324dc8dc3a8e82a
@S    Float4ToColor => c8460cd5d71b5fac69b6f550d07a4ce7
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
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
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 328 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_TextureFXEffect_f727b70c0835c7abe3fb674e73ce488c.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 332
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 8cb02611cb52baaf5f780a2de5c9cfae
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float InputValue_id111;            // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler0_id52                     sampler      NA          NA             s0      1 
// Sampler1_id53                     sampler      NA          NA             s1      1 
// DynamicSampler_id91               sampler      NA          NA             s2      1 
// DynamicSampler_id97               sampler      NA          NA             s3      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Texture1_id16                     texture  float4          2d             t1      1 
// DynamicTexture_id90               texture  float4          2d             t2      1 
// DynamicTexture_id96               texture  float4          2d             t3      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 195 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_TextureFXEffect_f727b70c0835c7abe3fb674e73ce488c.hlsl"
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t2.xyzw, s2  // r0.x <- <Compute_id34 return value>.x; r0.y <- <Compute_id34 return value>.y; r0.z <- <Compute_id34 return value>.z; r0.w <- <Compute_id34 return value>.w

#line 156
add r1.x, -r0.w, l(1.000000)

#line 191
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t3.xyzw, s3  // r2.x <- <Compute_id38 return value>.x; r2.y <- <Compute_id38 return value>.y; r2.z <- <Compute_id38 return value>.z; r2.w <- <Compute_id38 return value>.w

#line 156
mul r1.x, r1.x, r2.w
mul r1.xyz, r2.xyzx, r1.xxxx

#line 170
add r2.xyz, r0.xyzx, r2.xyzx
mul r2.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r2.x <- averageColor.x; r2.y <- averageColor.y; r2.z <- averageColor.z

#line 156
mul r1.w, r0.w, r2.w
mad r1.xyz, r1.wwww, r2.xyzx, r1.xyzx
add r1.w, -r2.w, l(1.000000)
mad r2.w, r1.w, r0.w, r2.w  // r2.w <- <BasicBlend_id76 return value>.w
mul r0.w, r0.w, r1.w
mad r2.xyz, r0.wwww, r0.xyzx, r1.xyzx  // r2.x <- <BasicBlend_id76 return value>.x; r2.y <- <BasicBlend_id76 return value>.y; r2.z <- <BasicBlend_id76 return value>.z

#line 280
add r0.x, cb0[0].x, cb0[0].x  // r0.x <- mix

#line 281
mov_sat r0.x, r0.x
add r0.x, -r0.x, l(1.000000)  // r0.x <- mixBack

#line 282
mad_sat r0.y, cb0[0].x, l(2.000000), l(-1.000000)  // r0.y <- mixFront

#line 283
add r0.z, -r0.y, r0.x
add r0.z, -|r0.z|, l(1.000000)  // r0.z <- mixInter

#line 285
mul r1.xyzw, r2.xyzw, r0.zzzz  // r1.x <- interPart.x; r1.y <- interPart.y; r1.z <- interPart.z; r1.w <- interPart.w

#line 305
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r2.x <- <InTex0_id26 return value>.x; r2.y <- <InTex0_id26 return value>.y; r2.z <- <InTex0_id26 return value>.z; r2.w <- <InTex0_id26 return value>.w

#line 287
mad r1.xyzw, r0.xxxx, r2.xyzw, r1.xyzw

#line 301
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t1.xyzw, s1, l(0.000000)  // r2.x <- <InTex1_id27 return value>.x; r2.y <- <InTex1_id27 return value>.y; r2.z <- <InTex1_id27 return value>.z; r2.w <- <InTex1_id27 return value>.w

#line 287
mad o0.xyzw, r0.yyyy, r2.xyzw, r1.xyzw

#line 321
ret 
// Approximately 25 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 TextureValue_3_id89;
    float4 TextureValue_7_id95;
    float4 BlendAverage_8_id100;
    float Input_0_id110;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer PerUpdate 
{
    float InputValue_id111;
};
cbuffer PerView 
{
    float NearClipPlane_id74 = 1.0f;
    float FarClipPlane_id75 = 100.0f;
    float2 ZProjection_id76;
    float2 ViewSize_id77;
    float AspectRatio_id78;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
Texture2D DynamicTexture_id90;
SamplerState DynamicSampler_id91;
Texture2D DynamicTexture_id96;
SamplerState DynamicSampler_id97;
float4 Compute_id43(inout PS_STREAMS streams)
{
    return streams.TextureValue_7_id95;
}
float4 Compute_id39(inout PS_STREAMS streams)
{
    return streams.TextureValue_3_id89;
}
float4 BasicBlend_id76(float4 backColor, float4 frontColor, float3 interColor)
{
    return float4(frontColor.a * backColor.a * interColor + frontColor.a * (1.0f - backColor.a) * frontColor.rgb + (1.0f - frontColor.a) * backColor.a * backColor.rgb, lerp(frontColor.a, 1.0f, backColor.a));
}
float4 Compute_id46(inout PS_STREAMS streams)
{
    return Compute_id43(streams);
}
float4 Compute_id42(inout PS_STREAMS streams)
{
    return Compute_id39(streams);
}
float4 Compute_id48(inout PS_STREAMS streams)
{
    float4 backColor = Compute_id42(streams);
    float4 frontColor = Compute_id46(streams);
    float3 averageColor = (frontColor.rgb + backColor.rgb) * 0.5f;
    return BasicBlend_id76(backColor, frontColor, averageColor);
}
float2 Compute_id35(inout PS_STREAMS streams)
{
    return streams.TexCoord_id62;
}
float2 Compute_id31(inout PS_STREAMS streams)
{
    return streams.TexCoord_id62;
}
float Compute_id67()
{
    return InputValue_id111;
}
float4 Compute_id50(inout PS_STREAMS streams)
{
    return Compute_id48(streams);
}
float4 Compute_id38(inout PS_STREAMS streams)
{
    return DynamicTexture_id96.Sample(DynamicSampler_id97, Compute_id35(streams));
}
float4 Compute_id34(inout PS_STREAMS streams)
{
    return DynamicTexture_id90.Sample(DynamicSampler_id91, Compute_id31(streams));
}
void Compute_id70(inout PS_STREAMS streams)
{
    streams.Input_0_id110 = Compute_id67();
}
void Compute_id61(inout PS_STREAMS streams)
{
    streams.BlendAverage_8_id100 = Compute_id50(streams);
}
void Compute_id59(inout PS_STREAMS streams)
{
    streams.TextureValue_7_id95 = Compute_id38(streams);
}
void Compute_id57()
{
}
void Compute_id56()
{
}
void Compute_id55(inout PS_STREAMS streams)
{
    streams.TextureValue_3_id89 = Compute_id34(streams);
}
void Compute_id53()
{
}
void Compute_id52()
{
}
void Compute_id51()
{
}
float Compute_id73(inout PS_STREAMS streams)
{
    return streams.Input_0_id110;
}
void Compute_id72(inout PS_STREAMS streams)
{

    {
        Compute_id70(streams);
    }
}
float4 Compute_id64(inout PS_STREAMS streams)
{
    return streams.BlendAverage_8_id100;
}
void Compute_id63(inout PS_STREAMS streams)
{

    {
        Compute_id51();
    }

    {
        Compute_id52();
    }

    {
        Compute_id53();
    }

    {
        Compute_id55(streams);
    }

    {
        Compute_id56();
    }

    {
        Compute_id57();
    }

    {
        Compute_id59(streams);
    }

    {
        Compute_id61(streams);
    }
}
float4 Lerp3_id16(float4 backColor, float4 interColor, float4 frontColor, float mix)
{
    mix += mix;
    float mixBack = 1 - saturate(mix);
    float mixFront = saturate(mix - 1);
    float mixInter = 1 - abs(mixBack - mixFront);
    float4 backPart = mixBack * backColor;
    float4 interPart = mixInter * interColor;
    float4 frontPart = mixFront * frontColor;
    return backPart + interPart + frontPart;
}
float Compute_id30(inout PS_STREAMS streams)
{
    Compute_id72(streams);
    return Compute_id73(streams);
}
float4 Compute_id29(inout PS_STREAMS streams)
{
    Compute_id63(streams);
    return Compute_id64(streams);
}
float4 InTex1_id27(inout PS_STREAMS streams)
{
    return Texture1_id16.SampleLevel(Sampler1_id53, streams.TexCoord_id62, 0);
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 backColor = InTex0_id26(streams);
    float4 frontColor = InTex1_id27(streams);
    float4 interColor = Compute_id29(streams);
    return Lerp3_id16(backColor, interColor, frontColor, Compute_id30(streams));
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id28(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}

/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Dilate_Color_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 16]
@C    InputValue_id93 => ShaderFX.InputValueFloat4
cbuffer PerView [Size: 32]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
cbuffer Globals [Size: 112]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    Size_id88 => Dilate_Color_TextureFX.Size
@C    Separation_id89 => Dilate_Color_TextureFX.Separation
@C    MinThreshold_id90 => Dilate_Color_TextureFX.MinThreshold
@C    MaxThreshold_id91 => Dilate_Color_TextureFX.MaxThreshold
@C    Shape_id92 => Dilate_Color_TextureFX.Shape
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    Dilate_Color_TextureFX => 3adc9b6b33d4949fcc4ca3c14e11b98b
@S    FilterBase => 5bd9cb7e7eb80aa436e148c74d845c07
@S    TextureFX => 27bb4f1f808a5eedf6dfeaa75c669c29
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
#line 218 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_fd83ad080840c723b7257baa130b5f76.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 222
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => fb4e2712251e5eb1365bb30a14e49845
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id93;            // Offset:    0 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float NearClipPlane_id74;          // Offset:    0 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id75;           // Offset:    4 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id76;           // Offset:    8 Size:     8 [unused]
//   float2 ViewSize_id77;              // Offset:   16 Size:     8
//   float AspectRatio_id78;            // Offset:   24 Size:     4 [unused]
//
// }
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   int Size_id88;                     // Offset:   80 Size:     4
//      = 0x00000001 
//   float Separation_id89;             // Offset:   84 Size:     4
//      = 0x3f800000 
//   float MinThreshold_id90;           // Offset:   88 Size:     4
//      = 0x3e4ccccd 
//   float MaxThreshold_id91;           // Offset:   92 Size:     4
//      = 0x3f000000 
//   uint Shape_id92;                   // Offset:   96 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler0_id52                     sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
// Globals                           cbuffer      NA          NA            cb2      1 
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
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[7], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 197 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_TextureFXEffect_fd83ad080840c723b7257baa130b5f76.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 150
ige r1.x, l(0), cb2[5].x
ilt r1.y, l(64), cb2[5].x
or r1.x, r1.y, r1.x

#line 154
if_z r1.x

#line 157
  ineg r1.x, cb2[5].x  // r1.x <- i

#line 175
  itof r1.y, cb2[5].x

#line 157
  mov r2.xyz, r0.xyzx  // r2.x <- cmx.x; r2.y <- cmx.y; r2.z <- cmx.z
  mov r1.z, cb2[6].x  // r1.z <- Shape_id92; r1.z <- Shape_id92; r1.z <- Shape_id92
  mov r1.w, l(0)  // r1.w <- mx
  mov r2.w, r1.x  // r2.w <- i
  loop 
    ilt r3.x, cb2[5].x, r2.w
    breakc_nz r3.x

#line 169
    imax r3.x, -r2.w, r2.w

#line 175
    itof r4.xz, r2.wwww

#line 160
    mov r5.yzw, r2.xxyz  // r5.y <- cmx.x; r5.z <- cmx.y; r5.w <- cmx.z
    mov r3.y, r1.z  // r3.y <- Shape_id92; r3.y <- Shape_id92; r3.y <- Shape_id92
    mov r5.x, r1.w  // r5.x <- mx
    mov r3.z, r1.x  // r3.z <- j
    loop 
      ilt r3.w, cb2[5].x, r3.z
      breakc_nz r3.w

#line 163
      switch r3.y

#line 166
        case l(0)

#line 167
        mov r3.w, l(0)  // r3.w <- skip
        break 

#line 168
        case l(1)

#line 169
        imax r6.x, -r3.z, r3.z
        iadd r6.x, -r6.x, cb2[5].x
        ilt r3.w, r6.x, r3.x  // r3.w <- skip

#line 173
        break 

#line 174
        case l(2)

#line 175
        itof r4.w, r3.z
        dp2 r4.w, r4.zwzz, r4.zwzz
        sqrt r4.w, r4.w
        lt r3.w, r1.y, r4.w  // r3.w <- skip

#line 179
        break 

#line 180
        default 
        mov r3.w, l(0)  // r3.w <- skip
        break 
      endswitch   // r3.w <- skip

#line 181
      if_z r3.w

#line 183
        itof r4.y, r3.z
        mul r4.yw, r4.xxxy, cb2[5].yyyy
        div r4.yw, r4.yyyw, cb1[1].xxxy
        add r4.yw, r4.yyyw, v1.xxxy
        sample_l_indexable(texture2d)(float,float,float,float) r6.yzw, r4.ywyy, t0.wxyz, s0, l(0.000000)  // r6.y <- c.x; r6.z <- c.y; r6.w <- c.z

#line 184
        dp3 r6.x, r6.yzwy, l(0.300000, 0.590000, 0.110000, 0.000000)  // r6.x <- mxt

#line 185
        lt r3.w, r5.x, r6.x

#line 189
        movc r5.xyzw, r3.wwww, r6.xyzw, r5.xyzw

#line 190
      endif 

#line 191
      iadd r3.z, r3.z, l(1)
    endloop 
    mov r2.xyz, r5.yzwy  // r2.x <- cmx.x; r2.y <- cmx.y; r2.z <- cmx.z
    mov r1.w, r5.x  // r1.w <- mx

#line 192
    iadd r2.w, r2.w, l(1)
  endloop   // r1.z <- Shape_id92; r1.z <- Shape_id92; r1.z <- Shape_id92

#line 193
  add r1.x, -cb2[5].z, cb2[5].w
  add r1.y, r1.w, -cb2[5].z
  div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r1.x
  mul_sat r1.x, r1.x, r1.y
  mad r1.y, r1.x, l(-2.000000), l(3.000000)
  mul r1.x, r1.x, r1.x
  mul r1.x, r1.x, r1.y
  add r1.yzw, -r0.xxyz, r2.xxyz
  mad r1.xyz, r1.xxxx, r1.yzwy, r0.xyzx  // r1.x <- <Filter_id29 return value>.x; r1.y <- <Filter_id29 return value>.y; r1.z <- <Filter_id29 return value>.z
else 
  mov r1.xyz, r0.xyzx  // r1.x <- <Filter_id29 return value>.x; r1.y <- <Filter_id29 return value>.y; r1.z <- <Filter_id29 return value>.z
endif 

#line 202
add r1.xyz, -r0.xyzx, r1.xyzx
mov r1.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 211
ret 
// Approximately 74 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id62;
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
    float4 InputValue_id93;
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
    int Size_id88 = 1;
    float Separation_id89 = 1;
    float MinThreshold_id90 = 0.2f;
    float MaxThreshold_id91 = 0.5f;
    uint Shape_id92;
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
float4 Compute_id30()
{
    return InputValue_id93;
}
float4 Filter_id29(inout PS_STREAMS streams, float4 tex0col)
{
    float2 texSize = ViewSize_id77;
    if (Size_id88 <= 0 || Size_id88 > 64)
    {
        return tex0col;
    }
    float mx = 0.0;
    float4 cmx = tex0col;

    for (int i = -Size_id88; i <= Size_id88; ++i)
    {

        for (int j = -Size_id88; j <= Size_id88; ++j)
        {
            bool skip = false;
            switch (Shape_id92)

            {
                case 0:
                    break;
                case 1:
                    if (!(abs(i) <= Size_id88 - abs(j)))
                    {
                        skip = true;
                    }
                    break;
                case 2:
                    if (!(distance(float2(i, j), float2(0, 0)) <= Size_id88))
                    {
                        skip = true;
                    }
                    break;
            }
            if (!skip)
            {
                float4 c = Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62 + float2(i, j) * Separation_id89 / texSize, 0);
                float mxt = dot(c.rgb, float3(0.3, 0.59, 0.11));
                if (mxt > mx)
                {
                    mx = mxt;
                    cmx = c;
                }
            }
        }
    }
    return float4(lerp(tex0col.rgb, cmx.rgb, smoothstep(MinThreshold_id90, MaxThreshold_id91, mx)), tex0col.a);
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id29(streams, col), Compute_id30());
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

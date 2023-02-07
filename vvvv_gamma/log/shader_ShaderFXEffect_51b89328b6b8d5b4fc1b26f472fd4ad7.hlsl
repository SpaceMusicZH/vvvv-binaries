/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin BoxGeomExt_ShaderFX [{ShadingColor0 = ComputeColor}]
@P ShadingColor0: ComputeColor
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    BoxGeomExt_ShaderFX => f66a529b0125a59b10f759be9e98e82a
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalBase => b2b31addde884722f942622026837c39
@S    NormalUpdate => 6fd3c9b8fa943d9951400645fe40502e
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    VertexIDStream => 9d1d889df6ab3d2e141f4e6e5d369333
@S    ParticleBuffer => a64a4612fd198ca64a3658584f8219de
@S    TransformUtils => 651146ed53d019a2c2c72b489f9cff84
@S    HappyTransform => 40e380fb8141f7a8a6b741a8bd03a993
***************************
*************************/
static const float2 QuadUV_id101[4] = { float2(0, 1), float2(1, 1), float2(0, 0), float2(1, 0)};
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
struct GS_STREAMS 
{
    uint VertexID_id97;
    float4 PositionWS_id16;
    float3 PSize_id100;
    float2 TexCoord_id86;
    float3 normalWS_id21;
    float3 meshNormalWS_id19;
    float DepthVS_id17;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id97 : VERTEXID_ID97_SEM;
};
struct VS_STREAMS 
{
    float4 Position_id15;
    uint VertexID_VS_id96;
    float4 ShadingPosition_id0;
    uint VertexID_id97;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    uint VertexID_id97 : VERTEXID_ID97_SEM;
};
struct VS_INPUT 
{
    float4 Position_id15 : POSITION;
    uint VertexID_VS_id96 : SV_VertexID;
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
    float4x4 World_id30;
    float4x4 WorldInverse_id31;
    float4x4 WorldInverseTranspose_id32;
    float4x4 WorldView_id33;
    float4x4 WorldViewInverse_id34;
    float4x4 WorldViewProjection_id35;
    float3 WorldScale_id36;
    float4 EyeMS_id37;
};
cbuffer PerView 
{
    float4x4 View_id23;
    float4x4 ViewInverse_id24;
    float4x4 Projection_id25;
    float4x4 ProjectionInverse_id26;
    float4x4 ViewProjection_id27;
    float2 ProjScreenRay_id28;
    float4 Eye_id29;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id39;
    float2 Texture1TexelSize_id41;
    float2 Texture2TexelSize_id43;
    float2 Texture3TexelSize_id45;
    float2 Texture4TexelSize_id47;
    float2 Texture5TexelSize_id49;
    float2 Texture6TexelSize_id51;
    float2 Texture7TexelSize_id53;
    float2 Texture8TexelSize_id55;
    float2 Texture9TexelSize_id57;
};
Texture2D Texture0_id38;
Texture2D Texture1_id40;
Texture2D Texture2_id42;
Texture2D Texture3_id44;
Texture2D Texture4_id46;
Texture2D Texture5_id48;
Texture2D Texture6_id50;
Texture2D Texture7_id52;
Texture2D Texture8_id54;
Texture2D Texture9_id56;
TextureCube TextureCube0_id58;
TextureCube TextureCube1_id59;
TextureCube TextureCube2_id60;
TextureCube TextureCube3_id61;
Texture3D Texture3D0_id62;
Texture3D Texture3D1_id63;
Texture3D Texture3D2_id64;
Texture3D Texture3D3_id65;
SamplerState Sampler_id66;
SamplerState PointSampler_id67 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id68 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id69 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id70 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id71 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id72 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id73 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id74 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id75 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id76;
SamplerState Sampler1_id77;
SamplerState Sampler2_id78;
SamplerState Sampler3_id79;
SamplerState Sampler4_id80;
SamplerState Sampler5_id81;
SamplerState Sampler6_id82;
SamplerState Sampler7_id83;
SamplerState Sampler8_id84;
SamplerState Sampler9_id85;
StructuredBuffer<Particle> Particles_id98;
float4 Compute_id58()
{
    return 0;
}
float4 Shading_id2()
{
    return Compute_id58();
}
void AssignVertexID_id18(inout VS_STREAMS streams)
{
    streams.VertexID_id97 = streams.VertexID_VS_id96;
}
float4 Shading_id16()
{
    return Shading_id2();
}
void PSMain_id1()
{
}
float3 CubeVert_id49(in uint vertexID)
{
    uint b = 1 << vertexID;
    return float3((0xFA55A & b) != 0, (0x5A0F33 & b) != 0, (0x33330F & b) != 0) - 0.5;
}
void PostTransformPosition_id53(inout VS_STREAMS streams)
{
    streams.ShadingPosition_id0 = streams.Position_id15;
    AssignVertexID_id18(streams);
}
void TransformPosition_id52()
{
}
void PreTransformPosition_id51()
{
}
void GenerateNormal_VS_id54()
{
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id16();
}
void GenerateNormal_PS_id5()
{
}
void SpawnQuad_id55(inout GS_STREAMS streams, uint start, inout TriangleStream<GS_OUTPUT> triangleStream, float3 normal, Particle p, float3 AxisX, float3 AxisY, float3 AxisZ)
{

    for (uint i = start; i < start + 4; i++)
    {
        streams.TexCoord_id86 = QuadUV_id101[i % 4].xy;
        float4 posWorld = float4(p.Position, 1);
        float3 qPos = CubeVert_id49(i);
        posWorld.xyz += qPos.x * AxisX * streams.PSize_id100.x;
        posWorld.xyz += qPos.y * AxisY * streams.PSize_id100.y;
        posWorld.xyz += qPos.z * AxisZ * streams.PSize_id100.z;
        posWorld = mul(posWorld, World_id30);
        streams.PositionWS_id16 = posWorld;
        streams.normalWS_id21 = normal;
        streams.meshNormalWS_id19 = normal;
        streams.ShadingPosition_id0 = mul(posWorld, ViewProjection_id27);
        streams.DepthVS_id17 = streams.ShadingPosition_id0.w;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
    }
    triangleStream.RestartStrip();
}
float3x3 rot3x3_id28(float pitch, float yaw, float roll)
{
    float3 z = float3(-pitch, yaw, -roll) * acos(-1) * 2;
    float3 x = cos(z), y = sin(z);
    return float3x3(x.y * x.z + y.x * y.y * y.z, -x.x * y.z, y.x * x.y * y.z - y.y * x.z, x.y * y.z - y.x * y.y * x.z, x.x * x.z, -y.y * y.z - y.x * x.y * x.z, x.x * y.y, y.x, x.x * x.y);
}
void BaseTransformVS_id15(inout VS_STREAMS streams)
{
    PreTransformPosition_id51();
    TransformPosition_id52();
    PostTransformPosition_id53(streams);
}
void VSMain_id10()
{
    VSMain_id0();
    GenerateNormal_VS_id54();
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    GenerateNormal_PS_id5();
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(12)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.VertexID_id97 = input[0].VertexID_id97;
    uint id = streams.VertexID_id97;
    Particle p = Particles_id98[id];
    streams.PositionWS_id16 = float4(p.Pos.xyz, 1);
    streams.PSize_id100 = p.Size3;
    if (dot(streams.PSize_id100, streams.PSize_id100) <= 0)
        return;
    float3x3 or = rot3x3_id28(p.Rot);
    float3 AxisX = or[0];
    float3 AxisY = or[1];
    float3 AxisZ = or[2];
    float3 viewDir = Eye_id29.xyz - p.Pos;
    if (dot(viewDir, AxisZ) > 0)
        SpawnQuad_id55(streams, 0, triangleStream, AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisZ) > 0)
        SpawnQuad_id55(streams, 4, triangleStream, -AxisZ, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisY) > 0)
        SpawnQuad_id55(streams, 8, triangleStream, AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisY) > 0)
        SpawnQuad_id55(streams, 12, triangleStream, -AxisY, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, AxisX) > 0)
        SpawnQuad_id55(streams, 16, triangleStream, AxisX, p, AxisX, AxisY, AxisZ);
    if (dot(viewDir, -AxisX) > 0)
        SpawnQuad_id55(streams, 20, triangleStream, -AxisX, p, AxisX, AxisY, AxisZ);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id15 = __input__.Position_id15;
    streams.VertexID_VS_id96 = __input__.VertexID_VS_id96;
    VSMain_id10();
    BaseTransformVS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.VertexID_id97 = streams.VertexID_id97;
    return __output__;
}

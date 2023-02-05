/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin ParticleColor_ShaderFX
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    ParticleColor_ShaderFX => 19d01b8d73ddb40ea5353bc362712568
@S    ComputeFloat4 => bc345c7d961ff4b1766c5b1d5e15bd5a
@S    ParticleProvider => 1e5c6603fb751c6c541c9bf7d22a6ec3
@S    ParticleBuffer => a64a4612fd198ca64a3658584f8219de
@S    VertexIDStream => 9d1d889df6ab3d2e141f4e6e5d369333
***************************
*****     Stages      *****
***************************
@G    Vertex => 7ae935036a1b3058f70dafa629ea5dea
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
vs_5_0
dcl_globalFlags refactoringAllowed

#line 26 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_60bd53df84e2f73b8e5e60683b395671.hlsl"
ret 
// Approximately 1 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
};
struct VS_INPUT 
{
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
StructuredBuffer<Particle> Particles_id14;
void VSMain()
{
    VS_STREAMS streams = (VS_STREAMS)0;
}

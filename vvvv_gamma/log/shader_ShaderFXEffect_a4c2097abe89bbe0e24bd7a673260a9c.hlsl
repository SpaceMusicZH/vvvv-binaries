/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin GetItemFloat3_ShaderFX
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    GetItemFloat3_ShaderFX => fa433318e4b2ae139dcc8a47326a302f
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
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

#line 11 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_ShaderFXEffect_a4c2097abe89bbe0e24bd7a673260a9c.hlsl"
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
Buffer<float3> Values_id16;
void VSMain()
{
    VS_STREAMS streams = (VS_STREAMS)0;
}
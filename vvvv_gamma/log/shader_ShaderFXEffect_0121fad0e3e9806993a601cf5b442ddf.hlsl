/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMQuantize_ShaderFX [{Stepsize = InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>}, {Value = InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>}]
@P Value: InputFloat3<ShaderFX.InputValueFloat3,PerUpdate>
@P Stepsize: InputFloat3<ShaderFX.InputValueFloat3.i1,PerUpdate>
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    SMQuantize_ShaderFX => 6f802e18828f3bca92ce15a0906e3ec0
@S    ComputeFloat3 => fcd85992058d53e05e3805fecfe8c7a7
@S    InputFloat3 => 8982608ad2ca3465dcfa300c570359d5
@S    DeclFloat3 => f8ad0be4bea340b9223aeec02eb4c744
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

#line 15 "H:\JHH_SpaceMusic\SpaceMusicZH\vvvv-binaries\vvvv_gamma\log\shader_ShaderFXEffect_0121fad0e3e9806993a601cf5b442ddf.hlsl"
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
cbuffer PerUpdate 
{
    float3 InputValue_id16;
    float3 InputValue_id17;
};
void VSMain()
{
    VS_STREAMS streams = (VS_STREAMS)0;
}

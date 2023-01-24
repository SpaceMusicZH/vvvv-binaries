/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin SMMidiSelectValue_ShaderFX [{MidiValues = SMMidiNoteDataProvider}, {Selection = InputUInt<ShaderFX.InputValueUInt,PerUpdate>}]
@P MidiValues: SMMidiNoteDataProvider
@P Selection: InputUInt<ShaderFX.InputValueUInt,PerUpdate>
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    SMMidiSelectValue_ShaderFX => c77373c891111f8b45fb62108518eee4
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    SMMidiNoteDataStruct => f5634bf05bf031b62eb5384e713d4be4
@S    SMMidiNoteDataProvider => 0a6556aafce0f134819881a1893f9c26
@S    ComputeUInt => 707f4166cd9f83784b42c78a0cc57287
@S    InputUInt => e8bcca0c5de594d673cd9669b7bdad68
@S    DeclUInt => a5c3b92d01d17f67ecdac3662ed6737d
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

#line 44 "C:\Program Files\vvvv\vvvv_gamma_2022.5.0-0485-g8f46e4a34a\log\shader_ShaderFXEffect_4ab578f72e42a1c6f6ce49f41b7a04da.hlsl"
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
struct SMMidiNoteData 
{
    float Empty;
    float StartTime;
    float Note;
    float Velocity;
    float Length;
    float Channel;
    float Constant;
    float Id;
    float TrackId;
    float ModWheel;
    float PitchBend;
    float Random;
};
struct SMMidiNoteDataFloat 
{
    float Empty;
    float StartTime;
    float Note;
    float Velocity;
    float Length;
    float Channel;
    float Constant;
    float Id;
    float TrackId;
    float ModWheel;
    float PitchBend;
    float Random;
};
cbuffer PerUpdate 
{
    uint InputValue_id16;
};
void VSMain()
{
    VS_STREAMS streams = (VS_STREAMS)0;
}
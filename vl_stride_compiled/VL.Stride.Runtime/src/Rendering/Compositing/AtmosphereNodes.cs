using Stride.Core.Mathematics;
using Stride.Graphics;
using Stride.Rendering.Lights;
using System.Collections.Generic;
using TR.Stride.Atmosphere;
using VL.Core;
using VL.Stride.Rendering.Lights;

namespace VL.Stride.Rendering.Compositing
{
    static class AtmosphereNodes
    {
        public static IEnumerable<IVLNodeDescription> GetNodeDescriptions(IVLNodeDescriptionFactory factory)
        {
            var renderingCategory = "Stride.Rendering";
            var renderingCategoryAdvanced = $"{renderingCategory}.Advanced";

            // Sub render features for mesh render feature
            var renderFeaturesCategory = $"{renderingCategoryAdvanced}.RenderFeatures";

            // Light renderers - make enum
            var lightsCategory = $"{renderingCategoryAdvanced}.Light";

            var lightComponentCategory = "Stride.Lights.Advanced";
            yield return LightNodes.NewDirectLightNode<AtmosphereLightDirectional>(factory, lightComponentCategory)
                .AddCachedInput(nameof(AtmosphereLightDirectional.Atmosphere), x => x.Atmosphere, (x, v) => x.Atmosphere = v, new AtmosphereComponent());

            yield return factory.NewComponentNode<AtmosphereComponent>(lightComponentCategory)
                .AddInput(nameof(AtmosphereComponent.Sun), x => x.Sun, (x, v) => x.Sun = v)
                .AddInput(nameof(AtmosphereComponent.Sky), x => x.Sky, (x, v) => x.Sky = v)
                .AddInput(nameof(AtmosphereComponent.PlanetRadius), x => x.PlanetRadius, (x, v) => x.PlanetRadius = v, 6360f)
                .AddInput(nameof(AtmosphereComponent.AtmosphereHeight), x => x.AtmosphereHeight, (x, v) => x.AtmosphereHeight = v, 100f)

                // Mie
                .AddInput(nameof(AtmosphereComponent.MiePhase), x => x.MiePhase, (x, v) => x.MiePhase = v, 0.8f)
                .AddInput(nameof(AtmosphereComponent.MieScatteringScale), x => x.MieScatteringScale * 100f, (x, v) => x.MieScatteringScale = v * 0.01f, 0.692f)
                .AddInput(nameof(AtmosphereComponent.MieScatteringCoefficient), x => x.MieScatteringCoefficient, (x, v) => x.MieScatteringCoefficient = v, new Color4(147 / 255.0f, 147 / 255.0f, 147 / 255.0f))
                .AddInput(nameof(AtmosphereComponent.MieAbsorptionScale), x => x.MieAbsorptionScale * 1000f, (x, v) => x.MieAbsorptionScale = v * 0.001f, 0.77f)
                .AddInput(nameof(AtmosphereComponent.MieAbsorptionCoefficient), x => x.MieAbsorptionCoefficient, (x, v) => x.MieAbsorptionCoefficient = v, new Color4(147 / 255.0f, 147 / 255.0f, 147 / 255.0f))

                // Rayligh
                .AddInput(nameof(AtmosphereComponent.RayleighScatteringScale), x => x.RayleighScatteringScale * 10f, (x, v) => x.RayleighScatteringScale = v * 0.1f, 0.3624f)
                .AddInput(nameof(AtmosphereComponent.RayleighScatteringCoefficient), x => x.RayleighScatteringCoefficient, (x, v) => x.RayleighScatteringCoefficient = v, new Color4(41 / 255.0f, 95 / 255.0f, 230 / 255.0f))

                // Absorbtion
                .AddInput(nameof(AtmosphereComponent.AbsorptionExctinctionScale), x => x.AbsorptionExctinctionScale * 100f, (x, v) => x.AbsorptionExctinctionScale = v * 0.01f, 0.199f)
                .AddInput(nameof(AtmosphereComponent.AbsorptionExctinctionCoefficient), x => x.AbsorptionExctinctionCoefficient, (x, v) => x.AbsorptionExctinctionCoefficient = v, new Color4(83 / 255.0f, 241 / 255.0f, 11 / 255.0f))
                .AddInput(nameof(AtmosphereComponent.AbsorptionDensity0LayerWidth), x => x.AbsorptionDensity0LayerWidth, (x, v) => x.AbsorptionDensity0LayerWidth = v, 25f)
                .AddInput(nameof(AtmosphereComponent.AbsorptionDensity0ConstantTerm), x => x.AbsorptionDensity0ConstantTerm, (x, v) => x.AbsorptionDensity0ConstantTerm = v, -0.666667f)
                .AddInput(nameof(AtmosphereComponent.AbsorptionDensity0LinearTerm), x => x.AbsorptionDensity0LinearTerm, (x, v) => x.AbsorptionDensity0LinearTerm = v, 0.666667f)
                .AddInput(nameof(AtmosphereComponent.AbsorptionDensity1ConstantTerm), x => x.AbsorptionDensity1ConstantTerm, (x, v) => x.AbsorptionDensity1ConstantTerm = v, 2.666667f)
                .AddInput(nameof(AtmosphereComponent.AbsorptionDensity1LinearTerm), x => x.AbsorptionDensity1LinearTerm, (x, v) => x.AbsorptionDensity1LinearTerm = v, -0.066667f)

                // Scale
                .AddInput(nameof(AtmosphereComponent.RayleighScaleHeight), x => x.RayleighScaleHeight, (x, v) => x.RayleighScaleHeight = v, 8f)
                .AddInput(nameof(AtmosphereComponent.MieScaleHeight), x => x.MieScaleHeight, (x, v) => x.MieScaleHeight = v, 1.2f)

                // Sun / Ground
                .AddInput(nameof(AtmosphereComponent.GroundAlbedo), x => x.GroundAlbedo, (x, v) => x.GroundAlbedo = v, new Color4(50 / 255.0f, 50 / 255.0f, 50 / 255.0f))
                .AddInput(nameof(AtmosphereComponent.SunLuminanceFactor), x => x.SunLuminanceFactor, (x, v) => x.SunLuminanceFactor = v, 20f)
                .AddInput(nameof(AtmosphereComponent.RenderSunDisk), x => x.RenderSunDisk, (x, v) => x.RenderSunDisk = v, true)

                // Misc
                .AddInput(nameof(AtmosphereComponent.AerialPerspectiveDistanceScale), x => x.AerialPerspectiveDistanceScale, (x, v) => x.AerialPerspectiveDistanceScale = v, 100f)
                .AddInput(nameof(AtmosphereComponent.StrideToAtmosphereUnitScale), x => x.StrideToAtmosphereUnitScale, (x, v) => x.StrideToAtmosphereUnitScale = v, 0.001f)
                .AddInput(nameof(AtmosphereComponent.MultipleScatteringFactor), x => x.MultipleScatteringFactor, (x, v) => x.MultipleScatteringFactor = v, 1f)
                .AddInput(nameof(AtmosphereComponent.AtmosphereScatteringVolumeKmPerSlice), x => x.AtmosphereScatteringVolumeKmPerSlice, (x, v) => x.AtmosphereScatteringVolumeKmPerSlice = v, 0.25f)

                // Clouds
                .AddInput(nameof(AtmosphereComponent.EnableClouds), x => x.EnableClouds, (x, v) => x.EnableClouds = v, true)
                .AddInput(nameof(AtmosphereComponent.CloudScale), x => x.CloudScale * 100f, (x, v) => x.CloudScale = v * 0.01f, 0.01f)
                .AddInput(nameof(AtmosphereComponent.CloudSpeed), x => x.CloudSpeed, (x, v) => x.CloudSpeed = v, 0.01f)
                .AddInput(nameof(AtmosphereComponent.Cloudiness), x => x.Cloudiness, (x, v) => x.Cloudiness = v, 0.8f)

                .AddInput(nameof(AtmosphereComponent.Priority), x => x.Priority, (x, v) => x.Priority = v, 0)

                ;

            yield return factory.NewNode<AtmosphereRenderFeature>(category: renderingCategoryAdvanced)
                // Debug
                .AddInput(nameof(AtmosphereRenderFeature.DrawDebugTextures), x => x.DrawDebugTextures, (x, v) => x.DrawDebugTextures = v)
                // Performance
                .AddInput(nameof(AtmosphereRenderFeature.FastSky), x => x.FastSky, (x, v) => x.FastSky = v)
                .AddInput(nameof(AtmosphereRenderFeature.FastAerialPerspectiveEnabled), x => x.FastAerialPerspectiveEnabled, (x, v) => x.FastAerialPerspectiveEnabled = v)
                // Render feature
                .AddCachedListInput(nameof(AtmosphereRenderFeature.RenderStageSelectors), x => x.RenderStageSelectors)
                .AddCachedListInput(nameof(AtmosphereRenderFeature.PipelineProcessors), x => x.PipelineProcessors)
                // Texture settings
                .AddCachedInput(nameof(AtmosphereRenderFeature.AtmosphereCameraScatteringVolumeSettings), x => x.AtmosphereCameraScatteringVolumeSettings, (x, v) => x.AtmosphereCameraScatteringVolumeSettings = v)
                .AddCachedInput(nameof(AtmosphereRenderFeature.MultiScatteringTextureSettings), x => x.MultiScatteringTextureSettings, (x, v) => x.MultiScatteringTextureSettings = v)
                .AddCachedInput(nameof(AtmosphereRenderFeature.SkyViewLutSettings), x => x.SkyViewLutSettings, (x, v) => x.SkyViewLutSettings = v)
                .AddCachedInput(nameof(AtmosphereRenderFeature.TransmittanceLutSettings), x => x.TransmittanceLutSettings, (x, v) => x.TransmittanceLutSettings = v)
                ;

            yield return factory.NewStructNode(renderingCategoryAdvanced, new TextureSettings2d(64, 64, PixelFormat.R16G16B16A16_Float))
               .AddCachedInput(nameof(TextureSettings2d.Width), x => x.v.Width, (x, v) => x.v.Width = v, 64)
               .AddCachedInput(nameof(TextureSettings2d.Width), x => x.v.Height, (x, v) => x.v.Height = v, 64)
               .AddCachedInput(nameof(TextureSettings2d.Format), x => x.v.Format, (x, v) => x.v.Format = v, PixelFormat.R16G16B16A16_Float)
               .AddStateOutput();

            yield return factory.NewStructNode(renderingCategoryAdvanced, new TextureSettingsSquare(64, PixelFormat.R16G16B16A16_Float))
               .AddCachedInput(nameof(TextureSettingsSquare.Size), x => x.v.Size, (x, v) => x.v.Size = v, 64)
               .AddCachedInput(nameof(TextureSettingsSquare.Format), x => x.v.Format, (x, v) => x.v.Format = v, PixelFormat.R16G16B16A16_Float)
               .AddStateOutput();

            yield return factory.NewStructNode(renderingCategoryAdvanced, new TextureSettingsVolume(32, 32, PixelFormat.R16G16B16A16_Float))
                .AddCachedInput(nameof(TextureSettingsVolume.Size), x => x.v.Size, (x, v) => x.v.Size = v, 32)
                .AddCachedInput(nameof(TextureSettingsVolume.Slices), x => x.v.Slices, (x, v) => x.v.Slices = v, 32)
                .AddCachedInput(nameof(TextureSettingsVolume.Format), x => x.v.Format, (x, v) => x.v.Format = v, PixelFormat.R16G16B16A16_Float)
                .AddStateOutput();

            yield return new StrideNodeDesc<AtmosphereTransparentRenderFeature>(factory, category: renderFeaturesCategory);
            yield return new StrideNodeDesc<AtmosphereLightDirectionalGroupRenderer>(factory, category: lightsCategory);

        }

        static CustomNodeDesc<StructRef<T>> NewStructNode<T>(this IVLNodeDescriptionFactory factory, string category, T initial, string name = default) where T : struct
        {
            return factory.NewNode(name: name ?? typeof(T).Name, category: category, copyOnWrite: false, hasStateOutput: false, ctor: _ => S(initial));
        }

        static CustomNodeDesc<StructRef<T>> AddStateOutput<T>(this CustomNodeDesc<StructRef<T>> node) where T : struct
        {
            return node.AddOutput("Output", x => x.v);
        }

        static StructRef<T> S<T>(T value) where T : struct => new StructRef<T>(value);

        class StructRef<T> where T : struct
        {
            public T v;

            public StructRef(T value)
            {
                v = value;
            }
        }
    }
}

using System;
using System.Reflection;
using g3;
using Stride.Core.Mathematics;
using Stride.Graphics;
using Stride.Rendering;
using Stride.Rendering.ProceduralModels;
using VL.Stride.Rendering.Models;

namespace VL.Stride.Rendering
{
    public class DynamicMesh : PrimitiveProceduralModelBase
    {
        readonly GeometricMeshData<VertexPositionNormalTexture> data = new GeometricMeshData<VertexPositionNormalTexture>(null, null, false);

        public VertexPositionNormalTexture[] Vertices { get => data.Vertices; set => data.Vertices = value; } 
        
        public int[] Indices { get => data.Indices; set => data.Indices = value; }

        public bool IsLeftHanded { get => data.IsLeftHanded; set => data.IsLeftHanded = value; }

        protected override GeometricMeshData<VertexPositionNormalTexture> CreatePrimitiveMeshData()
        {
            return data;
        }
    }
}

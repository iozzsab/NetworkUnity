Shader "BruteForce/Standard/Shader" {

	Properties{

		[Header(IIIIIIII          Shader Textures          IIIIIIII)]
		[Space]
		_MainTex("Shader Albedo", 2D) = "white" {}
		_MainTexMult("Shader Albedo Multiplier", Range(0,2)) = 0.11
		[MainColor][HDR]_Color("Shader Tint", Color) = (0.77,0.86,0.91,1)
		_OverallScale("Overall Scale", Float) = 1
		[Space]
		[NoScaleOffset]_BumpMap("Shader Bumpmap", 2D) = "white" {}
		_NormalMultiplier("Shader Bumpmap Multiplier", Range(0,2)) = 0.4
		_ShaderNormalScale("Shader Bumpmap Scale", Range(0,2)) = 1

		[Space(20)]
		[NoScaleOffset]_SpecGlossMap("Shader Specular", 2D) = "black" {}
		[NoScaleOffset]_LittleSpec("Shader Little Spec", 2D) = "black" {}
		_LittleSpecForce("Little Spec Multiplier", Float) = 0.5

		[NoScaleOffset]_ShaderHeight("Shader Displacement Texture", 2D) = "white" {}
		_HeightScale("Displacement Scale", Float) = 0.33
		_DisplacementStrength("Displacement Strength", Float) = 0.3
		_DisplacementOffset("Displacement Offset", Float) = 0.1
		_DisplacementColorMult("Displacement Color Multiplier", Float) = 0.95
		_DisplacementShadowMult("Displacement Shadow Multiplier",  Range(0,2)) = 0.56
		_UpVector("Up Vector", Float) = 1
		_NormalVector("Normal Vector", Float) = 0

		[Space(20)]
		[NoScaleOffset]_ShaderTransition("Shader Transition", 2D) = "black" {}
		_TransitionScale("Transition Scale", Float) = 0.73
		_TransitionPower("Transition Power", Float) = 0.22
		_TransitionColor("Transition Color (additive only)", Color) = (1,1,1,1)


		[Space(10)]
		[Header(IIIIIIII          Shader Values          IIIIIIII)]
		[Space(10)]
		_MountColor("Mount Color", color) = (0.12,0.12,0.121,1)
		_BotColor("Dig Color", color) = (0.71,0.87,0.91,0)
		_NormalRTDepth("Normal Effect Depth", Range(0,3)) = 0.12
		_NormalRTStrength("Normal Effect Strength", Range(0,4)) = 2.2
		_AddShaderStrength("Mount Shader Strength", Range(0,3)) = 0.52
		_RemoveShaderStrength("Dig Shader Strength", Range(0,3)) = 0.5
		_ShaderScale("Shader Scale", float) = 1

		[Space(10)]
		[Header(IIIIIIII          ShaderTwo Textures          IIIIIIII)]
		[Space(10)]
		[NoScaleOffset]_ShaderTwoTex("ShaderTwo Albedo", 2D) = "white" {}
		[HDR]_ShaderTwoTint("ShaderTwo Texture Tint", Color) = (0.14,0.35,0.49,1)
		[Space]
		[NoScaleOffset]_ParallaxLayers("Parallax ShaderTwo Texture", 2D) = "black" {}
		_ParallaxStrength("Parallax Fade Strength", vector) = (-1.04, 0.125, -0.13, 0.1)
		_OffsetScale("Parallax Offset Scale", float) = 0.14
		[NoScaleOffset]_NormalTex("ShaderTwo Normal Texture", 2D) = "black" {}
		_NormalScale("ShaderTwo Normal Scale", Range(0,1)) = 0.766
		[NoScaleOffset]_Roughness("ShaderTwo Roughness Texture", 2D) = "black" {}

		[Space(10)]
		[Header(IIIIIIII          ShaderTwo Values          IIIIIIII)]
		[Space(10)]
		[HDR]_ParalaxColor("Parallax Color", Color) = (0,0,0,1)
		_ParalaxColorScale("Parallax Color Scale", Range(-2,2)) = -0.88
		_ShaderTwoTrail("ShaderTwo Trail Color", Color) = (0.40,0.1,0.01,1)
		_ShaderTwoScale("ShaderTwo Scale", float) = 1

		[Space(10)]
		[Header(IIIIIIII          Lighting          IIIIIIII)]
		[Space(10)]
		_ProjectedShadowColor("Projected Shadow Color",Color) = (0.17 ,0.56 ,0.1,1)
		_SpecColor("Specular Color", Color) = (1,1,1,1)
		_SpecForce("Specular Force", Float) = 3
		_RoughnessStrength("ShaderTwo Roughness Strength", Float) = 1.75
		_ShininessShaderTwo("ShaderTwo Shininess", Float) = 10
		_ShininessShader("Shader Shininess", Float) = 25
		[Space]
		_LightOffset("Light Offset", Range(0, 1)) = 0.2
		_LightHardness("Light Hardness", Range(0, 1)) = 0.686
		_ReflectionOpacity("Reflection Opacity", Float) = 0.25
		_ReflectionStrength("Rim ShaderTwo Strength", Range(0, 2)) = 0.07
		_ReflectionColor("Rim ShaderTwo Color", Color) = (0,0.1,0.15,0.8)
		_RimColor("Rim Shader Color", Color) = (0.03,0.03,0.03,0)
		_LightIntensity("Additional Lights Intensity", Range(0.00, 4)) = 1

		[Space(10)]
		[Header(IIIIIIII          Tessellation          IIIIIIII)]
		[Space(10)]
		_TessellationUniform("Tessellation ShaderTwo", Range(1, 16)) = 1
		_TessellationEdgeLength("Tessellation Shader", Range(0, 100)) = 50

		[Space(10)]
		[Header(IIIIIIII          Pragmas          IIIIIIII)]
		[Space(10)]
		[Toggle(IS_ShaderTwo)] _ISShaderTwo("Is ShaderTwo", Float) = 0
		[Toggle(IS_ADD)] _ISADD("Is Additive Shader", Float) = 0
		[Toggle(USE_AL)] _UseAmbientLight("Use Ambient Light", Float) = 1
		[Toggle(USE_RT)] _USERT("Use RT", Float) = 1
		[Toggle(IS_T)] _IST("Is Terrain", Float) = 0
		[Toggle(USE_VR)] _UseVR("Use For VR", Float) = 0
		[Toggle(USE_WC)] _USEWC("Use World Displacement", Float) = 1

			// TERRAIN PROPERTIES //
			[HideInInspector] _Control0("Control0 (RGBA)", 2D) = "white" {}
			[HideInInspector] _Control1("Control1 (RGBA)", 2D) = "white" {}
			// Textures
			[HideInInspector] _Splat0("Layer 0 (R)", 2D) = "white" {}
			[HideInInspector] _Splat1("Layer 1 (G)", 2D) = "white" {}
			[HideInInspector] _Splat2("Layer 2 (B)", 2D) = "white" {}
			[HideInInspector] _Splat3("Layer 3 (A)", 2D) = "white" {}
			[HideInInspector] _Splat4("Layer 4 (R)", 2D) = "white" {}
			[HideInInspector] _Splat5("Layer 5 (G)", 2D) = "white" {}
			[HideInInspector] _Splat6("Layer 6 (B)", 2D) = "white" {}
			[HideInInspector] _Splat7("Layer 7 (A)", 2D) = "white" {}

			// Normal Maps
			[HideInInspector] _Normal0("Normal 0 (R)", 2D) = "bump" {}
			[HideInInspector] _Normal1("Normal 1 (G)", 2D) = "bump" {}
			[HideInInspector] _Normal2("Normal 2 (B)", 2D) = "bump" {}
			[HideInInspector] _Normal3("Normal 3 (A)", 2D) = "bump" {}
			[HideInInspector] _Normal4("Normal 4 (R)", 2D) = "bump" {}
			[HideInInspector] _Normal5("Normal 5 (G)", 2D) = "bump" {}
			[HideInInspector] _Normal6("Normal 6 (B)", 2D) = "bump" {}
			[HideInInspector] _Normal7("Normal 7 (A)", 2D) = "bump" {}

			// Normal Scales
			[HideInInspector] _NormalScale0("Normal Scale 0 ", Float) = 1
			[HideInInspector] _NormalScale1("Normal Scale 1 ", Float) = 1
			[HideInInspector] _NormalScale2("Normal Scale 2 ", Float) = 1
			[HideInInspector] _NormalScale3("Normal Scale 3 ", Float) = 1
			[HideInInspector] _NormalScale4("Normal Scale 4 ", Float) = 1
			[HideInInspector] _NormalScale5("Normal Scale 5 ", Float) = 1
			[HideInInspector] _NormalScale6("Normal Scale 6 ", Float) = 1
			[HideInInspector] _NormalScale7("Normal Scale 7 ", Float) = 1

				// Mask Maps
				[HideInInspector] _Mask0("Mask 0 (R)", 2D) = "bump" {}
				[HideInInspector] _Mask1("Mask 1 (G)", 2D) = "bump" {}
				[HideInInspector] _Mask2("Mask 2 (B)", 2D) = "bump" {}
				[HideInInspector] _Mask3("Mask 3 (A)", 2D) = "bump" {}
				[HideInInspector] _Mask4("Mask 4 (R)", 2D) = "bump" {}
				[HideInInspector] _Mask5("Mask 5 (G)", 2D) = "bump" {}
				[HideInInspector] _Mask6("Mask 6 (B)", 2D) = "bump" {}
				[HideInInspector] _Mask7("Mask 7 (A)", 2D) = "bump" {}

				// specs color
				[HideInInspector] _Specular0("Specular 0 (R)", Color) = (1,1,1,1)
				[HideInInspector] _Specular1("Specular 1 (G)", Color) = (1,1,1,1)
				[HideInInspector] _Specular2("Specular 2 (B)", Color) = (1,1,1,1)
				[HideInInspector] _Specular3("Specular 3 (A)", Color) = (1,1,1,1)
				[HideInInspector] _Specular4("Specular 4 (R)", Color) = (1,1,1,1)
				[HideInInspector] _Specular5("Specular 5 (G)", Color) = (1,1,1,1)
				[HideInInspector] _Specular6("Specular 6 (B)", Color) = (1,1,1,1)
				[HideInInspector] _Specular7("Specular 7 (A)", Color) = (1,1,1,1)

					// Metallic
					[HideInInspector] _Metallic0("Metallic0", Float) = 0
					[HideInInspector] _Metallic1("Metallic1", Float) = 0
					[HideInInspector] _Metallic2("Metallic2", Float) = 0
					[HideInInspector] _Metallic3("Metallic3", Float) = 0
					[HideInInspector] _Metallic4("Metallic4", Float) = 0
					[HideInInspector] _Metallic5("Metallic5", Float) = 0
					[HideInInspector] _Metallic6("Metallic6", Float) = 0
					[HideInInspector] _Metallic7("Metallic7", Float) = 0

					[HideInInspector] _Splat0_ST("Size0", Vector) = (1,1,0)
					[HideInInspector] _Splat1_ST("Size1", Vector) = (1,1,0)
					[HideInInspector] _Splat2_ST("Size2", Vector) = (1,1,0)
					[HideInInspector] _Splat3_ST("Size3", Vector) = (1,1,0)
					[HideInInspector] _Splat4_STn("Size4", Vector) = (1,1,0)
					[HideInInspector] _Splat5_STn("Size5", Vector) = (1,1,0)
					[HideInInspector] _Splat6_STn("Size6", Vector) = (1,1,0)
					[HideInInspector] _Splat7_STn("Size7", Vector) = (1,1,0)

					[HideInInspector] _TerrainScale("Terrain Scale", Vector) = (1, 1 ,0)
					// TERRAIN PROPERTIES //
	}

		CGINCLUDE
					// Reused functions //
					// TESSELLATION DATA //
					float _TessellationUniform;
				float _TessellationEdgeLength;

#pragma shader_feature IS_T
#pragma shader_feature IS_ShaderTwo
#pragma shader_feature USE_VR

#include "UnityCG.cginc"

#ifdef IS_T

				// TERRAIN DATA //
				sampler2D _Control0;
				sampler2D _Control1;
				half4 _Specular0, _Specular1, _Specular2, _Specular3, _Specular4, _Specular5, _Specular6, _Specular7;
				float4 _Splat0_ST, _Splat1_ST, _Splat2_ST, _Splat3_ST, _Splat4_STn, _Splat5_STn, _Splat6_STn, _Splat7_STn;
				half _Metallic0, _Metallic1, _Metallic2, _Metallic3, _Metallic4, _Metallic5, _Metallic6, _Metallic7;
				half _NormalScale0, _NormalScale1, _NormalScale2, _NormalScale3, _NormalScale4, _NormalScale5, _NormalScale6, _NormalScale7;
				Texture2D _Splat0, _Splat1, _Splat2, _Splat3, _Splat4, _Splat5, _Splat6, _Splat7;
				Texture2D _Normal0, _Normal1, _Normal2, _Normal3, _Normal4, _Normal5, _Normal6, _Normal7;
				sampler2D _Mask0, _Mask1, _Mask2, _Mask3, _Mask4, _Mask5, _Mask6, _Mask7;
				float3 _TerrainScale;
				// TERRAIN DATA //
#endif
				SamplerState my_linear_repeat_sampler;
				SamplerState my_trilinear_repeat_sampler;
				SamplerState my_linear_clamp_sampler;


				struct TessellatedVert {
					float4 vertex : INTERNALTESSPOS;
					float3 normal : NORMAL;
					float4 tangent : TANGENT;
					float2 uv : TEXCOORD0;
					float4 color : COLOR;
#ifdef USE_VR
					UNITY_VERTEX_INPUT_INSTANCE_ID
#endif
				};

				struct TessellationFactors {
					float edge[3] : SV_TessFactor;
					float inside : SV_InsideTessFactor;
				};

				float TessellationEdgeFactor(float3 p0, float3 p1) {
#if defined(_TESSELLATION_EDGE)
					float edgeLength = distance(p0, p1);

					float3 edgeCenter = (p0 + p1) * 0.5;
					float viewDistance = distance(edgeCenter, _WorldSpaceCameraPos);
					//float tessellationFactor = lerp(100,5,saturate(_TessellationEdgeLength/100));
					float tessellationFactor = 0;
					if (_TessellationEdgeLength <= 0.01)
					{
						tessellationFactor = 5000;
					}
					else
					{
						tessellationFactor = 300 / _TessellationEdgeLength;
					}
					return edgeLength * _ScreenParams.y /
						(tessellationFactor * viewDistance);
#else
					return _TessellationUniform;
#endif
				}

				TessellationFactors MyPatchConstantFunction(
					InputPatch<TessellatedVert, 3> patch
				) {
					float3 p0 = mul(unity_ObjectToWorld, patch[0].vertex).xyz;
					float3 p1 = mul(unity_ObjectToWorld, patch[1].vertex).xyz;
					float3 p2 = mul(unity_ObjectToWorld, patch[2].vertex).xyz;
					TessellationFactors f;
					f.edge[0] = TessellationEdgeFactor(p1, p2);
					f.edge[1] = TessellationEdgeFactor(p2, p0);
					f.edge[2] = TessellationEdgeFactor(p0, p1);

#ifdef IS_ShaderTwo
					f.inside = 1;
#else
#ifdef IS_T
					half4 splat_control = tex2Dlod(_Control0, float4(patch[0].uv, 0, 0));
					if (
						splat_control.r * (1 - _Metallic0) + splat_control.g * (1 - _Metallic1) + splat_control.b * (1 - _Metallic2) + splat_control.a * (1 - _Metallic3)
						< 0.5)
					{
						f.inside = 1;
					}
					else
					{
						f.inside =
							(TessellationEdgeFactor(p1, p2) +
								TessellationEdgeFactor(p2, p0) +
								TessellationEdgeFactor(p0, p1)) * (1 / 3.0);
					}
#else
					if ((patch[0].color.g + patch[0].color.b) / 2 < 0.5 || (patch[0].color.b > 0.95 && patch[0].color.g < 0.05))
					{
						f.inside = _TessellationUniform;
					}
					else
					{
						f.inside =
							(TessellationEdgeFactor(p1, p2) +
								TessellationEdgeFactor(p2, p0) +
								TessellationEdgeFactor(p0, p1)) * (1 / 3.0);
					}
#endif
#endif
					return f;
				}

				[UNITY_domain("tri")]
				[UNITY_outputcontrolpoints(3)]
				[UNITY_outputtopology("triangle_cw")]
				[UNITY_partitioning("fractional_odd")]
				[UNITY_patchconstantfunc("MyPatchConstantFunction")]
				TessellatedVert Hull(
					InputPatch<TessellatedVert, 3> patch,
					uint id : SV_OutputControlPointID
				) {
					return patch[id];
				}

				// TESSELLATION DATAS //
				ENDCG

					SubShader{

						Pass {
							Tags {
								"LightMode" = "ForwardBase"
							}
								Blend SrcAlpha OneMinusSrcAlpha

							CGPROGRAM

							#pragma target 4.6

							#pragma shader_feature _TESSELLATION_EDGE

							#pragma multi_compile _ LOD_FADE_CROSSFADE

							#pragma multi_compile_fwdbase
							#pragma multi_compile_fog

							#pragma vertex tessellatedVert
							#pragma fragment frag
							#pragma hull Hull
							#pragma domain Domain

							#define FORWARD_BASE_PASS
							#pragma shader_feature USE_AL
							#pragma shader_feature USE_RT
							#pragma shader_feature IS_ADD
							#pragma shader_feature USE_WC

							#include "UnityPBSLighting.cginc"
							#include "AutoLight.cginc"

					struct VertexData //appdata
					{
						float4 vertex : POSITION;
						float3 normal : NORMAL;
						float4 tangent : TANGENT;
						float2 uv : TEXCOORD0;
						float4 color : COLOR;

					#ifdef SHADOWS_SCREEN
						SHADOW_COORDS(1)
					#endif
							UNITY_FOG_COORDS(2)
#ifdef USE_VR
							UNITY_VERTEX_INPUT_INSTANCE_ID
#endif
					};

					struct InterpolatorsVertex
					{
						float4 vertex : SV_POSITION;
						float3 normal : TEXCOORD1;
						float4 tangent : TANGENT;
						float4 uv : TEXCOORD0;
						float4 color : COLOR;
						float3 worldPos : TEXCOORD2;
						float3 viewDir: POSITION1;
						float3 normalDir: TEXCOORD3;

					#ifdef SHADOWS_SCREEN
						SHADOW_COORDS(4)
					#endif
							UNITY_FOG_COORDS(5)
#ifdef USE_VR
							UNITY_VERTEX_OUTPUT_STEREO
#endif
					};

					sampler2D  _DetailTex, _DetailMask;
					float4 _MainTex_ST, _DetailTex_ST;

					sampler2D _NormalMap, _DetailNormalMap;
					float _BumpScale, _DetailBumpScale;

					half4 _Color;

					// Render Texture Effects //
					uniform sampler2D _GlobalEffectRT;
					uniform float3 _Position;
					uniform float _OrthographicCamSize;
					uniform sampler2D _GlobalEffectRTAdditional;
					uniform float3 _PositionAdd;
					uniform float _OrthographicCamSizeAdditional;

					sampler2D _MainTex;
					sampler2D _SpecGlossMap;
					sampler2D _BumpMap, _LittleSpec;

					half4 _MountColor;
					half4 _BotColor;

					float _SpecForce, _LittleSpecForce, _UpVector, _NormalVector, _ShaderTwoScale, _ShaderScale;
					float _NormalRTDepth, _NormalRTStrength, _AddShaderStrength, _RemoveShaderStrength, _DisplacementStrength, _NormalMultiplier;

					//ShaderTwo Variables
					Texture2D _ShaderTwoTex;
					sampler2D _NormalTex;
					sampler2D _ParallaxLayers;
					sampler2D _Roughness;
					sampler2D _ShaderHeight;
					Texture2D _ShaderTransition;
					float _TransitionScale;
					float _TransitionPower;
					float _HeightScale;
					float _LightOffset;
					float _LightHardness;
					float _DisplacementColorMult, _ReflectionOpacity, _DisplacementShadowMult;

					half _OffsetScale;
					half _OverallScale;
					half _RoughnessStrength;
					half4 _ParallaxStrength;

					half _NormalScale, _ParalaxColorScale, _DisplacementOffset, _ShaderNormalScale, _MainTexMult;
					half4 _ShaderTwoTint, _ParalaxColor;
					half4 _ShaderTwoTrail;

					float _ShininessShaderTwo, _ShininessShader;
					float _ReflectionStrength;
					float _HasRT;
					float4 _ProjectedShadowColor, _TransitionColor, _ReflectionColor, _RimColor;


					float3 calcNormal(float2 texcoord, sampler2D globalEffect)
					{
						const float3 off = float3(-0.0005 * _NormalRTDepth, 0, 0.0005 * _NormalRTDepth); // texture resolution to sample exact texels
						const float2 size = float2(0.002, 0.0); // size of a single texel in relation to world units

						// The "Mount" normal effect has been removed and will be improved
						//float s01 = tex2Dlod(globalEffect, float4(texcoord.xy - 4 * off.xy, 0, 0)).y * 0.162162162 * _NormalRTDepth;
						//float s21 = tex2Dlod(globalEffect, float4(texcoord.xy - 3 * off.zy, 0, 0)).y * 0.540540541 * _NormalRTDepth;
						//float s10 = tex2Dlod(globalEffect, float4(texcoord.xy - 2 * off.yx, 0, 0)).y * 1.216216216 * _NormalRTDepth;
						//float s12 = tex2Dlod(globalEffect, float4(texcoord.xy - 1 * off.yz, 0, 0)).y * 1.945945946 * _NormalRTDepth;

						//float s01 = tex2Dlod(globalEffect, float4(0,0, 0, 0)).y * 0.162162162 * _NormalRTDepth;
						//float s21 = tex2Dlod(globalEffect, float4(0,0, 0, 0)).y * 0.540540541 * _NormalRTDepth;
						//float s10 = tex2Dlod(globalEffect, float4(0,0, 0, 0)).y * 1.216216216 * _NormalRTDepth;
						//float s12 = tex2Dlod(globalEffect, float4(0,0, 0, 0)).y * 1.945945946 * _NormalRTDepth;

						float s01 = tex2Dlod(globalEffect, float4(texcoord.xy + 4 * off.xy * 10, 0, 0)).y * 0.245945946 * _NormalRTDepth;
						float s21 = tex2Dlod(globalEffect, float4(texcoord.xy + 3 * off.zy * 10, 0, 0)).y * 0.216216216 * _NormalRTDepth;
						float s10 = tex2Dlod(globalEffect, float4(texcoord.xy + 2 * off.yx * 10, 0, 0)).y * 0.540540541 * _NormalRTDepth;
						float s12 = tex2Dlod(globalEffect, float4(texcoord.xy + 1 * off.yz * 10, 0, 0)).y * 0.162162162 * _NormalRTDepth;

						float g01 = tex2Dlod(globalEffect, float4(texcoord.xy + 4 * off.xy, 0, 0)).z * 1.945945946 * _NormalRTDepth;
						float g21 = tex2Dlod(globalEffect, float4(texcoord.xy + 3 * off.zy, 0, 0)).z * 1.216216216 * _NormalRTDepth;
						float g10 = tex2Dlod(globalEffect, float4(texcoord.xy + 2 * off.yx, 0, 0)).z * 0.540540541 * _NormalRTDepth;
						float g12 = tex2Dlod(globalEffect, float4(texcoord.xy + 1 * off.yz, 0, 0)).z * 0.162162162 * _NormalRTDepth;

						//float3 va = normalize(float3(size.xy, s21 - s01)) + normalize(float3(size.xy, g21 - g01));
						//float3 vb = normalize(float3(size.yx, s12 - s10)) + normalize(float3(size.xy, g12 - g10));
						float3 va = normalize(float3(size.xy, 0)) + normalize(float3(size.xy, g21 - g01));
						float3 vb = normalize(float3(size.yx, 0)) + normalize(float3(size.xy, g12 - g10));

						float3 vc = normalize(float3(size.xy, 0)) + normalize(float3(size.xy, s21 - s01));
						float3 vd = normalize(float3(size.yx, 0)) + normalize(float3(size.xy, s12 - s10));

						float3 calculatedNormal = normalize(cross(va, vb));
						calculatedNormal.y = normalize(cross(vc, vd)).x;
						return calculatedNormal;
					}

					float4 blendMultiply(float4 baseTex, float4 blendTex, float opacity)
					{
						float4 baseBlend = baseTex * blendTex;
						float4 ret = lerp(baseTex, baseBlend, opacity);
						return ret;
					}

					InterpolatorsVertex vert(VertexData v) {
						InterpolatorsVertex i;

#ifdef USE_VR
						UNITY_SETUP_INSTANCE_ID(v);
						UNITY_INITIALIZE_OUTPUT(InterpolatorsVertex, i);
						UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(i);
#endif

						float3 worldPos = mul(unity_ObjectToWorld, v.vertex);
						float3 originalPos = worldPos;

						//RT Cam effects
						float2 uv = worldPos.xz - _Position.xz;
						uv = uv / (_OrthographicCamSize * 2);
						uv += 0.5;

						float2 uvAdd = worldPos.xz - _PositionAdd.xz;
						uvAdd = uvAdd / (_OrthographicCamSizeAdditional * 2);
						uvAdd += 0.5;

						float3 rippleMain = 0;
						float3 rippleMainAdditional = 0;

						float ripples = 0;
						float ripples2 = 0;
						float ripples3 = 0;

						float uvRTValue = 0;

					#ifdef USE_RT
						if (_HasRT == 1)
						{
							// .b(lue) = Shader Dig / .r(ed) = Shader To ShaderTwo / .g(reen) = Shader Mount
							rippleMain = tex2Dlod(_GlobalEffectRT, float4(uv, 0, 0));
							rippleMainAdditional = tex2Dlod(_GlobalEffectRTAdditional, float4(uvAdd, 0, 0));
						}

					#ifdef IS_ShaderTwo
					#else
						float2 uvGradient = smoothstep(0, 5, length(max(abs(_Position.xz - worldPos.xz) - _OrthographicCamSize + 5, 0.0)));
						uvRTValue = saturate(uvGradient.x);

						if (v.color.b > 0.95 && v.color.g < 0.05)
						{
						}
						else
						{
							ripples = lerp(rippleMain.x, rippleMainAdditional.x, uvRTValue);
							ripples2 = lerp(rippleMain.y, rippleMainAdditional.y, uvRTValue);
							ripples3 = lerp(rippleMain.z, rippleMainAdditional.z, uvRTValue);
						}
					#endif

					#endif

					#ifdef IS_T
						half4 splat_control = tex2Dlod(_Control0, float4(v.uv, 0,0));
						half4 splat_control1 = tex2Dlod(_Control1, float4(v.uv, 0, 0));

						float ShaderTwoValue = saturate(1 - splat_control.r * _Metallic0 - splat_control.g * _Metallic1 - splat_control.b * _Metallic2 - splat_control.a * _Metallic3
							- ripples);

						float ShaderHeightNew = tex2Dlod(_Mask0, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r;
						ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask1, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.g * (1 - _Metallic1));
						ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask2, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.b * (1 - _Metallic2));
						ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask3, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.a * (1 - _Metallic3));

						float ShaderHeight = ShaderHeightNew;
					#else
						float ShaderTwoValue = 0;
						if (v.color.b > 0.6 && v.color.g < 0.4)
						{
							ShaderTwoValue = saturate(1 - v.color.b);
						}
						else
						{
							ShaderTwoValue = saturate((v.color.g + v.color.b) / 2 - ripples);
						}

					#ifdef USE_WC
						float ShaderHeight = tex2Dlod(_ShaderHeight, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1 * _ShaderScale).r;
					#else
						float ShaderHeight = tex2Dlod(_ShaderHeight, float4(v.uv, 0, 0) * _HeightScale * _ShaderScale).r;
					#endif

					#endif

						i.normalDir = normalize(mul(float4(v.normal, 0.0), unity_WorldToObject));
					#ifdef IS_ShaderTwo
					#else

					#ifdef USE_RT
						if (_HasRT == 1)
						{
							if (v.color.b > 0.95 && v.color.g < 0.05)
							{
								i.normal = normalize(v.normal);
							}
							else
							{
								i.normal = normalize(lerp(v.normal, calcNormal(uv, _GlobalEffectRT).rbb, ShaderTwoValue));
							}
						}
						else
						{
							i.normal = normalize(v.normal);
						}
					#else
						i.normal = normalize(v.normal);
					#endif

					#ifdef IS_ADD
						float3 newNormal = normalize(i.normalDir);
						worldPos += ((float4(0, -_RemoveShaderStrength, 0, 0) * _UpVector - newNormal * _RemoveShaderStrength * _NormalVector) * ripples3 + (float4(0, _AddShaderStrength * ShaderHeight, 0, 0) * _UpVector + newNormal * _AddShaderStrength * ShaderHeight * _NormalVector) * ripples2 * saturate(1 - ripples3)) * saturate(ShaderTwoValue * 3);
						worldPos += (float4(0, _DisplacementOffset, 0, 0) * _UpVector + newNormal * _DisplacementOffset * _NormalVector) * saturate(ShaderTwoValue * 2.5);
						worldPos += (float4(0, 2 * _DisplacementStrength * ShaderHeight, 0, 0) * _UpVector) + (newNormal * 2 * _DisplacementStrength * ShaderHeight * _NormalVector) * saturate(saturate(ShaderTwoValue * 2.5));

						worldPos = lerp(worldPos, mul(unity_ObjectToWorld, v.vertex), saturate(v.color.g - saturate(v.color.r + v.color.b)));

						v.vertex.xyz = lerp(mul(unity_WorldToObject, float4(originalPos, 1)).xyz, mul(unity_WorldToObject, float4(worldPos, 1)).xyz, ShaderTwoValue);
					#else
						float3 newNormal = normalize(i.normalDir);
						worldPos += ((float4(0, -_RemoveShaderStrength, 0, 0) * _UpVector - newNormal * _RemoveShaderStrength * _NormalVector) * ripples3 + (float4(0, _AddShaderStrength * ShaderHeight, 0, 0) * _UpVector + newNormal * _AddShaderStrength * ShaderHeight * _NormalVector) * ripples2 * saturate(1 - ripples3)) * saturate(ShaderTwoValue * 3);
						worldPos += (float4(0, _DisplacementOffset, 0, 0) * _UpVector + newNormal * _DisplacementOffset * _NormalVector) * saturate(ShaderTwoValue * 2.5);
						worldPos += (float4(0, 2 * _DisplacementStrength * ShaderHeight, 0, 0) * _UpVector) + (newNormal * 2 * _DisplacementStrength * ShaderHeight * _NormalVector) * saturate(saturate(ShaderTwoValue * 2.5));

						worldPos = lerp(worldPos, mul(unity_ObjectToWorld, v.vertex), saturate(v.color.g - saturate(v.color.r + v.color.b)));

						v.vertex.xyz = lerp(mul(unity_WorldToObject, float4(originalPos, 1)).xyz, mul(unity_WorldToObject, float4(worldPos, 1)).xyz, ShaderTwoValue);

					#endif
					#endif

					#ifdef USE_RT
						if (_HasRT == 1)
						{
							v.color = lerp(v.color, saturate(float4(1, 0, 0, 1)), ripples);
						}
					#endif
						i.vertex = UnityObjectToClipPos(v.vertex);

						float4 objCam = mul(unity_WorldToObject, float4(_WorldSpaceCameraPos, 1.0));
						float3 viewDir = v.vertex.xyz - objCam.xyz;

					#ifdef IS_T
						float4 tangent = float4 (1.0, 0.0, 0.0, -1.0);
						tangent.xyz = tangent.xyz - v.normal * dot(v.normal, tangent.xyz); // Orthogonalize tangent to normal.

						float tangentSign = tangent.w * unity_WorldTransformParams.w;
						float3 bitangent = cross(v.normal.xyz, tangent.xyz) * tangentSign;

						i.viewDir = float3(
							dot(viewDir, tangent.xyz),
							dot(viewDir, bitangent.xyz),
							dot(viewDir, v.normal.xyz)
							);

						i.worldPos.xyz = mul(unity_ObjectToWorld, v.vertex);
						i.tangent = tangent;

					#else
						float tangentSign = v.tangent.w * unity_WorldTransformParams.w;
						float3 bitangent = cross(v.normal.xyz, v.tangent.xyz) * tangentSign;

						i.viewDir = float3(
							dot(viewDir, v.tangent.xyz),
							dot(viewDir, bitangent.xyz),
							dot(viewDir, v.normal.xyz)
							);

						i.worldPos.xyz = mul(unity_ObjectToWorld, v.vertex);
						i.tangent = v.tangent;
					#endif

						i.color = v.color;

					#ifdef IS_T
						i.uv.xy = v.uv;
					#else
						i.uv.xy = TRANSFORM_TEX(v.uv, _MainTex) * _OverallScale;
					#endif
						i.uv.zw = TRANSFORM_TEX(v.uv, _DetailTex);

					#ifdef SHADOWS_SCREEN
						i._ShadowCoord = ComputeScreenPos(i.vertex);
					#endif

						UNITY_TRANSFER_FOG(i,i.vertex);
						return i;
					}


					float4 frag(InterpolatorsVertex i) : SV_Target
					{
#ifdef USE_VR
								UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i)
#endif
								// Linear to Gamma //
half gamma = 0.454545;
half4 lightColor = _LightColor0;

#if !UNITY_COLORSPACE_GAMMA
//_Color = pow(_Color, gamma);
_TransitionColor = pow(_TransitionColor, gamma);
_MountColor = pow(_MountColor, gamma);
_BotColor = pow(_BotColor, gamma);
_ShaderTwoTint = pow(_ShaderTwoTint, 0.55) * 1.5;
_ParalaxColor = pow(_ParalaxColor, gamma);
_ShaderTwoTrail = pow(_ShaderTwoTrail, gamma);
//_ProjectedShadowColor = pow(_ProjectedShadowColor, gamma);
_SpecColor = pow(_SpecColor, gamma);
_ReflectionColor = pow(_ReflectionColor, gamma);
_RimColor = pow(_RimColor, gamma);
lightColor = pow(lightColor, gamma);
_LittleSpecForce = pow(_LittleSpecForce, gamma) * 1.5;

#ifdef IS_T
					_Specular0 = pow(_Specular0,gamma);
					_Specular1 = pow(_Specular1,gamma);
					_Specular2 = pow(_Specular2,gamma);
					_Specular3 = pow(_Specular3,gamma);
#endif

#endif

								float uvRTValue = 0;
								float2 uv = i.worldPos.xz - _Position.xz;
								uv = uv / (_OrthographicCamSize * 2);
								uv += 0.5;

								float2 uvAdd = i.worldPos.xz - _PositionAdd.xz;
								uvAdd = uvAdd / (_OrthographicCamSizeAdditional * 2);
								uvAdd += 0.5;

								float3 rippleMain = 0;
								float3 rippleMainAdditional = 0;
								float3 calculatedNormal = 0;
								float3 calculatedNormalAdd = 0;

								float ripples = 0;
								float ripples2 = 0;
								float ripples3 = 0;
								float ShaderTwoValue = 1;

					#ifdef IS_ShaderTwo
								float ShaderHeight = 0;
								float ShaderHeightReal = 0;
					#else
								float ShaderHeight = saturate(_ShaderTransition.Sample(my_linear_repeat_sampler, i.uv * _TransitionScale * _ShaderScale).r);
					#ifdef USE_WC
								float ShaderHeightReal = tex2D(_ShaderHeight, float2(i.worldPos.x, i.worldPos.z) * _HeightScale * 0.1 * _ShaderScale).r;
					#else
								float ShaderHeightReal = tex2D(_ShaderHeight, i.uv.xy * _HeightScale * _ShaderScale).r;
					#endif

					#endif

					#ifdef IS_ShaderTwo
					#else
					#ifdef USE_RT

								if (_HasRT == 1)
								{
									rippleMain = tex2D(_GlobalEffectRT, uv);
									rippleMainAdditional = tex2D(_GlobalEffectRTAdditional, uvAdd);

									float2 uvGradient = smoothstep(0, 5, length(max(abs(_Position.xz - i.worldPos.xz) - _OrthographicCamSize + 5, 0.0)));
									uvRTValue = saturate(uvGradient.x);
									ripples = lerp(rippleMain.x, rippleMainAdditional.x, uvRTValue);
								}
					#endif
					#endif



					#ifdef IS_T
								half4 splat_control = tex2D(_Control0, i.uv);
								half4 splat_control1 = tex2D(_Control1, i.uv);


								splat_control.r = lerp(splat_control.r, 0, saturate(ripples));
								splat_control.g = lerp(splat_control.g, 1, saturate(ripples));

								float splatOverall = saturate(1 - splat_control.r * _Metallic0 - splat_control.g * _Metallic1 - splat_control.b * _Metallic2 - splat_control.a * _Metallic3);

								//ShaderTwoValue = pow(splatOverall, 0.35 + clamp((ShaderHeight - 0.5) * -_TransitionPower * splatOverall, -0.34, 1));
								ShaderTwoValue = pow(splatOverall, 1 + clamp(abs((ShaderHeight - 0.5) * 20) * -_TransitionPower * splatOverall, -1, 1));
								//ShaderTwoValue = saturate(pow((i.color.g), 1 + clamp(abs((ShaderHeight - 0.5) * 20) * -_TransitionPower * (saturate(i.color.g)), -1, 1)) * 1.25);

								//ShaderTwoValue = saturate(pow((splatOverall), 1 + clamp(abs((ShaderHeight - 0.5) * 20) * -_TransitionPower * (saturate(splatOverall)), -1, 1)) * 1.25);

								i.uv = i.uv * _OverallScale;

								float3 ShaderSplat0 = _Splat0.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat0_ST.xy));
								ShaderSplat0 = lerp(pow(ShaderSplat0, 0.4) * _Specular0 * 2, lerp(1, saturate(pow(ShaderSplat0, 2)), _MainTexMult), 1 - _Metallic0);
								float3 ShaderSplat1 = _Splat1.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat1_ST.xy));
								ShaderSplat1 = lerp(pow(ShaderSplat1, 0.4) * _Specular1 * 2, lerp(1, saturate(pow(ShaderSplat1, 2)), _MainTexMult), 1 - _Metallic1);
								float3 ShaderSplat2 = _Splat2.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat2_ST.xy));
								ShaderSplat2 = lerp(pow(ShaderSplat2, 0.4) * _Specular2 * 2, lerp(1, saturate(pow(ShaderSplat2, 2)), _MainTexMult), 1 - _Metallic2);
								float3 ShaderSplat3 = _Splat3.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat3_ST.xy));
								ShaderSplat3 = lerp(pow(ShaderSplat3, 0.4) * _Specular3 * 2, lerp(1, saturate(pow(ShaderSplat3, 2)), _MainTexMult), 1 - _Metallic3);

								//float3 ShaderNormal0 = _Normal0.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat0_ST.xy));
								float3 ShaderNormal0 = UnpackScaleNormal(_Normal0.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat0_ST.xy)), _NormalScale0);
								ShaderNormal0 = lerp(ShaderNormal0, ShaderNormal0, 1 - _Metallic0);
								float3 ShaderNormal1 = UnpackScaleNormal(_Normal1.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat1_ST.xy)), _NormalScale1);
								ShaderNormal1 = lerp(ShaderNormal1, ShaderNormal1, 1 - _Metallic1);
								float3 ShaderNormal2 = UnpackScaleNormal(_Normal2.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat2_ST.xy)), _NormalScale2);
								ShaderNormal2 = lerp(ShaderNormal2, ShaderNormal2, 1 - _Metallic2);
								float3 ShaderNormal3 = UnpackScaleNormal(_Normal3.Sample(my_linear_repeat_sampler, i.uv * (_TerrainScale.xz / _Splat3_ST.xy)), _NormalScale3);
								ShaderNormal3 = lerp(ShaderNormal3, ShaderNormal3, 1 - _Metallic3);

								/*
								ShaderNormal0 = lerp(ShaderNormal0, ShaderNormal0, 1 - _Metallic0);
								float3 ShaderNormal1 = UnpackScaleNormal(_Normal1.Sample(sampler_BumpMap, i.uv * (_TerrainScale.xz / _Splat1_ST.xy)), _NormalScale1);
								ShaderNormal1 = lerp(ShaderNormal1, ShaderNormal1, 1 - _Metallic1);
								float3 ShaderNormal2 = UnpackScaleNormal(_Normal2.Sample(sampler_BumpMap, i.uv * (_TerrainScale.xz / _Splat2_ST.xy)), _NormalScale2);
								ShaderNormal2 = lerp(ShaderNormal2, ShaderNormal2, 1 - _Metallic2);
								float3 ShaderNormal3 = UnpackScaleNormal(_Normal3.Sample(sampler_BumpMap, i.uv * (_TerrainScale.xz / _Splat3_ST.xy)), _NormalScale3);
								ShaderNormal3 = lerp(ShaderNormal3, ShaderNormal3 * ShaderTwoValue, 1 - _Metallic3);
								*/
								// Shader NORMAL //
								float3 normal = lerp(0, ShaderNormal0, splat_control.r * (1 - _Metallic0));
								normal = lerp(normal, ShaderNormal1, splat_control.g * (1 - _Metallic1));
								normal = lerp(normal, ShaderNormal2, splat_control.b * (1 - _Metallic2));
								normal = lerp(normal, ShaderNormal3, splat_control.a * (1 - _Metallic3));

								// ShaderTwo NORMAL //
								//half3 normalTex = lerp(UnpackScaleNormal(tex2D(_NormalTex, i.uv * _ShaderTwoScale), _NormalScale0), ShaderNormal0, splat_control.r * (_Metallic0));
								half3 normalTex = lerp(UnpackScaleNormal(_Normal0.Sample(my_linear_repeat_sampler, i.uv * _ShaderTwoScale), _NormalScale), ShaderNormal0, splat_control.r * (_Metallic0));
								normalTex = lerp(normalTex, ShaderNormal1 * _NormalScale1, splat_control.g * (_Metallic1));
								normalTex = lerp(normalTex, ShaderNormal2 * _NormalScale2, splat_control.b * (_Metallic2));
								normalTex = lerp(normalTex, ShaderNormal3 * _NormalScale3, splat_control.a * (_Metallic3));

					#else
								ShaderTwoValue = saturate(pow((i.color.g) , 1 + clamp(abs((ShaderHeight - 0.5) * 20) * -_TransitionPower * (saturate(i.color.g)), -1, 1)) * 1.25);

								float3 normal = UnpackScaleNormal(tex2D(_BumpMap, (i.uv) * _ShaderNormalScale * _ShaderScale), _NormalMultiplier * 2).rgb * ShaderTwoValue - i.normal;
								half3 normalTex = UnpackScaleNormal(tex2D(_NormalTex, i.uv * _ShaderTwoScale), _NormalScale);
					#endif

					#ifdef IS_T
								half4 c = _Specular0;
								c = lerp(c,_Specular1, splat_control.g * (ShaderTwoValue) * (1 - _Metallic1));
								c = lerp(c,_Specular2, splat_control.b * (ShaderTwoValue) * (1 - _Metallic2));
								c = lerp(c,_Specular3, splat_control.a * (ShaderTwoValue) * (1 - _Metallic3));
					#else
								half4 c = _Color;
					#endif

					#ifdef IS_ShaderTwo
					#else
					#ifdef USE_RT

								if (_HasRT == 1)
								{
									if (i.color.b > 0.95 && i.color.g < 0.05)
									{
									}
									else
									{
										ripples2 = lerp(rippleMain.y, rippleMainAdditional.y, uvRTValue);
										ripples3 = lerp(rippleMain.z, rippleMainAdditional.z, uvRTValue);
										calculatedNormal = calcNormal(uv, _GlobalEffectRT);
										calculatedNormal.y = lerp(calculatedNormal.y, 0, saturate(ripples3 * 5));
										calculatedNormalAdd = calcNormal(uvAdd, _GlobalEffectRTAdditional);
										calculatedNormal = lerp(calculatedNormal, 0, uvRTValue);
									}

									c = lerp(
										c,
										_BotColor * 2 - 1,
										ripples3);

									c = lerp(
										c,
										c + _MountColor,
										saturate(saturate(ripples2 - ripples3) * saturate(ShaderHeight + 0.5) * 1));

									//c.rgb = lerp(c.rgb, c.rgb * _BotColor, saturate(ripples3 * saturate(saturate(calculatedNormal.r) + saturate(calculatedNormalAdd.r)) * _NormalRTStrength * 2));
									c.rgb = lerp(c.rgb, c.rgb * _BotColor, clamp(ripples3 * saturate(calculatedNormalAdd.r - 0.15) * _NormalRTStrength * 1, 0, 1));
								}
					#endif	
								c.rgb = c.rgb * lightColor; // HERE
								c.rgb = lerp(c.rgb * _Color * _DisplacementColorMult, c.rgb, ShaderHeightReal);
					#endif	
								float3 normalEffect = i.normal;
					#ifdef IS_T
								// Shader LERP //
								float3 ShaderColor = ShaderSplat0;
								ShaderColor = lerp(ShaderColor, ShaderSplat1, splat_control.g * (1 - _Metallic1));
								ShaderColor = lerp(ShaderColor, ShaderSplat2, splat_control.b * (1 - _Metallic2));
								ShaderColor = lerp(ShaderColor, ShaderSplat3, splat_control.a * (1 - _Metallic3));

								c.rgb *= ShaderColor;
					#else
								c *= lerp(1, saturate(pow(tex2D(_MainTex, i.uv * _ShaderScale) + _MainTexMult * 0.225, 2)), _MainTexMult);
					#endif
								// ShaderTwo MATERIAL //
								float3 viewDirTangent = i.viewDir;
					#ifdef IS_T
								// ShaderTwo LERP //
								//half4 ShaderTwoTex = half4(lerp(_TransitionColor, ShaderSplat0, ShaderTwoValue * splat_control.r * (_Metallic0)) ,1);
								half4 ShaderTwoTex = half4(ShaderSplat1,1);
								ShaderTwoTex.rgb = lerp(ShaderTwoTex, ShaderSplat1, splat_control.g * (_Metallic1));
								ShaderTwoTex.rgb = lerp(ShaderTwoTex, ShaderSplat2, splat_control.b * (_Metallic2));
								ShaderTwoTex.rgb = lerp(ShaderTwoTex, ShaderSplat2, splat_control.a * (_Metallic3));
					#else
								half4 ShaderTwoTex = half4(lerp(1, pow(_ShaderTwoTex.Sample(my_linear_repeat_sampler, i.uv * _ShaderTwoScale), 0.4), _ShaderTwoTint.a) * _ShaderTwoTint.rgb * 2 ,1);
					#endif
								ShaderTwoTex.rgb = ShaderTwoTex.rgb * lightColor;

								float3 viewDirection = normalize(_WorldSpaceCameraPos - i.worldPos.xyz);
								float3 normalDirection = normalize(i.normalDir);

								//float3 normalDirectionWithNormal = normalize(i.normalDir) + normalize(i.normalDir) * normalize(abs(tex2D(_BumpMap, i.uv * _ShaderNormalScale * _ShaderScale))) * _NormalMultiplier;

#ifdef IS_T
								float3 normalDirectionWithNormal = normalize(i.normalDir) + normalize(i.normalDir) * normal;
#else
								float3 normalDirectionWithNormal = normalize(i.normalDir) + normalize(i.normalDir) * normalize(abs(tex2D(_BumpMap, i.uv * _ShaderNormalScale * _ShaderScale))) * _NormalMultiplier;
#endif

								half fresnelValue = lerp(0, 1, saturate(dot(normalDirection, viewDirection)));
								_OffsetScale = max(0, _OffsetScale);

								half parallax = 0;

								float3 newRoughnessTex = tex2D(_Roughness, i.uv * _ShaderTwoScale).rgb;
								float alphaShaderTwo = 1;
								alphaShaderTwo = saturate(1 - saturate((newRoughnessTex.r + newRoughnessTex.g + newRoughnessTex.b) / 3));

								for (int j = 0; j < 4; j++) {
									float ratio = (float)j / (float)4;

									if (j == 0)
									{
					#ifdef IS_T
										//float3 j0UV = lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex;
										//float j0parallax = tex2D(_Mask0, i.uv * (_TerrainScale.xz / _Splat0_ST.xy) + j0UV).g * _ParallaxStrength.x * _Metallic0 * splat_control.r;
										//j0parallax += tex2D(_Mask1, i.uv * (_TerrainScale.xz / _Splat1_ST.xy) + j0UV).g * _ParallaxStrength.x * _Metallic1 * splat_control.g;
										//j0parallax += tex2D(_Mask2, i.uv * (_TerrainScale.xz / _Splat2_ST.xy) + j0UV).g * _ParallaxStrength.x * _Metallic2 * splat_control.b;
										//j0parallax += tex2D(_Mask3, i.uv * (_TerrainScale.xz / _Splat3_ST.xy) + j0UV).g * _ParallaxStrength.x * _Metallic3 * splat_control.a;
										//parallax += j0parallax;
					#else
										// 0 layer of cracks.
										//parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex).g * _ParallaxStrength.x;
					#endif
									}
									else if (j == 1)
									{
					#ifdef IS_T
										float3 j1UV = lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex;
										float j1parallax = tex2D(_Mask0, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat0_ST.xy) + j1UV).r * _ParallaxStrength.y * _Metallic0 * splat_control.r;
										j1parallax += tex2D(_Mask1, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat1_ST.xy) + j1UV).r * _ParallaxStrength.y * _Metallic1 * splat_control.g;
										j1parallax += tex2D(_Mask2, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat2_ST.xy) + j1UV).r * _ParallaxStrength.y * _Metallic2 * splat_control.b;
										j1parallax += tex2D(_Mask3, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat3_ST.xy) + j1UV).r * _ParallaxStrength.y * _Metallic3 * splat_control.a;
										parallax += j1parallax;
					#else
										// First layer of cracks.
										parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio / 2) * normalize(viewDirTangent) + normalTex).r * _ParallaxStrength.y * alphaShaderTwo;
										for (int k = 0; k < 5; k++)
										{
											parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio / 2 + k * 0.04) * normalize(viewDirTangent) + normalTex).r * _ParallaxStrength.y * alphaShaderTwo;
										}
					#endif
									}
									else if (j == 2)
									{
					#ifdef IS_T
										float3 j2UV = lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex;
										float j2parallax = tex2D(_Mask0, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat0_ST.xy) + j2UV).b * _ParallaxStrength.z * _Metallic0 * splat_control.r;
										j2parallax += tex2D(_Mask1, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat1_ST.xy) + j2UV).b * _ParallaxStrength.z * _Metallic1 * splat_control.g;
										j2parallax += tex2D(_Mask2, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat2_ST.xy) + j2UV).b * _ParallaxStrength.z * _Metallic2 * splat_control.b;
										j2parallax += tex2D(_Mask3, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat3_ST.xy) + j2UV).b * _ParallaxStrength.z * _Metallic3 * splat_control.a;
										parallax += j2parallax;
					#else
										// Second layer of cracks.
										parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex).b * _ParallaxStrength.z * alphaShaderTwo;
										for (int k = 0; k < 5; k++)
										{
											parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio + k * 0.04) * normalize(viewDirTangent) + normalTex).b * _ParallaxStrength.z * alphaShaderTwo;
										}
					#endif
									}
									else if (j == 3)
									{
					#ifdef IS_T
										float3 j3UV = lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex;
										float j3parallax = tex2D(_Mask0, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat0_ST.xy) + j3UV).g * _ParallaxStrength.w * _Metallic0 * splat_control.r;
										j3parallax += tex2D(_Mask1, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat1_ST.xy) + j3UV).g * _ParallaxStrength.w * _Metallic1 * splat_control.g;
										j3parallax += tex2D(_Mask2, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat2_ST.xy) + j3UV).g * _ParallaxStrength.w * _Metallic2 * splat_control.b;
										j3parallax += tex2D(_Mask3, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat3_ST.xy) + j3UV).g * _ParallaxStrength.w * _Metallic3 * splat_control.a;
										parallax += j3parallax;
					#else
										// Third layer of cracks.
										parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio) * normalize(viewDirTangent) + normalTex).g * _ParallaxStrength.w * alphaShaderTwo - fresnelValue * 0.02;
										for (int k = 0; k < 5; k++)
										{
											parallax += tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale + lerp(0, _OffsetScale, ratio + k * 0.04) * normalize(viewDirTangent) + normalTex).g * _ParallaxStrength.w * alphaShaderTwo - fresnelValue * 0.02;
										}
					#endif
									}
								}
								parallax *= 1.5;
								parallax *= (1 + _ParallaxStrength.x);
								parallax = clamp(parallax, -2, 2);
								half parallaxDepth = clamp(parallax * pow(max(0.0, dot(reflect(-viewDirection, normalDirection * 1.3) * 0.4,viewDirection)), 1)  ,-2,2);

								half4 blended = 0;

								if (i.color.b > 0.95 && i.color.g < 0.05)
								{
									blended = blendMultiply(ShaderTwoTex, parallax + parallaxDepth * 1, _ParalaxColorScale);
								}
								else
								{
									blended = blendMultiply(ShaderTwoTex, parallax + parallaxDepth * 1, _ParalaxColorScale) - (_ShaderTwoTrail * ripples3 * _ShaderTwoTrail.a);
								}

								blended.rgb = lerp(blended.rgb + newRoughnessTex * 0.4, blended.rgb, alphaShaderTwo);

								float3 albedo = 1;
					#ifdef	IS_ShaderTwo
								albedo = blended * 0.5 + lerp(0, 1, parallaxDepth);

								if (parallaxDepth < 0)
								{
									albedo.rgb = lerp(albedo.rgb, _ParalaxColor.rgb, saturate(abs(parallaxDepth)));
								}
								else
								{
									albedo.rgb = lerp(albedo.rgb, albedo.rgb + _ParalaxColor.rgb, saturate(abs(parallaxDepth)));
								}
					#else
					#ifdef IS_ADD
								albedo = lerp(c.rgb * _TransitionColor, c.rgb, saturate(pow(ShaderTwoValue, 3)));
					#else
								albedo = lerp(blended * 0.5 + lerp(0, 1, parallaxDepth), c.rgb, saturate(pow(ShaderTwoValue, 3)));

								if (parallaxDepth < 0)
								{
									albedo.rgb = lerp(albedo.rgb, _ParalaxColor.rgb, saturate(abs(parallaxDepth)) * saturate(1 - pow(ShaderTwoValue, 5)));
								}
								else
								{
									albedo.rgb = lerp(albedo.rgb, albedo.rgb + _ParalaxColor.rgb, saturate(abs(parallaxDepth)) * saturate(1 - pow(ShaderTwoValue, 5)));
								}
					#endif
					#endif
								float3 lightDirection;
								float attenuation;
								float shadowmap = SHADOW_ATTENUATION(i);
								half3 worldNormal;
#if !UNITY_COLORSPACE_GAMMA
								shadowmap = pow(shadowmap, gamma);
#endif

								worldNormal.x = dot(normalDirection.x, lerp(normalTex, UnpackScaleNormal(tex2D(_BumpMap, i.uv * _ShaderScale), _NormalMultiplier).rgb * 3 , ShaderTwoValue));
								worldNormal.y = dot(normalDirection.y, lerp(normalTex, UnpackScaleNormal(tex2D(_BumpMap, i.uv * _ShaderScale), _NormalMultiplier).rgb * 3 , ShaderTwoValue));
								worldNormal.z = dot(normalDirection.z, lerp(normalTex, UnpackScaleNormal(tex2D(_BumpMap, i.uv * _ShaderScale), _NormalMultiplier).rgb * 3 , ShaderTwoValue));

								half3 worldViewDir = normalize(UnityWorldSpaceViewDir(i.worldPos));
								half3 worldRefl = reflect(-worldViewDir, worldNormal);
								half4 skyData = UNITY_SAMPLE_TEXCUBE(unity_SpecCube0, worldRefl);
								half3 reflection = DecodeHDR(skyData, unity_SpecCube0_HDR);
								half reflectionMultiplier = lerp(1, 2, saturate(1 - shadowmap));

#if !UNITY_COLORSPACE_GAMMA
								reflection = pow(reflection, gamma);
#endif

								_ShininessShaderTwo = max(0.1, _ShininessShaderTwo);
								_ShininessShader = max(0.1, _ShininessShader);

								if (0.0 == _WorldSpaceLightPos0.w) // directional light
								{
									attenuation = 1.0; // no attenuation
									lightDirection = normalize(_WorldSpaceLightPos0.xyz);
								}
								else // point or spot light
								{
									float3 vertexToLightSource =
										_WorldSpaceLightPos0.xyz - i.worldPos.xyz;
									float distance = length(vertexToLightSource);
									attenuation = 1.0 / distance; // linear attenuation 
									lightDirection = normalize(vertexToLightSource);
								}

								float3 ambientLighting =
									UNITY_LIGHTMODEL_AMBIENT.rgb;
#if !UNITY_COLORSPACE_GAMMA
								ambientLighting = pow(ambientLighting, gamma);
#endif
								ambientLighting *= _Color.rgb;

								float3 diffuseReflection =
									attenuation * lightColor * _Color.rgb
									* max(0.0, dot(normalDirection, lightDirection));
								diffuseReflection = diffuseReflection + reflection * reflection * reflectionMultiplier * _ReflectionOpacity;

								float3 specularReflection;
								if (dot(normalDirection, lightDirection) < 0.0)
									// light source on the wrong side
								{
									specularReflection = float3(0.0, 0.0, 0.0);
									// no specular reflection
								}
								else // light source on the right side
								{
									specularReflection = attenuation * lightColor
										* _SpecColor.rgb * pow(max(0.0, dot(
											reflect(-lightDirection, normalDirection),
											viewDirection)), lerp(_ShininessShaderTwo, _ShininessShader, ShaderTwoValue));

									specularReflection = specularReflection + reflection * 0.2 * reflectionMultiplier;
								}
								//float NdotL = dot(_WorldSpaceLightPos0.xyz, lerp( normalDirection, normalDirectionWithNormal, saturate(ShaderTwoValue* ShaderTwoValue-0.2)));
								float NdotL = 0.5 * (dot(_WorldSpaceLightPos0.xyz, normalDirectionWithNormal)) + 0.5; // Lambert Normal adjustement
								NdotL = lerp(NdotL,NdotL + saturate(ShaderHeightReal) * 0.1 * _DisplacementStrength - saturate(1 - ShaderHeightReal) * 0.1 * _DisplacementStrength, ShaderTwoValue * _DisplacementShadowMult);
								NdotL = saturate(NdotL);

								float lightIntensity = smoothstep(0.1 + _LightOffset * clamp((_LightHardness + 0.5) * 2,1,10), (0.101 + _LightOffset) * clamp((_LightHardness + 0.5) * 2, 1, 10), NdotL * shadowmap);
								_SpecForce = max(0.1, _SpecForce);

								half3 shadowmapColor = lerp(_ProjectedShadowColor, 1, lightIntensity);
								albedo.xyz = albedo.xyz * saturate(shadowmapColor);

					#ifdef IS_T
								float4 specGloss = pow(tex2D(_SpecGlossMap, i.uv * 2 * (_TerrainScale.xz / _Splat0_ST.xy)), _SpecForce);
								float4 littleSpec = tex2D(_LittleSpec, i.uv * (_TerrainScale.xz / _Splat0_ST.xy)) * saturate(1 - ripples3);
					#else
								float4 specGloss = pow(tex2D(_SpecGlossMap, i.uv * 2 * _ShaderScale), _SpecForce);
								float4 littleSpec = tex2D(_LittleSpec, i.uv * _ShaderScale) * saturate(1 - ripples3);
					#endif

					#ifdef IS_T
								half rougnessTemp = tex2D(_Mask0, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat0_ST.xy)).r * 2 * _RoughnessStrength;
								rougnessTemp = lerp(rougnessTemp, tex2D(_Mask1, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat1_ST.xy)).r * 2 * _RoughnessStrength, _Metallic1 * splat_control.g);
								rougnessTemp = lerp(rougnessTemp, tex2D(_Mask2, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat2_ST.xy)).r * 2 * _RoughnessStrength, _Metallic2 * splat_control.b);
								rougnessTemp = lerp(rougnessTemp, tex2D(_Mask3, i.uv * _ShaderTwoScale * (_TerrainScale.xz / _Splat3_ST.xy)).r * 2 * _RoughnessStrength, _Metallic3 * splat_control.a);
					#ifdef	IS_ShaderTwo
								half rougnessTex = rougnessTemp * saturate(1 - ripples3);
					#else
								half rougnessTex = rougnessTemp * saturate(1 - ripples3) * (1 - ShaderTwoValue);
					#endif

					#else
					#ifdef	IS_ShaderTwo
								half rougnessTex = tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale).r * 2 * _RoughnessStrength * saturate(1 - ripples3) * 1;
					#else
								half rougnessTex = tex2D(_ParallaxLayers, i.uv * _ShaderTwoScale).r * 2 * _RoughnessStrength * saturate(1 - ripples3) * (1 - ShaderTwoValue);
					#endif
					#endif

					#ifdef	IS_ShaderTwo
								specGloss.r = specGloss.r * saturate(normal);
					#else
					#ifdef USE_RT
								if (_HasRT == 1)
								{
									specGloss.r = specGloss.r * saturate(normal) + saturate(ripples3 * 30) * lerp(0, 1, saturate(saturate(1 - ripples3 * 5) * calculatedNormal.x * reflect(-lightDirection, normalDirection)).x * _NormalRTStrength * saturate(shadowmapColor * 2));
									specGloss.r = specGloss.r * saturate(normal) + saturate(ripples2 * 30) * lerp(0, 0.1, saturate(saturate(1 - ripples2 * 5) * calculatedNormal.y * reflect(lightDirection, -normalDirection)).x * _NormalRTStrength * saturate(shadowmapColor * 2));
								}
								else
								{
									specGloss.r = specGloss.r * saturate(normal);
								}
					#else
								specGloss.r = specGloss.r * saturate(normal);
					#endif
					#endif
								_LittleSpecForce = max(0, _LittleSpecForce);

					#ifdef	IS_ShaderTwo
								specularReflection = parallax + specularReflection;
					#else
								specularReflection = lerp(parallax + specularReflection, specularReflection * (specGloss.r + lerp(littleSpec.g * _LittleSpecForce * 0.2 , littleSpec.g * _LittleSpecForce, specularReflection)), saturate(ShaderTwoValue * 3)); // multiply the *3 for a better Shader ShaderTwo transition
					#endif
								float smallSpec = pow(max(0.0, dot(reflect(-lightDirection , normalDirection + parallax * 0.01), viewDirection)), 800);
								smallSpec = saturate(smallSpec * saturate(UnpackScaleNormal(tex2D(_NormalTex, i.uv * _ShaderTwoScale), 20) + 0.8));

					#ifdef	IS_ShaderTwo
								specularReflection = diffuseReflection * 0.1 + specularReflection * rougnessTex + smallSpec;
					#else
					#ifdef USE_RT
								if (_HasRT == 1)
								{
									specularReflection = specularReflection - lerp(0, saturate(0.075), saturate(saturate(_LightColor0.a * lightIntensity + _LightColor0.a * 0.35) * saturate(1 - ripples3 * 4) * calculatedNormal.x * reflect(lightDirection, normalDirection)).x * _NormalRTStrength);
									specularReflection = specularReflection + lerp(0, saturate(0.125), saturate(saturate(_LightColor0.a * lightIntensity + _LightColor0.a * 0.35) * saturate(1 - ripples3 * 8) * calculatedNormal.x * reflect(-lightDirection, normalDirection)).x * _NormalRTStrength);
									specularReflection = specularReflection - lerp(0, saturate(0.1), saturate(saturate(1 - ripples2 * 1) * calculatedNormal.y * reflect(-lightDirection, normalDirection)).x * _NormalRTStrength);
									specularReflection = specularReflection + lerp(0, saturate(0.1), saturate(saturate(1 - ripples2 * 6) * calculatedNormal.y * reflect(lightDirection, normalDirection)).x * _NormalRTStrength * 0.5);
								}
					#endif
								specularReflection = lerp(specularReflection, diffuseReflection * 0.1 + specularReflection * rougnessTex + smallSpec, saturate(pow(1 - ShaderTwoValue,2) * 3));
					#endif

					#ifdef USE_AL

								half3 ambientColor = ShadeSH9(half4(lerp(normalDirection, normalDirection + normalEffect * 2.5, saturate(ripples3)), 1));
#if !UNITY_COLORSPACE_GAMMA
								ambientColor = pow(ambientColor, gamma) * 1.0;
#endif
								albedo.rgb = saturate(albedo.rgb + (ambientColor - 0.5) * 0.75);
					#endif
								half fresnelRefl = lerp(1, 0, saturate(dot(normalDirection, viewDirection) * 2.65 * _ReflectionColor.a));

					#ifdef	IS_ShaderTwo
								albedo.rgb = lerp(albedo.rgb, albedo.rgb + reflection * _ReflectionStrength + _ReflectionColor.rgb, saturate(fresnelRefl));
					#else
								albedo.rgb = lerp(albedo.rgb, albedo.rgb + reflection * _ReflectionStrength + _ReflectionColor.rgb, saturate((1 - ShaderTwoValue) * (fresnelRefl + normalTex * fresnelRefl)));
								albedo.rgb = lerp(albedo.rgb, albedo.rgb + _RimColor, saturate(ShaderTwoValue * (fresnelRefl + normal * fresnelRefl * 0.2)));
					#endif
								albedo.rgb = lerp((albedo.rgb + reflection * 0.15 + 0.2) , albedo.rgb, saturate(1 - fresnelRefl * 0.25));

								albedo += float4(specularReflection.r, specularReflection.r, specularReflection.r, 1.0) * _SpecColor.rgb;

								half transparency = 1;
					#ifdef	IS_ADD
								transparency = saturate(lerp(-0.5,2, saturate(pow(ShaderTwoValue,1))));
								if (ShaderTwoValue < 0.30)
								{
									discard;
								}
					#endif

								albedo = max(0, albedo);
						UNITY_APPLY_FOG(i.fogCoord, albedo);
						return float4(albedo, transparency);
					}

					TessellatedVert tessellatedVert(VertexData v) {
						TessellatedVert p;

#ifdef USE_VR
						UNITY_SETUP_INSTANCE_ID(v);
						UNITY_TRANSFER_INSTANCE_ID(v, p);
#endif

						p.vertex = v.vertex;
						p.normal = v.normal;
						p.tangent = v.tangent;
						p.uv = v.uv;
						p.color = v.color;
						return p;
					}

					[UNITY_domain("tri")]
					InterpolatorsVertex Domain(
						TessellationFactors factors,
						OutputPatch<TessellatedVert, 3> patch,
						float3 barycentricCoordinates : SV_DomainLocation
						)
						{
						VertexData data;

						#define MY_DOMAIN_PROGRAM_INTERPOLATE(fieldName) data.fieldName = \
							patch[0].fieldName * barycentricCoordinates.x + \
							patch[1].fieldName * barycentricCoordinates.y + \
							patch[2].fieldName * barycentricCoordinates.z;

						MY_DOMAIN_PROGRAM_INTERPOLATE(vertex)
						MY_DOMAIN_PROGRAM_INTERPOLATE(normal)
						MY_DOMAIN_PROGRAM_INTERPOLATE(tangent)
						MY_DOMAIN_PROGRAM_INTERPOLATE(uv)
						MY_DOMAIN_PROGRAM_INTERPOLATE(color)

#ifdef USE_VR
							UNITY_SETUP_INSTANCE_ID(data);
						UNITY_TRANSFER_INSTANCE_ID(patch[0], data);
#endif

						return vert(data);
						}

								ENDCG
					}


					// SHADOW CASTER PASS
					Pass{
					Tags {
						"LightMode" = "ShadowCaster"
					}

					CGPROGRAM

					#pragma target 4.6

							#pragma shader_feature _TESSELLATION_EDGE

							#pragma multi_compile _ LOD_FADE_CROSSFADE

							#pragma multi_compile_fwdbase
							#pragma multi_compile_fog

							#pragma vertex tessellatedVert
							#pragma fragment frag
							#pragma hull Hull
							#pragma domain Domain

							#define FORWARD_BASE_PASS
							#pragma shader_feature USE_AL
							#pragma shader_feature USE_RT
							#pragma shader_feature IS_ADD
							#pragma shader_feature USE_WC

							#include "UnityPBSLighting.cginc"
							#include "AutoLight.cginc"

					sampler2D  _DetailTex, _DetailMask;
					float4 _MainTex_ST, _DetailTex_ST;

					// Render Texture Effects //
					uniform sampler2D _GlobalEffectRT;
					uniform float3 _Position;
					uniform float _OrthographicCamSize;
					uniform sampler2D _GlobalEffectRTAdditional;
					uniform float3 _PositionAdd;
					uniform float _OrthographicCamSizeAdditional;

					sampler2D _MainTex;
					float _HasRT;

					float _UpVector, _NormalVector;
					float _AddShaderStrength, _RemoveShaderStrength, _DisplacementStrength;

					//ShaderTwo Variables
					sampler2D _ShaderHeight;
					sampler2D _ShaderTransition;
					float _TransitionScale;
					float _TransitionPower;
					float _HeightScale, _ShaderScale;

					half _OverallScale;

					half _DisplacementOffset;

					struct VertexData //appdata
					{
						float4 vertex : POSITION;
						float3 normal : NORMAL;
						float4 tangent : TANGENT;
						float2 uv : TEXCOORD0;
						float4 color : COLOR;

					#ifdef SHADOWS_SCREEN
						SHADOW_COORDS(1)
					#endif
#ifdef USE_VR
							UNITY_VERTEX_INPUT_INSTANCE_ID
#endif
					};

					struct InterpolatorsVertex
					{
						float4 pos : SV_POSITION;
						float3 normal : TEXCOORD1;
						float4 tangent : TANGENT;
						float4 uv : TEXCOORD0;
						float4 color : COLOR;
						float3 worldPos : TEXCOORD2;
						float3 viewDir: POSITION1;
						float3 normalDir: TEXCOORD3;

					#ifdef SHADOWS_SCREEN
						SHADOW_COORDS(4)
					#endif
#ifdef USE_VR
							UNITY_VERTEX_OUTPUT_STEREO
#endif
					};

					InterpolatorsVertex vert(VertexData v) {
						InterpolatorsVertex i;

#ifdef USE_VR
						UNITY_SETUP_INSTANCE_ID(v);
						UNITY_INITIALIZE_OUTPUT(InterpolatorsVertex, i);
						UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(i);
#endif

						float3 worldPos = mul(unity_ObjectToWorld, v.vertex);
						float3 originalPos = worldPos;

						//RT Cam effects
						float2 uv = worldPos.xz - _Position.xz;
						uv = uv / (_OrthographicCamSize * 2);
						uv += 0.5;

						float2 uvAdd = worldPos.xz - _PositionAdd.xz;
						uvAdd = uvAdd / (_OrthographicCamSizeAdditional * 2);
						uvAdd += 0.5;

						float3 rippleMain = 0;
						float3 rippleMainAdditional = 0;

						float ripples = 0;
						float ripples2 = 0;
						float ripples3 = 0;

						float uvRTValue = 0;

					#ifdef USE_RT
						if (_HasRT == 1)
						{
							// .b(lue) = Shader Dig / .r(ed) = Shader To ShaderTwo / .g(reen) = Shader Mount
							rippleMain = tex2Dlod(_GlobalEffectRT, float4(uv, 0, 0));
							rippleMainAdditional = tex2Dlod(_GlobalEffectRTAdditional, float4(uvAdd, 0, 0));
						}

					#ifdef IS_ShaderTwo
					#else
						float2 uvGradient = smoothstep(0, 5, length(max(abs(_Position.xz - worldPos.xz) - _OrthographicCamSize + 5, 0.0)));
						uvRTValue = saturate(uvGradient.x);

						ripples = lerp(rippleMain.x, rippleMainAdditional.x, uvRTValue);
						ripples2 = lerp(rippleMain.y, rippleMainAdditional.y, uvRTValue);
						ripples3 = lerp(rippleMain.z, rippleMainAdditional.z, uvRTValue);
					#endif

					#endif

					#ifdef IS_T
						half4 splat_control = tex2Dlod(_Control0, float4(v.uv, 0, 0));
						half4 splat_control1 = tex2Dlod(_Control1, float4(v.uv, 0, 0));

						float ShaderTwoValue = saturate(1 - splat_control.r * _Metallic0 - splat_control.g * _Metallic1 - splat_control.b * _Metallic2 - splat_control.a * _Metallic3
							- ripples);

						float ShaderHeightNew = tex2Dlod(_Mask0, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r;
						ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask1, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.g * (1 - _Metallic1));
						ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask2, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.b * (1 - _Metallic2));
						ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask3, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.a * (1 - _Metallic3));

						float ShaderHeight = ShaderHeightNew;
					#else
						float ShaderTwoValue = saturate((v.color.g + v.color.b) / 2 - ripples);
					#ifdef USE_WC
						float ShaderHeight = tex2Dlod(_ShaderHeight, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r;
					#else
						float ShaderHeight = tex2Dlod(_ShaderHeight, float4(v.uv, 0, 0) * _HeightScale).r;
					#endif
					#endif

						i.normalDir = normalize(mul(float4(v.normal, 0.0), unity_WorldToObject));
					#ifdef IS_ShaderTwo
					#else

						v.color = lerp(v.color, saturate(float4(1, 0, 0, 0)), ripples);
						i.normal = normalize(v.normal);

					#ifdef IS_ADD
						float3 newNormal = normalize(i.normalDir);
						worldPos += ((float4(0, -_RemoveShaderStrength, 0, 0) * _UpVector - newNormal * _RemoveShaderStrength * _NormalVector) * ripples3 + (float4(0, _AddShaderStrength * ShaderHeight, 0, 0) * _UpVector + newNormal * _AddShaderStrength * ShaderHeight * _NormalVector) * ripples2 * saturate(1 - ripples3)) * saturate(ShaderTwoValue * 3);
						worldPos += (float4(0, _DisplacementOffset, 0, 0) * _UpVector + newNormal * _DisplacementOffset * _NormalVector) * saturate(ShaderTwoValue * 2.5);
						worldPos += (float4(0, 2 * _DisplacementStrength * ShaderHeight, 0, 0) * _UpVector) + (newNormal * 2 * _DisplacementStrength * ShaderHeight * _NormalVector) * saturate(saturate(ShaderTwoValue * 2.5));

						worldPos = lerp(worldPos, mul(unity_ObjectToWorld, v.vertex), saturate(v.color.g - saturate(v.color.r + v.color.b)));

						v.vertex.xyz = lerp(mul(unity_WorldToObject, float4(originalPos, 1)).xyz, mul(unity_WorldToObject, float4(worldPos, 1)).xyz, ShaderTwoValue);
					#else
						float3 newNormal = normalize(i.normalDir);
						worldPos += ((float4(0, -_RemoveShaderStrength, 0, 0) * _UpVector - newNormal * _RemoveShaderStrength * _NormalVector) * ripples3 + (float4(0, _AddShaderStrength * ShaderHeight, 0, 0) * _UpVector + newNormal * _AddShaderStrength * ShaderHeight * _NormalVector) * ripples2 * saturate(1 - ripples3)) * saturate(ShaderTwoValue * 3);
						worldPos += (float4(0, _DisplacementOffset, 0, 0) * _UpVector + newNormal * _DisplacementOffset * _NormalVector) * saturate(ShaderTwoValue * 2.5);
						worldPos += (float4(0, 2 * _DisplacementStrength * ShaderHeight, 0, 0) * _UpVector) + (newNormal * 2 * _DisplacementStrength * ShaderHeight * _NormalVector) * saturate(saturate(ShaderTwoValue * 2.5));

						worldPos = lerp(worldPos, mul(unity_ObjectToWorld, v.vertex), saturate(v.color.g - saturate(v.color.r + v.color.b)));

						v.vertex.xyz = lerp(mul(unity_WorldToObject, float4(originalPos, 1)).xyz, mul(unity_WorldToObject, float4(worldPos, 1)).xyz, ShaderTwoValue);

					#endif
					#endif

						i.pos = UnityObjectToClipPos(v.vertex);

						float4 objCam = mul(unity_WorldToObject, float4(_WorldSpaceCameraPos, 1.0));
						float3 viewDir = v.vertex.xyz - objCam.xyz;

					#ifdef IS_T
						float4 tangent = float4 (1.0, 0.0, 0.0, -1.0);
						tangent.xyz = tangent.xyz - v.normal * dot(v.normal, tangent.xyz); // Orthogonalize tangent to normal.

						float tangentSign = tangent.w * unity_WorldTransformParams.w;
						float3 bitangent = cross(v.normal.xyz, tangent.xyz) * tangentSign;

						i.viewDir = float3(
							dot(viewDir, tangent.xyz),
							dot(viewDir, bitangent.xyz),
							dot(viewDir, v.normal.xyz)
							);

						i.worldPos.xyz = mul(unity_ObjectToWorld, v.vertex);
						i.tangent = tangent;

					#else
						float tangentSign = v.tangent.w * unity_WorldTransformParams.w;
						float3 bitangent = cross(v.normal.xyz, v.tangent.xyz) * tangentSign;

						i.viewDir = float3(
							dot(viewDir, v.tangent.xyz),
							dot(viewDir, bitangent.xyz),
							dot(viewDir, v.normal.xyz)
							);

						i.worldPos.xyz = mul(unity_ObjectToWorld, v.vertex);
						i.tangent = v.tangent;
					#endif

						i.color = v.color;

					#ifdef IS_T
						i.uv.xy = v.uv;
					#else
						i.uv.xy = TRANSFORM_TEX(v.uv, _MainTex) * _OverallScale;
					#endif
						i.uv.zw = TRANSFORM_TEX(v.uv, _DetailTex);


						TRANSFER_SHADOW_CASTER_NORMALOFFSET(i)

						return i;
					}

								float4 frag(InterpolatorsVertex i) : SV_Target
								{
#ifdef USE_VR
								UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i)
#endif
					#ifdef	IS_ADD
										float3 worldPos = mul(unity_ObjectToWorld, i.pos);
						float3 originalPos = worldPos;

						float2 uv = worldPos.xz - _Position.xz;
						uv = uv / (_OrthographicCamSize * 2);
						uv += 0.5;

						float2 uvAdd = worldPos.xz - _PositionAdd.xz;
						uvAdd = uvAdd / (_OrthographicCamSizeAdditional * 2);
						uvAdd += 0.5;

						float3 rippleMain = 0;
						float3 rippleMainAdditional = 0;
										rippleMain = tex2Dlod(_GlobalEffectRT, float4(uv, 0, 0));
						rippleMainAdditional = tex2Dlod(_GlobalEffectRTAdditional, float4(uvAdd, 0, 0));

						float ShaderHeight = tex2D(_ShaderTransition, (i.uv * _TransitionScale * _ShaderScale)).r;
						float ShaderTwoValue = saturate(pow((i.color.g + i.color.b) / 2, 0.35 + clamp((ShaderHeight - 0.5) * -_TransitionPower * (saturate(i.color.g + i.color.b)), -0.34, 1)));
						if (ShaderTwoValue < 0.30)
						{
							discard;
						}
					#endif
								SHADOW_CASTER_FRAGMENT(i)
								}


								TessellatedVert tessellatedVert(VertexData v) {
									TessellatedVert p;
#ifdef USE_VR
									UNITY_SETUP_INSTANCE_ID(v);
									UNITY_TRANSFER_INSTANCE_ID(v, p);
#endif
									p.vertex = v.vertex;
									p.normal = v.normal;
									p.tangent = v.tangent;
									p.uv = v.uv;
									p.color = v.color;
									return p;
								}

								[UNITY_domain("tri")]
								InterpolatorsVertex Domain(
									TessellationFactors factors,
									OutputPatch<TessellatedVert, 3> patch,
									float3 barycentricCoordinates : SV_DomainLocation
								)
								{
									VertexData data;

					#define MY_DOMAIN_PROGRAM_INTERPOLATE(fieldName) data.fieldName = \
							patch[0].fieldName * barycentricCoordinates.x + \
							patch[1].fieldName * barycentricCoordinates.y + \
							patch[2].fieldName * barycentricCoordinates.z;

									MY_DOMAIN_PROGRAM_INTERPOLATE(vertex)
										MY_DOMAIN_PROGRAM_INTERPOLATE(normal)
										MY_DOMAIN_PROGRAM_INTERPOLATE(tangent)
										MY_DOMAIN_PROGRAM_INTERPOLATE(uv)
										MY_DOMAIN_PROGRAM_INTERPOLATE(color)
#ifdef USE_VR
										UNITY_SETUP_INSTANCE_ID(data);
									UNITY_TRANSFER_INSTANCE_ID(patch[0], data);
#endif

										return vert(data);
								}

								ENDCG
							}

									// ADDITIONAL LIGHT PASS
									Pass{
									Tags {
										"LightMode" = "ForwardAdd"
									}
										Blend One One // Additive

									CGPROGRAM

									#pragma target 4.6

											#pragma shader_feature _TESSELLATION_EDGE

											#pragma multi_compile _ LOD_FADE_CROSSFADE

									//#pragma multi_compile_fwdbase
									#pragma multi_compile_fog

									#pragma vertex tessellatedVert
									#pragma fragment frag
									#pragma hull Hull
									#pragma domain Domain

									#define FORWARD_BASE_PASS
									#pragma shader_feature USE_AL
									#pragma shader_feature USE_RT
									#pragma shader_feature IS_ADD
									#pragma shader_feature USE_WC

								#pragma multi_compile_fwdadd_fullshadows
								#include "Lighting.cginc"
								#include "AutoLight.cginc"

								//uniform float4x4 unity_WorldToLight;
								//uniform sampler2D _LightTexture0;
								uniform float _LightIntensity;
								//uniform float4 _LightColor0;

								sampler2D  _DetailTex, _DetailMask;
								float4 _MainTex_ST, _DetailTex_ST;

								// Render Texture Effects //
								uniform sampler2D _GlobalEffectRT;
								uniform float3 _Position;
								uniform float _OrthographicCamSize;
								uniform sampler2D _GlobalEffectRTAdditional;
								uniform float3 _PositionAdd;
								uniform float _OrthographicCamSizeAdditional;

								float _HasRT;
								sampler2D _MainTex;

								float _UpVector, _NormalVector;
								float _AddShaderStrength, _RemoveShaderStrength, _DisplacementStrength;

								//ShaderTwo Variables
								sampler2D _ShaderHeight;
								sampler2D _ShaderTransition;
								float _TransitionScale;
								float _TransitionPower;
								float _HeightScale, _ShaderScale;

								half _OverallScale;

								half _DisplacementOffset;

							struct VertexData //appdata
							{
								float4 vertex : POSITION;
								float3 normal : NORMAL;
								float4 tangent : TANGENT;
								float2 uv : TEXCOORD0;
								float4 color : COLOR;
								UNITY_FOG_COORDS(1)
								float4 posLight : TEXCOORD2;
#ifdef USE_VR
								UNITY_VERTEX_INPUT_INSTANCE_ID
#endif
							};

							struct InterpolatorsVertex
							{
								float4 pos : SV_POSITION;
								float3 normal : TEXCOORD1;
								float4 tangent : TANGENT;
								float4 uv : TEXCOORD0;
								float4 color : COLOR;
								float3 worldPos : TEXCOORD2;
								float3 viewDir: POSITION1;
								float3 normalDir: TEXCOORD3;
								UNITY_FOG_COORDS(4)
								float4 posLight : TEXCOORD5;
#ifdef USE_VR
								UNITY_VERTEX_OUTPUT_STEREO
#endif
							};

							InterpolatorsVertex vert(VertexData v) {
								InterpolatorsVertex i;

#ifdef USE_VR
								UNITY_SETUP_INSTANCE_ID(v);
								UNITY_INITIALIZE_OUTPUT(InterpolatorsVertex, i);
								UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(i);
#endif

								float3 worldPos = mul(unity_ObjectToWorld, v.vertex);
								float3 originalPos = worldPos;

								//RT Cam effects
								float2 uv = worldPos.xz - _Position.xz;
								uv = uv / (_OrthographicCamSize * 2);
								uv += 0.5;

								float2 uvAdd = worldPos.xz - _PositionAdd.xz;
								uvAdd = uvAdd / (_OrthographicCamSizeAdditional * 2);
								uvAdd += 0.5;

								float3 rippleMain = 0;
								float3 rippleMainAdditional = 0;

								float ripples = 0;
								float ripples2 = 0;
								float ripples3 = 0;

								float uvRTValue = 0;
								//float viewDistance = distance(worldPos, _WorldSpaceCameraPos);
					#ifdef USE_RT
								if (_HasRT == 1)
								{
									// .b(lue) = Shader Dig / .r(ed) = Shader To ShaderTwo / .g(reen) = Shader Mount
									rippleMain = tex2Dlod(_GlobalEffectRT, float4(uv, 0, 0));
									rippleMainAdditional = tex2Dlod(_GlobalEffectRTAdditional, float4(uvAdd, 0, 0));
								}

					#ifdef IS_ShaderTwo
					#else
								float2 uvGradient = smoothstep(0, 5, length(max(abs(_Position.xz - worldPos.xz) - _OrthographicCamSize + 5, 0.0)));
								uvRTValue = saturate(uvGradient.x);

								ripples = lerp(rippleMain.x, rippleMainAdditional.x, uvRTValue);
								ripples2 = lerp(rippleMain.y, rippleMainAdditional.y, uvRTValue);
								ripples3 = lerp(rippleMain.z, rippleMainAdditional.z, uvRTValue);
					#endif

					#endif

					#ifdef IS_T
								half4 splat_control = tex2Dlod(_Control0, float4(v.uv, 0, 0));
								half4 splat_control1 = tex2Dlod(_Control1, float4(v.uv, 0, 0));

								float ShaderTwoValue = saturate(1 - splat_control.r * _Metallic0 - splat_control.g * _Metallic1 - splat_control.b * _Metallic2 - splat_control.a * _Metallic3
									- ripples);

								float ShaderHeightNew = tex2Dlod(_Mask0, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r;
								ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask1, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.g * (1 - _Metallic1));
								ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask2, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.b * (1 - _Metallic2));
								ShaderHeightNew = lerp(ShaderHeightNew, tex2Dlod(_Mask3, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r, splat_control.a * (1 - _Metallic3));

								float ShaderHeight = ShaderHeightNew;
					#else
								float ShaderTwoValue = saturate((v.color.g + v.color.b) / 2 - ripples);
					#ifdef USE_WC
								float ShaderHeight = tex2Dlod(_ShaderHeight, float4(originalPos.xz, 0, 0) * _HeightScale * 0.1).r;
					#else
								float ShaderHeight = tex2Dlod(_ShaderHeight, float4(v.uv, 0, 0) * _HeightScale).r;
					#endif
					#endif

								i.normalDir = normalize(mul(float4(v.normal, 0.0), unity_WorldToObject));
					#ifdef IS_ShaderTwo
					#else

								v.color = lerp(v.color, saturate(float4(1, 0, 0, 0)), ripples);
								i.normal = normalize(v.normal);

					#ifdef IS_ADD
								float3 newNormal = normalize(i.normalDir);
								worldPos += ((float4(0, -_RemoveShaderStrength, 0, 0) * _UpVector - newNormal * _RemoveShaderStrength * _NormalVector) * ripples3 + (float4(0, _AddShaderStrength * ShaderHeight, 0, 0) * _UpVector + newNormal * _AddShaderStrength * ShaderHeight * _NormalVector) * ripples2 * saturate(1 - ripples3)) * saturate(ShaderTwoValue * 3);
								worldPos += (float4(0, _DisplacementOffset, 0, 0) * _UpVector + newNormal * _DisplacementOffset * _NormalVector) * saturate(ShaderTwoValue * 2.5);
								worldPos += (float4(0, 2 * _DisplacementStrength * ShaderHeight, 0, 0) * _UpVector) + (newNormal * 2 * _DisplacementStrength * ShaderHeight * _NormalVector) * saturate(saturate(ShaderTwoValue * 2.5));

								worldPos = lerp(worldPos, mul(unity_ObjectToWorld, v.vertex), saturate(v.color.g - saturate(v.color.r + v.color.b)));

								v.vertex.xyz = lerp(mul(unity_WorldToObject, float4(originalPos, 1)).xyz, mul(unity_WorldToObject, float4(worldPos, 1)).xyz, ShaderTwoValue);
					#else
								float3 newNormal = normalize(i.normalDir);
								worldPos += ((float4(0, -_RemoveShaderStrength, 0, 0) * _UpVector - newNormal * _RemoveShaderStrength * _NormalVector) * ripples3 + (float4(0, _AddShaderStrength * ShaderHeight, 0, 0) * _UpVector + newNormal * _AddShaderStrength * ShaderHeight * _NormalVector) * ripples2 * saturate(1 - ripples3)) * saturate(ShaderTwoValue * 3);
								worldPos += (float4(0, _DisplacementOffset, 0, 0) * _UpVector + newNormal * _DisplacementOffset * _NormalVector) * saturate(ShaderTwoValue * 2.5);
								worldPos += (float4(0, 2 * _DisplacementStrength * ShaderHeight, 0, 0) * _UpVector) + (newNormal * 2 * _DisplacementStrength * ShaderHeight * _NormalVector) * saturate(saturate(ShaderTwoValue * 2.5));

								worldPos = lerp(worldPos, mul(unity_ObjectToWorld, v.vertex), saturate(v.color.g - saturate(v.color.r + v.color.b)));

								v.vertex.xyz = lerp(mul(unity_WorldToObject, float4(originalPos, 1)).xyz, mul(unity_WorldToObject, float4(worldPos, 1)).xyz, ShaderTwoValue);

					#endif
					#endif

								i.pos = UnityObjectToClipPos(v.vertex);

								float4 objCam = mul(unity_WorldToObject, float4(_WorldSpaceCameraPos, 1.0));
								float3 viewDir = v.vertex.xyz - objCam.xyz;

					#ifdef IS_T
								float4 tangent = float4 (1.0, 0.0, 0.0, -1.0);
								tangent.xyz = tangent.xyz - v.normal * dot(v.normal, tangent.xyz); // Orthogonalize tangent to normal.

								float tangentSign = tangent.w * unity_WorldTransformParams.w;
								float3 bitangent = cross(v.normal.xyz, tangent.xyz) * tangentSign;

								i.viewDir = float3(
									dot(viewDir, tangent.xyz),
									dot(viewDir, bitangent.xyz),
									dot(viewDir, v.normal.xyz)
									);

								i.worldPos.xyz = mul(unity_ObjectToWorld, v.vertex);
								i.tangent = tangent;

					#else
								float tangentSign = v.tangent.w * unity_WorldTransformParams.w;
								float3 bitangent = cross(v.normal.xyz, v.tangent.xyz) * tangentSign;

								i.viewDir = float3(
									dot(viewDir, v.tangent.xyz),
									dot(viewDir, bitangent.xyz),
									dot(viewDir, v.normal.xyz)
									);

								i.worldPos.xyz = mul(unity_ObjectToWorld, v.vertex);
								i.tangent = v.tangent;
					#endif

								i.color = v.color;

					#ifdef IS_T
								i.uv.xy = v.uv;
					#else
								i.uv.xy = TRANSFORM_TEX(v.uv, _MainTex) * _OverallScale;
					#endif
								i.uv.zw = TRANSFORM_TEX(v.uv, _DetailTex);

					#if defined(SPOT) || defined(POINT)
								i.posLight = mul(unity_WorldToLight, mul(unity_ObjectToWorld, v.vertex));
					#else
								i.posLight = mul(unity_ObjectToWorld, v.vertex);
					#endif


								UNITY_TRANSFER_FOG(i, i.pos);
								return i;
							}

										float4 frag(InterpolatorsVertex i) : SV_Target
										{
#ifdef USE_VR
								UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i)
#endif
								float3 worldPos = i.worldPos;
								float3 originalPos = worldPos;
							#ifdef	IS_ADD

								float2 uv = worldPos.xz - _Position.xz;
								uv = uv / (_OrthographicCamSize * 2);
								uv += 0.5;

								float2 uvAdd = worldPos.xz - _PositionAdd.xz;
								uvAdd = uvAdd / (_OrthographicCamSizeAdditional * 2);
								uvAdd += 0.5;

								float3 rippleMain = 0;
								float3 rippleMainAdditional = 0;

								rippleMain = tex2Dlod(_GlobalEffectRT, float4(uv, 0, 0));
								rippleMainAdditional = tex2Dlod(_GlobalEffectRTAdditional, float4(uvAdd, 0, 0));

								float ShaderHeight = tex2D(_ShaderTransition, (i.uv * _TransitionScale * _ShaderScale)).r;
								float ShaderTwoValue = saturate(pow((i.color.g + i.color.b) / 2, 0.35 + clamp((ShaderHeight - 0.5) * -_TransitionPower * (saturate(i.color.g + i.color.b)), -0.34, 1)));
								if (ShaderTwoValue < 0.30)
								{
									discard;
								}
							#endif

									 float3 normalDirection = normalize(i.normalDir);
									 float3 lightDirection;
									 float attenuation = 1.0;
									 float cookieAttenuation = 1.0;
					#if defined(SPOT) || defined(POINT)
									 if (0.0 == _WorldSpaceLightPos0.w) // directional light
									 {
										attenuation = 1.0; // no attenuation
										lightDirection = normalize(_WorldSpaceLightPos0.xyz);
										cookieAttenuation = tex2D(_LightTexture0, i.posLight.xy).a;
									 }
									 else if (1.0 != unity_WorldToLight[3][3]) // spot light
									 {
										 attenuation = 1.0; // no attenuation
										 UNITY_LIGHT_ATTENUATION(atten, i, worldPos.xyz);
										 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
										 cookieAttenuation = tex2D(_LightTexture0,i.posLight.xy / i.posLight.w + float2(0.5, 0.5)).a;
										 attenuation = atten;
									 }
									 else // point light
									 {
										float3 vertexToLightSource = _WorldSpaceLightPos0.xyz - originalPos.xyz;
										lightDirection = normalize(vertexToLightSource);

										half ndotl = saturate(dot(normalDirection, lightDirection));
										UNITY_LIGHT_ATTENUATION(atten, i, worldPos.xyz);
										attenuation = ndotl * atten;
									 }
					#else
									 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
					#endif
									 float3 diffuseReflection = attenuation * _LightColor0.rgb * max(0.0, dot(normalDirection, lightDirection));
									 float3 finalLightColor = cookieAttenuation * diffuseReflection;
									 finalLightColor *= _LightIntensity;

									 UNITY_APPLY_FOG(i.fogCoord, finalLightColor);
									 return float4(saturate(finalLightColor),1);
										}

										TessellatedVert tessellatedVert(VertexData v) {
											TessellatedVert p;
#ifdef USE_VR
											UNITY_SETUP_INSTANCE_ID(v);
											UNITY_TRANSFER_INSTANCE_ID(v, p);
#endif
											p.vertex = v.vertex;
											p.normal = v.normal;
											p.tangent = v.tangent;
											p.uv = v.uv;
											p.color = v.color;
											return p;
										}

										[UNITY_domain("tri")]
										InterpolatorsVertex Domain(
											TessellationFactors factors,
											OutputPatch<TessellatedVert, 3> patch,
											float3 barycentricCoordinates : SV_DomainLocation
										)
										{
											VertexData data;

							#define MY_DOMAIN_PROGRAM_INTERPOLATE(fieldName) data.fieldName = \
									patch[0].fieldName * barycentricCoordinates.x + \
									patch[1].fieldName * barycentricCoordinates.y + \
									patch[2].fieldName * barycentricCoordinates.z;

											MY_DOMAIN_PROGRAM_INTERPOLATE(vertex)
												MY_DOMAIN_PROGRAM_INTERPOLATE(normal)
												MY_DOMAIN_PROGRAM_INTERPOLATE(tangent)
												MY_DOMAIN_PROGRAM_INTERPOLATE(uv)
												MY_DOMAIN_PROGRAM_INTERPOLATE(color)
#ifdef USE_VR
												UNITY_SETUP_INSTANCE_ID(data);
											UNITY_TRANSFER_INSTANCE_ID(patch[0], data);
#endif

												return vert(data);
										}
										ENDCG
							}
				}
}
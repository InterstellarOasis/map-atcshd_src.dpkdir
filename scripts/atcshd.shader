textures/atcshd/sky
{
//    skybox "Wasteland" by Ingar
      qer_editorimage env/atcshd/wasteland
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
// -- surface sky light
      q3map_skylight 225 3
// -- soften sky light casted shadows, workaround wrong shadows
      q3map_lightmapFilterRadius 0 20
      q3map_lightimage env/atcshd/wasteland
// -- direct sunlight
//    q3map_sunExt <red> <green> <blue> <intensity> <degrees> <elevation> <deviance> <samples>
//      q3map_sunExt 1.00 0.949 0.977 125 245 40 2 16
      q3map_sunExt 1.00 1.00 1.00 160 245 40 2 16
      skyparms env/atcshd/wasteland - -
}

// no lightmap, always black
textures/atcshd/black
{
	qer_editorimage textures/atcshd/black
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/atcshd/black
	}
}

textures/atcshd/burst_red
{
	entityMergable
	cull none
	{
		map textures/atcshd/sparkle_red
		blendFunc add
		alphaGen	vertex
	}
}

textures/atcshd/burst_blue
{
	entityMergable
	cull none
	{
		map textures/atcshd/sparkle_blue
		blendFunc add
		alphaGen	vertex
	}
}

textures/atcshd/force_field
	{
	qer_editorimage textures/atcshd/force_grid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	{
		map textures/atcshd/force_field
		tcMod Scroll .1 0
		blendFunc add
	}
	{
		map textures/atcshd/force_grid
		tcMod Scroll -.01 0
		blendFunc add
		rgbgen wave sin .2 .2 0 .4
	}
}

textures/atcshd/bulb_red
{
	qer_editorimage textures/atcshd/bulb_red
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	qer_trans 0.5
	{
		map textures/atcshd/bulb_red
		blendfunc gl_dst_color gl_src_alpha
	}
	{
		map textures/atcshd/bulb_red
		blendfunc gl_dst_color gl_src_alpha
	}
}

textures/atcshd/eq2_bounce
{
	qer_editorimage textures/atcshd/eq2_bounce
	{
		map textures/atcshd/eq2_bounce
		rgbGen identity
	}
	{
		clampmap textures/atcshd/eq2_bouncefan
		tcMod rotate 512
		blendFunc blend
		depthWrite
		rgbGen identity

	}
	{
		map textures/atcshd/eq2_bounce
		blendfunc blend
		rgbGen identity
	}
		{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}

}

textures/atcshd/cubelight_32_blue_invis_s_15k
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	q3map_surfacelight 15000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend
	qer_editorimage textures/atcshd/cubelight_32_blue.blend
}

textures/atcshd/cubelight_32_red_invis_s_15k
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	q3map_surfacelight 15000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend
	qer_editorimage textures/atcshd/cubelight_32_red.blend
}

textures/atcshd/cubelight_32_white_s_20k
{
	surfaceparm nomarks
	q3map_surfacelight 20000
	q3map_lightimage textures/atcshd/cubelight_32_white.blend
	qer_editorimage textures/atcshd/cubelight_32_white
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_white
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_white.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_blue_s_20k
{
	surfaceparm nomarks
	q3map_surfacelight 20000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend
	qer_editorimage textures/atcshd/cubelight_32_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_blue_s_15k
{
	surfaceparm nomarks
	q3map_surfacelight 15000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend
	qer_editorimage textures/atcshd/cubelight_32_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_blue_s_10k
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend
	qer_editorimage textures/atcshd/cubelight_32_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_red_s_20k
{
	surfaceparm nomarks
	q3map_surfacelight 20000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend
	qer_editorimage textures/atcshd/cubelight_32_red
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_red_s_15k
{
	surfaceparm nomarks
	q3map_surfacelight 15000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend
	qer_editorimage textures/atcshd/cubelight_32_red
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_red_s_10k
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend
	qer_editorimage textures/atcshd/cubelight_32_red
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_blue_s_3000
{
	surfaceparm nomarks
	q3map_surfacelight 3000
	q3map_lightimage textures/atcshd/eq2_baselt03b_blue.blend
	qer_editorimage textures/atcshd/eq2_baselt03b_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_blue_s_2000
{
	surfaceparm nomarks
	q3map_surfacelight 2000
	q3map_lightimage textures/atcshd/eq2_baselt03b_blue.blend
	qer_editorimage textures/atcshd/eq2_baselt03b_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_blue_s_1500
{
	surfaceparm nomarks
	q3map_surfacelight 1500
	q3map_lightimage textures/atcshd/eq2_baselt03b_blue.blend
	qer_editorimage textures/atcshd/eq2_baselt03b_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_s_2000
{
	surfaceparm nomarks
	q3map_surfacelight 2000
	q3map_lightimage textures/atcshd/eq2_baselt03b.blend
	qer_editorimage textures/atcshd/eq2_baselt03b
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_s_1500
{
	surfaceparm nomarks
	q3map_surfacelight 1500
	q3map_lightimage textures/atcshd/eq2_baselt03b.blend
	qer_editorimage textures/atcshd/eq2_baselt03b
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2_baselt03_blue_s_5000
{
	surfaceparm nomarks
	q3map_surfacelight 5000
	q3map_lightimage textures/atcshd/eq2_baselt03_blue.blend
	qer_editorimage textures/atcshd/eq2_baselt03_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2_baselt03_blue_s_3000
{
	surfaceparm nomarks
	q3map_surfacelight 3000
	q3map_lightimage textures/atcshd/eq2_baselt03_blue.blend
	qer_editorimage textures/atcshd/eq2_baselt03_blue
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_bmtl03light_1000
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	qer_editorimage textures/atcshd/eq2_bmtl_03_light
	q3map_lightimage textures/atcshd/eq2_bmtl_03_light.blend

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_bmtl_03_light
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_bmtl_03_light.blend
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/fog
{
	qer_editorimage textures/atcshd/fog_p
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	// fogparms ( <red> <green> <blue> ) <distance to opaque>
	fogparms ( 1.0 1.0 0.8 ) 4096
}

// from karith, by jex
textures/atcshd/steam
{
	entityMergable
	cull none
	{
		map textures/atcshd/steam
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}

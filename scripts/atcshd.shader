textures/atcshd/sky
{
//    skybox "Wasteland" by Ingar
      qer_editorimage env/atcshd/wasteland
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
// -- surface sky light
      q3map_skylight 225 3
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

textures/atcshd/burst_red_s
{
	entityMergable
	cull none
	{
		map textures/atcshd/sparkle_red.tga
		blendFunc add
		alphaGen	vertex
	}
}

textures/atcshd/burst_blue_s
{
	entityMergable
	cull none
	{
		map textures/atcshd/sparkle_blue.tga
		blendFunc add
		alphaGen	vertex
	}
}

textures/atcshd/force_field_s
	{
        qer_editorimage textures/atcshd/force_grid.tga
	surfaceparm trans	
        surfaceparm nomarks	
	surfaceparm nolightmap
	cull none
	{
		map textures/atcshd/force_field.tga
		tcMod Scroll .1 0
		blendFunc add
	}
	{
		map textures/atcshd/force_grid.tga
		tcMod Scroll -.01 0
		blendFunc add
		rgbgen wave sin .2 .2 0 .4
	}
}

textures/atcshd/bulb_red_s
{
	qer_editorimage textures/atcshd/bulb_red.tga
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	qer_trans 0.5
	{
		map textures/atcshd/bulb_red.tga
		blendfunc gl_dst_color gl_src_alpha
	}
	{
		map textures/atcshd/bulb_red.tga
		blendfunc gl_dst_color gl_src_alpha
	}
}

textures/atcshd/eq2_bounce
{
	qer_editorimage textures/atcshd/eq2_bounce.tga
	
	{
		map textures/atcshd/eq2_bounce.tga
		rgbGen identity
	}
	{
		clampmap textures/atcshd/eq2_bouncefan.tga
		tcMod rotate 512
		blendFunc blend
		depthWrite
		rgbGen identity

	}
	{
		map textures/atcshd/eq2_bounce.tga
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
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_blue.blend.tga
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
	q3map_lightimage textures/atcshd/cubelight_32_red.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_red.blend.tga
}

textures/atcshd/cubelight_32_white_s_20k
{
	surfaceparm nomarks
	q3map_surfacelight 20000
	q3map_lightimage textures/atcshd/cubelight_32_white.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_white.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_white.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_white.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_blue_s_20k
{
	surfaceparm nomarks
	q3map_surfacelight 20000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_blue_s_15k
{
	surfaceparm nomarks
	q3map_surfacelight 15000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_blue_s_10k
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	q3map_lightimage textures/atcshd/cubelight_32_blue.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_red_s_20k
{
	surfaceparm nomarks
	q3map_surfacelight 20000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_red.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_red_s_15k
{
	surfaceparm nomarks
	q3map_surfacelight 15000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_red.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/cubelight_32_red_s_10k
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	q3map_lightimage textures/atcshd/cubelight_32_red.blend.tga
	qer_editorimage textures/atcshd/cubelight_32_red.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/cubelight_32_red.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_blue_s_3000
{
	surfaceparm nomarks
	q3map_surfacelight 3000
	q3map_lightimage textures/atcshd/eq2_baselt03b_blue.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03b_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_blue_s_2000
{
	surfaceparm nomarks
	q3map_surfacelight 2000
	q3map_lightimage textures/atcshd/eq2_baselt03b_blue.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03b_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_blue_s_1500
{
	surfaceparm nomarks
	q3map_surfacelight 1500
	q3map_lightimage textures/atcshd/eq2_baselt03b_blue.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03b_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_s_2000
{
	surfaceparm nomarks
	q3map_surfacelight 2000
	q3map_lightimage textures/atcshd/eq2_baselt03b.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03b.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_baselt03b_s_1500
{
	surfaceparm nomarks
	q3map_surfacelight 1500
	q3map_lightimage textures/atcshd/eq2_baselt03b.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03b.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03b.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2_baselt03_blue_s_5000
{
	surfaceparm nomarks
	q3map_surfacelight 5000
	q3map_lightimage textures/atcshd/eq2_baselt03_blue.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2_baselt03_blue_s_3000
{
	surfaceparm nomarks
	q3map_surfacelight 3000
	q3map_lightimage textures/atcshd/eq2_baselt03_blue.blend.tga
	qer_editorimage textures/atcshd/eq2_baselt03_blue.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_baselt03_blue.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/eq2lt_bmtl03light_1000
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	qer_editorimage textures/atcshd/eq2_bmtl_03_light.tga
	q3map_lightimage textures/atcshd/eq2_bmtl_03_light.blend.tga

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_bmtl_03_light.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/atcshd/eq2_bmtl_03_light.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/atcshd/fog_s
{
	qer_editorimage textures/atcshd/fog_radiant.jpg
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	// fogparms ( <red> <green> <blue> ) <distance to opaque>
	fogparms ( 1.0 1.0 0.8 ) 4096
}

// from karith, by jex
textures/atcshd/steam_s
{
	entityMergable
	cull none
	{
		map textures/atcshd/steam.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen		vertex
		alphaGen	vertex
	}
}

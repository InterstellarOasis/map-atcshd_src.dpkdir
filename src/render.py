import bpy
import sys
import os

basedir = os.path.dirname(bpy.data.filepath)
if basedir not in sys.path:
    sys.path.append(basedir)

from render_automation import render_all


textures_recipes = (
    (
        {'img_wh':(0.5,2)},
        (
            ('eq2_trimv_00', {}),
            ('eq2_trimv_12b', {}),
        )
    ),
    (
        {'img_wh':(1,1)},
        (
            ('webtreats_metal_1', {'diff_nh':False},),
            ('eq2_fgrate_01', {'diff_nh':False},),
            ('eq2_floor_06b', {'diff_nh':False},),
            ('eq2_grate_01', {'diff_nh':False},),
            ('eq2_bigmet_01', {'diff_nh':False},),
        )
    ),
    (
        {'img_wh':(1,2)},
        (
            ('eq2_trimv_01b', {}),
            ('eq2_trimv_02', {'diff_nh':False}),
            ('eq2_trimh_03cc', {}),
            ('eq2_trimv_05', {}),
            ('eq2_trimv_05b', {}),
            ('eq2_trimv_09b', {}),
            ('eq2_trimv_11', {}),
        )
    ),
    (
        {'img_wh':(2,1)},
        (
            ('eq2_trim_02', {}),
            ('eq2_trimh_01', {}),
            ('eq2_trimh_03c', {}),
        )
    ),
    (
        {'img_wh':(2,2)},
        (
            ('trak4_tile2b_atcshd', {'diff_nh':False}),
            ('eq2_bmtl_02', {}),
            ('eq2_bmtl_03_light', {}),
            ('eq2_bmtl_08', {}),
            ('eq2_bmtl_02up', {}),
        )
    ),
    (
        dict(), #custom
        (
            ('eq2_bmtl_02_384', {'img_wh':(3,2)}),
            ('eq2_trimv_04', {'img_wh':(2,0.25), 'diff_nh':False}),
            ('eq2_trimv_10b', {'img_wh':(2,0.5), 'diff_nh':False}),
            ('cubelight_32', {'img_wh':(0.25,0.25), 'diff_nh':False}),
            ('eq2_baselt03', {'img_wh':(0.5,1), 'diff_nh':False}),
            ('eq2_baselt03b', {'img_wh':(0.5,2), 'diff_nh':False}),
            ('eq2_trimv_mini', {'img_wh':(2,0.125)}),
            ('eq2_trimv_mini02', {'img_wh':(2,0.25)}),
        )
    ),
)

for position in textures_recipes:
    position[0].update({'scale_px':256})

textures = []
for recipe, targets in textures_recipes:
    for target in targets:
        target[1].update(recipe)
    textures.extend(targets)

render_all(textures)

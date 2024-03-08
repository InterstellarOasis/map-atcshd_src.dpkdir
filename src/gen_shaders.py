#!/usr/bin/env python3
#Generates temporary hack shaders for previewing changes without touching .map
import os

template = \
"""textures/atcshd/{shader_target}
{{
      {{
            diffuseMap textures/atcshd/{shader_target}
            normalMap textures/atcshd/re/{shader_source}_n
            heightMap textures/atcshd/re/{shader_source}_h
            normalFormat X Y Z
            //normalScale 0. 0. 0.
      }}
}}
"""

textures = {
    #2x2
    'trak4_tile2b_atcshd': None,
    'atcshd-pipe': None,
    'eq2_bmtl_02': (
        'eq2_bmtl_02',
        'eq2_bmtl_03',
        'eq2_bmtl_03_red',
        'eq2_bmtl_03_blue',
        'eq2_bmtl_04',
        'eq2_bmtl_05',
    ),
    'eq2_bmtl_03_light': None,
    'eq2_bmtl_08': None,
    'eq2_bmtl_02up': None,
    #2x1
    'eq2_trim_02': None,
    'eq2_trimh_01': None,
    'eq2_trimh_03c': None,
    #1x2
    'eq2_trimv_01b': None,
    'eq2_trimv_02': None,
    'eq2_trimh_03cc': None,
    'eq2_trimv_05': None,
    'eq2_trimv_05b': None,
    'eq2_trimv_09b': None,
    'eq2_trimv_11': (
        'eq2_trimv_11',
        'eq2_trimv_11d',
        'eq2_trimv_11d_blue',
        'eq2_trimv_11d_red',
    ),
    #05x2
    'eq2_trimv_00': None,
    'eq2_trimv_12b': None,
    #1x1
    'webtreats_metal_1': None,
    'eq2_fgrate_01': None,
    'eq2_floor_06b': None,
    'eq2_grate_01': None,
    'eq2_bigmet_01': None,
    #other
    'eq2_trimv_04': None,
    'eq2_trimv_10b': None,
    'eq2_bmtl_02_384': (
        'eq2_bmtl_02_384',
        'eq2_bmtl_02_384b',
    ),
    'eq2_trimv_mini': None,
    'eq2_trimv_mini02': (
        'eq2_trimv_mini02',
        'eq2_trimv_mini02b',
    ),
}

dirname = os.path.dirname(__file__)
filename = os.path.abspath(
        os.path.join(dirname, '../scripts/atcshdre.shader')
        )

with open(filename, 'w') as shaderfile:
    for source, targets in textures.items():
        if not targets:
            shaderfile.write(template.format(shader_target=source, shader_source=source))
        elif isinstance(targets, str):
            shaderfile.write(template.format(shader_target=targets, shader_source=source))
        else:
            for target in targets:
                shaderfile.write(template.format(shader_target=target, shader_source=source))

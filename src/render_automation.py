import bpy
import os


def render_textures(name, suffix='_remaster', diff_nh=True, clean=True, img_wh=(1,1), scale_px=512, depth_scale=1.0):
    groupname = f"{name}{suffix}"
    bpy.data.scenes[0].render.resolution_x = round(scale_px * img_wh[0])
    bpy.data.scenes[0].render.resolution_y = round(scale_px * img_wh[1])
    bpy.data.cameras[0].ortho_scale = max(img_wh)
    bpy.data.scenes[0]["depth_scale"] = depth_scale

    if diff_nh:
        bpy.ops.wm.link(
            filename=f"{groupname}_n",
            directory=bpy.path.abspath("//textures_remaster.blend\Collection\\"),
            relative_path=True
        )
        bpy.ops.object.move_to_collection(collection_index=3)

        bpy.ops.wm.link(
            filename=f"{groupname}_h",
            directory=bpy.path.abspath("//textures_remaster.blend\Collection\\"),
            relative_path=True
        )
        bpy.ops.object.move_to_collection(collection_index=2)
    else:
        bpy.ops.wm.link(
            filename=groupname,
            directory=bpy.path.abspath("//textures_remaster.blend\Collection\\"),
            relative_path=True
        )
        bpy.ops.object.move_to_collection(collection_index=3)
        bpy.ops.object.collection_instance_add(collection=f'{name}_remaster')
        bpy.ops.object.move_to_collection(collection_index=2)

    bpy.ops.render.render()
    os.replace(
        bpy.path.native_pathsep(bpy.path.abspath('//build/heightMap0001.png')),
        bpy.path.native_pathsep(bpy.path.abspath(f'//build\{name}_h.png'))
    )
    os.replace(
        bpy.path.native_pathsep(bpy.path.abspath('//build/normalMap0001.png')),
        bpy.path.native_pathsep(bpy.path.abspath(f'//build\{name}_n.png'))
    )
    if clean:
        to_delete = [ o for o in bpy.data.objects if o.name.startswith(groupname)]
        with bpy.context.temp_override(selected_objects=to_delete):
            bpy.ops.object.delete()
        bpy.ops.outliner.orphans_purge()

def render_all(textures):
    for name, kwargs in textures:
        args = []
        for k, a in kwargs.items():
            args.append(f'{k}={a}')
        
        msg = f'Rendering {name}({",".join(args)})'
        print('='*len(msg))
        print(msg)
        print('='*len(msg))
        render_textures(name, **kwargs)

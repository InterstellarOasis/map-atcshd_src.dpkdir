# Advanced Tremulous Combat Simulator - Remaster

Source file only approach.

## Notes
This is *work in progress*.

## Building
To render height and normal maps you'll need Blender 4.0

```bash
cd src
blender -b -P gen_shaders.py
blender -b render_template.blend -P render.py
cp build/* ../textures/atcshd/re/
```

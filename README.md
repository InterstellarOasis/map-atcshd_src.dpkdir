Advanced Tremulous Combat Simulator
-----------------------------------

This is a map ported from the [Tremulous](http://tremulous.net/) game to the [Unvanquished](https://www.unvanquished.net/) game.

Ported from Tremulous gpp package from [http://ingar.satgnu.net/files/tremulous/base/](http://ingar.satgnu.net/files/tremulous/base/).

This port is an Interstellar Oasis initiative: [https://github.com/interstellar-oasis/interstellar-oasis](https://github.com/interstellar-oasis/interstellar-oasis).

Levelshot
---------

![Levelshot](meta/atcshd/atcshd_web.jpg)

How-to
------

* Get the source

```
git clone https://github.com/interstellar-oasis/map-atcshd.git map-atcshd_source.pk3dir
cd map-atcshd_source.pk3dir/
```

* Build

You need the [grtoolbox](https://github.com/illwieckz/grtoolbox).  
You will find the pk3dir in `build/test`.

```
make
```

* Package

You will find the pk3 in `build/pkg`.

```
make pk3
```

Run the map:

```
daemon -pakpath /where/you/installed/unvanquished/pkg -pakpath build/pkg +devmap atcshd
```

Credits
-------

Unvanquished port:

* Thomas “illwieckz” Debesse <dev@illwieckz.net> (http://gg.illwieckz.net)

Mapping:

* Nicolas “Jex“ Jansens <jex@orodu.net>
* Stijn “Ingar“ Buys <ingar@osirion.org>
* Superpie

Textures:

* Georges "TRaK" Grondin
* Stijn “Ingar“ Buys
* Superpie

Sound effects:

* Stijn “Ingar“ Buys

Special thanks:

* Asa “Norfenstein” Kravets
* Tim “Timbo” Angus <tim@ngus.net>
* lakitu7
* ravyn
* Who-[Soup]

Legal
-----

Changes by Thomas Debesse fall under the Internet Systems Consortium License:  
http://directory.fsf.org/wiki/License:ISC

Assets by Tremulous contributors fall under the Creative Commons Attribution-ShareAlike 2.5 Generic License:  
http://creativecommons.org/licenses/by-sa/2.5/

Textures by Georges Grondin fall under the Creative Commons Attribution-ShareAlike 2.0 Generic License:
http://creativecommons.org/licenses/by-sa/2.0/

History
-------

* 2011-05-24:	Advanced Tremulous Combat Simulator gpp2 release
* 2010-12-16:	Advanced Tremulous Combat Simulator gpp1 release
* 2009-12-04:	Tremulous 1.2 Beta (Gameplay preview)
* 2006-03-31:	Tremulous 1.1.0 (Standalone)
* 2005-08-11:	Advanced Tactical Combat Simulator map release

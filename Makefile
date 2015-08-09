all: update pk3dir

update:
	pak_mallet.py -u

pk3dir:
	pak_mallet.py -b

pk3:
	pak_mallet.py -p

all: pk3dir

update: 
	pak_mallet.py -u

pk3dir: update
	pak_mallet.py -b

pk3: pk3dir
	pak_mallet.py -p

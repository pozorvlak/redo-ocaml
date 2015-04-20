redo-ifchange $2.mli
TMPDIR=`mktemp -d`
cp $2.mli $TMPDIR
ocamlc $TMPDIR/$2.mli
mv $TMPDIR/$2.cmi $3
rm -rf $TMPDIR

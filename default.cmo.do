TEMPDIR=`mktemp -d`
redo-ifchange $2.ml `ocamldep $2.mli $2.ml | grep $1 | sed -e 's/.*://'`
cp $2.ml $TEMPDIR/$2.ml
ocamlc -c $TEMPDIR/$2.ml
mv $TEMPDIR/$2.cmo $3
rm -rf $TEMPDIR

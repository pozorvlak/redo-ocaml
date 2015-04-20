TEMPDIR=`mktemp -d`
redo-ifchange $2.cmi $2.ml
redo-ifchange `ocamldep $2.mli $2.ml`
cp $2.ml $TEMPDIR/$2.ml
ocamlc $TEMPDIR/$2.ml
mv $TEMPDIR/$2.cmo $3
rm -rf $TEMPDIR

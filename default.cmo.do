redo-ifchange $2.cmi $2.ml
redo-ifchange `ocamldep $2.mli $2.ml`
ocamlopt $2.ml

Bob Atkey [claimed](https://twitter.com/bentnib/status/590098457513357312) that
redo's dependency-calculation algorithm was inadequate for building OCaml. I
was sure that it *was so too* adequate, and wrote these scripts to prove it.

The details of how this works are explained in [a blog
post](http://pozorvlak.dreamwidth.org/179266.html), which you should probably
read first.

To run the example from the post, do the following:

1. Clone the [redo repository](https://github.com/apenwarr/redo).
2. Add it to your PATH.
3. Run the script `demo.sh` in this directory. The output shows which files are being built at each stage, with recursive builds shown by indentation.

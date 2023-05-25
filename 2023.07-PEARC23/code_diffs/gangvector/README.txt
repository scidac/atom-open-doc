While comparing NVIDIA vs AMD GPU performance, we discovered that
while we were explicitly directing the compiler to use the OpenACC gang vector parallelization
in the collision kernel, we did not prescribe it in the field kernel.
Adding the directives explicitly significantly sped up the field kernel.
This indicated that the CRAY compiler was less capable of automatically choosing
the ideal parallelization strategy compared with the NVIDIA compiler.
We subsequently added the directives in all suitable locations.
Ultimately, this resulted in significant speedups in both the field and stream kernels.

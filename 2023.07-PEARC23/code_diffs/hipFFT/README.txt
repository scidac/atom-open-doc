CGYRO relies heavily on external FFT libraries.
On CPU-only architectures CGYRO uses FFTW, while on NVIDIA GPU-based hybrid architectures cuFFT is used.
Neither library can be used with AMD GPUs, but AMD provides a hipFFT library that uses AMD's rocFFT as the backend.
The interfaces of the cuFFT and hipFFT libraries are very similar with respect to the type and function names,
so adding support for hipFFT in CGYRO was mostly trivial.
It should be noted that hipFFT supports several backends, including cuFTT,
and could thus also be used to access NVIDIA GPUs, but we do not use it on these systems.

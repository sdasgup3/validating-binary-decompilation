void leaf() {
  __asm__("vfmaddsub213pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vfmaddsub213ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
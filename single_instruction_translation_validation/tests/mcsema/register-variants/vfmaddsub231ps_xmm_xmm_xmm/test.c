void leaf() {
  __asm__("vfmaddsub231ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
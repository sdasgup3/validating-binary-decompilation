void leaf() {
  __asm__("vfmaddsub132ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
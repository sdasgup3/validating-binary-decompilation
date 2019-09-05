void leaf() {
  __asm__("vfmaddsub132pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
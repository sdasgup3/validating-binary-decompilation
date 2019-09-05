void leaf() {
  __asm__("vfmaddsub132pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
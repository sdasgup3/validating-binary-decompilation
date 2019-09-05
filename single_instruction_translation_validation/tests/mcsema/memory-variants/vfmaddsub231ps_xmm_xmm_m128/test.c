void leaf() {
  __asm__("vfmaddsub231ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
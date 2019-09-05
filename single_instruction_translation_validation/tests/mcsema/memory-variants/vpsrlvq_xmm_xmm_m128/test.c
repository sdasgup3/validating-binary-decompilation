void leaf() {
  __asm__("vpsrlvq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
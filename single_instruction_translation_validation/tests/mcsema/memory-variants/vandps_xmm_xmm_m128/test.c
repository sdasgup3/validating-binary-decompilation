void leaf() {
  __asm__("vandps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
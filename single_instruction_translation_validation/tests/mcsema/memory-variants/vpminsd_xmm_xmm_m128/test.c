void leaf() {
  __asm__("vpminsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
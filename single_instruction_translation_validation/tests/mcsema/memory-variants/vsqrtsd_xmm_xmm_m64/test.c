void leaf() {
  __asm__("vsqrtsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
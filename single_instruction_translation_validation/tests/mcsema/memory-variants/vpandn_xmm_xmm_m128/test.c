void leaf() {
  __asm__("vpandn -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
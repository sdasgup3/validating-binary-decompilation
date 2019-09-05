void leaf() {
  __asm__("vsubsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
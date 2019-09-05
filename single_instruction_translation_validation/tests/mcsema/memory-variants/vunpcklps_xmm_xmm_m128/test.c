void leaf() {
  __asm__("vunpcklps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
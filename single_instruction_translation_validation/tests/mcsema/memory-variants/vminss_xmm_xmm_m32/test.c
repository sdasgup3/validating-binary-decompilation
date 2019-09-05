void leaf() {
  __asm__("vminss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
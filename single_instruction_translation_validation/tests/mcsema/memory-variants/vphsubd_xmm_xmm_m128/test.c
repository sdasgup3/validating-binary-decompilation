void leaf() {
  __asm__("vphsubd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
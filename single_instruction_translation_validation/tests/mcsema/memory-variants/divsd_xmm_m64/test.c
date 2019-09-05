void leaf() {
  __asm__("divsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
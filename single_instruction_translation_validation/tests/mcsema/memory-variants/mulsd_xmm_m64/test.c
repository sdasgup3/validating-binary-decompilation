void leaf() {
  __asm__("mulsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
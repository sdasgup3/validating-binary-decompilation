void leaf() {
  __asm__("movsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
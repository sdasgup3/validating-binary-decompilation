void leaf() {
  __asm__("lddqu -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
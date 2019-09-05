void leaf() {
  __asm__("orps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("movsldup -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
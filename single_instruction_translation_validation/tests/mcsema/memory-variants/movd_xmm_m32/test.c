void leaf() {
  __asm__("movd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
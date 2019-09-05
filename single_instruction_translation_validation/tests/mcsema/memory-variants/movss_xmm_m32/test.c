void leaf() {
  __asm__("movss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("movups -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
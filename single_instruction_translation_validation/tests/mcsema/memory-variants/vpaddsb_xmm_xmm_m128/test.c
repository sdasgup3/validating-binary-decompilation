void leaf() {
  __asm__("vpaddsb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
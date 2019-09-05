void leaf() {
  __asm__("vpaddsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
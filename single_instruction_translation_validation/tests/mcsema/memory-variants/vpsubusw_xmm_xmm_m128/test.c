void leaf() {
  __asm__("vpsubusw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vpunpckhwd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
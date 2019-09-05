void leaf() {
  __asm__("vpunpcklqdq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vpunpckhqdq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
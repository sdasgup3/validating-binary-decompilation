void leaf() {
  __asm__("punpckhqdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
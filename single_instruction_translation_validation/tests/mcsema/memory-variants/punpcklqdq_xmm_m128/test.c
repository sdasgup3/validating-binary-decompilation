void leaf() {
  __asm__("punpcklqdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
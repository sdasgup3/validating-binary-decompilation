void leaf() {
  __asm__("pavgb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("psrlq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
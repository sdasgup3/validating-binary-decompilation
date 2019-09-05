void leaf() {
  __asm__("psubq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
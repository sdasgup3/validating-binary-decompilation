void leaf() {
  __asm__("movq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
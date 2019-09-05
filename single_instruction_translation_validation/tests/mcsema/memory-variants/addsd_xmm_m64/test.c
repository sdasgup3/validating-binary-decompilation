void leaf() {
  __asm__("addsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("pabsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
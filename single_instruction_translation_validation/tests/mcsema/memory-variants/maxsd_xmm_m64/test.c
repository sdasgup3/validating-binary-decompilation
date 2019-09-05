void leaf() {
  __asm__("maxsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
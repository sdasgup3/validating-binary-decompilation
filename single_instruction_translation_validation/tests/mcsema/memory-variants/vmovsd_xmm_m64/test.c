void leaf() {
  __asm__("vmovsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
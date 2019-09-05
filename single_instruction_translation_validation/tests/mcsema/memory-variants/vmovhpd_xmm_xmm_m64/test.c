void leaf() {
  __asm__("vmovhpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
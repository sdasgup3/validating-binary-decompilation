void leaf() {
  __asm__("vmovlpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("vsubpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
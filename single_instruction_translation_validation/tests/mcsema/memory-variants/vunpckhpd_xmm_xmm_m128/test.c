void leaf() {
  __asm__("vunpckhpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
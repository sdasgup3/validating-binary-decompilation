void leaf() {
  __asm__("minpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
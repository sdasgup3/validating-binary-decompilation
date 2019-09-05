void leaf() {
  __asm__("maxpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("hsubpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
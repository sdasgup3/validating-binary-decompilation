void leaf() {
  __asm__("addpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
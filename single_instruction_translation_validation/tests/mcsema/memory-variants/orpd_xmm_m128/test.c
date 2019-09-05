void leaf() {
  __asm__("orpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
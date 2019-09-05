void leaf() {
  __asm__("haddpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
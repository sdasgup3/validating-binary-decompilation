void leaf() {
  __asm__("movhpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
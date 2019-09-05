void leaf() {
  __asm__("movhpd %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}
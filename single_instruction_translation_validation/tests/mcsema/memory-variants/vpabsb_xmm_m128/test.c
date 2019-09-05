void leaf() {
  __asm__("vpabsb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
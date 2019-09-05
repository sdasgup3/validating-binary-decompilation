void leaf() {
  __asm__("pcmpgtb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
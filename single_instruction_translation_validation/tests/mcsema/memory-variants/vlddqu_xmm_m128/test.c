void leaf() {
  __asm__("vlddqu -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
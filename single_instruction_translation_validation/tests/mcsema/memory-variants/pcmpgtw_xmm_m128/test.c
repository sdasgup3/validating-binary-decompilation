void leaf() {
  __asm__("pcmpgtw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
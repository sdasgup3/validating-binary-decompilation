void leaf() {
  __asm__("pcmpgtd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
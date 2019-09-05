void leaf() {
  __asm__("pcmpgtq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
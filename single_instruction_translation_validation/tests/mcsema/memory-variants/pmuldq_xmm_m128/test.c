void leaf() {
  __asm__("pmuldq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
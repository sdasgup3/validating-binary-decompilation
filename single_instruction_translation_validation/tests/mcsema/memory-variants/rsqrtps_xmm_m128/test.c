void leaf() {
  __asm__("rsqrtps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
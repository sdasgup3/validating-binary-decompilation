void leaf() {
  __asm__("vsqrtps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
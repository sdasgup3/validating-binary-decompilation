void leaf() {
  __asm__("vsqrtpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
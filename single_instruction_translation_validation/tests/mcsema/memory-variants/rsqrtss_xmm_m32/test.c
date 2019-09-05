void leaf() {
  __asm__("rsqrtss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
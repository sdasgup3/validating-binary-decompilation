void leaf() {
  __asm__("vsqrtss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
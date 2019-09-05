void leaf() {
  __asm__("rcpss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
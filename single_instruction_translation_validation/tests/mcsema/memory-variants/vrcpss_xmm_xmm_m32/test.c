void leaf() {
  __asm__("vrcpss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
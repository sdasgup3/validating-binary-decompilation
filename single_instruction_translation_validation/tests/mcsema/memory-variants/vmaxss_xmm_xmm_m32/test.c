void leaf() {
  __asm__("vmaxss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
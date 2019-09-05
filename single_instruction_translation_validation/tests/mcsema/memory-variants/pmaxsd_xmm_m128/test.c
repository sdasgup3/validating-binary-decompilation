void leaf() {
  __asm__("pmaxsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
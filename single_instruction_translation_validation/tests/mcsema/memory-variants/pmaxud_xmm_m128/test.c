void leaf() {
  __asm__("pmaxud -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
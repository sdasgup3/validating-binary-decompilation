void leaf() {
  __asm__("pmaxuw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
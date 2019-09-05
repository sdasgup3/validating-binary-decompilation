void leaf() {
  __asm__("pmaxsb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
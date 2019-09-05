void leaf() {
  __asm__("pmaxsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("psignd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
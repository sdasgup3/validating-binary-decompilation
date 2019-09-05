void leaf() {
  __asm__("pavgw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
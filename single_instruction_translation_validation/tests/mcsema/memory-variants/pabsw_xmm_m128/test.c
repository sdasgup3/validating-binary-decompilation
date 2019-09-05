void leaf() {
  __asm__("pabsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
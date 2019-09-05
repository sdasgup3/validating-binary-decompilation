void leaf() {
  __asm__("psrlw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
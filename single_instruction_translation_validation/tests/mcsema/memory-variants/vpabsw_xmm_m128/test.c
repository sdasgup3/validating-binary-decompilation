void leaf() {
  __asm__("vpabsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
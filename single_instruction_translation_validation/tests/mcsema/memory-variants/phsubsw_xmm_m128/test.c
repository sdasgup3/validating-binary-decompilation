void leaf() {
  __asm__("phsubsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
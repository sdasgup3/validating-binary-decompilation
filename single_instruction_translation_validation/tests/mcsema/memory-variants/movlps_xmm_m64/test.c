void leaf() {
  __asm__("movlps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
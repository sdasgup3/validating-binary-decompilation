void leaf() {
  __asm__("movaps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
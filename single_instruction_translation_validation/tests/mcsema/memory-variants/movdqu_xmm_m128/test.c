void leaf() {
  __asm__("movdqu -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
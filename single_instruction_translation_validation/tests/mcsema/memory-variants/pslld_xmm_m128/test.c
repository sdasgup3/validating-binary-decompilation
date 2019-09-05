void leaf() {
  __asm__("pslld -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
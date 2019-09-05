void leaf() {
  __asm__("movupd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
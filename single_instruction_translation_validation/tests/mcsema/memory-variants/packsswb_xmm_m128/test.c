void leaf() {
  __asm__("packsswb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
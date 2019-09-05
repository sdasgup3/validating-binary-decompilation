void leaf() {
  __asm__("andps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
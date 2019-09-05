void leaf() {
  __asm__("vrcpps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
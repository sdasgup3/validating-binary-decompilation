void leaf() {
  __asm__("maxps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
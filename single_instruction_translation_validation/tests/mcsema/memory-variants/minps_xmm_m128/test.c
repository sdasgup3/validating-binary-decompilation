void leaf() {
  __asm__("minps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
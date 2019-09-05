void leaf() {
  __asm__("punpckhwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
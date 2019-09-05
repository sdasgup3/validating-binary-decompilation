void leaf() {
  __asm__("cvtsd2ss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
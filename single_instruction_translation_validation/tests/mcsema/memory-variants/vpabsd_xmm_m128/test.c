void leaf() {
  __asm__("vpabsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
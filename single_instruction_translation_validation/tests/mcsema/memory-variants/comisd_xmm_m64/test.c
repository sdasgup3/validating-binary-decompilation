void leaf() {
  __asm__("comisd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
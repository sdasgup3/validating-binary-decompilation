void leaf() {
  __asm__("vpsubb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
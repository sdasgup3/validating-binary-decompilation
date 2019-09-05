void leaf() {
  __asm__("ucomisd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
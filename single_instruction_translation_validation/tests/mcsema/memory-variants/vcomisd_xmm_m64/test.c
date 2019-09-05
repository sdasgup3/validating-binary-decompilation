void leaf() {
  __asm__("vcomisd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
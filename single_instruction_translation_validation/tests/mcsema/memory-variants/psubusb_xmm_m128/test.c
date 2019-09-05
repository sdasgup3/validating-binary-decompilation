void leaf() {
  __asm__("psubusb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
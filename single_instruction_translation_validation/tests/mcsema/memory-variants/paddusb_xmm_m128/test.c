void leaf() {
  __asm__("paddusb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
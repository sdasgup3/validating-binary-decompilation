void leaf() {
  __asm__("vpsubusb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
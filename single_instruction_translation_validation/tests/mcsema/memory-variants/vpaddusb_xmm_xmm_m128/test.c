void leaf() {
  __asm__("vpaddusb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("paddusb %xmm2, %xmm1");
  }

void main() {
  leaf();
}
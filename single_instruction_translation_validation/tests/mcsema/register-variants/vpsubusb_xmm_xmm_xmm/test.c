void leaf() {
  __asm__("vpsubusb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
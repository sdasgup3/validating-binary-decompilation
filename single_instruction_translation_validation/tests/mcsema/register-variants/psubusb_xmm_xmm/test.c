void leaf() {
  __asm__("psubusb %xmm2, %xmm1");
  }

void main() {
  leaf();
}
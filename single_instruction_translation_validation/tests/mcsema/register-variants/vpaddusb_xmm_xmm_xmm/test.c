void leaf() {
  __asm__("vpaddusb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}
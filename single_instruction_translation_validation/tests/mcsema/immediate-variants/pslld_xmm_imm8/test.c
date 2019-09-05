void leaf() {
  __asm__("pslld $0x77, %xmm1");
  }

void main() {
  leaf();
}
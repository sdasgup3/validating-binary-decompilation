void leaf() {
  __asm__("psraw $0x77, %xmm1");
  }

void main() {
  leaf();
}
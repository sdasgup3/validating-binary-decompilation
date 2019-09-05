void leaf() {
  __asm__("pcmpestri $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
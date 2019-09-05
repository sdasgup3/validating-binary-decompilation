void leaf() {
  __asm__("roundsd $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
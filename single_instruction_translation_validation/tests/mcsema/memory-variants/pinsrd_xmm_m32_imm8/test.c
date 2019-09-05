void leaf() {
  __asm__("pinsrd $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
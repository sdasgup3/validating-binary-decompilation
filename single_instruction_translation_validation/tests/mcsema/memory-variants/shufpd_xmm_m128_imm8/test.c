void leaf() {
  __asm__("shufpd $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}
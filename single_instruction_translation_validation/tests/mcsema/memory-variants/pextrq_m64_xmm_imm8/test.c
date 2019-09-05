void leaf() {
  __asm__("pextrq $0x0, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}
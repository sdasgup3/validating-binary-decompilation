void leaf() {
  __asm__("pextrb $0x0, %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}
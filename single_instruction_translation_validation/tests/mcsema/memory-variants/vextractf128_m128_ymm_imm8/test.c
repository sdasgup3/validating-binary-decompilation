void leaf() {
  __asm__("vextractf128 $0x0, %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("shrb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
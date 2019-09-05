void leaf() {
  __asm__("shrb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("shrq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
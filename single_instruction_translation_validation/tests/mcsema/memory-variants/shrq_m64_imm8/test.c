void leaf() {
  __asm__("shrq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
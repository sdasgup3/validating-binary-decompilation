void leaf() {
  __asm__("andq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("roll $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
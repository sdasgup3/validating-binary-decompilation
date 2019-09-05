void leaf() {
  __asm__("roll $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
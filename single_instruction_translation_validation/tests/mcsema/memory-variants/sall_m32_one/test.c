void leaf() {
  __asm__("sall $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
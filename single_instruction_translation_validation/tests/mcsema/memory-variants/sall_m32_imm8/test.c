void leaf() {
  __asm__("sall $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
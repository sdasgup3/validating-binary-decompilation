void leaf() {
  __asm__("subb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
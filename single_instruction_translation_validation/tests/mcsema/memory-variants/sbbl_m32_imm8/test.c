void leaf() {
  __asm__("sbbl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
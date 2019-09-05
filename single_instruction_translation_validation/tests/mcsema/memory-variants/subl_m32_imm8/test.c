void leaf() {
  __asm__("subl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
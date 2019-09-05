void leaf() {
  __asm__("orq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
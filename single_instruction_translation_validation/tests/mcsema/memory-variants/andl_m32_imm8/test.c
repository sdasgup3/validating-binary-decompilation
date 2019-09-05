void leaf() {
  __asm__("andl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
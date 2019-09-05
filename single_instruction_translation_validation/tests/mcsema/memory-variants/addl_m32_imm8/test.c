void leaf() {
  __asm__("addl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
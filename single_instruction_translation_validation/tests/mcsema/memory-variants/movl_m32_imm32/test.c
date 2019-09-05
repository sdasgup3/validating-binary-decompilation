void leaf() {
  __asm__("movl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
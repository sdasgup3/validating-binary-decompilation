void leaf() {
  __asm__("addq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
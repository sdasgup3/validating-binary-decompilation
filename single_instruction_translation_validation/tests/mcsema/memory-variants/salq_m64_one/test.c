void leaf() {
  __asm__("salq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
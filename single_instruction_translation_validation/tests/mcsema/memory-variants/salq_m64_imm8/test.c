void leaf() {
  __asm__("salq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
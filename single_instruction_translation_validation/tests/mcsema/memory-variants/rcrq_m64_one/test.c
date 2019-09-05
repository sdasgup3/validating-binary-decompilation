void leaf() {
  __asm__("rcrq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("rcrq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
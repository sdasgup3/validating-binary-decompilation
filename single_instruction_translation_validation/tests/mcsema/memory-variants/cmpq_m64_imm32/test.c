void leaf() {
  __asm__("cmpq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
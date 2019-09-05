void leaf() {
  __asm__("subq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
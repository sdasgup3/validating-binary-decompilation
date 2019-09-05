void leaf() {
  __asm__("testq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
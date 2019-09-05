void leaf() {
  __asm__("rolq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
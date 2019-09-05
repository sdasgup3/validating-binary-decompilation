void leaf() {
  __asm__("rolq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
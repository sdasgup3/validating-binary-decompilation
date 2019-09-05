void leaf() {
  __asm__("movq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
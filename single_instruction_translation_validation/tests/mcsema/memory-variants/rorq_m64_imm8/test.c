void leaf() {
  __asm__("rorq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
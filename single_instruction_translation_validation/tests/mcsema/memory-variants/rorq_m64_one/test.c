void leaf() {
  __asm__("rorq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
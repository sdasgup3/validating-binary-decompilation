void leaf() {
  __asm__("rorb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}
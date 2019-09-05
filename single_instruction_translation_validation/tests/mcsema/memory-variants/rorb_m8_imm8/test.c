void leaf() {
  __asm__("rorb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}
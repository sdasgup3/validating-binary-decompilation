void leaf() {
  __asm__("xorb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}
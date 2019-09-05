void leaf() {
  __asm__("xorb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
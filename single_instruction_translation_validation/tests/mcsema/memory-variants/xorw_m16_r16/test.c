void leaf() {
  __asm__("xorw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}
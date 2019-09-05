void leaf() {
  __asm__("xaddw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}
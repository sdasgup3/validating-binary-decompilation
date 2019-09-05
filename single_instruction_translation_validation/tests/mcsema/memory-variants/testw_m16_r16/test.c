void leaf() {
  __asm__("testw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}
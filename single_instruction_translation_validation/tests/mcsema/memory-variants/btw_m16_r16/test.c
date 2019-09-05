void leaf() {
  __asm__("btw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}
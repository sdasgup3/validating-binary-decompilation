void leaf() {
  __asm__("orw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}
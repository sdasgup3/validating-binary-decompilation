void leaf() {
  __asm__("movw %cx, -4(%rbp)");
  }

void main() {
  leaf();
}
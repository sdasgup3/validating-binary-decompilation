void leaf() {
  __asm__("sets -4(%rbp)");
  }

void main() {
  leaf();
}
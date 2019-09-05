void leaf() {
  __asm__("imulb -4(%rbp)");
  }

void main() {
  leaf();
}
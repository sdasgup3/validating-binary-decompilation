void leaf() {
  __asm__("roll %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
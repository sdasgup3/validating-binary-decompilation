void leaf() {
  __asm__("shrl %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("rorb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
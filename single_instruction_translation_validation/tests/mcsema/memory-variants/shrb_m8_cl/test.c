void leaf() {
  __asm__("shrb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
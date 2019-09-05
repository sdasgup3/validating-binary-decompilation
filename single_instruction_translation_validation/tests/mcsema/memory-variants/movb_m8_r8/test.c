void leaf() {
  __asm__("movb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
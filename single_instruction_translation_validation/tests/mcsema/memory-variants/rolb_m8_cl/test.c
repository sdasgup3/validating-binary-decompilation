void leaf() {
  __asm__("rolb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
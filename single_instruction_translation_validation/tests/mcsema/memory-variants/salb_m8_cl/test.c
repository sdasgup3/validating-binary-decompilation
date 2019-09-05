void leaf() {
  __asm__("salb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
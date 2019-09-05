void leaf() {
  __asm__("cmpb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
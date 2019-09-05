void leaf() {
  __asm__("salw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
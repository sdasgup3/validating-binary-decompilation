void leaf() {
  __asm__("shrq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
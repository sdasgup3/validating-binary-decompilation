void leaf() {
  __asm__("rolq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
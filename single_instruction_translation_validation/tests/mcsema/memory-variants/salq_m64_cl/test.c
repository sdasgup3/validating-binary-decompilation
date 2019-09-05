void leaf() {
  __asm__("salq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
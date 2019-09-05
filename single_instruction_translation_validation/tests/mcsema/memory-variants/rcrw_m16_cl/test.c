void leaf() {
  __asm__("rcrw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
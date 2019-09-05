void leaf() {
  __asm__("andb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
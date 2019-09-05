void leaf() {
  __asm__("andb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}
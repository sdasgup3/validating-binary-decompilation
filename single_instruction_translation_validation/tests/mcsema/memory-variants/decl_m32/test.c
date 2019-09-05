void leaf() {
  __asm__("decl -4(%rbp)");
  }

void main() {
  leaf();
}
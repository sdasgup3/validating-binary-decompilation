void leaf() {
  __asm__("decw -4(%rbp)");
  }

void main() {
  leaf();
}
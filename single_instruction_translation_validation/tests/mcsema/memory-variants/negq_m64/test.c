void leaf() {
  __asm__("negq -4(%rbp)");
  }

void main() {
  leaf();
}
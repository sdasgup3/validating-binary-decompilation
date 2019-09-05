void leaf() {
  __asm__("divq -4(%rbp)");
  }

void main() {
  leaf();
}
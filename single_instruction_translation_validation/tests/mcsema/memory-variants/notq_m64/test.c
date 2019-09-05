void leaf() {
  __asm__("notq -4(%rbp)");
  }

void main() {
  leaf();
}
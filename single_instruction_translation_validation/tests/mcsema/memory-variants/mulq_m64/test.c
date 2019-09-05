void leaf() {
  __asm__("mulq -4(%rbp)");
  }

void main() {
  leaf();
}
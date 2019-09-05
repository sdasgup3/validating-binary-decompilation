void leaf() {
  __asm__("idivq -4(%rbp)");
  }

void main() {
  leaf();
}
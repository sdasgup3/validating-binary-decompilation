void leaf() {
  __asm__("incq -4(%rbp)");
  }

void main() {
  leaf();
}
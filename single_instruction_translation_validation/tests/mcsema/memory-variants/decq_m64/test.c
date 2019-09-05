void leaf() {
  __asm__("decq -4(%rbp)");
  }

void main() {
  leaf();
}
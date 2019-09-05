void leaf() {
  __asm__("imulq -4(%rbp)");
  }

void main() {
  leaf();
}
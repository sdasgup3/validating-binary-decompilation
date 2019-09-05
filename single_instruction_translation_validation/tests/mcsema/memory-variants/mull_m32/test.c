void leaf() {
  __asm__("mull -4(%rbp)");
  }

void main() {
  leaf();
}
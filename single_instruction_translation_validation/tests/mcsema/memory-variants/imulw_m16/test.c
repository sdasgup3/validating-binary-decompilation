void leaf() {
  __asm__("imulw -4(%rbp)");
  }

void main() {
  leaf();
}
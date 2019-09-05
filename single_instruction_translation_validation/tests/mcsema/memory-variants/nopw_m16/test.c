void leaf() {
  __asm__("nopw -4(%rbp)");
  }

void main() {
  leaf();
}
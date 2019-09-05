void leaf() {
  __asm__("notw -4(%rbp)");
  }

void main() {
  leaf();
}
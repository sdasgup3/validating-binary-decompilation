void leaf() {
  __asm__("popw -4(%rbp)");
  }

void main() {
  leaf();
}
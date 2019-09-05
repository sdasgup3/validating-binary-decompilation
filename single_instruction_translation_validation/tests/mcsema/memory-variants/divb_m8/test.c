void leaf() {
  __asm__("divb -4(%rbp)");
  }

void main() {
  leaf();
}
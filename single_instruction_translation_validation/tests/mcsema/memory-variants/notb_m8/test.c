void leaf() {
  __asm__("notb -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("setb -4(%rbp)");
  }

void main() {
  leaf();
}
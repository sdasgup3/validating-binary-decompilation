void leaf() {
  __asm__("setng -4(%rbp)");
  }

void main() {
  leaf();
}
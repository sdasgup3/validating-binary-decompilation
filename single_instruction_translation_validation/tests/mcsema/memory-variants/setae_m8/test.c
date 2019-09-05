void leaf() {
  __asm__("setae -4(%rbp)");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("xchgb -4(%rbp), %ah");
  }

void main() {
  leaf();
}
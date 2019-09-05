void leaf() {
  __asm__("xchgb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}
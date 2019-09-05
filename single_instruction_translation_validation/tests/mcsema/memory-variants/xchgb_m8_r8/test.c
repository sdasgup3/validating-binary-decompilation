void leaf() {
  __asm__("xchgb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}
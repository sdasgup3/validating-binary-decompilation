void leaf() {
  __asm__("xchgb -4(%rbp), %bl");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("xchgb %cl, %bl");
  }

void main() {
  leaf();
}
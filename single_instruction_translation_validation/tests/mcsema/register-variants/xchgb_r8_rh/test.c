void leaf() {
  __asm__("xchgb %ah, %bl");
  }

void main() {
  leaf();
}
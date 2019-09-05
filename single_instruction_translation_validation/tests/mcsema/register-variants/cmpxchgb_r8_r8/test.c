void leaf() {
  __asm__("cmpxchgb %cl, %bl");
  }

void main() {
  leaf();
}
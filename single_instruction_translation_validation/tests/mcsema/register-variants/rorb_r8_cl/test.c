void leaf() {
  __asm__("rorb %cl, %bl");
  }

void main() {
  leaf();
}
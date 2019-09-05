void leaf() {
  __asm__("shrb %cl, %bl");
  }

void main() {
  leaf();
}
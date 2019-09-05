void leaf() {
  __asm__("adcb %cl, %bl");
  }

void main() {
  leaf();
}
void leaf() {
  __asm__("adcb %ah, %bl");
  }

void main() {
  leaf();
}
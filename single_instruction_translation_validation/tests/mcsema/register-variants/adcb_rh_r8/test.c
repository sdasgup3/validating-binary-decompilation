void leaf() {
  __asm__("adcb %bl, %ah");
  }

void main() {
  leaf();
}
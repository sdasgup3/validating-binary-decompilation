void leaf() {
  __asm__("adcb -4(%rbp), %bl");
  }

void main() {
  leaf();
}
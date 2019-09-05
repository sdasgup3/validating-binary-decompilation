void leaf() {
  __asm__("adcb -4(%rbp), %ah");
  }

void main() {
  leaf();
}
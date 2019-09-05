void leaf() {
  __asm__("adcb %bh, %ah");
  }

void main() {
  leaf();
}
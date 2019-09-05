void leaf() {
  __asm__("shrb %cl, %ah");
  }

void main() {
  leaf();
}
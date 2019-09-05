void leaf() {
  __asm__("rorb %cl, %ah");
  }

void main() {
  leaf();
}
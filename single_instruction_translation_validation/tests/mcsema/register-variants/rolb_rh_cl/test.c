void leaf() {
  __asm__("rolb %cl, %ah");
  }

void main() {
  leaf();
}
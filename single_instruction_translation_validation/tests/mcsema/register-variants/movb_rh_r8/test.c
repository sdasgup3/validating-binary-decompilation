void leaf() {
  __asm__("movb %bl, %ah");
  }

void main() {
  leaf();
}
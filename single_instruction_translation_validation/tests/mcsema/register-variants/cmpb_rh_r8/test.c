void leaf() {
  __asm__("cmpb %bl, %ah");
  }

void main() {
  leaf();
}
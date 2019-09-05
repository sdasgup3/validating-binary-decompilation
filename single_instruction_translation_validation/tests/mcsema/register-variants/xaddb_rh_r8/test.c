void leaf() {
  __asm__("xaddb %bl, %ah");
  }

void main() {
  leaf();
}
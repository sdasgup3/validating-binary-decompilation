void leaf() {
  __asm__("testb %bl, %ah");
  }

void main() {
  leaf();
}
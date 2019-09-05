void leaf() {
  __asm__("xchgb %bl, %ah");
  }

void main() {
  leaf();
}
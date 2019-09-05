void leaf() {
  __asm__("movb %ah, %bl");
  }

void main() {
  leaf();
}
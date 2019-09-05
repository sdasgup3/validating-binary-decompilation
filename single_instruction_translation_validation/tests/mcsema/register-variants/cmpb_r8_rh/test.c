void leaf() {
  __asm__("cmpb %ah, %bl");
  }

void main() {
  leaf();
}